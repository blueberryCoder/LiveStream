package com.blueberry.media;

import android.app.Activity;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

import static android.hardware.Camera.Parameters.FOCUS_MODE_AUTO;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MAX_INDEX;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MIN_INDEX;

/**
 * Created by blueberry on 3/6/2017.
 */

public class VideoGatherer {
    private static final String TAG = "VideoGatherer";

    private Config config;

    private Camera mCamera;
    private Camera.Size previewSize;

    private int colorFormat;
    private LinkedBlockingQueue<PixelData> mQueue = new LinkedBlockingQueue<>();
    private Thread workThread;
    private boolean loop;
    private Callback mCallback;

    public static VideoGatherer newInstance(Config config) {
        return new VideoGatherer(config);
    }

    private VideoGatherer(Config config) {
        this.config = config;
    }

    public static class Params {
        public final int previewWidth;
        public final int previewHeight;

        public Params(int width, int height) {
            this.previewWidth = width;
            this.previewHeight = height;
        }
    }

    /**
     * 像素数据
     */
    public static class PixelData {
        public final int format;
        public final byte[] data;

        public PixelData(int format, byte[] data) {
            this.format = format;
            this.data = data;
        }

    }

    interface Callback {
        void onReceive(byte[] data, int colorFormat);
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setColorFormat(int colorFormat) {
        this.colorFormat = colorFormat;
    }

    /**
     * 初始化Camera
     */
    public Params initCamera(Activity act, SurfaceHolder holder) {
        // first release
        release();

        openCamera();
        setCameraParameters();
        setCameraDisplayOrientation(act, Camera.CameraInfo.CAMERA_FACING_BACK, mCamera);
        try {
            mCamera.setPreviewDisplay(holder);
        } catch (IOException e) {
            e.printStackTrace();
        }

        mCamera.setPreviewCallbackWithBuffer(getPreviewCallback());
        mCamera.addCallbackBuffer(new byte[calculateFrameSize(ImageFormat.NV21)]);
        mCamera.startPreview();

        //开启子线程
        initWorkThread();
        loop = true;
        workThread.start();
        return new Params(previewSize.width, previewSize.height);
    }

    private void initWorkThread() {
        workThread = new Thread() {
            private long preTime;
            //YUV420
            byte[] dstByte = new byte[calculateFrameSize(ImageFormat.NV21)];

            @Override
            public void run() {
                while (loop && !Thread.interrupted()) {
                    try {
                        PixelData pixelData = mQueue.take();
                        // 处理
                        if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar) {
                            Yuv420Util.Nv21ToYuv420SP(pixelData.data, dstByte, previewSize.width, previewSize.height);
                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                            Yuv420Util.Nv21ToI420(pixelData.data, dstByte, previewSize.width, previewSize.height);
                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible) {
                            // Yuv420_888
                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420PackedPlanar) {
                            // Yuv420packedPlannar 和 yuv420sp很像
                            // 区别在于 加入 width = 4的话 y1,y2,y3 ,y4公用 u1v1
                            // 而 yuv420dp 则是 y1y2y5y6 共用 u1v1
                            //这样处理的话颜色核能会有些失真。
                            Yuv420Util.Nv21ToYuv420SP(pixelData.data, dstByte, previewSize.width, previewSize.height);
                        } else if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420PackedSemiPlanar) {
                        } else {
                            System.arraycopy(pixelData.data, 0, dstByte, 0, pixelData.data.length);
                        }

                        if (mCallback != null) {
                            mCallback.onReceive(dstByte, colorFormat);
                        }
                        //处理完成之后调用 addCallbackBuffer()
                        if (preTime != 0) {
                            // 延时
                            int shouldDelay = (int) (1000.0 / config.fps);
                            int realDelay = (int) (System.currentTimeMillis() - preTime);
                            int delta = shouldDelay - realDelay;
                            if (delta > 0) {
                                sleep(delta);
                            }
                        }
                        addCallbackBuffer(pixelData.data);
                        preTime = System.currentTimeMillis();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }
            }
        };

    }

    public Camera.PreviewCallback getPreviewCallback() {
        return new Camera.PreviewCallback() {
            //            byte[] dstByte = new byte[calculateFrameSize(ImageFormat.NV21)];
            @Override
            public void onPreviewFrame(final byte[] data, final Camera camera) {
                if (data != null) {
                    try {
                        mQueue.put(new PixelData(colorFormat, data));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    camera.addCallbackBuffer(new byte[calculateFrameSize(ImageFormat.NV21)]);
                }
            }
        };
    }

    public void addCallbackBuffer(byte[] bytes) {
        mCamera.addCallbackBuffer(bytes);
    }

    public void release() {
        releaseCamera();
        if (workThread != null) {
            workThread.interrupt();
            loop = false;
        }
    }

    private void releaseCamera() {
        if (mCamera != null) {
            mCamera.setPreviewCallbackWithBuffer(null);
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
    }

    private int calculateFrameSize(int format) {
        return previewSize.width * previewSize.height * ImageFormat.getBitsPerPixel(format) / 8;
    }


    private void setCameraParameters() {
        Camera.Parameters parameters = mCamera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        for (Camera.Size size : supportedPreviewSizes
                ) {
            if (size.width >= config.minWidth && size.width <= config.maxWidth) {
                previewSize = size;
                Log.i(TAG, String.format("find preview size width=%d,height=%d", previewSize.width,
                        previewSize.height));
                break;
            }
        }

        int[] destRange = {config.fps * 1000, config.fps * 1000};
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        for (int[] range : supportedPreviewFpsRange
                ) {
            if (range[PREVIEW_FPS_MAX_INDEX] >= config.fps * 1000) {
                destRange = range;
                Log.d(TAG, String.format("find fps range :%s", Arrays.toString(destRange)));
                break;
            }
        }

        if (previewSize == null) {
            throw new RuntimeException("find previewSize error");
        }

        parameters.setPreviewSize(previewSize.width, previewSize.height);
        parameters.setPreviewFpsRange(destRange[PREVIEW_FPS_MIN_INDEX],
                destRange[PREVIEW_FPS_MAX_INDEX]);

        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        for (int i = 0; null != supportedFocusModes && i < supportedFocusModes.size(); i++) {
            if (FOCUS_MODE_AUTO.equals(supportedFocusModes.get(i))) {
                parameters.setFocusMode(FOCUS_MODE_AUTO);
                break;
            }
        }
        parameters.setPreviewFormat(ImageFormat.NV21);
        mCamera.setParameters(parameters);
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

    private void openCamera() {
        if (mCamera == null) {
            try {
                mCamera = Camera.open();
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("打开摄像头失败", e);
            }
        }
    }
}
