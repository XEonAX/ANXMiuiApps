package com.xiaomi.scanner.camera;

import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Area;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.android.ex.camera2.portability.CameraCapabilities;
import com.android.ex.camera2.portability.CameraCapabilities.Feature;
import com.android.ex.camera2.portability.CameraCapabilities.FocusMode;
import com.xiaomi.scanner.camera.MotionManager.MotionListener;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.CameraCoordinateTransformer;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAreaChangedListener;
import com.xiaomi.scanner.util.CameraUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class FocusManager implements PreviewAreaChangedListener, MotionListener {
    public static final float AE_REGION_BOX = 0.3f;
    public static final float AF_REGION_BOX = 0.2f;
    private static final int RESET_AUTO_FOCUS = 1;
    private static final int RESET_AUTO_FOCUS_DELAY_MILLIS = 5000;
    private static final int RESET_TOUCH_FOCUS = 0;
    private static final int RESET_TOUCH_FOCUS_DELAY_MILLIS = 2000;
    private static final int STATE_FAIL = 4;
    private static final int STATE_FOCUSING = 1;
    private static final int STATE_FOCUSING_SNAP_ON_FINISH = 2;
    private static final int STATE_IDLE = 0;
    private static final int STATE_SUCCESS = 3;
    private static final Tag TAG = new Tag("FocusManager");
    private boolean mAeAwbLock;
    private CameraCapabilities mCapabilities;
    private CameraCoordinateTransformer mCoordinateTransformer;
    private final List<FocusMode> mDefaultFocusModes;
    private int mDisplayOrientation;
    private List<Area> mFocusArea;
    private boolean mFocusAreaSupported;
    private boolean mFocusLocked;
    private FocusMode mFocusMode;
    private final Handler mHandler;
    private boolean mInitialized;
    private Listener mListener;
    private boolean mLockAeAwbNeeded;
    private List<Area> mMeteringArea;
    private boolean mMeteringAreaSupported;
    private boolean mMirror;
    private final Rect mPreviewRect = new Rect(0, 0, 0, 0);
    private int mState = 0;

    public interface Listener {
        void autoFocus();

        void cancelAutoFocus();

        boolean capture();

        void setFocusParameters();
    }

    private static class MainHandler extends Handler {
        final WeakReference<FocusManager> mManager;

        public MainHandler(FocusManager manager, Looper looper) {
            super(looper);
            this.mManager = new WeakReference(manager);
        }

        public void handleMessage(Message msg) {
            FocusManager manager = (FocusManager) this.mManager.get();
            if (manager == null) {
                Log.w(FocusManager.TAG, "drop msg " + msg.what);
                return;
            }
            switch (msg.what) {
                case 0:
                    manager.cancelAutoFocus();
                    return;
                case 1:
                    Log.w(FocusManager.TAG, "force reset auto focus");
                    UsageStatistics.trackEvent(UsageStatistics.KEY_COMMON_NO_AUTOFOCUS_CALLBACK_COUNT);
                    manager.cancelAutoFocus();
                    manager.capture();
                    return;
                default:
                    return;
            }
        }
    }

    public FocusManager(List<FocusMode> defaultFocusModes, CameraCapabilities capabilities, Listener listener, boolean mirror, Looper looper) {
        this.mHandler = new MainHandler(this, looper);
        this.mDefaultFocusModes = new ArrayList(defaultFocusModes);
        updateCapabilities(capabilities);
        this.mListener = listener;
        setMirror(mirror);
        this.mFocusLocked = false;
    }

    public void updateCapabilities(CameraCapabilities capabilities) {
        if (capabilities != null) {
            this.mCapabilities = capabilities;
            this.mFocusAreaSupported = this.mCapabilities.supports(Feature.FOCUS_AREA);
            this.mMeteringAreaSupported = this.mCapabilities.supports(Feature.METERING_AREA);
            boolean z = this.mCapabilities.supports(Feature.AUTO_EXPOSURE_LOCK) || this.mCapabilities.supports(Feature.AUTO_WHITE_BALANCE_LOCK);
            this.mLockAeAwbNeeded = z;
        }
    }

    public void setPreviewRect(Rect previewRect) {
        if (!this.mPreviewRect.equals(previewRect)) {
            this.mPreviewRect.set(previewRect);
            resetCoordinateTransformer();
            this.mInitialized = true;
        }
    }

    public void onPreviewAreaChanged(RectF previewArea) {
        setPreviewRect(CameraUtil.rectFToRect(previewArea));
    }

    public void setMirror(boolean mirror) {
        this.mMirror = mirror;
        resetCoordinateTransformer();
    }

    public void setDisplayOrientation(int displayOrientation) {
        this.mDisplayOrientation = displayOrientation;
        resetCoordinateTransformer();
    }

    private void resetCoordinateTransformer() {
        int top = this.mPreviewRect.top;
        int bottom = this.mPreviewRect.bottom;
        int left = this.mPreviewRect.left;
        int right = this.mPreviewRect.right;
        if (right - left <= 0 || bottom - top <= 0) {
            Log.w(TAG, "The coordinate transformer could not be built because the preview rect did not have a width and height");
        } else {
            this.mCoordinateTransformer = new CameraCoordinateTransformer(this.mMirror, this.mDisplayOrientation, new RectF((float) left, (float) top, (float) right, (float) bottom));
        }
    }

    private void lockAeAwbIfNeeded() {
        if (this.mLockAeAwbNeeded && !this.mAeAwbLock) {
            this.mAeAwbLock = true;
            this.mListener.setFocusParameters();
        }
    }

    private void unlockAeAwbIfNeeded() {
        if (this.mLockAeAwbNeeded && this.mAeAwbLock && this.mState != 2) {
            this.mAeAwbLock = false;
            this.mListener.setFocusParameters();
        }
    }

    public void onShutterUp(FocusMode currentFocusMode) {
        if (this.mInitialized) {
            if (needAutoFocusCall(currentFocusMode) && (this.mState == 1 || this.mState == 3 || this.mState == 4)) {
                cancelAutoFocus();
            }
            unlockAeAwbIfNeeded();
        }
    }

    public void focusAndCapture(FocusMode currentFocusMode) {
        Log.d(TAG, "focusAndCapture: " + currentFocusMode);
        if (!this.mInitialized) {
            Log.d(TAG, "focusAndCapture: not initialize");
        } else if (!needAutoFocusCall(currentFocusMode)) {
            capture();
        } else if (this.mState == 3 || this.mState == 4) {
            capture();
        } else if (this.mState == 1) {
            this.mState = 2;
            this.mHandler.removeMessages(1);
            this.mHandler.sendEmptyMessageDelayed(1, 5000);
        } else if (this.mState == 0) {
            autoFocusAndCapture();
        }
    }

    public void onAutoFocus(boolean focused, boolean shutterButtonPressed) {
        if (this.mState == 2) {
            if (focused) {
                this.mState = 3;
            } else {
                this.mState = 4;
            }
            capture();
        } else if (this.mState == 1) {
            if (focused) {
                this.mState = 3;
            } else {
                this.mState = 4;
            }
            if (this.mFocusArea != null) {
                this.mFocusLocked = true;
                this.mHandler.sendEmptyMessageDelayed(0, 2000);
            }
            this.mHandler.removeMessages(1);
            if (shutterButtonPressed) {
                lockAeAwbIfNeeded();
            }
        } else {
            if (this.mState == 0) {
            }
        }
    }

    public void onAutoFocusMoving(boolean moving) {
    }

    private int getAFRegionSizePx() {
        return (int) (((float) Math.min(this.mPreviewRect.width(), this.mPreviewRect.height())) * 0.2f);
    }

    private int getAERegionSizePx() {
        return (int) (((float) Math.min(this.mPreviewRect.width(), this.mPreviewRect.height())) * 0.3f);
    }

    private void initializeFocusAreas(int x, int y) {
        if (this.mFocusArea == null) {
            this.mFocusArea = new ArrayList();
            this.mFocusArea.add(new Area(new Rect(), 1));
        }
        ((Area) this.mFocusArea.get(0)).rect = computeCameraRectFromPreviewCoordinates(x, y, getAFRegionSizePx());
    }

    private void initializeMeteringAreas(int x, int y) {
        if (this.mMeteringArea == null) {
            this.mMeteringArea = new ArrayList();
            this.mMeteringArea.add(new Area(new Rect(), 1));
        }
        ((Area) this.mMeteringArea.get(0)).rect = computeCameraRectFromPreviewCoordinates(x, y, getAERegionSizePx());
    }

    public void onSingleTapUp(int x, int y) {
        if (this.mInitialized && this.mState != 2) {
            if (this.mFocusArea != null && (this.mState == 1 || this.mState == 3 || this.mState == 4)) {
                cancelAutoFocus();
            }
            if (this.mPreviewRect.width() != 0 && this.mPreviewRect.height() != 0) {
                if (this.mFocusAreaSupported) {
                    initializeFocusAreas(x, y);
                }
                if (this.mMeteringAreaSupported) {
                    initializeMeteringAreas(x, y);
                }
                this.mListener.setFocusParameters();
                if (this.mFocusAreaSupported) {
                    autoFocus();
                }
            }
        }
    }

    public void onPreviewStarted() {
        this.mState = 0;
        resetTouchFocus();
    }

    public void onPreviewStopped() {
        this.mState = 0;
    }

    public void onCameraReleased() {
        onPreviewStopped();
    }

    public void onMoving() {
        Log.v(TAG, "onMoving: focused=" + this.mFocusLocked);
        if (this.mFocusLocked) {
            Log.v(TAG, "onMoving: Early focus unlock.");
            cancelAutoFocus();
        }
    }

    private void autoFocus(int focusingState) {
        this.mListener.autoFocus();
        this.mState = focusingState;
        this.mHandler.removeMessages(0);
        this.mHandler.removeMessages(1);
        if (focusingState == 2) {
            this.mHandler.sendEmptyMessageDelayed(1, 5000);
        }
    }

    private void autoFocus() {
        autoFocus(1);
    }

    private void autoFocusAndCapture() {
        autoFocus(2);
    }

    private void cancelAutoFocus() {
        Log.v(TAG, "cancel auto focus");
        resetTouchFocus();
        this.mListener.cancelAutoFocus();
        this.mState = 0;
        this.mFocusLocked = false;
        this.mHandler.removeMessages(0);
        this.mHandler.removeMessages(1);
    }

    private void capture() {
        if (this.mListener.capture()) {
            this.mState = 0;
            this.mHandler.removeMessages(0);
            this.mHandler.removeMessages(1);
        }
    }

    public FocusMode getFocusMode(FocusMode currentFocusMode) {
        if (this.mCapabilities == null) {
            Log.v(TAG, "no capabilities, returning default AUTO focus mode");
            return FocusMode.AUTO;
        }
        if (!this.mFocusAreaSupported || this.mFocusArea == null) {
            for (FocusMode mode : this.mDefaultFocusModes) {
                if (this.mCapabilities.supports(mode)) {
                    this.mFocusMode = mode;
                    Log.v(TAG, "selected focus mode " + mode);
                    break;
                }
            }
        }
        Log.v(TAG, "in tap to focus, returning AUTO focus mode");
        this.mFocusMode = FocusMode.AUTO;
        if (!this.mCapabilities.supports(this.mFocusMode)) {
            if (this.mCapabilities.supports(FocusMode.AUTO)) {
                Log.v(TAG, "falling back to AUTO");
                this.mFocusMode = FocusMode.AUTO;
            } else {
                Log.v(TAG, "falling back to current: " + currentFocusMode);
                this.mFocusMode = currentFocusMode;
            }
        }
        return this.mFocusMode;
    }

    public List<Area> getFocusAreas() {
        return this.mFocusArea;
    }

    public List<Area> getMeteringAreas() {
        return this.mMeteringArea;
    }

    public void resetTouchFocus() {
        if (this.mInitialized) {
            this.mFocusArea = null;
            this.mMeteringArea = null;
            this.mListener.setFocusParameters();
        }
    }

    private Rect computeCameraRectFromPreviewCoordinates(int x, int y, int size) {
        int left = CameraUtil.clamp(x - (size / 2), this.mPreviewRect.left, this.mPreviewRect.right - size);
        int top = CameraUtil.clamp(y - (size / 2), this.mPreviewRect.top, this.mPreviewRect.bottom - size);
        return CameraUtil.rectFToRect(this.mCoordinateTransformer.toCameraSpace(new RectF((float) left, (float) top, (float) (left + size), (float) (top + size))));
    }

    int getFocusState() {
        return this.mState;
    }

    public boolean isFocusCompleted() {
        return this.mState == 3 || this.mState == 4;
    }

    public boolean isFocusingSnapOnFinish() {
        return this.mState == 2;
    }

    public void removeMessages() {
        this.mHandler.removeMessages(0);
        this.mHandler.removeMessages(1);
    }

    public void setAeAwbLock(boolean lock) {
        this.mAeAwbLock = lock;
    }

    public boolean getAeAwbLock() {
        return this.mAeAwbLock;
    }

    private boolean needAutoFocusCall(FocusMode focusMode) {
        return (focusMode == FocusMode.INFINITY || focusMode == FocusMode.FIXED || focusMode == FocusMode.EXTENDED_DOF) ? false : true;
    }
}
