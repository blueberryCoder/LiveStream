package com.blueberry.media.codec;

/**
 * Created by blueberry on 2023/1/15
 */
public class CodecSendResult {

    public enum Type {
        TRY_AGAIN,
        SUCCESS,
        ERROR,
    }

    private final int sent;
    private final Type type;

    public CodecSendResult(int sent, Type type) {
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
