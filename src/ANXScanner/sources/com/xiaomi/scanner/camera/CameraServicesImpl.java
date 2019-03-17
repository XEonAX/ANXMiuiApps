package com.xiaomi.scanner.camera;

import android.content.Context;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.settings.SettingsManager;

public class CameraServicesImpl implements CameraServices {
    private static CameraServicesImpl mInstance;
    private MotionManager mMotionManager;
    private final SettingsManager mSettingsManager;

    public static CameraServicesImpl instance() {
        if (mInstance == null) {
            mInstance = new CameraServicesImpl(ScannerApp.getAndroidContext());
        }
        return mInstance;
    }

    private CameraServicesImpl(Context context) {
        this.mSettingsManager = new SettingsManager(context);
    }

    public MotionManager getMotionManager() {
        if (this.mMotionManager == null) {
            this.mMotionManager = new MotionManager(ScannerApp.getAndroidContext());
        }
        return this.mMotionManager;
    }

    public SettingsManager getSettingsManager() {
        return this.mSettingsManager;
    }
}
