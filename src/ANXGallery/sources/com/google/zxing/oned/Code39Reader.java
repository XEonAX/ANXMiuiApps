package com.google.zxing.oned;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import miui.os.FileUtils;

public final class Code39Reader extends OneDReader {
    private static final char[] ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
    private static final int ASTERISK_ENCODING = CHARACTER_ENCODINGS[39];
    static final int[] CHARACTER_ENCODINGS = new int[]{52, 289, 97, 352, 49, 304, BaiduSceneResult.STREET_VIEW, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, FileUtils.S_IRWXU, 145, 400, 208, BaiduSceneResult.EXPRESS_ORDER, 388, 196, 148, 168, 162, BaiduSceneResult.COSMETICS, 42};
}
