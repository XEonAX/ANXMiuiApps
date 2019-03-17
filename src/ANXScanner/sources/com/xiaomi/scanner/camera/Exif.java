package com.xiaomi.scanner.camera;

import com.xiaomi.scanner.camera.exif.ExifInterface;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Exif {
    private static final Tag TAG = new Tag("Exif");

    public static ExifInterface getExif(byte[] jpegData) {
        ExifInterface exif = new ExifInterface();
        try {
            exif.readExif(jpegData);
        } catch (IOException e) {
            Log.w(TAG, "Failed to read EXIF data", e);
        }
        return exif;
    }

    public static ExifInterface getExif(String filePath) {
        ExifInterface exif = new ExifInterface();
        try {
            exif.readExif(filePath);
        } catch (FileNotFoundException e) {
            Log.w(TAG, "Failed to find file: " + filePath, e);
        } catch (IOException e2) {
            Log.w(TAG, "Failed to read EXIF from file: " + filePath, e2);
        }
        return exif;
    }

    public static int getOrientation(ExifInterface exif) {
        Integer val = exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
        if (val == null) {
            return 0;
        }
        return ExifInterface.getRotationForOrientationValue(val.shortValue());
    }

    public static int getOrientation(byte[] jpegData) {
        if (jpegData == null) {
            return 0;
        }
        return getOrientation(getExif(jpegData));
    }

    public static int getOrientation(String filePath) {
        if (filePath == null) {
            return 0;
        }
        long startTime = System.currentTimeMillis();
        int orientation = getOrientation(getExif(filePath));
        Log.t(TAG, "cost:" + (System.currentTimeMillis() - startTime));
        return orientation;
    }
}
