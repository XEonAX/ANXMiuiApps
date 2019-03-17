package com.xiaomi.scanner.module;

import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.ui.ShutterButton.OnShutterButtonListener;

public interface ModuleController extends OnShutterButtonListener {
    void applyWindowInsets(int i);

    void doPrething();

    Object executeDoInBackground(Object... objArr);

    void executeOnPostExecute(int i, Object obj);

    void executeOnPostExecute(Object obj);

    String getCroppedImagePath();

    int getModuleId();

    boolean handleMessage(int i, int i2, Object obj, Object obj2);

    void init(ScanActivity scanActivity);

    boolean isCaptureNeeded();

    boolean isNetworkRequired();

    boolean isPause();

    boolean isPickerNeeded();

    boolean isSdkReady();

    boolean isUsePreviewFrameAsPicture();

    boolean isZoomNeeded();

    void onActivityDestroy();

    void onActivityResult(int i, int i2, Intent intent);

    boolean onBackPressed();

    void onCTAAndPermissionAgree();

    void onCameraClosed();

    void onConnectivityChanged();

    void onDestroy();

    boolean onKeyDown(int i, KeyEvent keyEvent);

    boolean onKeyUp(int i, KeyEvent keyEvent);

    void onOrientationChange(int i);

    void onPause();

    boolean onPictureTaken(byte[] bArr, CameraProxy cameraProxy);

    boolean onPreviewFrame(byte[] bArr, CameraProxy cameraProxy);

    void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    void onResume();

    void onSingleTapUp(View view, int i, int i2);

    void onStart();

    void onStop();

    void requestPreviewFrame();

    void selectPhotoClick();

    boolean shouldConsumeCameraKey();

    void updateWordTranslateUI(boolean z);
}
