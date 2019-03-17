package com.xiaomi.scanner.app;

import android.content.Context;
import miui.external.Application;

public class ScannerApp extends Application {
    private static ScannerApplicationDelegate sApplicationDelegate;

    public ScannerApplicationDelegate onCreateApplicationDelegate() {
        if (sApplicationDelegate == null) {
            sApplicationDelegate = new ScannerApplicationDelegate(this);
        }
        return sApplicationDelegate;
    }

    public static Context getAndroidContext() {
        return ScannerApplicationDelegate.getAndroidContext();
    }
}
