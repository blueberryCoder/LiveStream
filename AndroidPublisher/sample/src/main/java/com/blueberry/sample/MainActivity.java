package com.blueberry.sample;

import android.app.ProgressDialog;
import android.media.AudioFormat;
import android.os.Bundle;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.Button;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

import com.blueberry.media.Config;
import com.blueberry.media.MediaPublisher;
import com.blueberry.media.rtmp.RtmpCallback;
import com.blueberry.media.rtmp.RtmpError;
import com.blueberry.media.utils.Logger;
import com.blueberry.media.utils.ToastUtil;

import java.io.File;


public class MainActivity extends AppCompatActivity implements SurfaceHolder.Callback2 {

    private static final String TAG = "MainActivity";
    private static final String URL = "rtmp://192.168.31.111:1935/live/test";

    private Button btnToggle;
    private EditText etUrl;

    private SurfaceHolder mSurfaceHolder;
    private MediaPublisher mMediaPublisher;
    private ProgressDialog mProgressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Logger.d(TAG, "onCreate");
        initView();
        mMediaPublisher = MediaPublisher
                .newInstance(new Config.Builder()
                        .setFps(30) // fps
                        .setMaxWidth(720) //视频的最大宽度
                        .setMinWidth(320) //视频的最小宽度
                        .setAudioFormat(AudioFormat.ENCODING_PCM_16BIT)
                        .setAudioChannel(AudioFormat.CHANNEL_IN_STEREO)
                        .setUrl(getPublishUrl())//推送的url
                        .setEnableDumpVideo(false)
                        .setDumpVideoPath(this.getExternalCacheDir() + File.separator + "test.h264")
                        .setEnableDumpAudio(false)
                        .setDumpAudioPath(this.getExternalCacheDir() + File.separator + "test.aac")
                        .setEnableDumpFlv(true)
                        .setDumpFlvPath(this.getExternalCacheDir() + File.separator + "test.flv")
                        .setEnableDumpVideoRaw(false)
                        .setDumpVideoRawPath(this.getExternalCacheDir() + File.separator + "test.yuv")
                        .build());
        mMediaPublisher.init();
        mMediaPublisher.initVideoGatherer(this, mSurfaceHolder);
    }

    private String getPublishUrl() {
        return etUrl.getText().toString();
    }

    private void initView() {
        etUrl = findViewById(R.id.et_url);
        etUrl.setText(URL);
        btnToggle = (Button) findViewById(R.id.btn_toggle);
        SurfaceView mSurfaceView = (SurfaceView) findViewById(R.id.surface_view);
        mSurfaceView.setKeepScreenOn(true);
        mSurfaceHolder = mSurfaceView.getHolder();
        mSurfaceHolder.addCallback(this);
        btnToggle.setOnClickListener(v -> switchPublish());
    }

    private void switchPublish() {
        if (mMediaPublisher.isPublishing()) {
            stop();
        } else {
            start();
        }
    }

    private void start() {
        mMediaPublisher.initAudioGatherer();
        mMediaPublisher.initEncoders();

        if (mProgressDialog != null) {
            mProgressDialog.dismiss();
        }
        mProgressDialog = new ProgressDialog(this);
        mProgressDialog.setTitle("RTMP connect...");
        mProgressDialog.show();

        mMediaPublisher.starPublish(new RtmpCallback() {
            @Override
            public void onSuccess() {
                btnToggle.post(() -> {
                    btnToggle.setText(getString(R.string.stop));
                    mProgressDialog.dismiss();
                });


                mMediaPublisher.startGather();
                mMediaPublisher.startEncoder();
            }

            @Override
            public void onFailed(RtmpError error) {
                btnToggle.post(() -> {
                    btnToggle.setText(getString(R.string.start));
                    mProgressDialog.dismiss();
                    ToastUtil.toast(error.getMessage());
                });
            }
        });

    }

    @Override
    protected void onResume() {
        super.onResume();
        Logger.d(TAG, "onResume: ");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Logger.d(TAG, "onPause: ");
    }

    private void stop() {
        if(mProgressDialog != null){
           mProgressDialog.dismiss();
        }
        mProgressDialog = new ProgressDialog(this);
        mProgressDialog.setTitle("Disconnect...");

        mMediaPublisher.stopPublish(new RtmpCallback() {
            @Override
            public void onSuccess() {
                btnToggle.post(() -> {
                    btnToggle.setText(getString(R.string.start));
                    mProgressDialog.dismiss();
                });
            }

            @Override
            public void onFailed(RtmpError error) {
                btnToggle.post(() -> {
                    btnToggle.setText(getString(R.string.stop));
                    mProgressDialog.dismiss();
                });
            }
        });

        mMediaPublisher.stopGather();
        mMediaPublisher.stopEncoder();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        stop();
        mMediaPublisher.release();
    }

    @Override
    public void surfaceRedrawNeeded(SurfaceHolder holder) {
        Logger.d(TAG, "surfaceRedrawNeeded");
    }

    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        Logger.d(TAG, "surfaceCreated");
    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        Logger.d(TAG, "surfaceChanged");
        mMediaPublisher.initVideoGatherer(MainActivity.this, holder);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
        Logger.d(TAG, "surfaceDestroyed");
    }

}
