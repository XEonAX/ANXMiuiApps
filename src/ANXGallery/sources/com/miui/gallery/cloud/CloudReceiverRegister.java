package com.miui.gallery.cloud;

import android.content.BroadcastReceiver;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.GalleryUtils;

public class CloudReceiverRegister {

    private static class SingletonHolder {
        private static final CloudReceiverRegister sInstance = new CloudReceiverRegister();
    }

    public static CloudReceiverRegister getInstance() {
        return SingletonHolder.sInstance;
    }

    private CloudReceiverRegister() {
    }

    public void onAppCreate() {
        BroadcastReceiver timeSetReceiver = new TimeSetReceiver();
        GalleryUtils.registerReceiver(GalleryApp.sGetAndroidContext(), timeSetReceiver, "android.intent.action.TIME_SET");
    }
}
