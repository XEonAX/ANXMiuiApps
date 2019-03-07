package com.xiaomi.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.analytics.internal.SdkManager;
import com.xiaomi.analytics.internal.SdkManager.OnSdkCorePrepareListener;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import com.xiaomi.analytics.internal.util.Utils;
import com.xiaomi.analytics.internal.v1.AnalyticsInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;

class BaseLogger {
    private static final String TAG = "BaseLogger";
    private static OnSdkCorePrepareListener mOnPreparedListener = new OnSdkCorePrepareListener() {
        public void onSdkCorePrepared(AnalyticsInterface analytics) {
            BaseLogger.sAnalytics = analytics;
            BaseLogger.drainPendingEvents();
        }
    };
    private static volatile AnalyticsInterface sAnalytics;
    private static String sAppId;
    private static Context sContext;
    private static ConcurrentLinkedQueue<PendingUnit> sPendingActions = new ConcurrentLinkedQueue();
    private String mConfigKey = "";
    private String mSession = "";

    private static class PendingUnit {
        String mAppId;
        String mConfigKey;
        LogEvent mEvent;
        String mSessionId;

        public PendingUnit(String appId, String config, String session, LogEvent event) {
            this.mConfigKey = config;
            this.mSessionId = session;
            this.mEvent = event;
            this.mAppId = appId;
        }
    }

    static synchronized void init(Context context) {
        synchronized (BaseLogger.class) {
            sContext = AndroidUtils.getApplicationContext(context);
            sAppId = sContext.getPackageName();
            if (TextUtils.isEmpty(sAppId)) {
                throw new IllegalArgumentException("Context is not a application context.");
            }
            SdkManager.getInstance(sContext).setOnSdkPrepareListener(mOnPreparedListener);
        }
    }

    BaseLogger(String configKey) {
        if (sContext == null) {
            throw new IllegalStateException("Do you forget to do Logger.init ?");
        }
        this.mConfigKey = configKey;
    }

    public void startSession() {
        this.mSession = UUID.randomUUID().toString();
        ALog.d(TAG, "startSession " + this.mSession);
    }

    public void endSession() {
        this.mSession = "";
    }

    protected void log(LogEvent event) {
        if (event != null) {
            sAnalytics = SdkManager.getInstance(sContext).getAnalytics();
            SdkManager.getInstance(sContext).pollUpdate();
            if (sAnalytics != null) {
                sAnalytics.trackEvent(event.pack(sAppId, this.mConfigKey, this.mSession));
            } else {
                sPendingActions.offer(new PendingUnit(sAppId, this.mConfigKey, this.mSession, event));
            }
        }
    }

    protected void log(String appId, LogEvent event) {
        if (event != null && !TextUtils.isEmpty(appId)) {
            sAnalytics = SdkManager.getInstance(sContext).getAnalytics();
            SdkManager.getInstance(sContext).pollUpdate();
            if (sAnalytics != null) {
                sAnalytics.trackEvent(event.pack(appId, this.mConfigKey, this.mSession));
            } else {
                sPendingActions.offer(new PendingUnit(appId, this.mConfigKey, this.mSession, event));
            }
        }
    }

    private static void drainPendingEvents() {
        if (sPendingActions.size() > 0 && sAnalytics != null) {
            ALog.d(TAG, "drainPendingEvents ");
            List<String> list = new ArrayList();
            while (sPendingActions.size() > 0) {
                PendingUnit unit = (PendingUnit) sPendingActions.poll();
                list.add(unit.mEvent.pack(unit.mAppId, unit.mConfigKey, unit.mSessionId));
            }
            int i = 0;
            while (i < list.size()) {
                List<String> in = new ArrayList();
                while (in.size() < 100 && i < list.size()) {
                    in.add(list.get(i));
                    i++;
                }
                ALog.d(TAG, "trackEvents " + in.size());
                sAnalytics.trackEvents((String[]) Utils.list2Array(in, String.class));
            }
        }
    }
}
