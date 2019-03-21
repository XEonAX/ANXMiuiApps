package com.xiaomi.channel.commonutils.misc;

import android.content.Context;

public class DebugUtils {
    static final char[] HEXCHARS = "0123456789ABCDEF".toCharArray();

    public static boolean isTesting(Context context) {
        return DebugSwitch.sDebugServerHost;
    }

    public static String bytes2Hex(byte[] data, int offset, int len) {
        StringBuilder builder = new StringBuilder(len * 2);
        for (int i = 0; i < len; i++) {
            int v = data[offset + i] & 255;
            builder.append(HEXCHARS[v >> 4]);
            builder.append(HEXCHARS[v & 15]);
        }
        return builder.toString();
    }
}
