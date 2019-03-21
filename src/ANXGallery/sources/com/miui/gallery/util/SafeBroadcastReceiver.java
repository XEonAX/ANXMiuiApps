package com.miui.gallery.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

public class SafeBroadcastReceiver extends BroadcastReceiver {
    private WeakReference<WeakReceiver> mWeakReceiverRef;

    public interface WeakReceiver {
        void onReceive(Context context, Intent intent);
    }

    public SafeBroadcastReceiver(WeakReceiver weakReceiver) {
        this.mWeakReceiverRef = new WeakReference(weakReceiver);
    }

    public void onReceive(Context context, Intent intent) {
        WeakReceiver weakReceiver = (WeakReceiver) this.mWeakReceiverRef.get();
        if (weakReceiver != null) {
            weakReceiver.onReceive(context, intent);
        }
    }
}
