package com.blueberry.media.rtmp;

/**
 * Created by blueberry on 2023/1/20
 */
public interface RtmpCallback {

    void onSuccess();

    void onFailed(RtmpError error);
}
