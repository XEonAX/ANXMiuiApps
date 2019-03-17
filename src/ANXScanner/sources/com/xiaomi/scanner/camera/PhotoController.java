package com.xiaomi.scanner.camera;

import android.view.View;
import com.xiaomi.scanner.ui.ShutterButton.OnShutterButtonListener;

public interface PhotoController extends OnShutterButtonListener {
    public static final int FOCUSING = 2;
    public static final int IDLE = 1;
    public static final int PREVIEW_STOPPED = 0;
    public static final int SNAPSHOT_IN_PROGRESS = 3;

    void cancelAutoFocus();

    int getCameraState();

    boolean isCameraIdle();

    void onPreviewUIDestroyed();

    void onPreviewUIReady();

    void onSingleTapUp(View view, int i, int i2);

    void stopPreview();

    void updateCameraOrientation();

    void updatePreviewAspectRatio(float f);
}
