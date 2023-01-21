package com.blueberry.media.utils;

import android.os.Handler;
import android.os.Looper;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/**
 * Created by blueberry on 2023/1/20
 */
public class ThreadUtils {
    private static final Handler uiHandler = new Handler(Looper.getMainLooper());

    private static Executor ioExecutor = Executors.newScheduledThreadPool(3);

    public static void runOnUIThread(Runnable runnable) {
        uiHandler.post(runnable);
    }

    public static void runOnIoThread(Runnable runnable) {
        ioExecutor.execute(runnable);
    }

}
