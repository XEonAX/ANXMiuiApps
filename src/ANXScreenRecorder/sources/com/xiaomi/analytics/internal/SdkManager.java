package com.xiaomi.analytics.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.PolicyConfiguration;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import com.xiaomi.analytics.internal.util.ApkTools;
import com.xiaomi.analytics.internal.util.AssetUtils;
import com.xiaomi.analytics.internal.util.FileUtils;
import com.xiaomi.analytics.internal.util.TaskRunner;
import com.xiaomi.analytics.internal.util.TimeUtils;
import com.xiaomi.analytics.internal.v1.AnalyticsInterface;
import com.xiaomi.analytics.internal.v1.DexAnalytics;
import com.xiaomi.analytics.internal.v1.SysAnalytics;
import com.xiaomi.stat.d.i;
import java.io.File;

public class SdkManager {
    private static final String ANALYTICS_CORE_ADAPTED_FOR_ANDROID_P = "2.7.3";
    private static final String ASSET_CORE_APK_NAME = "analytics_asset.apk";
    private static final String ASSET_LIB_DIR = "/asset_lib/";
    private static final String CORE_APK_NAME = "analytics.apk";
    private static final String LIB_DIR = "/lib/";
    private static final String PREF_KEY_PREVIOUS_LOAD_DEX = "pld";
    private static final int SCREEN_OFF_STABLE_INTERVAL = (TimeUtils.ONE_SECOND_IN_MS * 30);
    private static final String SDK_ROOT_FOLDER = "analytics";
    private static final String TAG = "SdkManager";
    private static final int VERSION_CODES_PIE = 28;
    private static Object sFileLock;
    private static volatile SdkManager sInstance;
    private static boolean sUseSysAnalyticsOnly = false;
    private Runnable dexInitTask = new Runnable() {
        public void run() {
            try {
                synchronized (SdkManager.sInstance) {
                    if (!SdkManager.this.isScreenOffStabled() || SdkManager.this.mPendingDex == null) {
                        ALog.d(SdkManager.TAG, "skip init dex");
                    } else {
                        SdkManager.this.mPendingDex.init();
                        SdkManager.this.mPendingDex = null;
                        SdkManager.this.mContext.unregisterReceiver(SdkManager.this.mScreenReceiver);
                        ALog.d(SdkManager.TAG, "pending dex init executed, unregister and clear pending");
                    }
                }
            } catch (Exception e) {
                ALog.e(SdkManager.TAG, "dexInitTask", e);
            }
        }
    };
    private AnalyticsInterface mAnalytics;
    private UpdateListener mAnalyticsUpdateListener = new UpdateListener() {
        public void onApkUpdated(String path, boolean forceUpgrade) {
            if (SdkManager.this.mAnalytics == null) {
                ALog.d(SdkManager.TAG, "download finished, use new analytics.");
                AnalyticsInterface analytics = SdkManager.this.loadLocalAnalytics();
                if (analytics != null) {
                    analytics.init();
                }
                SdkManager.this.mAnalytics = analytics;
                SdkManager.this.notifyAnalyticsReady(SdkManager.this.mAnalytics);
            } else if (forceUpgrade && !AndroidUtils.isForeground(SdkManager.this.mContext)) {
                Process.killProcess(Process.myPid());
            }
        }
    };
    private Context mContext;
    private boolean mDontUseSysAnalytics = false;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private Runnable mHeavyWorker = new Runnable() {
        public void run() {
            boolean z = false;
            try {
                synchronized (SdkManager.sFileLock) {
                    SdkManager.this.prepareDirs();
                    AnalyticsInterface sysAnalytics = null;
                    if (!SdkManager.this.mDontUseSysAnalytics || SdkManager.sUseSysAnalyticsOnly) {
                        SdkManager.this.loadSysAnalytics();
                        sysAnalytics = SdkManager.this.mSysAnalytics;
                        if (sysAnalytics != null) {
                            sysAnalytics.init();
                        }
                    }
                    if (sysAnalytics != null) {
                        ALog.d(SdkManager.TAG, "sys version = " + sysAnalytics.getVersion());
                    }
                    if (SdkManager.sUseSysAnalyticsOnly) {
                        ALog.d(SdkManager.TAG, "use system analytics only, so don't load asset/local analytics.apk");
                        SdkManager.this.mAnalytics = sysAnalytics;
                        SdkManager.this.notifyAnalyticsReady(SdkManager.this.mAnalytics);
                        SdkManager.this.mInitialized = true;
                        return;
                    }
                    boolean z2;
                    AnalyticsInterface dexAnalytics = SdkManager.this.loadAssetAnalytics();
                    String str = SdkManager.TAG;
                    StringBuilder append = new StringBuilder().append("assets analytics null ");
                    if (dexAnalytics == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ALog.d(str, append.append(z2).toString());
                    AnalyticsInterface localAnalytics = SdkManager.this.loadLocalAnalytics();
                    String str2 = SdkManager.TAG;
                    StringBuilder append2 = new StringBuilder().append("local analytics null ");
                    if (localAnalytics == null) {
                        z = true;
                    }
                    ALog.d(str2, append2.append(z).toString());
                    if (dexAnalytics == null || (localAnalytics != null && localAnalytics.getVersion().compareTo(dexAnalytics.getVersion()) > 0)) {
                        ALog.d(SdkManager.TAG, "use local analytics.");
                        dexAnalytics = localAnalytics;
                    } else if (dexAnalytics != null) {
                        ALog.d(SdkManager.TAG, "use assets analytics.");
                    }
                    AnalyticsInterface analytics = sysAnalytics;
                    if (analytics == null || (dexAnalytics != null && dexAnalytics.getVersion().compareTo(analytics.getVersion()) > 0)) {
                        ALog.d(SdkManager.TAG, "use dex analytics.");
                        analytics = dexAnalytics;
                        if (dexAnalytics != null) {
                            dexAnalytics.init();
                        }
                        SdkManager.this.savePreviousLoadDex(true);
                    } else if (sysAnalytics != null) {
                        ALog.d(SdkManager.TAG, "use sys analytics.");
                        SdkManager.this.mPendingDex = dexAnalytics;
                        SdkManager.this.loadDexUnderScreenOff();
                    }
                    if (analytics != null && analytics.getVersion().compareTo(Constants.MIN_CORE_VER) >= 0) {
                        SdkManager.this.mAnalytics = analytics;
                    }
                    SdkManager.this.doCheckUpdate();
                    SdkManager.this.notifyAnalyticsReady(SdkManager.this.mAnalytics);
                    SdkManager.this.mInitialized = true;
                }
            } catch (Exception e) {
                try {
                    Log.w(ALog.addPrefix(SdkManager.TAG), "heavy work exception", e);
                } finally {
                    SdkManager.this.mInitialized = true;
                }
            }
        }
    };
    private volatile boolean mInitialized = false;
    private long mLastScreenOffTime;
    private long mLastUpdateCheck = 0;
    private AnalyticsInterface mPendingDex = null;
    private PolicyConfiguration mPolicyConfiguration = null;
    private boolean mScreenOff;
    private BroadcastReceiver mScreenReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                try {
                    String action = intent.getAction();
                    if ("android.intent.action.SCREEN_OFF".equals(action)) {
                        SdkManager.this.mLastScreenOffTime = System.currentTimeMillis();
                        SdkManager.this.mScreenOff = true;
                        if (SdkManager.this.mPendingDex != null) {
                            SdkManager.this.postDexInit((long) SdkManager.this.getScreenOffStableInterval());
                        } else {
                            SdkManager.this.mContext.unregisterReceiver(SdkManager.this.mScreenReceiver);
                            ALog.d(SdkManager.TAG, "pending dex is null, unregister");
                        }
                    } else if ("android.intent.action.SCREEN_ON".equals(action)) {
                        SdkManager.this.mScreenOff = false;
                    }
                    ALog.d(SdkManager.TAG, "screen off : " + SdkManager.this.mScreenOff);
                } catch (Exception e) {
                    ALog.d(SdkManager.TAG, "mScreenReceiver onReceive e", e);
                }
            }
        }
    };
    private OnSdkCorePrepareListener mSdkCorePreparedListener;
    private SysAnalytics mSysAnalytics;
    private Runnable mUpdateChecker = new Runnable() {
        public void run() {
            try {
                if (SdkManager.this.mAnalytics == null || UpdateManager.getInstance(SdkManager.this.mContext).needCheckUpdate()) {
                    UpdateManager.getInstance(SdkManager.this.mContext).checkUpdate(new File(SdkManager.this.getSdkApkPath()).getAbsolutePath());
                }
            } catch (Exception e) {
                Log.w(ALog.addPrefix(SdkManager.TAG), "mUpdateChecker exception", e);
            }
        }
    };

    public interface OnSdkCorePrepareListener {
        void onSdkCorePrepared(AnalyticsInterface analyticsInterface);
    }

    private SdkManager(Context context) {
        this.mContext = AndroidUtils.getApplicationContext(context);
        Context context2 = this.mContext;
        sFileLock = "connectivity";
        this.mHandlerThread = new HandlerThread("api-sdkmgr", 10);
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        this.mSysAnalytics = new SysAnalytics(this.mContext);
        UpdateManager.getInstance(this.mContext).setUpdateListener(this.mAnalyticsUpdateListener);
        TaskRunner.SINGLE_EXECUTOR.execute(this.mHeavyWorker);
    }

    public static synchronized SdkManager getInstance(Context context) {
        SdkManager sdkManager;
        synchronized (SdkManager.class) {
            if (sInstance == null) {
                sInstance = new SdkManager(context);
            }
            sdkManager = sInstance;
        }
        return sdkManager;
    }

    public static void setUseSysAnalyticsOnly() {
        sUseSysAnalyticsOnly = true;
    }

    public void setOnSdkPrepareListener(OnSdkCorePrepareListener listener) {
        this.mSdkCorePreparedListener = listener;
    }

    public void setDontUseSystemAnalytics(boolean ok) {
        this.mDontUseSysAnalytics = ok;
    }

    public AnalyticsInterface getAnalytics() {
        return this.mAnalytics;
    }

    private String getSdkRootFolder() {
        return this.mContext.getDir(SDK_ROOT_FOLDER, 0).getAbsolutePath();
    }

    private String getSdkApkPath() {
        return getSdkRootFolder() + "/" + CORE_APK_NAME;
    }

    private String getAssetApkPath() {
        return getSdkRootFolder() + "/" + ASSET_CORE_APK_NAME;
    }

    private String getSoPath() {
        return getSdkRootFolder() + LIB_DIR;
    }

    private String getAssetSoPath() {
        return getSdkRootFolder() + ASSET_LIB_DIR;
    }

    private void prepareDirs() {
        File dir = new File(getSoPath());
        if (dir.exists()) {
            FileUtils.deleteAllFiles(dir);
        } else {
            dir.mkdirs();
        }
        dir = new File(getAssetSoPath());
        if (dir.exists()) {
            FileUtils.deleteAllFiles(dir);
        } else {
            dir.mkdirs();
        }
    }

    public void pollUpdate() {
        if (this.mInitialized) {
            doCheckUpdate();
        }
    }

    private synchronized void doCheckUpdate() {
        if (System.currentTimeMillis() - this.mLastUpdateCheck > ((long) TimeUtils.ONE_HOUR_IN_MS)) {
            this.mLastUpdateCheck = System.currentTimeMillis();
            TaskRunner.SINGLE_EXECUTOR.execute(this.mUpdateChecker);
        }
    }

    private void notifyAnalyticsReady(AnalyticsInterface analytics) {
        this.mAnalytics = analytics;
        if (this.mAnalytics != null) {
            if (this.mSdkCorePreparedListener != null) {
                this.mAnalytics.setDebugOn(ALog.sEnable);
                ALog.d(TAG, "Analytics module loaded, version is " + this.mAnalytics.getVersion());
                this.mSdkCorePreparedListener.onSdkCorePrepared(this.mAnalytics);
            }
            if (this.mPolicyConfiguration != null) {
                this.mPolicyConfiguration.apply(this.mAnalytics);
            }
        }
    }

    private AnalyticsInterface loadSysAnalytics() {
        if (this.mSysAnalytics.isOnline()) {
            this.mSysAnalytics.waitForConnected();
        }
        return this.mSysAnalytics;
    }

    private AnalyticsInterface loadAssetAnalytics() {
        try {
            String assetPrefix = "analytics_core";
            String[] assets = this.mContext.getAssets().list("");
            if (assets == null) {
                return null;
            }
            int i = 0;
            while (i < assets.length) {
                if (!TextUtils.isEmpty(assets[i]) && assets[i].startsWith(assetPrefix)) {
                    AssetUtils.extractAssetFile(this.mContext, assets[i], getAssetApkPath());
                    File apkFile = new File(getAssetApkPath());
                    if (apkFile.exists()) {
                        if (!isAndroidPOrAbove() || isApkSuitableForAndroidPOrAbove(getAssetApkPath())) {
                            ApkTools.extractSo(this.mContext, getAssetApkPath(), getAssetSoPath());
                            return new DexAnalytics(this.mContext, getAssetApkPath(), getAssetSoPath());
                        }
                        ALog.d(TAG, "Not suitable for Android P, so delete it");
                        apkFile.delete();
                        return null;
                    }
                }
                i++;
            }
            return null;
        } catch (Exception e) {
            Log.w(ALog.addPrefix(TAG), "loadAssetAnalytics exception", e);
            return null;
        }
    }

    private AnalyticsInterface loadLocalAnalytics() {
        try {
            File apkFile = new File(getSdkApkPath());
            if (apkFile.exists()) {
                if (!isAndroidPOrAbove() || isApkSuitableForAndroidPOrAbove(getSdkApkPath())) {
                    ApkTools.extractSo(this.mContext, apkFile.getAbsolutePath(), getSoPath());
                    return new DexAnalytics(this.mContext, apkFile.getAbsolutePath(), getSoPath());
                }
                ALog.d(TAG, "Not suitable for Android P, so delete it");
                apkFile.delete();
                return null;
            }
        } catch (Exception e) {
            Log.w(ALog.addPrefix(TAG), "loadLocalAnalytics exception", e);
        }
        return null;
    }

    public void setPolicyConfiguration(PolicyConfiguration conf) {
        this.mPolicyConfiguration = conf;
        if (this.mAnalytics != null && this.mPolicyConfiguration != null) {
            this.mPolicyConfiguration.apply(this.mAnalytics);
        }
    }

    public Version getVersion() {
        if (getAnalytics() != null) {
            return getAnalytics().getVersion();
        }
        return new Version(Constants.INVALID_CORE_VER_STR);
    }

    private void loadDexUnderScreenOff() {
        if (getPreviousLoadDex()) {
            registerReceiver();
        } else {
            this.mPendingDex = null;
        }
    }

    private void savePreviousLoadDex(boolean loaded) {
        try {
            this.mContext.getSharedPreferences(Constants.PREFS_FILE, 0).edit().putBoolean(PREF_KEY_PREVIOUS_LOAD_DEX, loaded).apply();
        } catch (Exception e) {
            Log.w(ALog.addPrefix(TAG), "savePreviousLoadDex exception", e);
        }
    }

    private boolean getPreviousLoadDex() {
        boolean res = false;
        try {
            return this.mContext.getSharedPreferences(Constants.PREFS_FILE, 0).getBoolean(PREF_KEY_PREVIOUS_LOAD_DEX, true);
        } catch (Exception e) {
            Log.w(ALog.addPrefix(TAG), "getPreviousLoadDex exception", e);
            return res;
        }
    }

    private void registerReceiver() {
        ALog.d(TAG, "register screen receiver");
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        this.mContext.registerReceiver(this.mScreenReceiver, filter);
    }

    private void postDexInit(long delay) {
        this.mHandler.removeCallbacks(this.dexInitTask);
        this.mHandler.postDelayed(this.dexInitTask, delay);
        ALog.d(TAG, "post dex init task");
    }

    private boolean isScreenOffStabled() {
        return this.mScreenOff && TimeUtils.expired(this.mLastScreenOffTime, (long) getScreenOffStableInterval());
    }

    private int getScreenOffStableInterval() {
        return ALog.sEnable ? i.a : SCREEN_OFF_STABLE_INTERVAL;
    }

    private boolean isAndroidPOrAbove() {
        return VERSION.SDK_INT >= 28;
    }

    private boolean isApkSuitableForAndroidPOrAbove(String filePath) {
        try {
            String verName = this.mContext.getPackageManager().getPackageArchiveInfo(filePath, 1).versionName;
            ALog.d(TAG, "" + filePath + " verName: " + verName);
            if (!TextUtils.isEmpty(verName) && new Version(verName).compareTo(new Version(ANALYTICS_CORE_ADAPTED_FOR_ANDROID_P)) >= 0) {
                return true;
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "isApkSuitableForAndroidPOrAbove exception: ", e);
        }
        return false;
    }
}
