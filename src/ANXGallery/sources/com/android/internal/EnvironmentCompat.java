package com.android.internal;

import android.os.Environment;
import java.io.File;

public class EnvironmentCompat {
    public static final String getLegacyExternalStorageDirectory() {
        File file;
        try {
            file = Environment.getLegacyExternalStorageDirectory();
        } catch (NoSuchMethodError e) {
            file = null;
        }
        if (file == null) {
            return "/sdcard";
        }
        return file.getPath();
    }
}
