package com.ta.utdid2.b.a;

import android.util.Log;

/* compiled from: TimeUtils */
public class j {
    public static final String TAG = j.class.getName();

    public static boolean a(long j, int i) {
        boolean z = (System.currentTimeMillis() - j) / 86400000 < ((long) i);
        if (d.e) {
            Log.d(TAG, "isUpToDate: " + z + "; oldTimestamp: " + j + "; currentTimestamp" + System.currentTimeMillis());
        }
        return z;
    }
}
