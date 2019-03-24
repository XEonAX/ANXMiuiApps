package com.miui.internal.app;

import android.app.Application;
import miui.core.SdkManager;

public class SystemApplication extends Application {
    public SystemApplication() {
        SdkManager.initialize(this, null);
    }

    public void onCreate() {
        super.onCreate();
        SdkManager.start(null);
    }
}
