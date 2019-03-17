package com.xiaomi.scanner.util;

import android.os.Environment;
import android.os.StatFs;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.File;

public class Storage {
    public static final long ACCESS_FAILURE = -4;
    private static final String DCIM = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString();
    public static final String DIRECTORY = (DCIM + File.separator + "scanner");
    public static final long LOW_STORAGE_THRESHOLD_BYTES = 50000000;
    public static final long PREPARING = -2;
    private static final Tag TAG = new Tag("Storage");
    public static final long UNAVAILABLE = -1;
    public static final long UNKNOWN_SIZE = -3;

    public static long getAvailableSpace() {
        String state = Environment.getExternalStorageState();
        Log.d(TAG, "External storage state=" + state);
        if ("checking".equals(state)) {
            return -2;
        }
        if (!"mounted".equals(state)) {
            return -1;
        }
        File dir = new File(DIRECTORY);
        dir.mkdirs();
        if (!dir.isDirectory() || !dir.canWrite()) {
            return -1;
        }
        try {
            StatFs stat = new StatFs(DIRECTORY);
            return ((long) stat.getAvailableBlocks()) * ((long) stat.getBlockSize());
        } catch (Exception e) {
            Log.i(TAG, "Fail to access external storage", e);
            return -3;
        }
    }
}
