package com.blueberry.media.codec;

/**
 * Created by blueberry on 2023/1/15
 */
public class Segment {

    private byte[] buffer;
    private int start;
    private int length;

    public Segment(byte[] buffer, int start, int length) {
        this.buffer = buffer;
        this.start = start;
        this.length = length;
    }

    public void plus(int step) {
        start += step;
    }

    public int remain() {
        return length - start;
    }

    public byte[] getBuffer() {
        return buffer;
    }

    public void setBuffer(byte[] buffer) {
        this.buffer = buffer;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }
}
