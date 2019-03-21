package com.xiaomi.channel.commonutils.file;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.File;

public class SDCardUtils {
    public static boolean isSDCardUnavailable() {
        try {
            return Environment.getExternalStorageState().equals("removed");
        } catch (Throwable e) {
            MyLog.e(e);
            return true;
        }
    }

    public static boolean isSDCardBusy() {
        try {
            return !Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable e) {
            MyLog.e(e);
            return true;
        }
    }

    public static boolean isSDCardFull() {
        return getSDCardAvailableBytes() <= 102400;
    }

    public static boolean isSDCardUseful() {
        return (isSDCardBusy() || isSDCardFull() || isSDCardUnavailable()) ? false : true;
    }

    public static long getSDCardAvailableBytes() {
        if (isSDCardBusy()) {
            return 0;
        }
        File path = Environment.getExternalStorageDirectory();
        if (path == null || TextUtils.isEmpty(path.getPath())) {
            return 0;
        }
        try {
            StatFs stat = new StatFs(path.getPath());
            return (((long) stat.getAvailableBlocks()) - 4) * ((long) stat.getBlockSize());
        } catch (Throwable th) {
            return 0;
        }
    }
}
