package com.nexstreaming.app.common.util;

import android.os.StatFs;
import android.util.Log;
import java.io.File;

/* compiled from: FreeSpaceChecker */
public final class e {
    public static long a(File file) {
        long j = Long.MAX_VALUE;
        while (file != null && !file.exists()) {
            file = file.getParentFile();
        }
        if (file == null) {
            return j;
        }
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            return ((long) statFs.getBlockSize()) * (((long) statFs.getAvailableBlocks()) - 1);
        } catch (Throwable e) {
            Log.e("FreeSpaceChecker", "KM-1618 : ", e);
            return j;
        }
    }
}
