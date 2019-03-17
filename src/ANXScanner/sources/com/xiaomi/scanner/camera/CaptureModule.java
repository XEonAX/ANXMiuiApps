package com.xiaomi.scanner.camera;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.GestureDetector.OnGestureListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.alibaba.fastjson.asm.Opcodes;
import com.android.ex.camera2.portability.CameraAgent.CameraAFCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraAFMoveCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraPictureCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraPreviewDataCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraAgent.CameraShutterCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraStartPreviewCallback;
import com.android.ex.camera2.portability.CameraCapabilities;
import com.android.ex.camera2.portability.CameraCapabilities.Feature;
import com.android.ex.camera2.portability.CameraCapabilities.FlashMode;
import com.android.ex.camera2.portability.CameraCapabilities.FocusMode;
import com.android.ex.camera2.portability.CameraCapabilities.Stringifier;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.CameraSettings;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.camera.FocusManager.Listener;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.debug.LogHelper;
import com.xiaomi.scanner.module.ModuleController;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.settings.FeatureManager;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.settings.SettingsManager.OnSettingChangedListener;
import com.xiaomi.scanner.ui.PreviewStatusListener;
import com.xiaomi.scanner.ui.ShutterButton.OnShutterButtonListener;
import com.xiaomi.scanner.util.CameraUtil;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.Storage;
import com.xiaomi.scanner.util.ToastUtils;
import com.xiaomi.scanner.util.Util;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import mtopsdk.common.util.SymbolExpUtil;

public class CaptureModule implements Listener, PhotoController, PreviewStatusListener, OnShutterButtonListener, OnSettingChangedListener {
    private static final String CAMERA_SERVICE_MUTE = "camera-service-mute";
    private static final int MAX_PICTURE_SIZE = (DeviceUtil.isLowMemoryDevice() ? 3000000 : 5000000);
    private static final int MSG_FIRST_TIME_INIT = 1;
    private static final int MSG_REQUEST_AUTO_FOCUS = 3;
    private static final int MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE = 2;
    private static final Tag TAG = new Tag("CaptureModule");
    private static final int UPDATE_PARAM_ALL = -1;
    private static final int UPDATE_PARAM_INITIALIZE = 1;
    private static final int UPDATE_PARAM_PREFERENCE = 4;
    private static final int UPDATE_PARAM_ZOOM = 2;
    private ScanActivity mAppController;
    private final AutoFocusCallback mAutoFocusCallback = new AutoFocusCallback(this, null);
    private final AutoFocusMoveCallback mAutoFocusMoveCallback = new AutoFocusMoveCallback(this, null);
    private long mAutoFocusTime;
    private CameraCapabilities mCameraCapabilities;
    private CameraProxy mCameraDevice;
    private int mCameraId = 0;
    private boolean mCameraPreviewParamsReady = false;
    private CameraSettings mCameraSettings;
    private int mCameraState = 0;
    private long mCaptureStartTime;
    private boolean mContinuousFocusSupported;
    private float mDefaultZoom = 1.0f;
    private int mDisplayOrientation;
    private int mDisplayRotation;
    private final Runnable mDoSnapRunnable = new Runnable() {
        public void run() {
            CaptureModule.this.onShutterButtonClick();
        }
    };
    private boolean mFirstTimeInitialized;
    private boolean mFocusAreaSupported;
    private FocusManager mFocusManager;
    private long mFocusStartTime;
    private Handler mHandler;
    private long mJpegCallbackFinishTime;
    private long mJpegPictureCallbackTime;
    private boolean mMeteringAreaSupported;
    private ModuleController mModuleController;
    private MotionManager mMotionManager;
    private long mOnResumeTime;
    private boolean mPaused = true;
    private long mPictureDisplayedToJpegCallbackTime;
    private final PostViewPictureCallback mPostViewPictureCallback = new PostViewPictureCallback(this, null);
    private long mPostViewPictureCallbackTime;
    private final OnGestureListener mPreviewGestureListener = new SimpleOnGestureListener() {
        public boolean onSingleTapUp(MotionEvent ev) {
            CaptureModule.this.onSingleTapUp(null, (int) ev.getX(), (int) ev.getY());
            return true;
        }
    };
    private int mPreviewHeight = 0;
    private Matrix mPreviewMatrix = new Matrix();
    private boolean mPreviewMatrixUpdated;
    private int mPreviewWidth = 0;
    private final RawPictureCallback mRawPictureCallback = new RawPictureCallback(this, null);
    private long mRawPictureCallbackTime;
    private float mRequestZoom = 1.5f;
    private final CameraServices mServices;
    private long mShutterCallbackTime;
    private long mShutterLag;
    private long mShutterToPictureDisplayedTime;
    private boolean mSnapshotOnIdle = false;
    private int mUpdateSet;
    private boolean mVolumeButtonClickedFlag = false;
    private float mZoomValue;
    private Runnable playCameraSoundRunnable = new Runnable() {
        public void run() {
            CaptureModule.this.playCameraSound();
        }
    };

    private final class AutoFocusCallback implements CameraAFCallback {
        private AutoFocusCallback() {
        }

        /* synthetic */ AutoFocusCallback(CaptureModule x0, AnonymousClass1 x1) {
            this();
        }

        public void onAutoFocus(boolean focused, CameraProxy camera) {
            if (CaptureModule.this.mPaused) {
                Log.d(CaptureModule.TAG, "onAutoFocus: paused");
                return;
            }
            CaptureModule.this.mAutoFocusTime = System.currentTimeMillis() - CaptureModule.this.mFocusStartTime;
            Log.d(CaptureModule.TAG, "autoFocusTime=" + CaptureModule.this.mAutoFocusTime + "ms  focused=" + focused);
            CaptureModule.this.setCameraState(1);
            CaptureModule.this.mFocusManager.onAutoFocus(focused, false);
        }
    }

    private final class AutoFocusMoveCallback implements CameraAFMoveCallback {
        private AutoFocusMoveCallback() {
        }

        /* synthetic */ AutoFocusMoveCallback(CaptureModule x0, AnonymousClass1 x1) {
            this();
        }

        public void onAutoFocusMoving(boolean moving, CameraProxy camera) {
            Log.v(CaptureModule.TAG, "onAutoFocusMoving: " + moving);
            CaptureModule.this.mFocusManager.onAutoFocusMoving(moving);
        }
    }

    private final class JpegPictureCallback implements CameraPictureCallback {
        private WeakReference<ModuleController> mRequestModuleReference;

        public JpegPictureCallback(ModuleController module) {
            this.mRequestModuleReference = new WeakReference(module);
        }

        public void onPictureTaken(byte[] jpegData, CameraProxy camera) {
            Log.v(CaptureModule.TAG, "onPictureTaken");
            if (!CaptureModule.this.mPaused) {
                CaptureModule.this.stopPreview();
                CaptureModule.this.mJpegPictureCallbackTime = System.currentTimeMillis();
                if (CaptureModule.this.mPostViewPictureCallbackTime != 0) {
                    CaptureModule.this.mShutterToPictureDisplayedTime = CaptureModule.this.mPostViewPictureCallbackTime - CaptureModule.this.mShutterCallbackTime;
                    CaptureModule.this.mPictureDisplayedToJpegCallbackTime = CaptureModule.this.mJpegPictureCallbackTime - CaptureModule.this.mPostViewPictureCallbackTime;
                } else {
                    CaptureModule.this.mShutterToPictureDisplayedTime = CaptureModule.this.mRawPictureCallbackTime - CaptureModule.this.mShutterCallbackTime;
                    CaptureModule.this.mPictureDisplayedToJpegCallbackTime = CaptureModule.this.mJpegPictureCallbackTime - CaptureModule.this.mRawPictureCallbackTime;
                }
                Log.v(CaptureModule.TAG, "pictureDisplayedToJpegCallbackTime=" + CaptureModule.this.mPictureDisplayedToJpegCallbackTime + "ms");
                CaptureModule.this.mJpegCallbackFinishTime = System.currentTimeMillis() - CaptureModule.this.mJpegPictureCallbackTime;
                Log.v(CaptureModule.TAG, "jpegCallbackFinishTime=" + CaptureModule.this.mJpegCallbackFinishTime + "ms");
                CaptureModule.this.mJpegPictureCallbackTime = 0;
                savePhoto(jpegData, camera);
            }
        }

        void savePhoto(byte[] jpegData, CameraProxy camera) {
            ModuleController moduleController = (ModuleController) this.mRequestModuleReference.get();
            if (moduleController != null) {
                moduleController.onPictureTaken(jpegData, camera);
            }
            CaptureModule.this.mAppController.updateStorageSpaceAndHint(null);
        }
    }

    private static class MainHandler extends Handler {
        private final WeakReference<CaptureModule> mModule;

        public MainHandler(CaptureModule module) {
            super(Looper.getMainLooper());
            this.mModule = new WeakReference(module);
        }

        public void handleMessage(Message msg) {
            CaptureModule module = (CaptureModule) this.mModule.get();
            if (module != null) {
                switch (msg.what) {
                    case 1:
                        module.initializeFirstTime();
                        return;
                    case 2:
                        module.setCameraParametersWhenIdle(0);
                        return;
                    case 3:
                        module.autoFocus();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private final class PostViewPictureCallback implements CameraPictureCallback {
        private PostViewPictureCallback() {
        }

        /* synthetic */ PostViewPictureCallback(CaptureModule x0, AnonymousClass1 x1) {
            this();
        }

        public void onPictureTaken(byte[] data, CameraProxy camera) {
            CaptureModule.this.mPostViewPictureCallbackTime = System.currentTimeMillis();
            Log.v(CaptureModule.TAG, "shutterToPostViewCallbackTime=" + (CaptureModule.this.mPostViewPictureCallbackTime - CaptureModule.this.mShutterCallbackTime) + "ms");
        }
    }

    private final class RawPictureCallback implements CameraPictureCallback {
        private RawPictureCallback() {
        }

        /* synthetic */ RawPictureCallback(CaptureModule x0, AnonymousClass1 x1) {
            this();
        }

        public void onPictureTaken(byte[] rawData, CameraProxy camera) {
            CaptureModule.this.mRawPictureCallbackTime = System.currentTimeMillis();
            Log.v(CaptureModule.TAG, "shutterToRawCallbackTime=" + (CaptureModule.this.mRawPictureCallbackTime - CaptureModule.this.mShutterCallbackTime) + "ms");
        }
    }

    private final class ShutterCallback implements CameraShutterCallback {
        private ShutterCallback() {
        }

        /* synthetic */ ShutterCallback(CaptureModule x0, AnonymousClass1 x1) {
            this();
        }

        public void onShutter(CameraProxy camera) {
            CaptureModule.this.mShutterCallbackTime = System.currentTimeMillis();
            CaptureModule.this.mShutterLag = CaptureModule.this.mShutterCallbackTime - CaptureModule.this.mCaptureStartTime;
            Log.v(CaptureModule.TAG, "shutterLag=" + CaptureModule.this.mShutterLag + "ms");
            CaptureModule.this.playCameraSound();
        }
    }

    private void onError() {
        this.mAppController.getFatalErrorHandler().onMediaStorageFailure();
    }

    public CaptureModule(ScanActivity app) {
        this.mAppController = app;
        this.mServices = app.getServices();
        this.mAppController.setPreviewStatusListener(this);
        initCameraHandler();
    }

    private void initCameraHandler() {
        this.mHandler = new MainHandler(this);
    }

    private void onPreviewStarted() {
        if (this.mAppController != null && this.mAppController.getAppUI() != null) {
            this.mAppController.onPreviewStarted();
            this.mAppController.setInPictureTakenState(false);
            setCameraState(1);
        }
    }

    public void onPreviewUIReady() {
        Log.v(TAG, "onPreviewUIReady");
        startPreview();
    }

    public void onPreviewUIDestroyed() {
        Log.v(TAG, "onPreviewUIDestroyed");
        if (this.mCameraDevice != null) {
            this.mCameraDevice.setPreviewTexture(null);
            stopPreview();
        }
    }

    public void requestCameraOpen() {
        Log.v(TAG, "requestCameraOpen");
        if (this.mAppController == null) {
            Log.v(TAG, "null mAppController, drop request camera");
        } else {
            this.mAppController.getCameraProvider().requestCamera(this.mCameraId);
        }
    }

    public void hardResetSettings(SettingsManager settingsManager) {
    }

    public boolean handleMessage(int what, int sender, Object extra1, Object extra2) {
        return false;
    }

    public void updatePreviewAspectRatio(float aspectRatio) {
        this.mAppController.updatePreviewAspectRatio(aspectRatio);
    }

    private void initializeFirstTime() {
        if (!this.mFirstTimeInitialized && !this.mPaused) {
            this.mFirstTimeInitialized = true;
            if (this.mAppController == null) {
                Log.w(TAG, "drop updateStorageSpaceAndHint, null controller");
            } else {
                this.mAppController.updateStorageSpaceAndHint(null);
            }
        }
    }

    private void initializeSecondTime() {
    }

    private synchronized void setCameraState(int state) {
        this.mCameraState = state;
    }

    public synchronized int getCameraState() {
        return this.mCameraState;
    }

    public void requestPreviewFrame(ModuleController module) {
        if (this.mPaused) {
            Log.d(TAG, "requestPreviewFrame: paused!");
        } else if (module == null) {
            Log.d(TAG, "requestPreviewFrame: null module!");
        } else if (this.mCameraDevice != null) {
            final WeakReference<ModuleController> weakReference = new WeakReference(module);
            this.mCameraDevice.setOneShotPreviewCallback(this.mHandler, new CameraPreviewDataCallback() {
                public void onPreviewFrame(byte[] data, CameraProxy camera) {
                    ModuleController controller = (ModuleController) weakReference.get();
                    if (controller != null) {
                        controller.onPreviewFrame(data, camera);
                    }
                    if (LogHelper.instance().isDebugMode()) {
                        CaptureModule.this.dumpPreviewFrame(data, camera);
                    }
                }
            });
        } else {
            Log.w(TAG, "requestPreviewFrame: null camera!");
            Log.e(TAG, "RuntimeException", new RuntimeException());
        }
    }

    private void dumpPreviewFrame(byte[] data, CameraProxy camera) {
        int format = camera.getParameters().getPreviewFormat();
        Size size = camera.getParameters().getPreviewSize();
        YuvImage image = new YuvImage(data, format, size.width, size.height, null);
        String jpegName = Storage.DIRECTORY + File.separator + "preview_" + System.currentTimeMillis() + Util.JPEG_POSTFIX;
        Log.v(TAG, "dumpPreviewFrame:" + jpegName);
        try {
            image.compressToJpeg(new Rect(0, 0, size.width, size.height), 90, new FileOutputStream(jpegName));
        } catch (FileNotFoundException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public boolean capture() {
        Log.v(TAG, "capture");
        int cameraState = getCameraState();
        if (this.mCameraDevice == null || cameraState == 3) {
            Log.w(TAG, "state=" + cameraState);
            return false;
        } else if (this.mModuleController != this.mAppController.getCurrentModuleController()) {
            Log.w(TAG, "capture module changed");
            return true;
        } else if (this.mAppController.getOrientationManager() == null) {
            Log.e(TAG, "OrientationManager is null");
            return false;
        } else {
            setCameraState(3);
            this.mCaptureStartTime = System.currentTimeMillis();
            this.mPostViewPictureCallbackTime = 0;
            Characteristics info = this.mAppController.getCameraProvider().getCharacteristics(this.mCameraId);
            int sensorOrientation = info.getSensorOrientation();
            int deviceOrientation = this.mAppController.getOrientationManager().getDeviceOrientation().getDegrees();
            int jpegRotation = CameraUtil.getImageRotation(sensorOrientation, deviceOrientation, info.isFacingFront());
            Log.v(TAG, "capture: so=" + sensorOrientation + " do=" + deviceOrientation + " jo=" + jpegRotation);
            this.mCameraDevice.setJpegOrientation(jpegRotation);
            ShutterCallback shutterCallback = null;
            if (FeatureManager.isCaptureSoundEnabled()) {
                if (this.mAppController.canUseShutterCallback()) {
                    shutterCallback = new ShutterCallback(this, null);
                } else if (this.mAppController.isHeadset()) {
                    this.mHandler.postDelayed(this.playCameraSoundRunnable, 200);
                }
            }
            this.mCameraDevice.takePicture(this.mHandler, shutterCallback, this.mRawPictureCallback, this.mPostViewPictureCallback, new JpegPictureCallback(this.mAppController.getCurrentModuleController()));
            return true;
        }
    }

    public void setFocusParameters() {
        setCameraParametersWhenIdle(4);
    }

    public void onCameraAvailable(CameraProxy cameraProxy) {
        Log.v(TAG, "onCameraAvailable");
        if (!this.mPaused) {
            this.mCameraDevice = cameraProxy;
            initializeCapabilities();
            this.mZoomValue = getZoomValue(this.mAppController.getCurrentModuleController());
            initializeFocusManager();
            this.mFocusManager.updateCapabilities(this.mCameraCapabilities);
            initMotionManager();
            this.mCameraSettings = this.mCameraDevice.getSettings();
            if (this.mCameraSettings.getCurrentFlashMode() == null) {
                this.mCameraSettings.setFlashMode(FlashMode.NO_FLASH);
            }
            if (this.mCameraSettings.getCurrentFocusMode() == null) {
                Log.v(TAG, "setFocusMode: AUTO");
                this.mCameraSettings.setFocusMode(FocusMode.AUTO);
            }
            setCameraParametersWhenIdle(-1);
            this.mAppController.getSettingsManager().addListener(this);
            this.mCameraPreviewParamsReady = true;
            startPreview();
        }
    }

    public void onShutterButtonFocus(boolean pressed) {
    }

    public void onShutterButtonClick() {
        int cameraState = getCameraState();
        if (this.mAppController.getCurrentModuleController().isUsePreviewFrameAsPicture() || this.mPaused || cameraState == 0 || !this.mAppController.isShutterEnabled()) {
            Log.d(TAG, "onShutterButtonClick: cameraState=" + cameraState + " paused=" + this.mPaused);
            this.mVolumeButtonClickedFlag = false;
        } else if (!this.mAppController.isPrerequisiteSatisfied()) {
            ToastUtils.showCenterToast((int) R.string.no_network);
            this.mVolumeButtonClickedFlag = false;
        } else if (!this.mAppController.isSdkReady()) {
            ToastUtils.showCenterToast((int) R.string.sdk_not_ready);
            this.mVolumeButtonClickedFlag = false;
        } else if (this.mAppController.getStorageSpaceBytes() <= Storage.LOW_STORAGE_THRESHOLD_BYTES) {
            Log.w(TAG, "Not enough space or storage not ready. remaining=" + this.mAppController.getStorageSpaceBytes());
            this.mVolumeButtonClickedFlag = false;
        } else {
            this.mAppController.doPrething();
            Log.v(TAG, "onShutterButtonClick: cameraState=" + cameraState + " volumeButtonClickedFlag=" + this.mVolumeButtonClickedFlag);
            this.mModuleController = this.mAppController.getCurrentModuleController();
            this.mAppController.setInPictureTakenState(true);
            focusAndCapture();
        }
    }

    private void focusAndCapture() {
        int cameraState = getCameraState();
        if (this.mFocusManager.isFocusingSnapOnFinish() || cameraState == 3) {
            Log.w(TAG, "focusAndCapture: state=" + cameraState);
            this.mSnapshotOnIdle = true;
            return;
        }
        this.mSnapshotOnIdle = false;
        this.mFocusManager.focusAndCapture(this.mCameraSettings.getCurrentFocusMode());
    }

    private void checkDisplayRotation() {
        if (!this.mPaused) {
            if (CameraUtil.getDisplayRotation() != this.mDisplayRotation) {
                this.mPreviewMatrixUpdated = false;
                setDisplayOrientation();
            }
            if (SystemClock.uptimeMillis() - this.mOnResumeTime < 500) {
                this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        CaptureModule.this.checkDisplayRotation();
                    }
                }, 100);
            }
        }
    }

    public void resume() {
        Log.i(TAG, "resume");
        if (this.mPaused) {
            this.mPaused = false;
            if (this.mFocusManager != null) {
                this.mAppController.addPreviewAreaSizeChangedListener(this.mFocusManager);
            }
            if (this.mAppController.getCameraProvider() == null) {
                Log.e(TAG, "resume camera provider null");
                return;
            }
            requestCameraOpen();
            this.mJpegPictureCallbackTime = 0;
            this.mZoomValue = getZoomValue(this.mAppController.getCurrentModuleController());
            this.mOnResumeTime = SystemClock.uptimeMillis();
            checkDisplayRotation();
            if (this.mFirstTimeInitialized) {
                initializeSecondTime();
            } else {
                this.mHandler.sendEmptyMessage(1);
            }
        }
    }

    private void initializeFocusManager() {
        if (this.mFocusManager != null) {
            this.mFocusManager.removeMessages();
        } else {
            String[] defaultFocusModesStrings = this.mAppController.getResources().getStringArray(R.array.pref_camera_focusmode_default_array);
            ArrayList<FocusMode> defaultFocusModes = new ArrayList();
            Stringifier stringifier = this.mCameraCapabilities.getStringifier();
            for (String modeString : defaultFocusModesStrings) {
                FocusMode mode = stringifier.focusModeFromString(modeString);
                if (mode != null) {
                    defaultFocusModes.add(mode);
                }
            }
            this.mFocusManager = new FocusManager(defaultFocusModes, this.mCameraCapabilities, this, false, this.mAppController.getMainLooper());
        }
        this.mAppController.addPreviewAreaSizeChangedListener(this.mFocusManager);
    }

    private void initMotionManager() {
        if (this.mMotionManager == null) {
            this.mMotionManager = this.mServices.getMotionManager();
            if (this.mMotionManager != null && this.mFocusManager != null) {
                this.mMotionManager.addListener(this.mFocusManager);
            }
        }
    }

    public void pause() {
        Log.v(TAG, "pause");
        if (!this.mPaused) {
            this.mPaused = true;
            if (!(this.mCameraDevice == null || getCameraState() == 0)) {
                this.mCameraDevice.cancelAutoFocus();
                this.mCameraDevice.setOneShotPreviewCallback(this.mHandler, null);
            }
            this.mHandler.removeCallbacksAndMessages(null);
            if (this.mMotionManager != null) {
                this.mMotionManager.removeListener(this.mFocusManager);
                this.mMotionManager.reset();
                this.mMotionManager = null;
            }
            closeCamera();
            if (this.mFocusManager != null) {
                this.mFocusManager.removeMessages();
            }
            this.mAppController.removePreviewAreaSizeChangedListener(this.mFocusManager);
            this.mModuleController = null;
            this.mAppController.getSettingsManager().removeListener(this);
        }
    }

    public void destroy() {
        this.mAppController.setPreviewStatusListener(null);
        this.mAppController = null;
        this.mHandler = null;
    }

    public void onLayoutOrientationChanged(boolean isLandscape) {
        setDisplayOrientation();
    }

    public void updateCameraOrientation() {
        if (this.mDisplayRotation != CameraUtil.getDisplayRotation()) {
            setDisplayOrientation();
        }
    }

    private boolean canTakePicture() {
        return isCameraIdle() && this.mAppController.getStorageSpaceBytes() > Storage.LOW_STORAGE_THRESHOLD_BYTES;
    }

    public void autoFocus() {
        if (this.mCameraDevice != null && !isPreviewStop()) {
            Log.d(TAG, "starting auto focus");
            this.mFocusStartTime = System.currentTimeMillis();
            this.mCameraDevice.autoFocus(this.mHandler, this.mAutoFocusCallback);
            setCameraState(2);
        }
    }

    public void cancelAutoFocus() {
        if (this.mCameraDevice != null) {
            Log.d(TAG, "cancel auto focus");
            this.mCameraDevice.cancelAutoFocus();
            setCameraState(1);
            setCameraParametersWhenIdle(4);
        }
    }

    public void onSingleTapUp(View view, int x, int y) {
        int cameraState = getCameraState();
        if (!this.mPaused && this.mCameraDevice != null && this.mFirstTimeInitialized && cameraState != 3 && cameraState != 0) {
            if (this.mFocusAreaSupported || this.mMeteringAreaSupported) {
                this.mFocusManager.onSingleTapUp(x, y);
            }
        }
    }

    public boolean onBackPressed() {
        if (isCameraIdle()) {
            return false;
        }
        Log.d(TAG, "consume back key");
        return true;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case 23:
                if (!this.mFirstTimeInitialized || event.getRepeatCount() != 0) {
                    return true;
                }
                onShutterButtonFocus(true);
                return true;
            case 24:
            case 25:
            case 80:
                if (!this.mFirstTimeInitialized) {
                    return false;
                }
                if (event.getRepeatCount() != 0) {
                    return true;
                }
                onShutterButtonFocus(true);
                return true;
            case 27:
                if (!this.mFirstTimeInitialized || event.getRepeatCount() != 0) {
                    return true;
                }
                onShutterButtonClick();
                return true;
            default:
                return false;
        }
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        switch (keyCode) {
            case 24:
            case 25:
                if (!this.mFirstTimeInitialized) {
                    return false;
                }
                this.mVolumeButtonClickedFlag = true;
                onShutterButtonClick();
                return true;
            case 80:
                if (!this.mFirstTimeInitialized) {
                    return true;
                }
                onShutterButtonFocus(false);
                return true;
            default:
                return false;
        }
    }

    private void closeCamera() {
        if (this.mCameraDevice != null) {
            this.mAppController.onCameraClosed();
            this.mCameraDevice.setZoomChangeListener(null);
            this.mCameraDevice.setFaceDetectionCallback(null, null);
            this.mAppController.getCameraProvider().releaseCamera(this.mCameraDevice.getCameraId());
            this.mCameraDevice = null;
            setCameraState(0);
            this.mFocusManager.onCameraReleased();
        }
    }

    private void setDisplayOrientation() {
        this.mDisplayRotation = CameraUtil.getDisplayRotation();
        if (this.mCameraDevice != null) {
            this.mCameraDevice.setDisplayOrientation(this.mDisplayRotation);
        }
        Characteristics info = this.mAppController.getCameraProvider().getCharacteristics(this.mCameraId);
        if (info == null) {
            Log.w(TAG, "drop reset coordinate transformer while info is null");
            return;
        }
        this.mDisplayOrientation = info.getPreviewOrientation(this.mDisplayRotation);
        if (this.mFocusManager != null) {
            this.mFocusManager.setDisplayOrientation(this.mDisplayOrientation);
        }
        Log.v(TAG, "setDisplayOrientation (screen:preview) " + this.mDisplayRotation + SymbolExpUtil.SYMBOL_COLON + this.mDisplayOrientation);
    }

    private boolean checkPreviewPreconditions() {
        if (this.mPaused) {
            return false;
        }
        if (this.mCameraDevice == null) {
            Log.w(TAG, "startPreview: camera device not ready yet.");
            return false;
        } else if (this.mAppController.getAppUI().getSurfaceTexture() == null) {
            Log.w(TAG, "startPreview: surfaceTexture is not ready.");
            return false;
        } else if (this.mCameraPreviewParamsReady) {
            return true;
        } else {
            Log.w(TAG, "startPreview: parameters for preview is not ready.");
            return false;
        }
    }

    public void startPreview() {
        Log.d(TAG, "startPreview");
        if (this.mCameraDevice == null) {
            Log.w(TAG, "attempted to start preview before camera device");
        } else if (checkPreviewPreconditions()) {
            setDisplayOrientation();
            if (!this.mSnapshotOnIdle) {
                if (this.mFocusManager.getFocusMode(this.mCameraSettings.getCurrentFocusMode()) == FocusMode.CONTINUOUS_PICTURE) {
                    this.mCameraDevice.cancelAutoFocus();
                }
                this.mFocusManager.setAeAwbLock(false);
            }
            updateParametersPictureSize();
            setCameraParametersWhenIdle(-1);
            this.mCameraDevice.setPreviewTexture(this.mAppController.getAppUI().getSurfaceTexture());
            this.mCameraDevice.startPreviewWithCallback(new Handler(Looper.getMainLooper()), new CameraStartPreviewCallback() {
                public void onPreviewStarted() {
                    CaptureModule.this.mFocusManager.onPreviewStarted();
                    CaptureModule.this.onPreviewStarted();
                    if (CaptureModule.this.mSnapshotOnIdle) {
                        CaptureModule.this.mHandler.post(CaptureModule.this.mDoSnapRunnable);
                    }
                }
            });
        }
    }

    public void stopPreview() {
        if (!(this.mCameraDevice == null || getCameraState() == 0)) {
            Log.d(TAG, "stopPreview");
            this.mCameraDevice.stopPreview();
        }
        setCameraState(0);
        if (this.mFocusManager != null) {
            this.mFocusManager.onPreviewStopped();
        }
    }

    public boolean isPreviewStop() {
        return this.mCameraDevice != null && getCameraState() == 0;
    }

    public void onSettingChanged(SettingsManager settingsManager, String key) {
        if (this.mCameraDevice != null) {
            this.mCameraDevice.applySettings(this.mCameraSettings);
        }
    }

    private void applyCameraSettingNotSupportedParameter() {
        if (this.mCameraDevice != null) {
            try {
                Parameters params = this.mCameraDevice.getParameters();
                if (params == null) {
                    Log.e(TAG, "get param failed");
                    return;
                }
                params.setAntibanding(CameraUtil.isAntibanding60() ? "60hz" : "50hz");
                params.set(CAMERA_SERVICE_MUTE, "true");
                this.mCameraDevice.setParameters(params);
            } catch (Exception e) {
                Log.e(TAG, "applyCameraSettingNotSupportedParameter error", e);
            }
        }
    }

    private void updateCameraParametersInitialize() {
        applyCameraSettingNotSupportedParameter();
        int[] fpsRange = CameraUtil.getPhotoPreviewFpsRange(this.mCameraCapabilities);
        if (fpsRange != null && fpsRange.length > 0) {
            this.mCameraSettings.setPreviewFpsRange(fpsRange[0], fpsRange[1]);
        }
    }

    private void updateCameraParametersZoom() {
        if (this.mCameraCapabilities.supports(Feature.ZOOM)) {
            this.mCameraSettings.setZoomRatio(this.mZoomValue);
        }
    }

    public void requestUpdateZoom(ModuleController module) {
        if (module == null) {
            Log.v(TAG, "module is null");
            requestUpdateZoom(false);
            return;
        }
        requestUpdateZoom(module.isZoomNeeded());
    }

    public void requestUpdateZoom(boolean needZoom) {
        if (!this.mPaused && this.mCameraSettings != null && this.mCameraDevice != null) {
            float moduleZoom = getZoomValue(needZoom);
            if (((double) Math.abs(this.mZoomValue - moduleZoom)) >= 0.001d) {
                this.mZoomValue = moduleZoom;
                Log.v(TAG, "zoom=" + this.mZoomValue);
                this.mCameraSettings.setZoomRatio(this.mZoomValue);
                this.mCameraDevice.applySettings(this.mCameraSettings);
            }
        }
    }

    private float getZoomValue(ModuleController module) {
        if (module == null || !module.isZoomNeeded()) {
            return this.mDefaultZoom;
        }
        return this.mRequestZoom;
    }

    private float getZoomValue(boolean needZoom) {
        return needZoom ? this.mRequestZoom : this.mDefaultZoom;
    }

    private void setFocusAreasIfSupported() {
        if (this.mFocusAreaSupported) {
            this.mCameraSettings.setFocusAreas(this.mFocusManager.getFocusAreas());
        }
    }

    private void setMeteringAreasIfSupported() {
        if (this.mMeteringAreaSupported) {
            this.mCameraSettings.setMeteringAreas(this.mFocusManager.getMeteringAreas());
        }
    }

    private void setMotionManagerState() {
        if (this.mMotionManager == null) {
            return;
        }
        if (this.mFocusManager.getFocusAreas() != null) {
            this.mMotionManager.start();
        } else {
            this.mMotionManager.stop();
        }
    }

    private void updateCameraParametersPreference() {
        if (this.mCameraDevice != null) {
            setFocusAreasIfSupported();
            setMeteringAreasIfSupported();
            setMotionManagerState();
            this.mCameraSettings.setFocusMode(this.mFocusManager.getFocusMode(this.mCameraSettings.getCurrentFocusMode()));
            if (this.mCameraSettings.getCurrentFlashMode() == null) {
                this.mCameraSettings.setFlashMode(FlashMode.NO_FLASH);
            }
            if (this.mContinuousFocusSupported) {
                updateAutoFocusMoveCallback();
            }
        }
    }

    private void updateParametersPictureSize() {
        if (this.mCameraDevice == null) {
            Log.w(TAG, "attempting to set picture size without camera device");
            return;
        }
        com.android.ex.camera2.portability.Size pictureSize = CameraUtil.getLargestPictureSize((((float) Utils.getRealHeight()) * 1.0f) / ((float) Util.screenWidth), this.mCameraCapabilities.getSupportedPhotoSizes(), MAX_PICTURE_SIZE);
        this.mCameraSettings.setPhotoSize(pictureSize);
        List<com.android.ex.camera2.portability.Size> sizes = this.mCameraCapabilities.getSupportedPreviewSizes();
        com.android.ex.camera2.portability.Size optimalSize = CameraUtil.getOptimalPreviewSize(sizes, (double) ((((float) Utils.getRealHeight()) * 1.0f) / ((float) Util.screenWidth)));
        com.android.ex.camera2.portability.Size original = new com.android.ex.camera2.portability.Size(this.mCameraSettings.getCurrentPreviewSize());
        Log.v(TAG, "previewSize: optimal=" + optimalSize + " original=" + original + ", sizes = " + sizes);
        if (!(optimalSize == null || optimalSize.equals(original))) {
            this.mCameraSettings.setPreviewSize(optimalSize);
            this.mPreviewMatrixUpdated = false;
            this.mCameraDevice.applySettings(this.mCameraSettings);
            this.mCameraSettings = this.mCameraDevice.getSettings();
        }
        if (!this.mPreviewMatrixUpdated) {
            this.mPreviewMatrixUpdated = true;
            this.mPreviewMatrix.reset();
            this.mPreviewMatrix.setRotate((float) this.mDisplayOrientation);
            updatePreviewMatrix(this.mDisplayOrientation, optimalSize);
        }
        if (!(optimalSize.width() == 0 || optimalSize.height() == 0)) {
            updatePreviewAspectRatio(((float) optimalSize.width()) / ((float) optimalSize.height()));
        }
        Log.v(TAG, "previewSize=" + optimalSize + " pictureSize=" + pictureSize);
    }

    private void updatePreviewMatrix(int orientation, com.android.ex.camera2.portability.Size previewSize) {
        if (orientation == 90) {
            this.mPreviewMatrix.postTranslate((float) previewSize.height(), 0.0f);
        } else if (orientation == Opcodes.GETFIELD) {
            this.mPreviewMatrix.postTranslate((float) previewSize.width(), (float) previewSize.height());
        } else if (orientation == 270) {
            this.mPreviewMatrix.postTranslate(0.0f, (float) previewSize.width());
        }
    }

    @TargetApi(16)
    private void updateAutoFocusMoveCallback() {
        if (this.mCameraDevice != null) {
            if (this.mCameraSettings.getCurrentFocusMode() == FocusMode.CONTINUOUS_PICTURE) {
                this.mCameraDevice.setAutoFocusMoveCallback(this.mHandler, this.mAutoFocusMoveCallback);
            } else {
                this.mCameraDevice.setAutoFocusMoveCallback(null, null);
            }
        }
    }

    private void setCameraParameters(int updateSet) {
        if ((updateSet & 1) != 0) {
            updateCameraParametersInitialize();
        }
        if ((updateSet & 2) != 0) {
            updateCameraParametersZoom();
        }
        if ((updateSet & 4) != 0) {
            updateCameraParametersPreference();
        }
        if (this.mCameraDevice != null) {
            this.mCameraDevice.applySettings(this.mCameraSettings);
        }
    }

    private void setCameraParametersWhenIdle(int additionalUpdateSet) {
        this.mUpdateSet |= additionalUpdateSet;
        if (this.mCameraDevice == null) {
            this.mUpdateSet = 0;
        } else if (isCameraIdle()) {
            setCameraParameters(this.mUpdateSet);
            this.mUpdateSet = 0;
        } else if (!this.mHandler.hasMessages(2)) {
            this.mHandler.sendEmptyMessageDelayed(2, 1000);
        }
    }

    public boolean isCameraIdle() {
        int cameraState = getCameraState();
        if (cameraState == 1 || cameraState == 0) {
            return true;
        }
        if (this.mFocusManager == null || !this.mFocusManager.isFocusingSnapOnFinish()) {
            return false;
        }
        return true;
    }

    public boolean isPreviewFrameValid() {
        int state = getCameraState();
        if (state == 1 || state == 2) {
            return true;
        }
        return false;
    }

    private void initializeCapabilities() {
        this.mCameraCapabilities = this.mCameraDevice.getCapabilities();
        this.mFocusAreaSupported = this.mCameraCapabilities.supports(Feature.FOCUS_AREA);
        this.mMeteringAreaSupported = this.mCameraCapabilities.supports(Feature.METERING_AREA);
        this.mContinuousFocusSupported = this.mCameraCapabilities.supports(FocusMode.CONTINUOUS_PICTURE);
        if (this.mCameraCapabilities.supports(Feature.ZOOM)) {
            float maxZoom = this.mCameraCapabilities.getMaxZoomRatio();
            if (this.mRequestZoom > maxZoom) {
                this.mRequestZoom = maxZoom;
            }
            Log.v(TAG, "maxZoom=" + maxZoom + " requestZoom=" + this.mRequestZoom);
        }
    }

    public OnGestureListener getGestureListener() {
        return this.mPreviewGestureListener;
    }

    public OnTouchListener getTouchListener() {
        return null;
    }

    public void onPreviewLayoutChanged(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        int width = right - left;
        int height = bottom - top;
        if (this.mPreviewWidth != width || this.mPreviewHeight != height) {
            this.mPreviewWidth = width;
            this.mPreviewHeight = height;
        }
    }

    public boolean shouldAutoAdjustTransformMatrixOnLayout() {
        return true;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        Log.v(TAG, "onSurfaceTextureAvailable: w=" + width + ", h=" + height);
        onPreviewUIReady();
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        Log.v(TAG, "onSurfaceTextureSizeChanged: w=" + width + ", h=" + height);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        Log.v(TAG, "onSurfaceTextureDestroyed");
        onPreviewUIDestroyed();
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }

    public boolean turnTorchOn() {
        if (this.mCameraDevice == null) {
            Log.w(TAG, "cannot turn on flash due to null device");
            return false;
        }
        Log.i(TAG, "turnTorchOn");
        if (this.mCameraCapabilities.supports(FlashMode.TORCH)) {
            this.mCameraSettings.setFlashMode(FlashMode.TORCH);
            this.mCameraDevice.applySettings(this.mCameraSettings);
        }
        return true;
    }

    public boolean turnTorchOff() {
        if (this.mCameraDevice == null) {
            Log.w(TAG, "cannot turn off flash due to null device");
            return false;
        }
        Log.i(TAG, "turnTorchOff");
        this.mCameraSettings.setFlashMode(FlashMode.OFF);
        this.mCameraDevice.applySettings(this.mCameraSettings);
        return true;
    }

    public CameraSettings getCameraSettings() {
        if (this.mCameraDevice != null) {
            return this.mCameraSettings;
        }
        return null;
    }

    public Matrix getPreviewTransform() {
        return this.mPreviewMatrix;
    }

    public int getDisplayOrientation() {
        return this.mDisplayOrientation;
    }

    private void playCameraSound() {
        if (!this.mAppController.isPaused()) {
            this.mAppController.playSound(R.raw.camera_click, 1.0f);
        }
    }
}
