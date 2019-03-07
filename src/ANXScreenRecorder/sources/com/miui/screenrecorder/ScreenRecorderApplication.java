package com.miui.screenrecorder;

import android.app.ActivityManager;
import android.content.Context;
import android.os.StrictMode;
import android.os.StrictMode.VmPolicy.Builder;
import com.miui.screenrecorder.config.PhoneConfigInstance;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;
import com.miui.screenrecorder.tools.MSRImageLoader;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import miui.external.Application;

public class ScreenRecorderApplication extends Application {
    private static Context sContext;

    public class ApplicationDelegate extends miui.external.ApplicationDelegate {
        public void onCreate() {
            super.onCreate();
            ScreenRecorderUtils.isMonkeyMode = ActivityManager.isUserAMonkey();
            ScreenRecorderApplication.sContext = getApplicationContext();
            MiStatInterfaceUtils.init(ScreenRecorderApplication.sContext);
            if (ScreenRecorderUtils.isAndroid24AndLater()) {
                Builder builder = new Builder();
                StrictMode.setVmPolicy(builder.build());
                builder.detectFileUriExposure();
            }
            MiuiScreenRecorderGlobalData.getInstance().reset();
            ScreenRecorderApplication.this.init();
        }
    }

    public ApplicationDelegate onCreateApplicationDelegate() {
        return new ApplicationDelegate();
    }

    private void init() {
        new Thread(new Runnable() {
            public void run() {
                PhoneConfigInstance.INSTANCE.getInstance();
                MSRImageLoader.getInstance(ScreenRecorderApplication.getContext());
            }
        }).start();
    }

    public static Context getContext() {
        return sContext;
    }
}
