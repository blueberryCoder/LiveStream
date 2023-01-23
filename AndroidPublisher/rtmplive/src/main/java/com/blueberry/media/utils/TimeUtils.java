package com.blueberry.media.utils;

/**
 * Created by blueberry on 2023/1/15
 *
 * @author blueberrymyg@gmail.com
 */
public class TimeUtils {

    synchronized public static long currentUs() {
        return System.nanoTime() / 1000;
    }
}
