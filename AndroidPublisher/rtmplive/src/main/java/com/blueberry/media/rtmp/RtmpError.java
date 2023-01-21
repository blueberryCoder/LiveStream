package com.blueberry.media.rtmp;

/**
 * Created by blueberry on 2023/1/20
 */
public class RtmpError {


    private int code;
    private String message;
    public RtmpError(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
