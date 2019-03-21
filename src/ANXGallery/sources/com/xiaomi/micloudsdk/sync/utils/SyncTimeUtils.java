package com.xiaomi.micloudsdk.sync.utils;

import android.content.Context;
import android.util.Log;
import com.xiaomi.micloudsdk.utils.PrefUtils;
import java.util.Random;

public class SyncTimeUtils {
    public static boolean isSyncTimeAvailable(Context context, String authority) {
        long resumeTime = PrefUtils.getLong(context, getResumeSyncTimeKey(authority), Long.valueOf(0)).longValue();
        long remaining = resumeTime - System.currentTimeMillis();
        if (remaining > 86400000) {
            Log.d("SyncTimeUtils", "isSyncTimeAvailable: Remaining time of " + authority + "is not right and reset.");
            PrefUtils.putLong(context, getResumeSyncTimeKey(authority), Long.valueOf(0));
            return true;
        } else if (remaining > 0) {
            Log.d("SyncTimeUtils", "isSyncTimeAvailable: " + authority + " sync suspended. " + (remaining / 1000) + " seconds to resume.");
            return false;
        } else if (resumeTime == 0) {
            return true;
        } else {
            Log.d("SyncTimeUtils", "isSyncTimeAvailable: The suspension of " + authority + " sync is expired now.");
            PrefUtils.putLong(context, getResumeSyncTimeKey(authority), Long.valueOf(0));
            return true;
        }
    }

    private static String getResumeSyncTimeKey(String authority) {
        return String.format("ResumeSyncTime_%s", new Object[]{authority});
    }

    public static int getSyncSuspendTime(Context context, String authority) {
        String prefAttemptNumberKey = String.format("AttemptNumber_%s", new Object[]{authority});
        int attempt = PrefUtils.getInt(context, prefAttemptNumberKey, Integer.valueOf(1)).intValue();
        int syncTimeInSeconds = getFullJitterTime((short) 7200, (short) 300, attempt);
        PrefUtils.putInt(context, prefAttemptNumberKey, Integer.valueOf(attempt + 1));
        return syncTimeInSeconds;
    }

    public static void suspendSync(Context context, String authority, long suspendTime) {
        PrefUtils.putLong(context, getResumeSyncTimeKey(authority), Long.valueOf(System.currentTimeMillis() + suspendTime));
    }

    public static void resetBackoffStatus(Context context, String authority) {
        PrefUtils.putInt(context, String.format("AttemptNumber_%s", new Object[]{authority}), Integer.valueOf(1));
    }

    private static int getFullJitterTime(short cap, short base, int attempt) {
        return new Random().nextInt((int) Math.min((double) cap, ((double) base) * Math.pow(2.0d, (double) attempt)));
    }
}
