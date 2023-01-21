package com.blueberry.sample.utils;

import android.content.Context;
import android.content.res.AssetManager;

import com.blueberry.media.utils.IOUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by blueberry on 2023/1/15
 */
public class FileUtils {

    public static String getExternalCacheDir(Context context) {
        return context.getExternalCacheDir().getAbsolutePath();
    }

    public static String getExternalCacheDir(Context context,String fileName) {
        return context.getExternalCacheDir() + File.separator + fileName;
    }

    public static void writeAssetsToSdcard(Context context, String fileName, String sdcardDir) {
        AssetManager assets = context.getAssets();
        InputStream in = null;
        FileOutputStream fos = null;
        try {
            in = assets.open(fileName);
            fos = new FileOutputStream(new File(sdcardDir, fileName));
            byte[] bytes = new byte[8192];
            int len = -1;
            while ((len = in.read(bytes)) != -1) {
                fos.write(bytes, 0, len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IOUtils.close(in);
            IOUtils.close(fos);
        }
    }
}
