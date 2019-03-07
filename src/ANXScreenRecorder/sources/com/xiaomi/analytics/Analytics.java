package com.xiaomi.analytics;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.xiaomi.analytics.LogEvent.LogType;
import com.xiaomi.analytics.internal.Constants;
import com.xiaomi.analytics.internal.Debugger;
import com.xiaomi.analytics.internal.SdkManager;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import com.xiaomi.analytics.internal.util.CertificateUtils;
import com.xiaomi.analytics.internal.util.SysUtils;
import com.xiaomi.analytics.internal.util.TaskRunner;
import com.xiaomi.analytics.internal.v1.AnalyticsInterface;
import com.xiaomi.analytics.internal.v1.SysAnalytics;
import com.xiaomi.stat.MiStat.Param;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

public class Analytics {
    private static final String TAG = "Analytics";
    private static volatile Analytics sAnalytics;
    private static volatile boolean sUpdateEnable = true;
    private Context mContext;
    private LoggerFactory<Tracker> sTrackerFactory = new LoggerFactory();

    private Analytics(Context context) {
        this.mContext = AndroidUtils.getApplicationContext(context);
        BaseLogger.init(this.mContext);
        keepMethods();
        SdkManager.getInstance(this.mContext);
        Debugger.getDebugger(this.mContext).register();
        SysUtils.deleteDeviceIdInSpFile(this.mContext);
    }

    private void keepMethods() {
        Tracker tracker = new Tracker("");
    }

    public static synchronized Analytics getInstance(Context context) {
        Analytics analytics;
        synchronized (Analytics.class) {
            if (sAnalytics == null) {
                sAnalytics = new Analytics(context);
            }
            analytics = sAnalytics;
        }
        return analytics;
    }

    public Tracker getTracker(String configKey) {
        return (Tracker) this.sTrackerFactory.getLogger(Tracker.class, configKey);
    }

    public void setDebugOn(boolean on) {
        ALog.sEnable = on;
        AnalyticsInterface analytics = SdkManager.getInstance(this.mContext).getAnalytics();
        if (analytics != null) {
            analytics.setDebugOn(on);
        }
    }

    public static void setUseSystemAnalyticsOnly(Context context) {
        if (SysAnalytics.isServiceBuiltIn(context)) {
            Log.d(ALog.addPrefix(TAG), "use system analytics only");
            SdkManager.setUseSysAnalyticsOnly();
            setUpdateEnable(false);
            return;
        }
        Log.e(ALog.addPrefix(TAG), "system analytics is not exist.");
    }

    public void deleteAllEvents() {
        AnalyticsInterface analytics = SdkManager.getInstance(this.mContext).getAnalytics();
        if (analytics != null) {
            analytics.deleteAllEvents(this.mContext.getPackageName());
        }
    }

    public void setPolicyConfiguration(PolicyConfiguration conf) {
        SdkManager.getInstance(this.mContext).setPolicyConfiguration(conf);
    }

    public void setDontUseSystemAnalytics(boolean dontUse) {
        SdkManager.getInstance(this.mContext).setDontUseSystemAnalytics(dontUse);
    }

    public String getClientExtraSync(String configKey) throws TimeoutException {
        return getClientExtraSync(configKey, BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
    }

    public String getClientExtraSync(final String configKey, final int timeout) throws TimeoutException {
        try {
            FutureTask<String> task = new FutureTask(new Callable<String>() {
                public String call() throws Exception {
                    long time = System.currentTimeMillis();
                    while (System.currentTimeMillis() - time < ((long) timeout)) {
                        AnalyticsInterface analytics = SdkManager.getInstance(Analytics.this.mContext).getAnalytics();
                        if (analytics != null) {
                            String extra = analytics.getClientExtra(configKey);
                            if (!TextUtils.isEmpty(extra) || analytics.isPolicyReady(configKey)) {
                                return extra;
                            }
                        }
                        Thread.sleep(1000);
                    }
                    return null;
                }
            });
            TaskRunner.execute(task);
            String extra = (String) task.get((long) timeout, TimeUnit.MILLISECONDS);
            AnalyticsInterface analytics = SdkManager.getInstance(this.mContext).getAnalytics();
            if (analytics != null && (!TextUtils.isEmpty(extra) || analytics.isPolicyReady(configKey))) {
                return extra;
            }
        } catch (Exception e) {
        }
        throw new TimeoutException();
    }

    public static void trackSystem(Context context, String key, Action action) throws Exception {
        if (isSystemPackage(context) || isPlatformSignature(context)) {
            Intent intent = new Intent();
            intent.setClassName(Constants.ANALYTICS_APP_PACKAGE_NAME, "com.miui.analytics.EventService");
            String str = "key";
            if (key == null) {
                key = "";
            }
            intent.putExtra(str, key);
            intent.putExtra(Param.CONTENT, action.getContent().toString());
            intent.putExtra("extra", action.getExtra().toString());
            if (context.getApplicationContext() != null) {
                intent.putExtra("appid", context.getPackageName());
            }
            if (action instanceof AdAction) {
                intent.putExtra("type", LogType.TYPE_AD.value());
            } else {
                intent.putExtra("type", LogType.TYPE_EVENT.value());
            }
            context.startService(intent);
            return;
        }
        throw new IllegalArgumentException("App is not allowed to use this method to track event, except system or platform signed apps. Use getTracker instead.");
    }

    public static void setUpdateEnable(boolean enable) {
        sUpdateEnable = enable;
    }

    public static boolean isUpdateEnable() {
        return sUpdateEnable;
    }

    private static boolean isPlatformSignature(Context context) {
        boolean ret = CertificateUtils.isXiaomiPlatformCertificate(AndroidUtils.getSignature(context, context.getPackageName()));
        Log.d(ALog.addPrefix(TAG), String.format("%s is platform signatures : %b", new Object[]{context.getPackageName(), Boolean.valueOf(ret)}));
        return ret;
    }

    private static boolean isSystemPackage(Context context) {
        ApplicationInfo info = context.getApplicationInfo();
        return (info == null || (info.flags & 1) == 0) ? false : true;
    }

    public void addJavascriptInterface(WebView webView, String jsInterfaceName) {
        webView.addJavascriptInterface(this, jsInterfaceName);
    }

    @JavascriptInterface
    public void trackCustomAction(String configKey, String jsonStr) {
        try {
            Action action = Actions.newCustomAction();
            try {
                action.addContent(new JSONObject(jsonStr));
            } catch (Exception e) {
            }
            getTracker(configKey).track(action);
        } catch (Exception e2) {
            ALog.e(TAG, "JavascriptInterface trackCustomAction exception:", e2);
        }
    }

    @JavascriptInterface
    public void trackEventAction(String configKey, String eventName, String jsonStr) {
        try {
            Action action = Actions.newEventAction(eventName);
            try {
                action.addContent(new JSONObject(jsonStr));
            } catch (Exception e) {
            }
            getTracker(configKey).track(action);
        } catch (Exception e2) {
            ALog.e(TAG, "JavascriptInterface trackEventAction exception:", e2);
        }
    }

    @JavascriptInterface
    public void trackEventAction(String configKey, String eventName, String parameter, String jsonStr) {
        try {
            Action action = Actions.newEventAction(eventName, parameter);
            try {
                action.addContent(new JSONObject(jsonStr));
            } catch (Exception e) {
            }
            getTracker(configKey).track(action);
        } catch (Exception e2) {
            ALog.e(TAG, "JavascriptInterface trackEventAction exception:", e2);
        }
    }

    @JavascriptInterface
    public void trackAdAction(String configKey, String actionType, String jsonStr) {
        try {
            Action action = Actions.newAdAction(actionType);
            try {
                action.addContent(new JSONObject(jsonStr));
            } catch (Exception e) {
            }
            getTracker(configKey).track(action);
        } catch (Exception e2) {
            ALog.e(TAG, "JavascriptInterface trackAdAction exception:", e2);
        }
    }

    @JavascriptInterface
    public void trackAdAction(String configKey, String adCategory, String actionType, String jsonStr) {
        try {
            Action action = Actions.newAdAction(adCategory, actionType);
            try {
                action.addContent(new JSONObject(jsonStr));
            } catch (Exception e) {
            }
            getTracker(configKey).track(action);
        } catch (Exception e2) {
            ALog.e(TAG, "JavascriptInterface trackAdAction exception:", e2);
        }
    }
}
