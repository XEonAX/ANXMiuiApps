package com.cdv.utils;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

public class NvAndroidDisplayListener implements DisplayListener {
    private int m_id = 0;

    private static native void notifyDisplayChanged(int i, int i2);

    private NvAndroidDisplayListener(int i) {
        this.m_id = i;
    }

    public boolean Register(Context context) {
        if (context == null) {
            return false;
        }
        Object systemService = context.getSystemService("display");
        if (systemService == null) {
            return false;
        }
        try {
            ((DisplayManager) systemService).registerDisplayListener(this, new Handler(Looper.getMainLooper()));
            return true;
        } catch (Exception e) {
            Log.e("NvAndroidDisplayListener", "" + e.getMessage());
            return false;
        }
    }

    public void Unregister(Context context) {
        if (context != null) {
            Object systemService = context.getSystemService("display");
            if (systemService != null) {
                ((DisplayManager) systemService).unregisterDisplayListener(this);
            }
        }
    }

    public void onDisplayAdded(int i) {
    }

    public void onDisplayChanged(int i) {
        notifyDisplayChanged(this.m_id, i);
    }

    public void onDisplayRemoved(int i) {
    }
}
