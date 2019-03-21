package com.miui.gallery.util.assistant;

public class FlagUtil {
    public static int setFlag(int srcFlag, int flag) {
        return srcFlag | flag;
    }

    public static boolean hasFlag(int srcFlag, int flag) {
        return (srcFlag & flag) > 0;
    }
}
