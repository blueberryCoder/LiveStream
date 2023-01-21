package com.blueberry.media.utils;

/**
 * Created by muyonggang on 2023/1/14
 *
 * @author muyonggang@bytedance.com
 */
public class HexUtils {

    public static char hex[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A',
            'B', 'C', 'D', 'E', 'F'};

    public static String bytes2String(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bytes.length; i++) {
            byte b = bytes[i];
            sb.append(hex[(b >> 4) & 0xF]);
            sb.append(hex[b & 0xF]);
        }
        return sb.toString();
    }

    public static String bytes2String(byte[] bytes, int len) {
        int l = Math.min(len, bytes.length);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < l; i++) {
            byte b = bytes[i];
            sb.append(hex[(b >> 4) & 0xF]);
            sb.append(hex[b & 0xF]);
        }
        return sb.toString();
    }
}
