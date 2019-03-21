package miui.gallery.support;

import android.annotation.SuppressLint;
import android.content.SyncRequest.Builder;
import android.util.Log;

public class SyncCompat {
    private static volatile Boolean sSupportRequiresCharging;

    @SuppressLint({"NewApi"})
    public static void setRequiresCharging(Builder builder, boolean enabled) {
        if (sSupportRequiresCharging == null) {
            try {
                builder.setRequiresCharging(enabled);
                setRequiresCharging(true);
            } catch (NoSuchMethodError e) {
                Log.w("SyncCompat", "setRequiresCharging is not supported", e);
                setRequiresCharging(false);
            }
        } else if (sSupportRequiresCharging.booleanValue()) {
            builder.setRequiresCharging(enabled);
        }
    }

    private static synchronized void setRequiresCharging(boolean enabled) {
        synchronized (SyncCompat.class) {
            sSupportRequiresCharging = Boolean.valueOf(enabled);
        }
    }
}
