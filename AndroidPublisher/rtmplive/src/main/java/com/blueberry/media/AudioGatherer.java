package com.blueberry.media;

import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.util.Log;

import com.blueberry.media.utils.Logger;

/**
 * Created by blueberry on 3/6/2017.
 * <p>
 */

public class AudioGatherer {

    private static final String TAG = "AudioGatherer";

    private final Config mConfig;

    private AudioRecord mAudioRecord;
    private byte[] buffer;
    private Thread workThread;
    private boolean loop;
    private Callback mCallback;
    private AudioGatherParams currentParams = new AudioGatherParams() ;


    public AudioGatherParams getCurrentParams() {
        return currentParams;
    }

    public static AudioGatherer newInstance(Config config) {
        return new AudioGatherer(config);

    }

    private AudioGatherer(Config config) {
        this.mConfig = config;
    }

    /**
     * init audio recorder.
     */
    public void initAudioDevice() {
        int[] sampleRates = {44100, 22050, 16000, 11025, 8000, 4000};
        for (int sampleRate : sampleRates) {
            //编码制式
            int audioFormat = mConfig.audioFormat;
            // stereo 立体声，
            int channelConfig = mConfig.channelConfig;
            int bufferSize = 2 * AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat);
            mAudioRecord = new AudioRecord(MediaRecorder.AudioSource.MIC,
                    sampleRate,
                    channelConfig,
                    audioFormat,
                    bufferSize);
            if (mAudioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
                continue;
            }
            this.buffer = new byte[Math.min(80920, bufferSize)];

            this.currentParams.setSampleRate(sampleRate);
            this.currentParams.setChannelCount(getChannelCount(channelConfig));
            this.currentParams.setSampleSize(16); // TODO should follow size
            return ;
        }
    }

    public static int getChannelCount(int channelConfig) {
        return Integer.bitCount(channelConfig);
    }

    /**
     * start record
     */
    public void start() {
        workThread = new Thread() {
            @Override
            public void run() {
                mAudioRecord.startRecording();
                while (loop && !Thread.interrupted()) {
                    int size = mAudioRecord.read(buffer, 0, buffer.length);
                    if (size < 0) {
                        Logger.i(TAG, "audio ignore ,no data to read");
                        break;
                    }
                    if (loop) {
                        byte[] audio = new byte[size];
                        System.arraycopy(buffer, 0, audio, 0, size);
                        if (mCallback != null) {
                            mCallback.audioData(audio);
                        }
                    }
                }
            }
        };

        loop = true;
        workThread.start();
    }

    public void stop() {
        loop = false;
        if(workThread!=null) {
            workThread.interrupt();
            Log.i(TAG, "Stop");
        }
        mAudioRecord.stop();
    }

    public void release() {
        mAudioRecord.release();
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public interface Callback {
        void audioData(byte[] data);
    }
}
