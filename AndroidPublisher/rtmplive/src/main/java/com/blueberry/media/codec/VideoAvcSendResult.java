package com.blueberry.media.codec;

/**
 * Created by blueberry on 2023/1/15
 */
public class VideoAvcSendResult {

    public enum  Type {
        TRY_AGAIN,
        SUCCESS,
        ERROR,
    }
    private int sent ;

    private Type type;

    public VideoAvcSendResult(int sent, Type type) {
        this.sent = sent;
        this.type = type;
    }

    public int getSent() {
        return sent;
    }

    public Type getType() {
        return type;
    }
}
