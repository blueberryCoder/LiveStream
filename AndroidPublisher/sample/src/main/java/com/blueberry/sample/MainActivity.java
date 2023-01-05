package com.blueberry.sample;

import android.media.AudioFormat;
import android.os.Bundle;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

import com.blueberry.media.Config;
import com.blueberry.media.MediaPublisher;
import com.blueberry.media.utils.Logger;

import java.io.File;


public class MainActivity extends AppCompatActivity implements SurfaceHolder.Callback2 {

    private static final String TAG = "MainActivity";
    private static final String URL = "rtmp://192.168.31.111:1935/live/test";

    private Button btnToggle;
    private EditText etUrl;
    private SurfaceView mSurfaceView;

    private SurfaceHolder mSurfaceHolder;
    private boolean isPublished;

    private MediaPublisher mMediaPublisher;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initView();
        mMediaPublisher = MediaPublisher
                .newInstance(new Config.Builder()
                        .setFps(30) // fps
                        .setMaxWidth(720) //视频的最大宽度
                        .setMinWidth(320) //视频的最小宽度
                        .setAudioFormat(AudioFormat.ENCODING_PCM_16BIT)
                        .setAudioChannel(AudioFormat.CHANNEL_IN_STEREO)
                        .setUrl(getPublishUrl())//推送的url
                        .setEnableDumpVideo(true)
                        .setDumpVideoPath(this.getExternalCacheDir() + File.separator + "test.h264")
                        .setEnableDumpAudio(true)
                        .setDumpAudioPath(this.getExternalCacheDir() + File.separator + "test.aac")
                        .build());
        mMediaPublisher.init();
    }

    private String getPublishUrl() {
        return etUrl.getText().toString();
    }

    private void initView() {
        etUrl = findViewById(R.id.et_url);
        etUrl.setText(URL);
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
    }

    private void start() {
        mMediaPublisher.initAudioGatherer();
        mMediaPublisher.initEncoders();
        mMediaPublisher.startGather();
        mMediaPublisher.startEncoder();
        mMediaPublisher.starPublish();

        btnToggle.setText(isPublished ? "STOP" : "START");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.i(TAG, "onResume: ");
        mMediaPublisher.initVideoGatherer(this, mSurfaceHolder);
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.i(TAG, "onPause: ");
        stop();
    }

    private void stop() {
        mMediaPublisher.stopPublish();
        mMediaPublisher.stopGather();
        mMediaPublisher.stopEncoder();
        isPublished = false;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mMediaPublisher.release();
    }

    @Override
    public void surfaceRedrawNeeded(SurfaceHolder holder) {

    }

    @Override
    public void surfaceCreated(SurfaceHolder holder) {

    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        Logger.i(TAG, "surfaceChanged: ");
        mMediaPublisher.initVideoGatherer(MainActivity.this, holder);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {

    }

}
