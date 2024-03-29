package com.blueberry.media;

import static android.hardware.Camera.Parameters.FOCUS_MODE_AUTO;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MAX_INDEX;
import static android.hardware.Camera.Parameters.PREVIEW_FPS_MIN_INDEX;

import android.app.Activity;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;

import com.blueberry.media.utils.Logger;
import com.blueberry.media.yuv.Yuv420Util;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * Created by blueberry on 3/6/2017.
 */
public class VideoGatherer {
    private static final String TAG = "VideoGatherer";

    private final Config config;
    private Camera mCamera;
    private Camera.Size previewSize;
    private final LinkedBlockingQueue<PixelData> mQueue = new LinkedBlockingQueue<>();
    private Thread workThread;
    private boolean loop;
    private Callback mCallback;

    private final VideoGatherParams currentParams = new VideoGatherParams();

    public VideoGatherParams getCurrentParams() {
        return currentParams;
    }

    public static VideoGatherer newInstance(Config config) {
        return new VideoGatherer(config);
    }

    private VideoGatherer(Config config) {
        this.config = config;
    }


    /**
     * 像素数据
     */
    public static class PixelData {
        public final byte[] data;

        public PixelData(byte[] data) {
            this.data = data;
        }

        @Override
        public String toString() {
            return "PixelData{" +
                    ", length=" + data.length +
                    '}';
        }
    }

    interface Callback {
        void onReceive(byte[] data);
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    /**
     * 初始化Camera
     */
    public void initCamera(Activity act, SurfaceHolder holder) {
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
        mCamera.addCallbackBuffer(new byte[calculateFrameSize()]);
        mCamera.startPreview();
        //开启子线程
        initWorkThread();
        loop = true;
        workThread.start();
    }

    private void initWorkThread() {
        workThread = new Thread() {
            //YUV420
            final byte[] dstByte = new byte[calculateFrameSize()];

            @Override
            public void run() {
                while (loop && !Thread.interrupted()) {
                    try {
                        // 518400
                        // 720 * 480 * 1.5
                        PixelData pixelData = mQueue.take();
                        Yuv420Util.Nv21ToI420(pixelData.data, dstByte, previewSize.width, previewSize.height);
                        if (mCallback != null) {
                            // call to media codec
                            mCallback.onReceive(dstByte);
                        }
                        addCallbackBuffer(pixelData.data);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }
            }
        };
    }

    private void autoFocus() {
        String focusMode = mCamera.getParameters().getFocusMode();
        Logger.d(TAG, "focusMode=" + focusMode);
        if (!focusMode.equals(FOCUS_MODE_AUTO)) {
            return;
        }

        mCamera.autoFocus((success, camera) -> {
        });
    }

    public Camera.PreviewCallback getPreviewCallback() {
        return (data, camera) -> {
            autoFocus();
            if (data != null) {
                try {
                    mQueue.put(new PixelData(data));
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } else {
                camera.addCallbackBuffer(new byte[calculateFrameSize()]);
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
            mCamera.cancelAutoFocus();
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
    }

    private int calculateFrameSize() {
        return previewSize.width * previewSize.height * ImageFormat.getBitsPerPixel(ImageFormat.NV21) / 8;
    }


    private void setCameraParameters() {
        Camera.Parameters parameters = mCamera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        for (Camera.Size size : supportedPreviewSizes) {
            if (size.width >= config.minWidth && size.width <= config.maxWidth) {
                previewSize = size;
                Log.i(TAG, String.format("find preview size width=%d,height=%d", previewSize.width, previewSize.height));
                break;
            }
        }

        int[] destRange = {config.fps * 1000, config.fps * 1000};
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        for (int[] range : supportedPreviewFpsRange) {
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
        parameters.setPreviewFpsRange(destRange[PREVIEW_FPS_MIN_INDEX], destRange[PREVIEW_FPS_MAX_INDEX]);

        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        for (int i = 0; null != supportedFocusModes && i < supportedFocusModes.size(); i++) {
            if (FOCUS_MODE_AUTO.equals(supportedFocusModes.get(i))) {
                parameters.setFocusMode(FOCUS_MODE_AUTO);
                break;
            }
        }
        parameters.setPreviewFormat(ImageFormat.NV21);
        mCamera.setParameters(parameters);

        this.currentParams.setPreviewWidth(previewSize.width);
        this.currentParams.setPreviewHeight(previewSize.height);
        this.currentParams.setFrameRate(destRange[PREVIEW_FPS_MIN_INDEX] / 1000);
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
                throw new RuntimeException("Open Camera failed.", e);
            }
        }
    }
}
