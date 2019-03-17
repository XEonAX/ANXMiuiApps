package com.xiaomi.recognizer;

import android.graphics.Bitmap;
import com.xiaomi.scanner.debug.Log.Tag;

public class Quadrangle {
    private static final Tag TAG = new Tag("Quadrangle");

    private static native Bitmap nativeCovertToGray(Bitmap bitmap);

    private static native RecognizeResult nativeDetectBitmap(Bitmap bitmap);

    private static native RecognizeResult nativeDetectByteArray(byte[] bArr, int i, int i2);

    private static native Bitmap nativeRectify(Bitmap bitmap, float[] fArr, boolean z);

    static {
        System.loadLibrary("QuadrangleRecognizer");
    }

    public static RecognizeResult detectByteArray(byte[] img, int width, int height) {
        return nativeDetectByteArray(img, width, height);
    }

    public static RecognizeResult detectBitmap(Bitmap img) {
        return nativeDetectBitmap(img);
    }

    public static Bitmap rectify(Bitmap img, float[] corners, boolean enhanceImage) {
        return nativeRectify(img, corners, enhanceImage);
    }

    public static Bitmap covertToGray(Bitmap img) {
        return nativeCovertToGray(img);
    }
}
