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
#include "AudioData.h"
#include "AACAudioData.h"
#include "AVCNaluPacket.h"
#include "AVCVideoPacket.h"
#include "VideoData.h"

RtmpClient::RtmpClient(std::string url, int timeOut,
                       bool enable_dump_video, std::string dump_video_path,
                       bool enable_dump_audio, std::string dump_audio_path)
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

RtmpClient::~RtmpClient() { Stop(); }

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
                        VideoData::VideoCodecId::AVC_,
                        audioDataRate,
                        audioSampleRate,
                        audioSampleSize,
                        AudioCodecId::AAC,
                        0,
                        stereo);
    FLVTag flv_tag(FLVTag::SCRIPT_DATA, metaData.Size(), 0, &metaData);
    return SendFlvTag(flv_tag);
}


int RtmpClient::SendAVCData(BYTE *data, int len, long timestamp) {
    auto start_code_size = H264Parser::FindStartCode(data, len);
    if (start_code_size > 0) {
        // remove start code
        data += start_code_size;
        len -= start_code_size;
        H264Parser::RemoveEmulationPreventionCode(data, len);
    }
    auto nal_header = data[0];
    switch (nal_header & 0x1F) {
        case H264Parser::H264_NAL_SPS: {
            this->SendNALSPS(data, len, timestamp);
            return 0;
        }
        case H264Parser::H264_NAL_PPS: {
            LOGI("VIDEO PPS: %s", HexUtil::Bytes2Hex(data, len).c_str())
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

    auto frame_type = VideoData::FrameType::INTER_FRAME;
    if ((nal_header & 0x1F) == H264Parser::H264_NAL_IDR_SLICE) {
        frame_type = VideoData::FrameType::KEY_FRAME; // key frame
    } else {
        frame_type = VideoData::FrameType::INTER_FRAME; // inter frame
    }

    AVCNaluPacket avc_nalu_packet(data, len);
    // cts  = 0
    AVCVideoPacket avc_packet(AVCVideoPacket::AVC_NALU, 0, &avc_nalu_packet);
    VideoData video_data(frame_type, VideoData::VideoCodecId::AVC_, &avc_packet);
    FLVTag flv_tag(FLVTag::VIDEO, video_data.Size(), timestamp, &video_data);
    return SendFlvTag(flv_tag);
}

int RtmpClient::SendNALSPS(uint8_t *data, int length, long timestamp) {
    H264Params params(data, length);
    AVCDecoderConfiguration avc_decoder_configuration(params);
    AVCVideoPacket avc_packet(AVCVideoPacket::AVC_SEQ, timestamp, &avc_decoder_configuration);
    VideoData video_data(VideoData::FrameType::INTER_FRAME, VideoData::VideoCodecId::AVC_, &
    avc_packet);
    FLVTag flv_tag(FLVTag::VIDEO, video_data.Size(), timestamp, &video_data);
    return SendFlvTag(flv_tag);
}

int RtmpClient::SendAACData(BYTE *data, int len, long timestamp) {
    if (len == 2) {
        LOGI("AAConfig: %s", HexUtil::Bytes2Hex(data, len).c_str())
        return SendAACSpecific(data, len, timestamp);
    } else {
        auto aac_frame = AACAudioData::AACAudioFrameData((char *) data, len);
        AACAudioData aacAudioData(AACPacketType::AAC_RAW, &aac_frame);
        AudioData audioData(SoundFormat::AAC,
                            3, // AAC
                            1, // 16bit
                            1, // stereo
                            &aacAudioData
        );
        FLVTag flvTag(FLVTag::AUDIO, audioData.Size(), timestamp, &audioData);
        return SendFlvTag(flvTag);
    }
}

int RtmpClient::SendAACSpecific(uint8_t *data, int len, long timestamp) {
    auto specific_config = AACAudioData::AACAudioSpecificConfig((char *) data, len);
    AACAudioData aacAudioData(AACPacketType::AAC_SEQ, &specific_config);
    AudioData audioData(SoundFormat::AAC,
                        3, // AAC
                        1, // 16bit
                        1, // stereo
                        &aacAudioData
    ); // 0XAF;
    FLVTag flvTag(FLVTag::AUDIO, audioData.Size(), timestamp, &audioData);
    return SendFlvTag(flvTag);
}

int RtmpClient::SendFlvTag(FLVTag flag_tag) {
    auto buffer = new char[flag_tag.Size() + 4]; // previous tag size
    flag_tag.WriteTo(buffer);
    int ret = RTMP_Write(this->rtmp_, buffer, flag_tag.Size());
    delete[] buffer;
    return ret;
}

int RtmpClient::Stop() {
    if (enable_dump_video_) {
        dump_video_stream_.close();
    }
    RTMP_Close(rtmp_);
    RTMP_Free(rtmp_);
    return 0;
}
