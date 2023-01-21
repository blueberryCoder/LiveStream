package com.blueberry.media.utils;

import java.io.Closeable;
import java.io.IOException;

/**
 * Created by blueberry on 2023/1/15
 *
 * @author blueberrymyg@gmail.com
 */
public class IOUtils {

    public static void close(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
