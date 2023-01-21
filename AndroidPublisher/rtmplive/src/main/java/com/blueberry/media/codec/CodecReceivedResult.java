package com.blueberry.media.codec;

/**
 * Created by blueberry on 2023/1/15
 */
public class CodecReceivedResult {

    public enum Type {
        CONFIG,
        NALU,
        AAC,
        TRY_AGAIN,
        NONE,
    }

    private final Type type;
    private final byte[] buffer;
    private final boolean isEnd;

    public CodecReceivedResult(Type type, byte[] buffer, boolean isEnd) {
        this.type = type;
        this.buffer = buffer;
        this.isEnd = isEnd;
    }

    public boolean isEnd() {
        return isEnd;
    }

    public Type getType() {
        return type;
    }


    public byte[] getBuffer() {
        return buffer;
    }

}
