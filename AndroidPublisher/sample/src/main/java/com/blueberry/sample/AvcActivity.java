package com.blueberry.sample;

import android.os.Bundle;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.blueberry.media.Yuv420Util;
import com.blueberry.media.codec.Segment;
import com.blueberry.media.codec.VideoAvcReceivedResult;
import com.blueberry.media.codec.VideoAvcSendResult;
import com.blueberry.media.codec.VideoEncoder;
import com.blueberry.media.utils.IOUtils;
import com.blueberry.media.utils.Logger;
import com.blueberry.sample.utils.FileConsts;
import com.blueberry.sample.utils.FileUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;

/**
 * Created by blueberry on 2023/01/15.
 */
public class AvcActivity extends AppCompatActivity {
    private TextView tvLog;
    private VideoEncoder videoEncoder;
    private String yuvPath;
    private String outputAvcPath;
    private static final String TAG = "VideoEncoder-AVC";
//    private static final int BUFFER_LENGTH = 81920;

//    private static final int width = 176;
//    private static final int height = 144;
//    private static final int FPS = 24;

    private static final int width = 720;
    private static final int height = 480;
    private static final int FPS = 15;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.act_avc);
        yuvPath = this.getExternalCacheDir() + File.separator + "test.yuv";
//        yuvPath = FileUtils.getExternalCacheDir(AvcActivity.this,FileConsts.AKIYU_YUV);
        outputAvcPath = this.getExternalCacheDir() + File.separator + "output-avc.h264";
        writeAkiYuv();

        findViewById(R.id.btn_avc_start).setOnClickListener(v -> {
            // start encoder
            tvLog.setText(R.string.start_avc_encoder);
            startEncoder();
        });
        tvLog = findViewById(R.id.tv_log);
    }

    private void writeAkiYuv() {
        //  176 144
        new Thread() {
            @Override
            public void run() {
                File file = new File(FileUtils.getExternalCacheDir(AvcActivity.this,FileConsts.AKIYU_YUV));
                if(!file.exists()) {
                    FileUtils.writeAssetsToSdcard(AvcActivity.this, FileConsts.AKIYU_YUV,
                            AvcActivity.this.getExternalCacheDir().getAbsolutePath());
                }
            }
        }.start();
    }

    private void startEncoder() {
        new Thread() {
            @Override
            public void run() {
                videoEncoder = new VideoEncoder();
//                videoEncoder.initVideoEncoder(720, 480, 15, 700_000);
                videoEncoder.initVideoEncoder(width, height, FPS, 700_000);
                videoEncoder.start();

                FileOutputStream fos = null;
                FileInputStream fis = null;
                try {
                    fis = new FileInputStream(yuvPath);
                    fos = new FileOutputStream(outputAvcPath);
                    LinkedList<Segment> queue = new LinkedList<>();
                    int bufferLength = width * height * 3 / 2;
                    byte[] readBytes = new byte[bufferLength];
                    int len = -1;
                    int remain = 0;
                    boolean isEnd = false;
                    outter:
                    while (true) {
                        if (queue.isEmpty()) {
                            if ((len = fis.read(readBytes, 0, bufferLength)) != -1) {
                                int available = fis.available();
                                Logger.v(TAG, "read byte len=" + len + ",available=" + available);
                                byte[] newBuffer = new byte[len];
                                Yuv420Util.Nv21ToI420(readBytes, newBuffer, width, height);
                                queue.add(new Segment(newBuffer, 0, len));
                                if (len < bufferLength || available == 0) {
                                    isEnd = true;
                                }
                            }
                        }
                        while (!queue.isEmpty()) {
                            Segment segment = queue.peek();
                            VideoAvcSendResult sentResult= videoEncoder.sendData(segment.getBuffer(), segment.getStart(), segment.remain(), isEnd);
                            segment.plus(sentResult.getSent());
                            if (segment.remain() == 0) {
                                queue.poll();
                            }
                            if(sentResult.getType() != VideoAvcSendResult.Type.SUCCESS){
                                // try -again
                                // should consume
                                break ;
                            }
                        }

                        VideoAvcReceivedResult videoAvcReceivedResult = null;
                        do {
                            videoAvcReceivedResult = videoEncoder.receiveData();
                            if (videoAvcReceivedResult.getType() == VideoAvcReceivedResult.Type.NALU
                                    || (videoAvcReceivedResult.getType() == VideoAvcReceivedResult.Type.CONFIG &&
                                    videoAvcReceivedResult.getBuffer() != null)) {
//                                MediaCodec.BufferInfo bufferInfo = videoAvcReceivedResult.getBufferInfo();
                                fos.write(videoAvcReceivedResult.getBuffer());
                                if (videoAvcReceivedResult.isEnd()) {
                                    fos.flush();
                                    break outter;
                                }
                            }
                        } while (videoAvcReceivedResult.getType() != VideoAvcReceivedResult.Type.TRY_AGAIN);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    IOUtils.close(fos);
                    IOUtils.close(fis);
                }

                Logger.i(TAG, "write end.");
                updateFinished();
            }
        }.start();
    }


    public void updateFinished() {
        tvLog.post(new Runnable() {
            @Override
            public void run() {
                tvLog.setText(R.string.encode_finished);
            }
        });
    }
}
