package com.nexstreaming.app.common.util;

import android.util.Log;
import java.io.Closeable;

/* compiled from: CloseUtil */
public class b {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable e) {
                Log.w("CloseUtil", "Error closing resource", e);
            }
        }
    }
}
