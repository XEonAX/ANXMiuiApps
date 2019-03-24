package com.miui.internal.app;

import android.app.Application;
import com.miui.internal.server.CoreJobService;
import miui.core.SdkManager;

public class MiuiApplication extends Application {
    public MiuiApplication() {
        SdkManager.initialize(this, null);
    }

    public void onCreate() {
        super.onCreate();
        SdkManager.start(null);
        CoreJobService.scheduleJobs(this);
    }
}
