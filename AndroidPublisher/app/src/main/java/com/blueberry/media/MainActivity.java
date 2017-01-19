package com.blueberry.media;

import android.app.Activity;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static android.hardware.Camera.Parameters.FOCUS_MODE_AUTO;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MAX_INDEX;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MIN_INDEX;
import static android.media.MediaCodec.CONFIGURE_FLAG_ENCODE;
import static android.media.MediaFormat.KEY_BIT_RATE;
import static android.media.MediaFormat.KEY_COLOR_FORMAT;
import static android.media.MediaFormat.KEY_FRAME_RATE;
import static android.media.MediaFormat.KEY_I_FRAME_INTERVAL;
import static android.media.MediaFormat.KEY_MAX_INPUT_SIZE;

// 视频角度问题：
//http://blog.csdn.net/veilling/article/details/52421930
//
public class MainActivity extends AppCompatActivity implements SurfaceHolder.Callback2 {

    static final int NAL_SLICE = 1;
    static final int NAL_SLICE_DPA = 2;
    static final int NAL_SLICE_DPB = 3;
    static final int NAL_SLICE_DPC = 4;
    static final int NAL_SLICE_IDR = 5;
    static final int NAL_SEI = 6;
    static final int NAL_SPS = 7;
    static final int NAL_PPS = 8;
    static final int NAL_AUD = 9;
    static final int NAL_FILLER = 12;

    private static final String TAG = "MainActivity";

    public static final String url = "rtmp://192.168.155.1:1935/live/test";

    private Button btnToggle;
    private SurfaceView mSurfaceView;

    private SurfaceHolder mSurfaceHolder;
    private Camera mCamera;
    private Camera.Size previewSize;

    private long presentationTimeUs;

    MediaCodec vencoder;
    private Thread recordThread;
    private boolean aLoop;

    private AudioRecord mAudioRecord;
    private byte[] aBuffer;
    private MediaCodec aencoder;
    private int aSampleRate;
    private int aChanelCount;
    private int colorFormat;
    private MediaCodec.BufferInfo aBufferInfo = new MediaCodec.BufferInfo();
    private MediaCodec.BufferInfo vBufferInfo = new MediaCodec.BufferInfo();
    private boolean isPublished;

    private RtmpPublisher mRtmpPublisher = new RtmpPublisher();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.i(TAG, "onCreate: ");
        initView();

    }

    private void initView() {
        btnToggle = (Button) findViewById(R.id.btn_toggle);
        mSurfaceView = (SurfaceView) findViewById(R.id.surface_view);
        mSurfaceView.setKeepScreenOn(true);
        mSurfaceHolder = mSurfaceView.getHolder();
        mSurfaceHolder.addCallback(this);
        btnToggle.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switchPublish();
            }
        });
    }

    private void switchPublish() {
        if (isPublished) {
            stop();
        } else {
            start();
        }

        btnToggle.setText(isPublished ? "停止" : "开始");
    }

    private void start() {
        //初始化
        int ret = mRtmpPublisher.init(url, previewSize.width, previewSize.height, 5);

        if (ret < 0) {
            Log.e(TAG, "连接失败");
            return;
        }

        isPublished = true;
        initAudioDevice();

        try {
            vencoder = initVideoEncoder();
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("video encoder init fail");
        }

        try {
            aencoder = initAudioEncoder();
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("audio encoder init fail");
        }

        //开启录音
        aLoop = true;
        recordThread = new Thread(fetchAudioRunnable());

        presentationTimeUs = new Date().getTime() * 1000;
        mAudioRecord.startRecording();
        recordThread.start();
        if (aencoder != null) {
            aencoder.start();
        }
        if (vencoder != null) {
            vencoder.start();
        }
    }

    private void stop() {
        isPublished = false;

        mRtmpPublisher.stop();
        aLoop = false;
        if (recordThread != null) {
            recordThread.interrupt();
        }
        mAudioRecord.stop();
        mAudioRecord.release();
        vencoder.stop();
        vencoder.release();
        aencoder.stop();
        aencoder.release();
    }


    private Runnable fetchAudioRunnable() {
        return new Runnable() {
            @Override
            public void run() {
                fetchPcmFromDevice();
            }
        };
    }

    private void fetchPcmFromDevice() {
        Log.d(TAG, "录音线程开始");
        while (aLoop && mAudioRecord != null && !Thread.interrupted()) {
            int size = mAudioRecord.read(aBuffer, 0, aBuffer.length);
            if (size < 0) {
                Log.i(TAG, "audio ignore ,no data to read");
                break;
            }
            if (aLoop) {
                byte[] audio = new byte[size];
                System.arraycopy(aBuffer, 0, audio, 0, size);
                onGetPcmFrame(audio);
            }
        }
    }

    private void initAudioDevice() {
        int[] sampleRates = {44100, 22050, 16000, 11025};
        for (int sampleRate :
                sampleRates) {
            //编码制式
            int audioFormat = AudioFormat.ENCODING_PCM_16BIT;
            // stereo 立体声，
            int channelConfig = AudioFormat.CHANNEL_CONFIGURATION_STEREO;
            int buffsize = 2 * AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat);
            mAudioRecord = new AudioRecord(MediaRecorder.AudioSource.MIC, sampleRate, channelConfig,
                    audioFormat, buffsize);
            if (mAudioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
                continue;
            }
            aSampleRate = sampleRate;
            aChanelCount = channelConfig == AudioFormat.CHANNEL_CONFIGURATION_STEREO ? 2 : 1;
            aBuffer = new byte[Math.min(4096, buffsize)];
        }
    }


    private MediaCodec initAudioEncoder() throws IOException {
        MediaCodec aencoder = MediaCodec.createEncoderByType(MediaFormat.MIMETYPE_AUDIO_AAC);
        MediaFormat format = MediaFormat.createAudioFormat(MediaFormat.MIMETYPE_AUDIO_AAC,
                aSampleRate, aChanelCount);
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, 1000 * 30);
        aencoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        return aencoder;
    }

    private MediaCodec initVideoEncoder() throws IOException {
        // 初始化
        MediaCodecInfo mediaCodecInfo = getMediaCodecInfoByType(MediaFormat.MIMETYPE_VIDEO_AVC);
        colorFormat = getColorFormat(mediaCodecInfo);
        MediaCodec vencoder = MediaCodec.createByCodecName(mediaCodecInfo.getName());
        MediaFormat format = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC,
                previewSize.width, previewSize.height);
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, 700 * 1000);
        format.setInteger(KEY_COLOR_FORMAT, colorFormat);
        format.setInteger(KEY_FRAME_RATE, 20);
        format.setInteger(KEY_I_FRAME_INTERVAL, 5);
        vencoder.configure(format, null, null, CONFIGURE_FLAG_ENCODE);
        return vencoder;
    }


    public static MediaCodecInfo getMediaCodecInfoByType(String mimeType) {
        for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfo.isEncoder()) {
                continue;
            }
            String[] types = codecInfo.getSupportedTypes();
            for (int j = 0; j < types.length; j++) {
                if (types[j].equalsIgnoreCase(mimeType)) {
                    return codecInfo;
                }
            }
        }
        return null;
    }

    public static int getColorFormat(MediaCodecInfo mediaCodecInfo) {
        int matchedForamt = 0;
        MediaCodecInfo.CodecCapabilities codecCapabilities =
                mediaCodecInfo.getCapabilitiesForType(MediaFormat.MIMETYPE_VIDEO_AVC);
        for (int i = 0; i < codecCapabilities.colorFormats.length; i++) {
            int format = codecCapabilities.colorFormats[i];
            if (format >= codecCapabilities.COLOR_FormatYUV420PackedPlanar &&
                    format <= codecCapabilities.COLOR_FormatYUV420PackedSemiPlanar
                    ) {
                if (format >= matchedForamt) {
                    matchedForamt = format;
                }
            }
        }

        return matchedForamt;
    }


    private void initCamera() {
        openCamera();
        setCameraParameters();
        setCameraDisplayOrientation(this, Camera.CameraInfo.CAMERA_FACING_BACK, mCamera);
        try {
            mCamera.setPreviewDisplay(mSurfaceHolder);
        } catch (IOException e) {
            e.printStackTrace();
        }

        mCamera.setPreviewCallbackWithBuffer(getPreviewCallback());
        mCamera.addCallbackBuffer(new byte[calculateFrameSize(ImageFormat.NV21)]);
        mCamera.startPreview();
    }

    private int calculateFrameSize(int format) {
        return previewSize.width * previewSize.height * ImageFormat.getBitsPerPixel(format) / 8;
    }

    public static void setCameraDisplayOrientation(Activity activity,
                                                   int cameraId, android.hardware.Camera camera) {
        android.hardware.Camera.CameraInfo info =
                new android.hardware.Camera.CameraInfo();
        android.hardware.Camera.getCameraInfo(cameraId, info);
        int rotation = activity.getWindowManager().getDefaultDisplay()
                .getRotation();
        int degrees = 0;
        switch (rotation) {
            case Surface.ROTATION_0:
                degrees = 0;
                break;
            case Surface.ROTATION_90:
                degrees = 90;
                break;
            case Surface.ROTATION_180:
                degrees = 180;
                break;
            case Surface.ROTATION_270:
                degrees = 270;
                break;
        }

        int result;
        if (info.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {
            result = (info.orientation + degrees) % 360;
            result = (360 - result) % 360;  // compensate the mirror
        } else {  // back-facing
            result = (info.orientation - degrees + 360) % 360;
        }
        camera.setDisplayOrientation(result);
    }

    private void setCameraParameters() {
        Camera.Parameters parameters = mCamera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        for (Camera.Size size : supportedPreviewSizes
                ) {
            if (size.width >= 320 && size.width <= 720) {
                previewSize = size;
                Log.d(TAG, String.format("find preview size width=%d,height=%d", previewSize.width,
                        previewSize.height));
                break;
            }
        }

        int[] destRange = {25 * 1000, 45 * 1000};
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        for (int[] range : supportedPreviewFpsRange
                ) {
            if (range[PREVIEW_FPS_MIN_INDEX] <= 45 * 1000 && range[PREVIEW_FPS_MAX_INDEX] >= 25 * 1000) {
                destRange = range;
                Log.d(TAG, String.format("find fps range :%s", Arrays.toString(destRange)));
                break;
            }
        }

        parameters.setPreviewSize(previewSize.width, previewSize.height);
        parameters.setPreviewFpsRange(destRange[PREVIEW_FPS_MIN_INDEX],
                destRange[PREVIEW_FPS_MAX_INDEX]);
        parameters.setFocusMode(FOCUS_MODE_AUTO);
        parameters.setPreviewFormat(ImageFormat.NV21);
        parameters.setRotation(onOrientationChanged(0));

        mCamera.setParameters(parameters);
    }

    public int onOrientationChanged(int orientation) {

        android.hardware.Camera.CameraInfo info =
                new android.hardware.Camera.CameraInfo();
        android.hardware.Camera.getCameraInfo(Camera.CameraInfo.CAMERA_FACING_BACK, info);
        orientation = (orientation + 45) / 90 * 90;
        int rotation = 0;
        if (info.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {
            rotation = (info.orientation - orientation + 360) % 360;
        } else {  // back-facing camera
            rotation = (info.orientation + orientation) % 360;
        }
        return rotation;
    }

    private void openCamera() {
        if (mCamera == null) {
            try {
                mCamera = Camera.open();
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(this, "打开摄像头失败", Toast.LENGTH_SHORT).show();
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException e1) {
                    e1.printStackTrace();
                }
                throw new RuntimeException("打开摄像头失败", e);
            }
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        initCamera();
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (mCamera != null) {
            mCamera.setPreviewCallbackWithBuffer(null);
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
    }

    @Override
    public void surfaceRedrawNeeded(SurfaceHolder holder) {

    }

    @Override
    public void surfaceCreated(SurfaceHolder holder) {

    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        initCamera();
    }


    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {

    }

    public Camera.PreviewCallback getPreviewCallback() {
        return new Camera.PreviewCallback() {
            byte[] dstByte = new byte[calculateFrameSize(ImageFormat.NV21)];

            @Override
            public void onPreviewFrame(byte[] data, Camera camera) {
                if (data != null) {
                    if (isPublished) {
                        // data 是Nv21
                        if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar) {
                            Yuv420Util.Nv21ToYuv420SP(data, dstByte, previewSize.width, previewSize.height);
                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                            Yuv420Util.Nv21ToI420(data, dstByte, previewSize.width, previewSize.height);

                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible) {
                            // Yuv420_888

                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420PackedPlanar) {
                            // Yuv420packedPlannar 和 yuv420sp很像
                            // 区别在于 加入 width = 4的话 y1,y2,y3 ,y4公用 u1v1
                            // 而 yuv420dp 则是 y1y2y5y6 共用 u1v1
                            //http://blog.csdn.net/jumper511/article/details/21719313
                            //这样处理的话颜色核能会有些失真。
                            Yuv420Util.Nv21ToYuv420SP(data, dstByte, previewSize.width, previewSize.height);
                        } else {
                            System.arraycopy(data, 0, dstByte, 0, data.length);
                        }
                        onGetVideoFrame(dstByte);
                    }
                    camera.addCallbackBuffer(data);
                } else {
                    camera.addCallbackBuffer(new byte[calculateFrameSize(ImageFormat.NV21)]);
                }

            }
        };
    }

    private void onGetVideoFrame(byte[] dstByte) {
        ByteBuffer[] inputBuffers = vencoder.getInputBuffers();
        ByteBuffer[] outputBuffers = vencoder.getOutputBuffers();

        int inputBufferId = vencoder.dequeueInputBuffer(-1);
        if (inputBufferId >= 0) {
            // fill inputBuffers[inputBufferId] with valid data
            ByteBuffer bb = inputBuffers[inputBufferId];
            bb.clear();
            bb.put(dstByte, 0, dstByte.length);
            long pts = new Date().getTime() * 1000 - presentationTimeUs;
            vencoder.queueInputBuffer(inputBufferId, 0, dstByte.length, pts, 0);
        }

        for (; ; ) {
            int outputBufferId = vencoder.dequeueOutputBuffer(vBufferInfo, 0);
            if (outputBufferId >= 0) {
                // outputBuffers[outputBufferId] is ready to be processed or rendered.
                ByteBuffer bb = outputBuffers[outputBufferId];
                onEncodedAvcFrame(bb, vBufferInfo);
                vencoder.releaseOutputBuffer(outputBufferId, false);
            }
            if (outputBufferId < 0) {
                break;
            }
        }
    }


    private void onGetPcmFrame(byte[] data) {
        ByteBuffer[] inputBuffers = aencoder.getInputBuffers();
        ByteBuffer[] outputBuffers = aencoder.getOutputBuffers();
        int inputBufferId = aencoder.dequeueInputBuffer(-1);
        if (inputBufferId >= 0) {
            ByteBuffer bb = inputBuffers[inputBufferId];
            bb.clear();
            bb.put(data, 0, data.length);
            long pts = new Date().getTime() * 1000 - presentationTimeUs;
            aencoder.queueInputBuffer(inputBufferId, 0, data.length, pts, 0);
        }

        for (; ; ) {
            int outputBufferId = aencoder.dequeueOutputBuffer(aBufferInfo, 0);
            if (outputBufferId >= 0) {
                // outputBuffers[outputBufferId] is ready to be processed or rendered.
                ByteBuffer bb = outputBuffers[outputBufferId];
                onEncodeAacFrame(bb, aBufferInfo);
                aencoder.releaseOutputBuffer(outputBufferId, false);
            }
            if (outputBufferId < 0) {
                break;
            }
        }
    }

    private void onEncodedAvcFrame(ByteBuffer bb, MediaCodec.BufferInfo vBufferInfo) {
        int offset = 4;
        //判断帧的类型
        if (bb.get(2) == 0x01) {
            offset = 3;
        }

        int type = bb.get(offset) & 0x1f;
        if (type == NAL_SPS) {
            //[0, 0, 0, 1, 103, 66, -64, 13, -38, 5, -126, 90, 1, -31, 16, -115, 64, 0, 0, 0, 1, 104, -50, 6, -30]
            //打印发现这里将 SPS帧和 PPS帧合在了一起发送
            // SPS为 [4，len-8]
            // PPS为后4个字节
            //so .
            byte[] pps = new byte[4];
            byte[] sps = new byte[vBufferInfo.size - 12];
            bb.getInt();// 抛弃 0,0,0,1
            bb.get(sps, 0, sps.length);
            bb.getInt();
            bb.get(pps, 0, pps.length);
            Log.d(TAG, "解析得到 sps:" + Arrays.toString(sps) + ",PPS=" + Arrays.toString(pps));
            mRtmpPublisher.sendSpsAndPps(sps, sps.length, pps, pps.length,
                    vBufferInfo.presentationTimeUs / 1000);
        } else {
            byte[] bytes = new byte[vBufferInfo.size];
            bb.get(bytes);
            mRtmpPublisher.sendVideoData(bytes, bytes.length,
                    vBufferInfo.presentationTimeUs / 1000);
        }

    }

    private void onEncodeAacFrame(ByteBuffer bb, MediaCodec.BufferInfo aBufferInfo) {

        // 1.界定符 FF F1
        // 2.加上界定符的前7个字节是帧描述信息
        // 3.AudioDecoderSpecificInfo 长度为2个字节如果是44100 改值为0x1210

        //http://blog.csdn.net/avsuper/article/details/24661533
        //http://www.tuicool.com/articles/aYvmua


        if (aBufferInfo.size == 2) {
//            https://my.oschina.net/zhangxu0512/blog/204070
//            faacEncSetConfiguration(m_hEncoder, pConfiguration);
//            int ret = faacEncGetDecoderSpecificInfo(m_hEncoder, &m_pSpc, &m_nSpc);

//            //AAC sequence header
//            int[] mpeg4audio_sample_rates = {
//                    96000, 88200, 64000, 48000, 44100, 32000,
//                    24000, 22050, 16000, 12000, 11025, 8000, 7350
//            };
//
//            int m_keyframe[] = new int[2];
//            //get keyframe info.
//            int index;
//            for (index = 0; index < 16; index++) {
//                if (aSampleRate == mpeg4audio_sample_rates[index]) {
//                    break;
//                }
//            }
//            m_keyframe[0] = 0x02 << 3 | index >> 1;
//            m_keyframe[1] = (index & 0x01) << 7 | aChanelCount << 3;
//
//            Log.d(TAG,"挂件"+Arrays.toString(m_keyframe));
            // 我打印发现，这里应该已经是吧关键帧计算好了，所以我们直接发送
            byte[] bytes = new byte[2];
            bb.get(bytes);
            mRtmpPublisher.sendAacSpec(bytes, 2);

        } else {
            byte[] bytes = new byte[aBufferInfo.size];
            bb.get(bytes);
            mRtmpPublisher.sendAacData(bytes, bytes.length, aBufferInfo.presentationTimeUs / 1000);
        }

    }


}
