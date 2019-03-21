package com.xiaomi.micloudsdk.request.utils;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.xiaomi.micloudsdk.provider.MiCloudSettings;

public class CloudNetworkAvailabilityManager {
    public static synchronized void setRequestResult(Context context, boolean available) {
        synchronized (CloudNetworkAvailabilityManager.class) {
            if (context == null) {
                Log.d("NetworkAvailability", "context is null, ignore");
            } else {
                boolean oldNetworkState = getAvailability(context);
                if (oldNetworkState != available) {
                    MiCloudSettings.putInt(context, "micloud_network_availability", available ? 1 : 0);
                    sendNetworkAvailabilityChangedBroadcast(context, available);
                    Log.d("NetworkAvailability", "micloud network state changed from " + oldNetworkState + " to " + available);
                }
            }
        }
    }

    public static synchronized boolean getAvailability(Context context) {
        boolean z = false;
        synchronized (CloudNetworkAvailabilityManager.class) {
            if (context == null) {
                throw new IllegalArgumentException("context cannot be null");
            }
            if (MiCloudSettings.getInt(context, "micloud_network_availability", 0) != 0) {
                z = true;
            }
        }
        return z;
    }

    private static void sendNetworkAvailabilityChangedBroadcast(Context context, boolean active) {
        Log.d("NetworkAvailability", "sendNetworkAvailabilityChangedBroadcast active: " + active);
        Intent syncStateIntent = new Intent("miui.intent.action.MICLOUD_NETWORK_AVAILABILITY_CHANGED");
        syncStateIntent.putExtra("active", active);
        context.sendBroadcast(syncStateIntent);
    }
}
