package com.xiaomi.analytics.internal.v1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.miui.analytics.ICore;
import com.miui.analytics.ICore.Stub;
import com.xiaomi.analytics.internal.Constants;
import com.xiaomi.analytics.internal.Version;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import com.xiaomi.analytics.internal.util.TimeUtils;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListSet;

public class SysAnalytics implements AnalyticsInterface {
    private static final String ANALYTICS_SYSTEM_SERVICE_NAME = "com.miui.analytics.AnalyticsService";
    private static final String SDK_CLASS_NAME = "com.miui.analytics.ICore";
    private static final String TAG = "SysAnalytics";
    private ICore mAnalytics;
    private final Object mConnLock = new Object();
    private boolean mConnected = false;
    private boolean mConnecting = false;
    private Context mContext;
    private boolean mOnline = false;
    private final Set<String> mPendingEvents = new ConcurrentSkipListSet();
    private ServiceConnection mServiceConnection = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName name) {
            Log.i(ALog.addPrefix(SysAnalytics.TAG), String.format("onServiceDisconnected, pid:%d, tid:%d", new Object[]{Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid())}));
            SysAnalytics.this.mConnected = false;
            SysAnalytics.this.mAnalytics = null;
            SysAnalytics.this.mConnecting = false;
        }

        public void onServiceConnected(ComponentName name, IBinder service) {
            SysAnalytics.this.mConnected = true;
            SysAnalytics.this.mConnecting = false;
            SysAnalytics.this.mAnalytics = Stub.asInterface(service);
            Log.i(ALog.addPrefix(SysAnalytics.TAG), String.format("onServiceConnected %s, pid:%d, tid:%d", new Object[]{SysAnalytics.this.mAnalytics, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid())}));
            synchronized (SysAnalytics.this.mSyncGuard) {
                try {
                    SysAnalytics.this.mSyncGuard.notifyAll();
                } catch (Exception e) {
                    Log.e(ALog.addPrefix(SysAnalytics.TAG), "onServiceConnected notifyAll exception:", e);
                }
            }
            SysAnalytics.this.drainPendingEvents();
        }
    };
    private final Object mSyncGuard = new Object();

    public SysAnalytics(Context context) {
        this.mContext = AndroidUtils.getApplicationContext(context);
        this.mOnline = isServiceBuiltIn(context);
        bindService();
    }

    private void bindService() {
        if (this.mOnline) {
            try {
                Intent service = new Intent();
                service.setClassName(Constants.ANALYTICS_APP_PACKAGE_NAME, ANALYTICS_SYSTEM_SERVICE_NAME);
                this.mContext.bindService(service, this.mServiceConnection, 1);
                this.mConnecting = true;
                ALog.i(TAG, "try bind sys service");
            } catch (Exception e) {
                Log.e(ALog.addPrefix(TAG), "bind service exception:", e);
            }
        }
    }

    public static boolean isServiceBuiltIn(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClassName(Constants.ANALYTICS_APP_PACKAGE_NAME, ANALYTICS_SYSTEM_SERVICE_NAME);
            if (context == null || context.getPackageManager() == null) {
                return false;
            }
            List<ResolveInfo> services = context.getPackageManager().queryIntentServices(intent, 0);
            if (services == null || services.size() <= 0) {
                return false;
            }
            return true;
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "isServiceBuiltIn exception:", e);
            return false;
        }
    }

    private void ensureService() {
        int i = 0;
        synchronized (this.mConnLock) {
            if (this.mConnecting || (this.mConnected && this.mAnalytics != null)) {
                String str = TAG;
                String str2 = "ensureService mConnecting:%s, mConnected:%s, mAnalytics:%d";
                Object[] objArr = new Object[3];
                objArr[0] = Boolean.valueOf(this.mConnecting);
                objArr[1] = Boolean.valueOf(this.mConnected);
                if (this.mAnalytics != null) {
                    i = 1;
                }
                objArr[2] = Integer.valueOf(i);
                ALog.i(str, String.format(str2, objArr));
            } else {
                this.mContext.unbindService(this.mServiceConnection);
                bindService();
            }
        }
    }

    private void drainPendingEvents() {
        new Thread(new Runnable() {
            public void run() {
                synchronized (SysAnalytics.this.mPendingEvents) {
                    try {
                        if (!SysAnalytics.this.mPendingEvents.isEmpty()) {
                            String[] list = (String[]) SysAnalytics.this.mPendingEvents.toArray(new String[SysAnalytics.this.mPendingEvents.size()]);
                            Class.forName(SysAnalytics.SDK_CLASS_NAME).getMethod("trackEvents", new Class[]{String[].class}).invoke(SysAnalytics.this.mAnalytics, new Object[]{list});
                            ALog.i(SysAnalytics.TAG, String.format("onServiceConnected drain %d pending events", new Object[]{Integer.valueOf(SysAnalytics.this.mPendingEvents.size())}));
                            SysAnalytics.this.mPendingEvents.clear();
                        }
                    } catch (Exception e) {
                        Log.e(ALog.addPrefix(SysAnalytics.TAG), "onServiceConnected drain pending events exception:", e);
                    }
                }
            }
        }).start();
    }

    public boolean isOnline() {
        return this.mOnline;
    }

    public boolean isReady() {
        return this.mOnline && this.mConnected;
    }

    public void waitForConnected() {
        if (this.mOnline && !this.mConnected) {
            synchronized (this.mSyncGuard) {
                try {
                    this.mSyncGuard.wait((long) (TimeUtils.ONE_SECOND_IN_MS * 3));
                } catch (Exception e) {
                    Log.e(ALog.addPrefix(TAG), "waitForConnected mSyncGuard.wait exception:", e);
                }
            }
            return;
        }
        return;
    }

    private String getVersionName() {
        try {
            ensureService();
            if (this.mAnalytics != null) {
                return (String) Class.forName(SDK_CLASS_NAME).getMethod("getVersionName", new Class[0]).invoke(this.mAnalytics, new Object[0]);
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "getVersionName exception:", e);
        }
        return Constants.INVALID_CORE_VER_STR;
    }

    public Version getVersion() {
        return new Version(getVersionName());
    }

    public void trackEvent(String event) {
        try {
            ensureService();
            if (this.mAnalytics == null) {
                synchronized (this.mPendingEvents) {
                    this.mPendingEvents.add(event);
                }
                ALog.i(TAG, "add 1 event into pending event list");
                return;
            }
            Class.forName(SDK_CLASS_NAME).getMethod("trackEvent", new Class[]{String.class}).invoke(this.mAnalytics, new Object[]{event});
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "trackEvent exception:", e);
        }
    }

    public void trackEvents(String[] events) {
        int i = 0;
        try {
            ensureService();
            if (this.mAnalytics == null) {
                synchronized (this.mPendingEvents) {
                    if (events != null) {
                        if (events.length > 0) {
                            Collections.addAll(this.mPendingEvents, events);
                        }
                    }
                }
                String str = TAG;
                String str2 = "add %d events into pending event list";
                Object[] objArr = new Object[1];
                if (events != null) {
                    i = events.length;
                }
                objArr[0] = Integer.valueOf(i);
                ALog.i(str, String.format(str2, objArr));
                return;
            }
            Class.forName(SDK_CLASS_NAME).getMethod("trackEvents", new Class[]{String[].class}).invoke(this.mAnalytics, new Object[]{events});
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "trackEvents exception:", e);
        }
    }

    public String getClientExtra(String configKey) {
        try {
            ensureService();
            if (this.mAnalytics != null) {
                return (String) Class.forName(SDK_CLASS_NAME).getMethod("getClientExtra", new Class[]{String.class, String.class}).invoke(this.mAnalytics, new Object[]{this.mContext.getPackageName(), configKey});
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "getClientExtra exception:", e);
        }
        return "";
    }

    public boolean isPolicyReady(String configKey) {
        try {
            ensureService();
            if (this.mAnalytics != null) {
                return ((Boolean) Class.forName(SDK_CLASS_NAME).getMethod("isPolicyReady", new Class[]{String.class, String.class}).invoke(this.mAnalytics, new Object[]{this.mContext.getPackageName(), configKey})).booleanValue();
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "isPolicyReady exception:", e);
        }
        return false;
    }

    public void setDebugOn(boolean on) {
        try {
            ensureService();
            if (this.mAnalytics != null) {
                Class.forName(SDK_CLASS_NAME).getMethod("setDebugOn", new Class[]{Boolean.TYPE}).invoke(this.mAnalytics, new Object[]{Boolean.valueOf(on)});
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "setDebugOn exception:", e);
        }
    }

    public void setDefaultPolicy(String name, String value) {
        try {
            ensureService();
            if (this.mAnalytics != null) {
                Class.forName(SDK_CLASS_NAME).getMethod("setDefaultPolicy", new Class[]{String.class, String.class}).invoke(this.mAnalytics, new Object[]{name, value});
            }
        } catch (Throwable e) {
            Log.e(ALog.addPrefix(TAG), "setDefaultPolicy exception:", e);
        }
    }

    public void close() {
    }

    public void init() {
    }

    public void deleteAllEvents(String appId) {
        try {
            ALog.d(TAG, "deleteAllEvents");
            ensureService();
            if (this.mAnalytics != null) {
                Class.forName(SDK_CLASS_NAME).getMethod("deleteAllEvents", new Class[]{String.class}).invoke(this.mAnalytics, new Object[]{appId});
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "deleteAllEvents exception:", e);
        }
    }
}
