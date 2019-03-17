package com.xiaomi.scanner.app;

import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.view.View;
import com.xiaomi.scanner.camera.CameraProvider;
import com.xiaomi.scanner.camera.CameraServices;
import com.xiaomi.scanner.camera.CaptureModule;
import com.xiaomi.scanner.camera.FatalErrorHandler;
import com.xiaomi.scanner.camera.OrientationManager;
import com.xiaomi.scanner.module.ModuleController;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.ui.FullScreenPanelRoot.VisibleChangeListener;
import com.xiaomi.scanner.ui.PreviewStatusListener;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAreaChangedListener;

public interface AppController extends VisibleChangeListener {

    public interface ShutterEventsListener {
        void onShutterClicked();

        void onShutterLongPressed();

        void onShutterPressed();

        void onShutterReleased();
    }

    void addPreviewAreaSizeChangedListener(PreviewAreaChangedListener previewAreaChangedListener);

    boolean checkAppStartRun();

    void doPrething();

    void enableKeepScreenOn(boolean z);

    Context getAndroidContext();

    AppUI getAppUI();

    CameraProvider getCameraProvider();

    String getCameraScope();

    CaptureModule getCaptureModule();

    ModuleController getCurrentModuleController();

    int getCurrentModuleIndex();

    FatalErrorHandler getFatalErrorHandler();

    String getImagePath();

    int getModuleId(int i);

    View getModuleLayoutRoot();

    String getModuleScope();

    OrientationManager getOrientationManager();

    CameraServices getServices();

    SettingsManager getSettingsManager();

    boolean handleMessage(int i, int i2, Object obj, Object obj2);

    boolean isCaptureNeeded();

    boolean isOnlyBusinessCardScan();

    boolean isPaused();

    boolean isPickerNeeded();

    boolean isPrerequisiteSatisfied();

    boolean isSdkReady();

    boolean isShutterEnabled();

    void launchActivityByIntent(Intent intent);

    void onModuleSelected(int i);

    void onPreviewStarted();

    void removePreviewAreaSizeChangedListener(PreviewAreaChangedListener previewAreaChangedListener);

    void requestPreviewFrame();

    void setInPictureTakenState(boolean z);

    void setPreviewStatusListener(PreviewStatusListener previewStatusListener);

    void setShutterEventsListener(ShutterEventsListener shutterEventsListener);

    void updatePreviewAspectRatio(float f);

    void updatePreviewTransform(Matrix matrix);

    void updateWordTranslateUI(boolean z);
}
