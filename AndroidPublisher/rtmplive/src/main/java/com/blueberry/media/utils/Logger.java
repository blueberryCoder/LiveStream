package com.blueberry.media.utils;

import android.util.Log;

/**
 * Created by muyonggang on 2022/12/24
 */
public class Logger {
    private static final String TAG = "PUBLISH-";

    private static String appendTag(String tag) {
        return TAG + tag;
    }

    public static void d(String tag, String message) {
        Log.d(appendTag(tag), message);
    }

    public static void i(String tag, String message) {
        Log.i(appendTag(tag), message);
    }

    public static void w(String tag, String message) {
        Log.w( appendTag(tag),message);
    }
    public static void e(String tag, String message) {
        Log.e(appendTag(tag), message);
    }
}


