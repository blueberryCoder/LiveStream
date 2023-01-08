//
// Created by Administrator on 1/16/2017.
//
// http://rtmpdump.mplayerhq.hu/
// ffprobe -v trace -show_frames file.h264
//https://developer.ridgerun.com/wiki/index.php/H264_Analysis_Tools
// https://www.jianshu.com/p/5702783153df
// https://stackoverflow.com/questions/52285075/flv-video-packets-sent-over-rtmp-streamed-with-ffmpeg-vs-obs
// https://blog.csdn.net/wujian946110509/article/details/103672274
// https://blog.csdn.net/qq_29350001/article/details/78226286
// https://ossrs.io/lts/en-us/assets/files/ISO_IEC_14496-15-AVC-format-2012-345a5b466cc73e978fd9dd0840361e8b.pdf
// https://rtmp.veriskope.com/pdf/video_file_format_spec_v10.pdf
// https://blog.csdn.net/cabbage2008/article/details/50500021
// https://rtmp.veriskope.com/pdf/amf0-file-format-specification.pdf
#include "RtmpClient.h"
#include "H264Parser.h"
#include "HexUtil.h"
#include "H264Params.h"
#include "AVCDecoderConfiguration.h"
#include "OnMetaData.h"
#include "FLVTag.h"

RtmpClient::RtmpClient(std::string url, int timeOut,
                       bool enable_dump_video, std::string dump_video_path,
                       bool enable_dump_audio, std::string dump_audio_path
)
        : url_(std::move(url)),
          time_out_(timeOut),
          enable_dump_video_(enable_dump_video),
          dump_video_path_(std::move(dump_video_path)),
          enable_dump_audio_(enable_dump_audio),
          dump_audio_path_(std::move(dump_audio_path)) {

    if (enable_dump_video_) {
        dump_video_stream_.open(dump_video_path_.c_str());
    }
    if (enable_dump_audio_) {
        dump_audio_stream_.open(dump_audio_path_.c_str());
    }

    LOGD("RTMP Client Construct(url=%s,time_out=%d,enable_dump_video=%d,dump_video_path=%s)",
         url_.c_str(),
         time_out_,
         enable_dump_video_,
         dump_video_path_.c_str()
    )
}

RtmpClient::~RtmpClient() { stop(); }

int RtmpClient::Connect() {
    LOGI("RtmpClient: CONNECT")
    RTMP_LogSetLevel(RTMP_LOGDEBUG);
    RTMP_LogSetCallback(rtmp_log_imp);

    rtmp_ = RTMP_Alloc();
    RTMP_Init(rtmp_);
    rtmp_->Link.timeout = time_out_;
    RTMP_SetupURL(rtmp_, (char *) url_.c_str());
    RTMP_EnableWrite(rtmp_);
    if (!RTMP_Connect(rtmp_, NULL)) {
        LOGI("RTMP_Connect error");
        return -1;
    }
    LOGI("RTMP_Connect success.");
    if (!RTMP_ConnectStream(rtmp_, 0)) {
        LOGI("RTMP_ConnectStream error");
        return -1;
    }
    LOGI("RTMP_ConnectStream success.");
    return 0;
}

int RtmpClient::sendSpsAndPps(BYTE *sps, int spsLen, BYTE *pps, int ppsLen, long timestamp) {

    int i;
    RTMPPacket *packet = (RTMPPacket *) malloc(RTMP_HEAD_SIZE + 1024);
    memset(packet, 0, RTMP_HEAD_SIZE);
    packet->m_body = (char *) packet + RTMP_HEAD_SIZE;
    BYTE *body = (BYTE *) packet->m_body;

    i = 0;
    body[i++] = 0x17; //1:keyframe 7:AVC
    body[i++] = 0x00; // AVC sequence header

    body[i++] = 0x00;
    body[i++] = 0x00;
    body[i++] = 0x00; //fill in 0

    /*AVCDecoderConfigurationRecord*/
    body[i++] = 0x01;
    body[i++] = sps[1]; //AVCProfileIndecation
    body[i++] = sps[2]; //profile_compatibilty
    body[i++] = sps[3]; //AVCLevelIndication
    body[i++] = 0xff;//lengthSizeMinusOne

    /*SPS*/
    body[i++] = 0xe1;
    body[i++] = (spsLen >> 8) & 0xff;
    body[i++] = spsLen & 0xff;
    /*sps data*/
    memcpy(&body[i], sps, spsLen);

    i += spsLen;

    /*PPS*/
    body[i++] = 0x01;
    /*sps data length*/
    body[i++] = (ppsLen >> 8) & 0xff;
    body[i++] = ppsLen & 0xff;
    memcpy(&body[i], pps, ppsLen);
    i += ppsLen;

    packet->m_packetType = RTMP_PACKET_TYPE_VIDEO;
    packet->m_nBodySize = i;
    packet->m_nChannel = 0x04;
    packet->m_nTimeStamp = 0;
    packet->m_hasAbsTimestamp = 0;
    packet->m_headerType = RTMP_PACKET_SIZE_MEDIUM;
    packet->m_nInfoField2 = rtmp_->m_stream_id;

    /*发送*/
    if (RTMP_IsConnected(rtmp_)) {
        RTMP_SendPacket(rtmp_, packet, TRUE);
    }
    free(packet);
    return 0;
}

int RtmpClient::SendDataFrame(
        double width,
        double height,
        double videoDataRate,
        double frameRate,
        double audioDataRate,
        double audioSampleRate,
        double audioSampleSize,
        bool stereo
) {

    videoDataRate /= 1000;
    audioDataRate /= 1000;

    OnMetaData metaData(0,
                        width,
                        height,
                        videoDataRate,
                        frameRate,
                        VideoCodecId::AVC_,
                        audioDataRate,
                        audioSampleRate,
                        audioSampleSize,
                        AudioCodecId::AAC,
                        0,
                        stereo);

    FLVTag flvTag(FLVTag::SCRIPT_DATA, metaData.GetBufferSize(), 0, metaData);

    RTMP_Write(this->rtmp_, flvTag.GetBuffer(), flvTag.GetSize());

    return 0;
}


int RtmpClient::sendVideoData(BYTE *buf, int len, long timestamp) {
    auto start_code_size = H264Parser::FindStartCode(buf, len);
    if (start_code_size > 0) {
        // remove start code
        buf += start_code_size;
        len -= start_code_size;
        H264Parser::RemoveEmulationPreventionCode(buf, len);
    }
    auto nal_header = buf[0];
    switch (nal_header & 0x1F) {
        case H264Parser::H264_NAL_SPS: {
            this->SendNALSPS(buf, len, timestamp);
            return 0;
        }
        case H264Parser::H264_NAL_PPS: {
            LOGI("VIDEO PPS: %s", HexUtil::Bytes2Hex(buf, len).c_str())
            break;
        }
        case H264Parser::H264_NAL_IDR_SLICE: {
            LOGI("VIDEO IDR SLICE (IIIIIIII)")
            break;
        }
        case H264Parser::H264_NAL_SLICE: {
            LOGI("VIDEO H264_NAL_SLICE")
        }
    }

// https://rtmp.veriskope.com/docs/spec/
// https://rtmp.veriskope.com/pdf/video_file_format_spec_v10_1.pdf

// FrameType        UB[4]         eg. 1   keyframe
// CodecId          UB[4]         eg. 7   AVC
// AVCPacketType    UI8
// CompositionTime  SI24          See ISO 14496-12, 8.15.3 for an explanation of composition times. The offset in an FLV file is always in milliseconds.
// VideoTagBody     NALUS         https://daniate.com/archives/300/
// NALUS   length (BE 32) NAULS

    auto frame_type = 0x02;
    if ((nal_header & 0x1F) == H264Parser::H264_NAL_IDR_SLICE) {
        frame_type = 0x01; // key frame
    } else {
        frame_type = 0x02; // inter frame
    }
    auto codec_id = 0x07; // AVC
    auto avc_packet_type = 0x01; // AVC NALU
//    auto composite_time = 0; // pkt.pts - pkt.dts
    auto *packet = new RTMPPacket();
    RTMPPacket_Alloc(packet, len + 9);
    RTMPPacket_Reset(packet);

    packet->m_body[0] = frame_type << 4 | codec_id;
    packet->m_body[1] = avc_packet_type;
    packet->m_body[2] = 0; // cts
    packet->m_body[3] = 0;
    packet->m_body[4] = 0;

    packet->m_body[5] = (len >> 24) & 0xFF; // length
    packet->m_body[6] = (len >> 16) & 0xFF; // length
    packet->m_body[7] = (len >> 8) & 0xFF; // length
    packet->m_body[8] = (len) & 0xFF; // length


    packet->m_hasAbsTimestamp = 0;
    packet->m_packetType = RTMP_PACKET_TYPE_VIDEO;
    packet->m_nInfoField2 = rtmp_->m_stream_id;
    packet->m_nChannel = 0x04;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nTimeStamp = timestamp;
    packet->m_nBodySize = len + 9; // NALU length , CTS , PacketType
    /*copy data*/
    memcpy(&packet->m_body[9], buf, len);
    if (RTMP_IsConnected(rtmp_)) {
        RTMP_SendPacket(rtmp_, packet, TRUE);
        if (enable_dump_video_) {
            dump_video_stream_.write(packet->m_body, packet->m_nBodySize);
        }
        LOGD("send Video packet");
    }
    RTMPPacket_Free(packet);
    free(packet);
    return 0;
}

int RtmpClient::SendNALSPS(uint8_t *data, int length, long timestamp) {
    H264Params params(data, length);
    AVCDecoderConfiguration avcDecoderConfiguration(params);

    auto frame_type = 0x02;
    auto codec_id = 0x07; // AVC
    auto avc_packet_type = 0x00; // AVCDecoderConfigurationRecord

    auto buffer_len = avcDecoderConfiguration.GetBufferLength();
    auto *packet = new RTMPPacket();
    auto insert_len = 5;
    RTMPPacket_Alloc(packet, buffer_len + insert_len);
    RTMPPacket_Reset(packet);

    packet->m_body[0] = frame_type << 4 | codec_id;
    packet->m_body[1] = avc_packet_type;
    packet->m_body[2] = 0; // cts
    packet->m_body[3] = 0;
    packet->m_body[4] = 0;

    // srs :srs_kernel_codec.cpp SrsFormat::avc_demux_sps_pps(
//    packet->m_body[5] = (buffer_len >> 24) & 0xFF; // length
//    packet->m_body[6] = (buffer_len >> 16) & 0xFF; // length
//    packet->m_body[7] = (buffer_len >> 8) & 0xFF; // length
//    packet->m_body[8] = (buffer_len) & 0xFF; // length


    packet->m_hasAbsTimestamp = 0;
    packet->m_packetType = RTMP_PACKET_TYPE_VIDEO;
    packet->m_nInfoField2 = rtmp_->m_stream_id;
    packet->m_nChannel = 0x04;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nTimeStamp = timestamp;
    packet->m_nBodySize = buffer_len + insert_len; // NALU length , CTS , PacketType

    memcpy(&packet->m_body[insert_len], avcDecoderConfiguration.GetBuffer(), buffer_len);

    if (RTMP_IsConnected(rtmp_)) {
        RTMP_SendPacket(rtmp_, packet, TRUE);
        if (enable_dump_video_) {
            dump_video_stream_.write(packet->m_body, packet->m_nBodySize);
        }
        LOGD("send Video packet");
    }
    RTMPPacket_Free(packet);
    free(packet);

    return 0;
}

int RtmpClient::sendAacData(BYTE *buf, int len, long timeOffset) {
//    LOGD("send audio data length len=%d", len)
    if (len == 2) {
        LOGI("AAConfig: %s", HexUtil::Bytes2Hex(buf, len).c_str())
        return SendAACSpecific(buf, len, timeOffset);
    }
    auto *packet = new RTMPPacket();
    auto insert_length = 2;
    RTMPPacket_Alloc(packet, len + insert_length);
    RTMPPacket_Reset(packet);
    packet->m_body[0] = 0xAF;
    packet->m_body[1] = 0x01; // AAC raw

    packet->m_packetType = RTMP_PACKET_TYPE_AUDIO;
    packet->m_nBodySize = len + insert_length;
    packet->m_nChannel = STREAM_CHANNEL_AUDIO;
    packet->m_nTimeStamp = timeOffset;
    packet->m_hasAbsTimestamp = 0;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nInfoField2 = rtmp_->m_stream_id;

    /*copy data*/
    memcpy(&packet->m_body[insert_length], buf, len);

    if (RTMP_IsConnected(rtmp_)) {
        RTMP_SendPacket(rtmp_, packet, TRUE);
        if (enable_dump_audio_) {
            dump_audio_stream_.write(packet->m_body, packet->m_nBodySize);
        }
    }
    RTMPPacket_Free(packet);
    free(packet);
    return 0;
}

int RtmpClient::SendAACSpecific(uint8_t *data, int len, long timestamp) {
    auto insert_length = 2;
    auto *packet = new RTMPPacket();
    RTMPPacket_Alloc(packet, len + insert_length);
    RTMPPacket_Reset(packet);

    packet->m_packetType = RTMP_PACKET_TYPE_AUDIO;
    packet->m_nBodySize = len + insert_length;
    packet->m_nChannel = STREAM_CHANNEL_AUDIO;
    packet->m_nTimeStamp = timestamp;
    packet->m_hasAbsTimestamp = 0;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nInfoField2 = rtmp_->m_stream_id;

    // sound format = AAC (10)
    // SoundRate = 44k
    // SoundSize = 16-bit
    // Stereo Sound
    // AACSequeceHeader
    // https://www.zybuluo.com/ltlovezh/note/1681156
    packet->m_body[0] = 0xAF;
    packet->m_body[1] = 0x00;

    /*copy data*/
    memcpy(&packet->m_body[insert_length], data, len);

    if (RTMP_IsConnected(rtmp_)) {
        RTMP_SendPacket(rtmp_, packet, TRUE);
        if (enable_dump_audio_) {
            dump_audio_stream_.write(packet->m_body, packet->m_nBodySize);
        }
    }
    RTMPPacket_Free(packet);
    free(packet);
    return 0;
}

int RtmpClient::sendAacSpec(BYTE *data, int spec_len) {
//    RTMPPacket *packet;
//    BYTE *body;
//    int len = spec_len;//spec len 是2
//    packet = (RTMPPacket *) malloc(RTMP_HEAD_SIZE + len + 2);
//    memset(packet, 0, RTMP_HEAD_SIZE);
//    packet->m_body = (char *) packet + RTMP_HEAD_SIZE;
//    body = (BYTE *) packet->m_body;
//
//    /*AF 00 +AAC RAW data*/
//    body[0] = 0xAF;
//    body[1] = 0x00;
//    memcpy(&body[2], data, len);/*data 是AAC sequeuece header数据*/
//
//    packet->m_packetType = RTMP_PACKET_TYPE_AUDIO;
//    packet->m_nBodySize = len + 2;
//    packet->m_nChannel = STREAM_CHANNEL_AUDIO;
//    packet->m_nTimeStamp = 0;
//    packet->m_hasAbsTimestamp = 0;
//    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
//    packet->m_nInfoField2 = rtmp_->m_stream_id;
//
//    if (RTMP_IsConnected(rtmp_)) {
//        RTMP_SendPacket(rtmp_, packet, TRUE);
//    }
//    free(packet);

    return 0;
}


int RtmpClient::stop() {
    if (enable_dump_video_) {
        dump_video_stream_.close();
    }
    RTMP_Close(rtmp_);
    RTMP_Free(rtmp_);
    return 0;
}
