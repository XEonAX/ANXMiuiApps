package com.xiaomi.scanner.app;

import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Vibrator;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.android.ex.camera2.portability.CameraAgent;
import com.android.ex.camera2.portability.CameraAgent.CameraOpenCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraAgentFactory;
import com.android.ex.camera2.portability.CameraAgentFactory.CameraApi;
import com.android.ex.camera2.portability.CameraExceptionHandler;
import com.android.ex.camera2.portability.CameraExceptionHandler.CameraExceptionCallback;
import com.android.ex.camera2.portability.CameraSettings;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController.ShutterEventsListener;
import com.xiaomi.scanner.camera.CameraController;
import com.xiaomi.scanner.camera.CameraProvider;
import com.xiaomi.scanner.camera.CameraServices;
import com.xiaomi.scanner.camera.CameraServicesImpl;
import com.xiaomi.scanner.camera.CaptureModule;
import com.xiaomi.scanner.camera.FatalErrorHandler;
import com.xiaomi.scanner.camera.FatalErrorHandler.Reason;
import com.xiaomi.scanner.camera.FatalErrorHandlerImpl;
import com.xiaomi.scanner.camera.OrientationManager;
import com.xiaomi.scanner.camera.OrientationManager.OrientationChangeListener;
import com.xiaomi.scanner.camera.OrientationManagerImpl;
import com.xiaomi.scanner.camera.SoundPlayer;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.dialog.CtaDialog;
import com.xiaomi.scanner.dialog.CtaDialog.CTAClick;
import com.xiaomi.scanner.module.ModuleController;
import com.xiaomi.scanner.module.ModuleManager;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.module.ModuleManagerImpl;
import com.xiaomi.scanner.module.ModulesInfo;
import com.xiaomi.scanner.module.amazoncloudconfig.AmazonAssistantHelper;
import com.xiaomi.scanner.module.amazoncloudconfig.CloudConfigTask.CloudConfigResponse;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.settings.Keys;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.settings.SettingsScopeNamespaces;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.OnScreenHint;
import com.xiaomi.scanner.ui.PreviewStatusListener;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAreaChangedListener;
import com.xiaomi.scanner.util.AndroidServices;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.CameraUtil;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.DialogUtil;
import com.xiaomi.scanner.util.ModuleBaseInfoManager;
import com.xiaomi.scanner.util.NetworkUtil;
import com.xiaomi.scanner.util.SPUtils;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ScannerThreadPool.ScanThreadCallback;
import com.xiaomi.scanner.util.Storage;
import com.xiaomi.scanner.util.ToastUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import miui.app.Activity;
import miui.os.Environment;
import mtopsdk.common.util.SymbolExpUtil;

public class ScanActivity extends Activity implements AppController, CameraOpenCallback, CloudConfigResponse, OnRequestPermissionsResultCallback, OrientationChangeListener {
    static final /* synthetic */ boolean $assertionsDisabled = (!ScanActivity.class.desiredAssertionStatus());
    private static final float BEEP_VOLUME = 0.1f;
    private static final int DEFAULT_TRY_FAIL_COUNT = 3;
    private static final int MODULE_REQUEST_SHIFT = 16;
    private static final int MSG_CLEAR_SCREEN_ON_FLAG = 2;
    private static final int MSG_OPEN_CAMERA = 1;
    private static final long ON_RESUME_DELAY_NON_SECURE_MILLIS = 15;
    private static final long ON_RESUME_DELAY_SECURE_MILLIS = 30;
    private static final long OPEN_CAMERA_DELAY_MS = 100;
    public static final int REQUEST_DECODE_IMAGE = 1;
    public static final int REQUEST_DECODE_IMAGE_CROPPED = 2;
    public static final int REQUEST_KOREA_PERMISSION = 100;
    public static final int REQUEST_PERMISSION = 3;
    private static final String[] RUNTIME_PERMISSIONS = new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final long SCREEN_DELAY_MS = 30000;
    private static final Tag TAG = new Tag("ScanActivity");
    private static final long VIBRATE_DURATION = 200;
    private AmazonAssistantHelper mAmazonAssistantHelper = null;
    private Context mAppContext;
    private AppUI mAppUI;
    private CameraController mCameraController;
    private final CameraExceptionCallback mCameraExceptionCallback = new CameraExceptionCallback() {
        public void onCameraError(int errorCode) {
            Log.e(ScanActivity.TAG, "Camera error callback. error=" + errorCode);
        }

        public void onCameraException(RuntimeException ex, String commandHistory, int action, int state) {
            Log.e(ScanActivity.TAG, "Camera Exception", ex);
            UsageStatistics.cameraFailure(104, commandHistory, action, state);
            onFatalError();
        }

        public void onDispatchThreadException(RuntimeException ex) {
            Log.e(ScanActivity.TAG, "DispatchThread Exception", ex);
            UsageStatistics.cameraFailure(105, null, -1, -1);
            onFatalError();
        }

        private void onFatalError() {
            if (!ScanActivity.this.mCameraFatalError) {
                ScanActivity.this.mCameraFatalError = true;
                if (!ScanActivity.this.mPaused || ScanActivity.this.isFinishing()) {
                    ScanActivity.this.mFatalErrorHandler.handleFatalError(Reason.CANNOT_CONNECT_TO_CAMERA);
                    return;
                }
                Log.e(ScanActivity.TAG, "Fatal error during onPause, call Activity.finish()");
                ScanActivity.this.finish();
            }
        }
    };
    private boolean mCameraFatalError = false;
    private boolean mCameraIsAvailable;
    private CaptureModule mCaptureModule;
    private SparseArray<Runnable> mClearTasks = new SparseArray(6);
    private CtaDialog mConfirmDialog = null;
    private final BroadcastReceiver mConnectivityReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && ScanActivity.this.mCurrentModule != null) {
                ScanActivity.this.mCurrentModule.onConnectivityChanged();
            }
        }
    };
    private ModuleController mCurrentModule;
    private int mCurrentModuleIndex;
    private Bundle mExtraIntentBundle;
    private int mFailureRetryTimes = 3;
    private FatalErrorHandler mFatalErrorHandler;
    private GestureDetector mGestureDetector;
    private String mImagePath;
    private boolean mIsBusinessCardScan;
    private boolean mKeepScreenOn;
    private KeyguardManager mKeyguardManager = null;
    private Handler mMainHandler;
    private long mMainThreadId;
    private ModuleManager mModuleManager;
    private Runnable mOnCreateTask;
    private final Runnable mOnResumeTasks = new Runnable() {
        public void run() {
            if (ScanActivity.this.mSkippedFirstOnResume) {
                Log.v(ScanActivity.TAG, "delayed Runnable --> onResumeTasks()");
                ScanActivity.this.mSkippedFirstOnResume = false;
                ScanActivity.this.onResumeTasks();
            }
        }
    };
    private OrientationManagerImpl mOrientationManager;
    private boolean mPaused = true;
    private Intent mPendingIntent;
    private int mPendingModuleIndex = -1;
    private int mPendingRequestCode;
    private int mPendingResultCode;
    private boolean mResetToPreviewOnResume = true;
    private AsyncTask mResumeTask;
    private SettingsManager mSettingsManager;
    private boolean mSkippedFirstOnResume = false;
    private SoundPlayer mSoundPlayer;
    private OnScreenHint mStorageHint;
    private long mStorageSpaceBytes = Storage.LOW_STORAGE_THRESHOLD_BYTES;
    private final Object mStorageSpaceLock = new Object();
    private Toast mToast;
    private AlertDialog mWarnDialog = null;

    private static class MainHandler extends Handler {
        final WeakReference<ScanActivity> mActivity;

        public MainHandler(ScanActivity activity, Looper looper) {
            super(looper);
            this.mActivity = new WeakReference(activity);
        }

        public void handleMessage(Message msg) {
            ScanActivity activity = (ScanActivity) this.mActivity.get();
            if (activity != null) {
                switch (msg.what) {
                    case 1:
                        if (!activity.isPaused()) {
                            activity.getCaptureModule().requestCameraOpen();
                            return;
                        }
                        return;
                    case 2:
                        if (!activity.mPaused) {
                            activity.getWindow().clearFlags(128);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    protected interface OnStorageUpdateDoneListener {
        void onStorageUpdateDone(long j);
    }

    private class ResumeTaskSync extends AsyncTask<Void, Void, Void> {
        private ResumeTaskSync() {
        }

        /* synthetic */ ResumeTaskSync(ScanActivity x0, AnonymousClass1 x1) {
            this();
        }

        protected Void doInBackground(Void... voids) {
            Log.i(ScanActivity.TAG, "ResumeTaskSync doInBackground");
            if (isCancelled() || ScanActivity.this.mPaused) {
                Log.w(ScanActivity.TAG, "drop operation, mPaused=" + ScanActivity.this.mPaused);
            } else {
                if (ScanActivity.this.mCaptureModule != null) {
                    ScanActivity.this.mCaptureModule.resume();
                } else {
                    Log.w(ScanActivity.TAG, "null mCaptureModule drop resume");
                }
                if (ScanActivity.this.mSoundPlayer == null) {
                    ScanActivity.this.mSoundPlayer = new SoundPlayer();
                }
                ScanActivity.this.mSoundPlayer.loadSound(R.raw.beep);
                ScanActivity.this.mSoundPlayer.loadSound(R.raw.camera_click);
                if (isCancelled()) {
                    Log.w(ScanActivity.TAG, "ResumeTaskSync is canclled");
                } else {
                    if (ScanActivity.this.mOrientationManager == null) {
                        ScanActivity.this.mOrientationManager = new OrientationManagerImpl(ScanActivity.this, ScanActivity.this.mMainHandler, ScanActivity.this);
                    }
                    ScanActivity.this.mOrientationManager.resume();
                }
            }
            return null;
        }
    }

    private ArrayList<String> checkPermissions() {
        ArrayList<String> permissions = new ArrayList();
        for (String permission : RUNTIME_PERMISSIONS) {
            if (ContextCompat.checkSelfPermission(this, permission) != 0) {
                permissions.add(permission);
            }
        }
        return permissions;
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Log.v(TAG, "onPermissionsResult: " + Arrays.toString(permissions) + SymbolExpUtil.SYMBOL_COLON + Arrays.toString(grantResults));
        if (requestCode == 3) {
            for (int result : grantResults) {
                if (result != 0) {
                    ToastUtils.showCenterToast((int) R.string.error_permissions);
                    finish();
                    return;
                }
            }
            if (!$assertionsDisabled && !isPaused()) {
                throw new AssertionError();
            } else if (!isPaused()) {
                onCTAAndPermissionAgree();
            }
        }
    }

    public void onResponse(boolean isAAEnabled) {
        Log.d(TAG, "onResponse - amazon assistant enabled : " + isAAEnabled);
        if (this.mSettingsManager != null) {
            this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_TIMESTAMP_STATUS, String.valueOf(System.currentTimeMillis()));
            this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_STATUS, isAAEnabled);
            Log.d(TAG, "onResponse - amazon assistant tags registered ");
        }
    }

    public void onError() {
        Log.e(TAG, "Amazon Cloud configNetwork response failed");
    }

    public void visibleChange(boolean showFull) {
        if (this.mCaptureModule != null && this.mCameraController != null) {
            if (showFull) {
                this.mCaptureModule.pause();
                this.mCameraController.closeCamera();
                this.mCameraIsAvailable = false;
                return;
            }
            this.mAppUI.resetFlashState();
            this.mCaptureModule.resume();
            this.mCurrentModule.onOrientationChange(getOrientationManager().getDeviceOrientation().getDegrees());
        }
    }

    public void onOrientationChange(int orientation) {
        if (this.mCurrentModule != null) {
            this.mCurrentModule.onOrientationChange(orientation);
        }
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mMainHandler = new Handler(getMainLooper());
        this.mMainThreadId = Thread.currentThread().getId();
        handleIntentFrom(getIntent());
        onCreateTasks(bundle);
        reportEnterFrom(getIntent());
        queryFromServer(false);
    }

    private void queryFromServer(boolean ignoreCheck) {
        if (ignoreCheck || AppUtil.isUserAgreeToRun()) {
            ConfigModel.instance.queryScanRuleConfig();
        }
    }

    private void handleIntentFrom(Intent intent) {
        this.mIsBusinessCardScan = AppUtil.EXTRA_INTENT_BUSINESS_CARD.equals(intent.getAction());
    }

    private void reportEnterFrom(Intent intent) {
        Log.d(TAG, "handleIntentFrom from action = " + intent.getAction() + ", category = " + intent.getCategories() + ", extra = " + intent.getExtras());
        String action = intent.getAction();
        Map params = new HashMap();
        if (TextUtils.equals(action, AppUtil.INTENT_ACTION_MAIN)) {
            params.put("from_type", "app");
        } else if (TextUtils.equals(action, AppUtil.EXTRA_INTENT_MODULE_ACTION) || TextUtils.equals(action, AppUtil.EXTRA_INTENT_MODULE_MIUI_ACTION)) {
            int defaultIndex = getResources().getInteger(R.integer.default_mode_index);
            params.put("from_type", "home_" + getRealIndex(intent.getIntExtra(AppUtil.EXTRA_INTENT_MODULE_INDEX, defaultIndex), defaultIndex));
        } else if (TextUtils.equals(action, AppUtil.SCAN_BARCODE_ACTION) || TextUtils.equals(action, AppUtil.SCAN_BARCODE_MIUI_ACTION)) {
            params.put("from_type", "browser");
        } else {
            params.put("from_type", "other");
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_ENTER_APP, params);
    }

    protected final void onStart() {
        Log.v(TAG, "onStart");
        onStartTasks();
        super.onStart();
    }

    protected final void onResume() {
        Log.v(TAG, "onResume(): isKeyguardLocked() = " + isKeyguardLocked());
        this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        if (!isKeyguardLocked() || this.mSkippedFirstOnResume) {
            Log.v(TAG, "onResume --> onResumeTasks()");
            this.mSkippedFirstOnResume = false;
            onResumeTasks();
        } else {
            this.mSkippedFirstOnResume = true;
            long delay = isKeyguardSecure() ? ON_RESUME_DELAY_SECURE_MILLIS : ON_RESUME_DELAY_NON_SECURE_MILLIS;
            Log.v(TAG, "onResume() --> postDelayed(mOnResumeTasks," + delay + ")");
            this.mMainHandler.postDelayed(this.mOnResumeTasks, delay);
        }
        super.onResume();
    }

    private void removeAAShopping() {
        AppUtil.setAAFeatureShown(false);
        runOnUiThread(new Runnable() {
            public void run() {
                Log.d(ScanActivity.TAG, "onResume - amazon assistant is shown in the menu : ");
                if (ScanActivity.this.mAppUI == null || !ScanActivity.this.mAppUI.isShutterButtonEnabled()) {
                    Log.w(ScanActivity.TAG, "onResponse - mAppUI or mAppUI.isShutterButtonEnabled() is failing");
                    return;
                }
                Log.d(ScanActivity.TAG, "onResume - amazon assistant should be removed, if available ");
                ScanActivity.this.removeAmazonAssistantMenu();
            }
        });
    }

    private void doResumeOnGetAllPermission() {
        this.mAppUI.resume();
        this.mFailureRetryTimes = 3;
        this.mCurrentModule.onResume();
        this.mResetToPreviewOnResume = true;
        keepScreenOnForAWhile();
        if (this.mResumeTask == null) {
            this.mResumeTask = new ResumeTaskSync(this, null).execute(new Void[0]);
        } else {
            Log.w(TAG, "task is not null, drop this operation");
        }
        if (this.mPendingModuleIndex != -1) {
            handlePendingIntent();
            this.mPendingModuleIndex = -1;
        }
    }

    private void showPermissionRequestOrRun() {
        ArrayList<String> permissions = checkPermissions();
        if (permissions.isEmpty()) {
            onCTAAndPermissionAgree();
        } else {
            ActivityCompat.requestPermissions(this, (String[]) permissions.toArray(new String[permissions.size()]), 3);
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleIntentFrom(intent);
        reportEnterFrom(intent);
        Log.v(TAG, "onNewIntent");
        if (!TextUtils.equals(intent.getAction(), AppUtil.INTENT_ACTION_MAIN)) {
            int moduleIndex = getModuleIndex(intent);
            if (this.mCurrentModule == null) {
                Log.w(TAG, "onNewIntent fail, null CurrentModule");
                return;
            }
            if (this.mCurrentModuleIndex != moduleIndex) {
                closeModule(this.mCurrentModule);
                setModuleFromModeIndex(moduleIndex);
                this.mAppUI.addOrRemoveShutterListener(this.mCurrentModule, false);
                this.mAppUI.addOrUpdateModuleList(ModuleBaseInfoManager.getInstance().getModuleListBySortId(), getCurrentModuleIndex());
            }
            this.mCurrentModule.init(this);
        }
        this.mAppUI.createOrUpdateBottomUi();
        this.mAppUI.addOrRemoveShutterListener(this.mCaptureModule, false);
    }

    protected final void onPause() {
        Log.v(TAG, "onPause");
        this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        if (!this.mSkippedFirstOnResume) {
            Log.v(TAG, "onPause --> onPauseTasks()");
            onPauseTasks();
        }
        super.onPause();
    }

    protected final void onStop() {
        Log.v(TAG, "onStop");
        if (isChangingConfigurations()) {
            Log.v(TAG, "changing configurations");
        }
        onStopTasks();
        super.onStop();
    }

    protected final void onRestart() {
        Log.v(TAG, "onRestart");
        super.onRestart();
    }

    protected final void onDestroy() {
        Log.v(TAG, "onDestroy");
        onDestroyTasks();
        if (this.mAmazonAssistantHelper != null) {
            this.mAmazonAssistantHelper.cleanUpCloudTask();
        }
        super.onDestroy();
    }

    public void requestPreviewFrame() {
        ScannerThreadPool.runOnUiThread(new Runnable() {
            public void run() {
                if (ScanActivity.this.mCaptureModule == null) {
                    Log.w(ScanActivity.TAG, "drop requestPreviewFrame, null CaptureModule");
                } else {
                    ScanActivity.this.mCaptureModule.requestPreviewFrame(ScanActivity.this.mCurrentModule);
                }
            }
        });
    }

    public boolean isFrameValid() {
        if (this.mCaptureModule != null) {
            return this.mCaptureModule.isPreviewFrameValid();
        }
        Log.w(TAG, "isFrameValid error, null CaptureModule");
        return false;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        Log.t(TAG, "onActivityResult: request=" + requestCode + " result=" + resultCode + " intent=" + intent);
        super.onActivityResult(requestCode, resultCode, intent);
        if (requestCode == 100) {
            AppUtil.saveKoreaPermissionShowed();
            return;
        }
        this.mPendingIntent = intent;
        this.mPendingModuleIndex = requestCode >> 16;
        this.mPendingRequestCode = SupportMenu.USER_MASK & requestCode;
        this.mPendingResultCode = resultCode;
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        if (!isFinishing()) {
            keepScreenOnForAWhile();
        }
    }

    private void handlePendingIntent() {
        if (this.mCurrentModuleIndex == this.mPendingModuleIndex) {
            this.mCurrentModule.onActivityResult(this.mPendingRequestCode, this.mPendingResultCode, this.mPendingIntent);
        } else {
            Log.d(TAG, "handlePendingIntent: current module_" + this.mCurrentModuleIndex + " drops module_" + this.mPendingModuleIndex + "'s request");
        }
    }

    private boolean isKeyguardLocked() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = AndroidServices.instance().provideKeyguardManager();
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardLocked();
        }
        return false;
    }

    private boolean isKeyguardSecure() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = AndroidServices.instance().provideKeyguardManager();
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardSecure();
        }
        return false;
    }

    public SettingsManager getSettingsManager() {
        return this.mSettingsManager;
    }

    private void onCreateTasks(Bundle state) {
        Log.v(TAG, "onCreateTasks");
        AppUtil.hideNavigationLayout(this);
        setVolumeControlStream(3);
        this.mAppContext = getApplicationContext();
        this.mMainHandler = new MainHandler(this, getMainLooper());
        this.mFatalErrorHandler = new FatalErrorHandlerImpl(this);
        this.mSettingsManager = new SettingsManager(this.mAppContext);
        try {
            this.mCameraController = new CameraController(this, this.mMainHandler, CameraAgentFactory.getAndroidCameraAgent(this.mAppContext, CameraApi.API_1));
            this.mCameraController.setCameraExceptionHandler(new CameraExceptionHandler(this.mCameraExceptionCallback, this.mMainHandler));
        } catch (AssertionError e) {
            Log.e(TAG, "Creating camera controller failed.", e);
            this.mFatalErrorHandler.onGenericCameraAccessFailure();
        }
        this.mModuleManager = new ModuleManagerImpl();
        ModulesInfo.setupModules(this.mAppContext, this.mModuleManager);
        this.mAmazonAssistantHelper = new AmazonAssistantHelper(this);
        this.mAmazonAssistantHelper.amazonAssistantCloudConfigCall();
        setContentView(R.layout.activity_main);
        this.mAppUI = new AppUI(this, (FrameLayout) findViewById(R.id.root_view));
        setModuleFromModeIndex(getModuleIndex(getIntent()));
        this.mAppUI.prepareModuleUI();
        this.mCaptureModule = new CaptureModule(this);
        this.mAppUI.addOrRemoveShutterListener(this.mCaptureModule, false);
        this.mCurrentModule.init(this);
        registerIntentReceiver();
        this.mOnCreateTask = new Runnable() {
            public void run() {
                CameraUtil.updateCountryIso(ScanActivity.this.mAppContext);
                ScanActivity.this.initGestureDetector();
            }
        };
        this.mMainHandler.postDelayed(this.mOnCreateTask, 200);
    }

    private void registerIntentReceiver() {
        IntentFilter connectivityFilter = new IntentFilter();
        connectivityFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        registerReceiver(this.mConnectivityReceiver, connectivityFilter);
    }

    private void showConfirmDialog() {
        if (AppUtil.isRightVersion()) {
            if (this.mConfirmDialog == null) {
                this.mConfirmDialog = DialogUtil.showCTADialog(this, new CTAClick() {
                    public void onAccept() {
                        ScanActivity.this.onCtaAgreeToRun();
                    }

                    public void onReject() {
                        ScanActivity.this.finish();
                    }
                });
            }
            if (!this.mConfirmDialog.isShowing()) {
                this.mConfirmDialog.show();
                return;
            }
            return;
        }
        if (this.mWarnDialog == null) {
            this.mWarnDialog = DialogUtil.createConfirmAlert((Context) this, new OnClickListener() {
                public void onClick(DialogInterface dialog, int whichButton) {
                    ScanActivity.this.finish();
                }
            }, null, getString(R.string.low_version_tip), getString(R.string.got_it));
        }
        if (!this.mWarnDialog.isShowing()) {
            this.mWarnDialog.show();
        }
    }

    private void onCtaAgreeToRun() {
        AppUtil.saveUserAgreeToRun(true);
        showPermissionRequestOrRun();
        queryFromServer(true);
    }

    private void onCTAAndPermissionAgree() {
        doResumeOnGetAllPermission();
        if (checkAppStartRun() && this.mCurrentModule != null) {
            this.mCurrentModule.onCTAAndPermissionAgree();
        }
    }

    private int getModuleIndex(Intent intent) {
        int defaultIndex = getResources().getInteger(R.integer.default_mode_index);
        if (intent == null) {
            Log.w(TAG, "getModuleIndex fail, null intent");
            return defaultIndex;
        }
        String action = intent.getAction();
        Uri uri = intent.getData();
        Log.v(TAG, "getModuleIndex action=" + action);
        if (TextUtils.equals(action, AppUtil.EXTRA_INTENT_MODULE_ACTION) || TextUtils.equals(action, AppUtil.EXTRA_INTENT_MODULE_MIUI_ACTION)) {
            checkIntentExtraData(intent);
            return getRealIndex(intent.getIntExtra(AppUtil.EXTRA_INTENT_MODULE_INDEX, defaultIndex), defaultIndex);
        } else if (TextUtils.equals(action, AppUtil.SCAN_BARCODE_ACTION) || TextUtils.equals(action, "android.intent.action.SEND") || TextUtils.equals(action, AppUtil.SCAN_BARCODE_MIUI_ACTION)) {
            checkIntentExtraData(intent);
            return getResources().getInteger(R.integer.scan_mode_code);
        } else if (TextUtils.equals(action, AppUtil.EXTRA_INTENT_BUSINESS_CARD)) {
            return getResources().getInteger(R.integer.scan_mode_business_card);
        } else {
            if (uri != null) {
                String moduleStr = uri.getQueryParameter(AppUtil.EXTRA_INTENT_MODULE_INDEX);
                if (TextUtils.isEmpty(moduleStr)) {
                    Log.v(TAG, "moduleStr is empty");
                    return defaultIndex;
                }
                try {
                    return getRealIndex(Integer.parseInt(moduleStr), defaultIndex);
                } catch (NumberFormatException e) {
                    Log.e(TAG, "parse moduleStr error", e);
                    return defaultIndex;
                }
            }
            int settingIndex = SPUtils.getLocal(Constants.KEY_SAVE_DEFAULT_FUNCTION_SELECT, defaultIndex).intValue();
            if (settingIndex == -100) {
                settingIndex = SPUtils.getLocal(Constants.KEY_LAST_USE_MODULE_ID, defaultIndex).intValue();
            }
            return getRealIndex(settingIndex, defaultIndex);
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus && this.mAppUI != null) {
            this.mAppUI.updateBottomCover();
        }
    }

    private void checkIntentExtraData(Intent intent) {
        if (this.mExtraIntentBundle == null) {
            this.mExtraIntentBundle = new Bundle();
        } else {
            this.mExtraIntentBundle.clear();
        }
        this.mExtraIntentBundle.putBoolean(AppUtil.EXTRA_INTENT_IS_BACKTO_THIRDAPP, intent.getBooleanExtra(AppUtil.EXTRA_INTENT_IS_BACKTO_THIRDAPP, false));
        if (TextUtils.equals(intent.getAction(), "android.intent.action.SEND")) {
            this.mExtraIntentBundle.putString(AppUtil.EXTRA_INTENT_MODULE_IMAGE_PATH, Utils.getFilePathFromUri((Uri) intent.getParcelableExtra("android.intent.extra.STREAM")));
        } else {
            this.mExtraIntentBundle.putString(AppUtil.EXTRA_INTENT_MODULE_IMAGE_PATH, intent.getStringExtra(AppUtil.EXTRA_INTENT_MODULE_IMAGE_PATH));
        }
    }

    private int getRealIndex(int tempIndex, int defaultIndex) {
        return (this.mModuleManager == null || this.mModuleManager.getModuleAgent(tempIndex) == null) ? defaultIndex : tempIndex;
    }

    private void setModuleFromModeIndex(int moduleIndex) {
        this.mCurrentModuleIndex = moduleIndex;
        this.mCurrentModule = this.mModuleManager.getModule(moduleIndex, this);
    }

    private void onResumeTasks() {
        this.mPaused = false;
        UsageStatistics.recordPageStart(this, "ScanActivity");
        if (AppUtil.shouldRedrawMenuAgain(this)) {
            removeAAShopping();
        }
        if (DeviceUtil.isKoreaRegion() && !AppUtil.isKoreaPermissionShowed() && AppJumpUtils.toShowKoreaPermission(this, 100)) {
            Log.i(TAG, "toShowKoreaPermission success");
        } else if (AppUtil.isUserAgreeToRun()) {
            if (this.mConfirmDialog != null) {
                this.mConfirmDialog.dismiss();
                this.mConfirmDialog = null;
            }
            showPermissionRequestOrRun();
        } else {
            showConfirmDialog();
        }
    }

    public void playBeepAndVibrate() {
        playSound(R.raw.beep, BEEP_VOLUME);
        ((Vibrator) getAndroidContext().getSystemService("vibrator")).vibrate(200);
    }

    public void playSound(int resourceId, float volume) {
        if (this.mSoundPlayer != null && !this.mSoundPlayer.isReleased()) {
            this.mSoundPlayer.play(resourceId, volume);
        }
    }

    public boolean canUseShutterCallback() {
        return (this.mSoundPlayer == null || !this.mSoundPlayer.isCanPlaySound() || isHeadset()) ? false : true;
    }

    public boolean isHeadset() {
        return this.mSoundPlayer != null && this.mSoundPlayer.isUseHeadset();
    }

    private void onPauseTasks() {
        UsageStatistics.recordPageEnd();
        this.mPaused = true;
        if (this.mResumeTask != null) {
            Log.v(TAG, "mResumeTask not null, Interrupt it");
            this.mResumeTask.cancel(true);
            this.mResumeTask = null;
        }
        this.mCaptureModule.pause();
        this.mCurrentModule.onPause();
        if (this.mOrientationManager != null) {
            this.mOrientationManager.pause();
        }
        if (this.mSoundPlayer != null) {
            this.mSoundPlayer.unloadSound(R.raw.beep);
            this.mSoundPlayer.unloadSound(R.raw.camera_click);
        }
        resetScreenOn();
        resetOpenCamera();
        if (!this.mCameraFatalError || isFinishing()) {
            Log.v(TAG, "onPause closing camera");
            if (this.mCameraController != null) {
                this.mCameraController.closeCamera();
                this.mCameraIsAvailable = false;
                return;
            }
            return;
        }
        Log.v(TAG, "onPause when camera is in fatal state, call Activity.finish()");
        finish();
    }

    public void onStartTasks() {
        if (this.mResetToPreviewOnResume) {
            this.mAppUI.resume();
            this.mResetToPreviewOnResume = false;
        }
        if (this.mCurrentModule != null) {
            this.mCurrentModule.onStart();
        }
    }

    protected void onStopTasks() {
        if (this.mCurrentModule != null) {
            this.mCurrentModule.onStop();
        }
    }

    public void onDestroyTasks() {
        this.mPaused = true;
        unregisterReceiver(this.mConnectivityReceiver);
        if (this.mMainHandler != null) {
            this.mMainHandler.removeCallbacks(this.mOnCreateTask);
        }
        if (this.mAppUI != null) {
            this.mAppUI.onDestroy();
        }
        if (this.mCaptureModule != null) {
            this.mCaptureModule.destroy();
            this.mCaptureModule = null;
        }
        if (this.mCurrentModule != null) {
            this.mCurrentModule.onActivityDestroy();
            this.mCurrentModule.onDestroy();
            this.mCurrentModule = null;
        }
        if (this.mFatalErrorHandler != null) {
            this.mFatalErrorHandler.dismisssErrorDialog();
        }
        DialogUtil.dismissDialog(this.mConfirmDialog);
        DialogUtil.dismissDialog(this.mWarnDialog);
        this.mSettingsManager.removeAllListeners();
        if (this.mCameraController != null) {
            this.mCameraController.removeCallbackReceiver();
            this.mCameraController.setCameraExceptionHandler(null);
        }
        this.mSettingsManager = null;
        this.mOrientationManager = null;
        synchronized (this.mClearTasks) {
            this.mClearTasks.clear();
        }
        if (this.mSoundPlayer != null) {
            this.mSoundPlayer.release();
        }
        CameraAgentFactory.recycle(CameraApi.API_1);
    }

    public AppUI getAppUI() {
        return this.mAppUI;
    }

    public boolean handleMessage(int what, int sender, Object extra1, Object extra2) {
        return false;
    }

    public boolean isPrerequisiteSatisfied() {
        if (this.mCurrentModule == null || !this.mCurrentModule.isNetworkRequired()) {
            return true;
        }
        return NetworkUtil.isNetworkConnected();
    }

    public boolean isSdkReady() {
        if (this.mCurrentModule != null) {
            return this.mCurrentModule.isSdkReady();
        }
        return true;
    }

    public void doPrething() {
        if (this.mCurrentModule != null) {
            this.mCurrentModule.doPrething();
        }
    }

    public boolean checkAppStartRun() {
        return AppUtil.isUserAgreeToRun() && checkPermissions().isEmpty();
    }

    public boolean isOnlyBusinessCardScan() {
        return this.mIsBusinessCardScan;
    }

    public void updateWordTranslateUI(boolean lock) {
        if (this.mCurrentModule != null) {
            this.mCurrentModule.updateWordTranslateUI(lock);
        }
    }

    public void onCameraOpened(CameraProxy camera) {
        Log.v(TAG, "onCameraOpened");
        if (this.mPaused) {
            Log.v(TAG, "received onCameraOpened but activity is paused, closing Camera");
            this.mCameraController.closeCamera();
            this.mCameraIsAvailable = false;
        } else if (this.mCaptureModule != null) {
            try {
                this.mCaptureModule.onCameraAvailable(camera);
                this.mCameraIsAvailable = true;
            } catch (RuntimeException ex) {
                Log.e(TAG, "Error connecting to camera", ex);
                this.mFatalErrorHandler.onCameraOpenFailure();
                this.mCameraIsAvailable = false;
            }
        }
    }

    public void onCameraDisabled(int cameraId) {
        Log.w(TAG, "Camera disabled: " + cameraId);
        this.mFatalErrorHandler.onCameraDisabledFailure();
    }

    public void onDeviceOpenFailure(int cameraId, String info) {
        Log.w(TAG, "Camera open failure: " + info);
        int i = this.mFailureRetryTimes - 1;
        this.mFailureRetryTimes = i;
        if (i < 0) {
            this.mFatalErrorHandler.onCameraOpenFailure();
        } else {
            this.mMainHandler.sendEmptyMessageDelayed(1, OPEN_CAMERA_DELAY_MS);
        }
    }

    public void onDeviceOpenedAlready(int cameraId, String info) {
        Log.w(TAG, "Camera open already: " + cameraId + "," + info);
        this.mFatalErrorHandler.onGenericCameraAccessFailure();
    }

    public void onReconnectionFailure(CameraAgent mgr, String info) {
        Log.w(TAG, "Camera reconnection failure:" + info);
        this.mFatalErrorHandler.onCameraReconnectFailure();
    }

    public Context getAndroidContext() {
        return this.mAppContext;
    }

    public int getCurrentModuleIndex() {
        return this.mCurrentModuleIndex;
    }

    public void launchActivityByIntent(Intent intent) {
        this.mResetToPreviewOnResume = false;
        intent.addFlags(524288);
        startActivity(intent);
    }

    public String getModuleScope() {
        return SettingsManager.getModuleSettingScope(ModuleBaseInfoManager.getInstance().getModuleBaseInfo(this.mCurrentModuleIndex).getScopeNamespace());
    }

    public String getCameraScope() {
        return SettingsManager.getCameraSettingScope(String.valueOf(this.mCameraController.getCurrentCameraId()));
    }

    public ModuleController getCurrentModuleController() {
        return this.mCurrentModule;
    }

    public void onPreviewStarted() {
        this.mAppUI.onPreviewStarted();
    }

    public void addPreviewAreaSizeChangedListener(PreviewAreaChangedListener listener) {
        this.mAppUI.addPreviewAreaChangedListener(listener);
    }

    public void removePreviewAreaSizeChangedListener(PreviewAreaChangedListener listener) {
        this.mAppUI.removePreviewAreaChangedListener(listener);
    }

    public void updatePreviewAspectRatio(float aspectRatio) {
        this.mAppUI.updatePreviewAspectRatio(aspectRatio);
    }

    public void updatePreviewTransform(Matrix matrix) {
        this.mAppUI.updatePreviewTransform(matrix);
    }

    public void setPreviewStatusListener(PreviewStatusListener previewStatusListener) {
        this.mAppUI.setPreviewStatusListener(previewStatusListener);
    }

    public View getModuleLayoutRoot() {
        return this.mAppUI.getModuleRootView();
    }

    public void setShutterEventsListener(ShutterEventsListener listener) {
    }

    public boolean isShutterEnabled() {
        return this.mAppUI.isShutterButtonEnabled();
    }

    public void setInPictureTakenState(boolean inPictureState) {
        if (this.mAppUI != null) {
            this.mAppUI.setInPictureTakenState(inPictureState);
        }
    }

    public boolean isCaptureNeeded() {
        if (this.mCurrentModule != null) {
            return this.mCurrentModule.isCaptureNeeded();
        }
        return false;
    }

    public boolean isPickerNeeded() {
        if (this.mCurrentModule != null) {
            return this.mCurrentModule.isPickerNeeded();
        }
        return false;
    }

    public void enableKeepScreenOn(boolean enabled) {
        if (!this.mPaused) {
            this.mKeepScreenOn = enabled;
            if (this.mKeepScreenOn) {
                this.mMainHandler.removeMessages(2);
                getWindow().addFlags(128);
                return;
            }
            keepScreenOnForAWhile();
        }
    }

    public CameraProvider getCameraProvider() {
        return this.mCameraController;
    }

    public OrientationManager getOrientationManager() {
        return this.mOrientationManager;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        Log.v(TAG, "onKeyDown: keyCode=" + keyCode);
        if (this.mCurrentModule.onKeyDown(keyCode, event)) {
            return true;
        }
        if (this.mCurrentModule.shouldConsumeCameraKey() && this.mCaptureModule.onKeyDown(keyCode, event)) {
            return true;
        }
        if (keyCode != 84 || !event.isLongPress()) {
            return super.onKeyDown(keyCode, event);
        }
        Log.v(TAG, "long press keycode search");
        return true;
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (this.mCurrentModule.onKeyUp(keyCode, event)) {
            return true;
        }
        if (this.mCurrentModule.shouldConsumeCameraKey() && this.mCaptureModule.onKeyUp(keyCode, event)) {
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    public void onBackPressed() {
        if (!this.mAppUI.onBackPressed()) {
            if ((!this.mCurrentModule.isCaptureNeeded() || !this.mCaptureModule.onBackPressed()) && !this.mCurrentModule.onBackPressed()) {
                finish();
            }
        }
    }

    public boolean onTouchEvent(MotionEvent m) {
        if (this.mGestureDetector != null) {
            this.mGestureDetector.onTouchEvent(m);
        }
        if (this.mAppUI != null) {
            this.mAppUI.updateTouchEvent(m);
        }
        return super.onTouchEvent(m);
    }

    public long getStorageSpaceBytes() {
        long j;
        synchronized (this.mStorageSpaceLock) {
            j = this.mStorageSpaceBytes;
        }
        return j;
    }

    public void updateStorageSpaceAndHint(final OnStorageUpdateDoneListener callback) {
        ScannerThreadPool.poolExecute(new ScanThreadCallback<Long>() {
            public Long onBackground() {
                Long valueOf;
                synchronized (ScanActivity.this.mStorageSpaceLock) {
                    ScanActivity.this.mStorageSpaceBytes = Storage.getAvailableSpace();
                    valueOf = Long.valueOf(ScanActivity.this.mStorageSpaceBytes);
                }
                return valueOf;
            }

            public void onMainResult(Long bytes) {
                ScanActivity.this.updateStorageHint(bytes.longValue());
                if (callback == null || ScanActivity.this.mPaused) {
                    Log.v(ScanActivity.TAG, "ignoring storage callback after activity onPause");
                } else {
                    callback.onStorageUpdateDone(bytes.longValue());
                }
            }
        });
    }

    protected void updateStorageHint(long storageSpace) {
        if (!this.mPaused) {
            String message = null;
            if (storageSpace == -1) {
                message = getString(R.string.no_storage);
            } else if (storageSpace == -2) {
                message = getString(R.string.preparing_sd);
            } else if (storageSpace == -3) {
                message = getString(R.string.access_sd_fail);
            } else if (storageSpace <= Storage.LOW_STORAGE_THRESHOLD_BYTES) {
                message = getString(R.string.spaceIsLow_content);
            }
            if (message != null) {
                Log.w(TAG, "Storage warning: " + message);
                if (this.mStorageHint == null) {
                    this.mStorageHint = OnScreenHint.makeText(this, message);
                } else {
                    this.mStorageHint.setText(message);
                }
                this.mStorageHint.show();
                this.mAppUI.setDisableAllUserInteractions(true);
            } else if (this.mStorageHint != null) {
                this.mStorageHint.cancel();
                this.mStorageHint = null;
                this.mAppUI.setDisableAllUserInteractions(false);
            }
        }
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    public void onModuleSelected(int moduleIndex) {
        if (this.mCurrentModuleIndex != moduleIndex && !isPaused()) {
            closeModule(this.mCurrentModule);
            setModuleFromModeIndex(moduleIndex);
            this.mAppUI.addOrRemoveShutterListener(this.mCurrentModule, false);
            openModule(this.mCurrentModule);
            this.mCaptureModule.requestUpdateZoom(this.mCurrentModule);
        }
    }

    public int getModuleId(int moduleIndex) {
        ModuleBaseInfo agent = ModuleBaseInfoManager.getInstance().getModuleBaseInfo(moduleIndex);
        if (agent == null) {
            return -1;
        }
        return agent.getModuleId();
    }

    public CameraServices getServices() {
        return CameraServicesImpl.instance();
    }

    public FatalErrorHandler getFatalErrorHandler() {
        return this.mFatalErrorHandler;
    }

    private void openModule(ModuleController module) {
        module.init(this);
        module.onStart();
        if (!this.mPaused) {
            module.onResume();
        }
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        super.startActivityForResult(intent, (this.mCurrentModuleIndex << 16) | requestCode);
    }

    private void closeModule(ModuleController module) {
        this.mAppUI.clearModuleUI();
        module.onPause();
        module.onStop();
        module.onDestroy();
    }

    public String getImagePath() {
        if (this.mImagePath == null) {
            File pictureDirectory = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
            if (pictureDirectory != null) {
                this.mImagePath = pictureDirectory.getPath();
            }
        }
        return this.mImagePath;
    }

    public CameraOpenCallback getCameraOpenErrorCallback() {
        return this.mCameraController;
    }

    public CaptureModule getCaptureModule() {
        return this.mCaptureModule;
    }

    public CameraSettings getCameraSettings() {
        if (this.mCaptureModule != null) {
            return this.mCaptureModule.getCameraSettings();
        }
        return null;
    }

    public Matrix getPreviewTransform() {
        if (this.mCaptureModule != null) {
            return this.mCaptureModule.getPreviewTransform();
        }
        return null;
    }

    public boolean isPreviewReady(int moduleId) {
        if (!this.mCameraIsAvailable) {
            Log.d(TAG, "camera is not available");
        }
        return this.mCameraIsAvailable && getClearTask(moduleId) == null;
    }

    public void setClearTask(int moduleId, Runnable runnable) {
        synchronized (this.mClearTasks) {
            Log.v(TAG, "setClearTask: moduleId=" + moduleId + " task=" + runnable);
            this.mClearTasks.put(moduleId, runnable);
        }
        if (runnable != null) {
            ScannerThreadPool.poolExecute(runnable);
        }
    }

    private Runnable getClearTask(int moduleId) {
        Runnable runnable;
        synchronized (this.mClearTasks) {
            runnable = (Runnable) this.mClearTasks.get(moduleId);
            Log.v(TAG, "getClearTask: moduleId=" + moduleId + " task=" + runnable);
        }
        return runnable;
    }

    private void keepScreenOnForAWhile() {
        if (!this.mKeepScreenOn) {
            this.mMainHandler.removeMessages(2);
            getWindow().addFlags(128);
            this.mMainHandler.sendEmptyMessageDelayed(2, SCREEN_DELAY_MS);
        }
    }

    private void resetScreenOn() {
        this.mKeepScreenOn = false;
        this.mMainHandler.removeMessages(2);
        getWindow().clearFlags(128);
    }

    private void resetOpenCamera() {
        this.mMainHandler.removeMessages(1);
    }

    public Bundle getIntentData() {
        return this.mExtraIntentBundle;
    }

    public void clearIntentData() {
        if (this.mExtraIntentBundle != null) {
            this.mExtraIntentBundle.clear();
            this.mExtraIntentBundle = null;
        }
    }

    private void initGestureDetector() {
        this.mGestureDetector = new GestureDetector(this, new SimpleOnGestureListener() {
            public boolean onSingleTapUp(MotionEvent ev) {
                if (ScanActivity.this.mCaptureModule == null) {
                    return false;
                }
                ScanActivity.this.mCaptureModule.onSingleTapUp(null, (int) ev.getX(), (int) ev.getY());
                return true;
            }
        });
    }

    private void removeAmazonAssistantMenu() {
        for (ModuleBaseInfo info : ModuleBaseInfoManager.getInstance().getModuleInfoList()) {
            if (info.getScopeNamespace().equalsIgnoreCase(SettingsScopeNamespaces.MODULE_AMAZON_SHOPPING)) {
                this.mModuleManager.unregisterModule(info.getModuleId());
                Log.d(TAG, "registeredModuleAgent -deleted- MODULE_AMAZON_SHOPPING  ");
                this.mAppUI.addOrUpdateModuleList(ModuleBaseInfoManager.getInstance().getModuleListBySortId(), getCurrentModuleIndex());
                return;
            }
        }
    }

    public void onCameraClosed() {
        if (this.mCurrentModule != null) {
            this.mCurrentModule.onCameraClosed();
        }
    }
}
