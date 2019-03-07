package com.xiaomi.analytics.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.Analytics;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import com.xiaomi.analytics.internal.util.CertificateUtils;
import com.xiaomi.analytics.internal.util.IOUtil;
import com.xiaomi.analytics.internal.util.MIUI;
import com.xiaomi.analytics.internal.util.NetworkUtils;
import com.xiaomi.analytics.internal.util.SysUtils;
import com.xiaomi.analytics.internal.util.TaskRunner;
import com.xiaomi.analytics.internal.util.TimeUtils;
import com.xiaomi.analytics.internal.util.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.Random;
import org.json.JSONObject;

class UpdateManager {
    private static final long CHECK_UPDATE_INTERVAL = ((long) TimeUtils.HALF_DAY_IN_MS);
    private static final String KEY_ANDROID_VERSION = "d";
    private static final String KEY_API_VER = "av";
    private static final String KEY_CORE_VER = "cv";
    private static final String KEY_IMEI = "i";
    private static final String KEY_MIUI_BUILD = "f";
    private static final String KEY_MIUI_VERSION = "v";
    private static final String KEY_MODEL = "m";
    private static final String KEY_NET = "n";
    private static final String KEY_NONCE = "nonce";
    private static final String KEY_PACKAGE = "p";
    private static final String KEY_REGION = "r";
    private static final String KEY_TIME = "updateTime";
    private static final String KEY_TS = "ts";
    private static final String PREFS_UPDATE = "analytics_updater";
    private static final String SALT = "miui_sdkconfig_jafej!@#)(*e@!#";
    private static final String TAG = "UpdateManager";
    private static final String UPDATE_SERVER = "https://sdkconfig.ad.xiaomi.com/api/checkupdate/lastusefulversion2?";
    private static final String UPDATE_SERVER_INTL = "https://sdkconfig.ad.intl.xiaomi.com/api/checkupdate/lastusefulversion2?";
    private static volatile UpdateManager sInstance;
    private Context mContext;
    private String mDownloadUrl = "";
    private Runnable mDownloader = new Runnable() {
        public void run() {
            Exception e;
            Throwable th;
            try {
                HttpURLConnection conn = (HttpURLConnection) new URL(UpdateManager.this.mDownloadUrl).openConnection();
                conn.setRequestMethod("GET");
                conn.setConnectTimeout(Constants.CONNECT_TIME_OUT_MILLIS);
                conn.connect();
                if (conn.getResponseCode() == 200) {
                    byte[] data = IOUtil.inputStream2ByteArray(conn.getInputStream());
                    if (!TextUtils.isEmpty(UpdateManager.this.mMd5)) {
                        if (!UpdateManager.this.mMd5.equalsIgnoreCase(Utils.getMd5(data))) {
                            data = null;
                        }
                    }
                    if (data != null) {
                        Log.d(ALog.addPrefix(UpdateManager.TAG), "download apk success.");
                        File tmpFile = new File(UpdateManager.this.mOutPath + ".tmp");
                        FileOutputStream stream = null;
                        try {
                            FileOutputStream stream2 = new FileOutputStream(tmpFile);
                            try {
                                stream2.write(data);
                                stream2.flush();
                                stream2.close();
                                stream = null;
                                if (CertificateUtils.isXiaomiPlatformCertificate(AndroidUtils.getSignature(UpdateManager.this.mContext, tmpFile))) {
                                    Log.d(ALog.addPrefix(UpdateManager.TAG), "verify signature success");
                                    tmpFile.renameTo(new File(UpdateManager.this.mOutPath));
                                    UpdateManager.this.notifyApkUpdated();
                                } else {
                                    Log.e(ALog.addPrefix(UpdateManager.TAG), "verify signature failed");
                                }
                                IOUtil.closeSafely(null);
                            } catch (Exception e2) {
                                e = e2;
                                stream = stream2;
                                try {
                                    Log.e(ALog.addPrefix(UpdateManager.TAG), "mDownloader e", e);
                                    IOUtil.closeSafely(stream);
                                } catch (Throwable th2) {
                                    th = th2;
                                    IOUtil.closeSafely(stream);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                stream = stream2;
                                IOUtil.closeSafely(stream);
                                throw th;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                    }
                }
            } catch (Exception e4) {
                Log.w(ALog.addPrefix(UpdateManager.TAG), "mDownloader exception", e4);
            }
        }
    };
    private int mForce;
    private String mMd5 = "";
    private String mOutPath;
    private UpdateListener mUpdateListener;
    private Runnable mUpdater = new Runnable() {
        public void run() {
            Version apiVer = Constants.API_VER;
            Version coreVer = SdkManager.getInstance(UpdateManager.this.mContext).getVersion();
            long ts = System.currentTimeMillis();
            int retry = 0;
            while (true) {
                int i = retry;
                retry = i + 1;
                if (i < 2) {
                    try {
                        String androidVersionNumber = SysUtils.getAndroidVersionNumber();
                        String miuiBuild = SysUtils.getMIUIBuild();
                        String hashedIMEI = SysUtils.getHashedIMEI(UpdateManager.this.mContext);
                        String deviceModel = SysUtils.getDeviceModel();
                        int networkType = NetworkUtils.getNetworkType(UpdateManager.this.mContext);
                        String nonce = UpdateManager.this.getNonce();
                        String packageName = UpdateManager.this.mContext.getPackageName();
                        String region = SysUtils.getRegion();
                        String miuiVersion = SysUtils.getMIUIVersion();
                        StringBuilder path = new StringBuilder();
                        path.append("av" + apiVer);
                        path.append(UpdateManager.KEY_CORE_VER + coreVer);
                        path.append(UpdateManager.KEY_ANDROID_VERSION + androidVersionNumber);
                        path.append(UpdateManager.KEY_MIUI_BUILD + miuiBuild);
                        if (!MIUI.isInternationalBuild()) {
                            path.append(UpdateManager.KEY_IMEI + hashedIMEI);
                        }
                        path.append("m" + deviceModel);
                        path.append("n" + networkType);
                        path.append(UpdateManager.KEY_NONCE + nonce);
                        path.append("p" + packageName);
                        path.append(UpdateManager.KEY_REGION + region);
                        path.append("ts" + ts);
                        path.append(UpdateManager.KEY_MIUI_VERSION + miuiVersion);
                        path.append(UpdateManager.SALT);
                        String sign = Utils.getMd5(path.toString());
                        StringBuilder stringBuilder = new StringBuilder(MIUI.isInternationalBuild() ? UpdateManager.UPDATE_SERVER_INTL : UpdateManager.UPDATE_SERVER);
                        stringBuilder.append("av=" + apiVer);
                        stringBuilder.append("&cv=" + coreVer);
                        stringBuilder.append("&d=" + androidVersionNumber);
                        stringBuilder.append("&f=" + miuiBuild);
                        if (!MIUI.isInternationalBuild()) {
                            stringBuilder.append("&i=" + hashedIMEI);
                        }
                        stringBuilder.append("&m=" + deviceModel);
                        stringBuilder.append("&n=" + networkType);
                        stringBuilder.append("&nonce=" + nonce);
                        stringBuilder.append("&p=" + packageName);
                        stringBuilder.append("&r=" + region);
                        stringBuilder.append("&ts=" + ts);
                        stringBuilder.append("&v=" + miuiVersion);
                        stringBuilder.append("&sign=" + sign);
                        ALog.d(UpdateManager.TAG, stringBuilder.toString());
                        HttpURLConnection conn = (HttpURLConnection) new URL(stringBuilder.toString()).openConnection();
                        conn.setRequestMethod("GET");
                        conn.setConnectTimeout(Constants.CONNECT_TIME_OUT_MILLIS);
                        conn.connect();
                        String str = new String(IOUtil.inputStream2ByteArray(conn.getInputStream()));
                        ALog.d(UpdateManager.TAG, "result " + str);
                        JSONObject json = new JSONObject(str);
                        String url = json.optString("url");
                        int code = json.optInt("code", 0);
                        String ver = json.optString(UpdateManager.KEY_MIUI_VERSION);
                        UpdateManager.this.mForce = json.optInt("force", 0);
                        if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(ver)) {
                            Version version = new Version(ver);
                            if (MIUI.isAlphaBuild() || version.build == 0) {
                                UpdateManager.this.mMd5 = json.optString("md5");
                                UpdateManager.this.mDownloadUrl = url;
                                TaskRunner.execute(UpdateManager.this.mDownloader);
                                return;
                            }
                            return;
                        } else if (code == -8) {
                            ts = UpdateManager.this.parseTs(json.optString("failMsg"));
                        } else {
                            return;
                        }
                    } catch (Exception e) {
                        UpdateManager.this.saveUpdateTime(UpdateManager.CHECK_UPDATE_INTERVAL);
                        ALog.e(UpdateManager.TAG, "exception ", e);
                    }
                } else {
                    return;
                }
            }
        }
    };

    interface UpdateListener {
        void onApkUpdated(String str, boolean z);
    }

    public static synchronized UpdateManager getInstance(Context context) {
        UpdateManager updateManager;
        synchronized (UpdateManager.class) {
            if (sInstance == null) {
                sInstance = new UpdateManager(context);
            }
            updateManager = sInstance;
        }
        return updateManager;
    }

    private UpdateManager(Context context) {
        this.mContext = AndroidUtils.getApplicationContext(context);
    }

    public void setUpdateListener(UpdateListener updateListener) {
        this.mUpdateListener = updateListener;
    }

    public void checkUpdate(String outApkPath) {
        if (!MIUI.shouldNotAccessNetworkOrLocation(this.mContext, TAG)) {
            ALog.d(TAG, "checkUpdate ");
            this.mOutPath = outApkPath;
            TaskRunner.execute(this.mUpdater);
            saveUpdateTime(System.currentTimeMillis());
        }
    }

    public boolean needCheckUpdate() {
        if (MIUI.shouldNotAccessNetworkOrLocation(this.mContext, TAG)) {
            return false;
        }
        if (Analytics.isUpdateEnable()) {
            long lastTime = getLastUpdateTime();
            ALog.d(TAG, "last update check time is " + new Date(lastTime).toString());
            if (System.currentTimeMillis() - lastTime >= CHECK_UPDATE_INTERVAL) {
                return true;
            }
            return false;
        }
        ALog.d(TAG, "Updating is disabled.");
        return false;
    }

    private synchronized long getLastUpdateTime() {
        return this.mContext.getSharedPreferences(PREFS_UPDATE, 0).getLong(KEY_TIME, CHECK_UPDATE_INTERVAL);
    }

    private synchronized void saveUpdateTime(long time) {
        Editor editor = this.mContext.getSharedPreferences(PREFS_UPDATE, 0).edit();
        editor.putLong(KEY_TIME, time);
        editor.apply();
    }

    private String getNonce() {
        Random r = new Random(System.nanoTime());
        try {
            return Utils.getMd5(this.mContext.getPackageName() + ":" + r.nextLong());
        } catch (Exception e) {
            return Utils.getMd5(r.nextLong() + "");
        }
    }

    private long parseTs(String failMsg) {
        try {
            return Long.parseLong(failMsg.split("-")[1]);
        } catch (Exception e) {
            return System.currentTimeMillis();
        }
    }

    private void notifyApkUpdated() {
        boolean z = true;
        if (this.mUpdateListener != null) {
            UpdateListener updateListener = this.mUpdateListener;
            String str = this.mOutPath;
            if (this.mForce != 1) {
                z = false;
            }
            updateListener.onApkUpdated(str, z);
        }
    }
}
