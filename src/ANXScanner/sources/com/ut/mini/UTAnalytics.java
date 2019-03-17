package com.ut.mini;

import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.log.b;
import com.alibaba.mtl.log.c;
import com.alibaba.mtl.log.d.i;
import com.ut.mini.base.UTMIVariables;
import com.ut.mini.core.appstatus.UTMCAppStatusRegHelper;
import com.ut.mini.core.sign.IUTRequestAuthentication;
import com.ut.mini.core.sign.UTBaseRequestAuthentication;
import com.ut.mini.core.sign.UTSecuritySDKRequestAuthentication;
import com.ut.mini.internal.UTOriginalCustomHitBuilder;
import com.ut.mini.internal.UTTeamWork;
import com.ut.mini.plugin.UTPlugin;
import com.ut.mini.plugin.UTPluginMgr;
import com.ut.mini.sdkevents.UTMI1010_2001Event;
import java.util.HashMap;
import java.util.Map;

public class UTAnalytics {
    private static UTAnalytics a = null;
    private boolean M;
    private boolean N;
    /* renamed from: a */
    private UTTracker f0a;
    private Map<String, UTTracker> x = new HashMap();
    private Map<String, UTTracker> y = new HashMap();

    private UTAnalytics() {
        if (VERSION.SDK_INT < 14) {
            UTPlugin uTMI1010_2001Event = new UTMI1010_2001Event();
            UTPluginMgr.getInstance().registerPlugin(uTMI1010_2001Event, false);
            UTMIVariables.getInstance().setUTMI1010_2001EventInstance(uTMI1010_2001Event);
            return;
        }
        Object uTMI1010_2001Event2 = new UTMI1010_2001Event();
        UTMCAppStatusRegHelper.registerAppStatusCallbacks(uTMI1010_2001Event2);
        UTMIVariables.getInstance().setUTMI1010_2001EventInstance(uTMI1010_2001Event2);
    }

    @Deprecated
    public void setContext(Context aContext) {
        b.a().setContext(aContext);
        if (aContext != null) {
            UTTeamWork.getInstance().initialized();
        }
    }

    @Deprecated
    public void setAppApplicationInstance(Application aApplicationInstance) {
        b.a().setAppApplicationInstance(aApplicationInstance);
        AppMonitor.init(aApplicationInstance);
        if (aApplicationInstance != null) {
        }
    }

    public void setAppApplicationInstance(Application application, IUTApplication utCallback) {
        try {
            if (!this.M) {
                if (application == null || utCallback == null || application.getApplicationContext() == null) {
                    throw new IllegalArgumentException("application and callback must not be null");
                }
                getInstance().setContext(application.getApplicationContext());
                getInstance().setAppApplicationInstance(application);
                if (utCallback.isUTLogEnable()) {
                    getInstance().turnOnDebug();
                }
                getInstance().setChannel(utCallback.getUTChannel());
                getInstance().setAppVersion(utCallback.getUTAppVersion());
                getInstance().setRequestAuthentication(utCallback.getUTRequestAuthInstance());
                this.N = true;
                this.M = true;
            }
        } catch (Throwable th) {
        }
    }

    public void setAppApplicationInstance4sdk(Application application, IUTApplication utCallback) {
        try {
            if (!this.N) {
                if (application == null || utCallback == null || application.getApplicationContext() == null) {
                    throw new IllegalArgumentException("application and callback must not be null");
                }
                getInstance().setContext(application.getApplicationContext());
                getInstance().setAppApplicationInstance(application);
                if (utCallback.isUTLogEnable()) {
                    getInstance().turnOnDebug();
                }
                getInstance().setChannel(utCallback.getUTChannel());
                getInstance().setAppVersion(utCallback.getUTAppVersion());
                getInstance().setRequestAuthentication(utCallback.getUTRequestAuthInstance());
                this.N = true;
            }
        } catch (Throwable th) {
        }
    }

    public static synchronized UTAnalytics getInstance() {
        UTAnalytics uTAnalytics;
        synchronized (UTAnalytics.class) {
            if (a == null) {
                a = new UTAnalytics();
            }
            uTAnalytics = a;
        }
        return uTAnalytics;
    }

    public synchronized UTTracker getDefaultTracker() {
        if (this.a == null) {
            this.a = new UTTracker();
        }
        if (this.a == null) {
            i.a("getDefaultTracker error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
        }
        return this.a;
    }

    @Deprecated
    public void setRequestAuthentication(IUTRequestAuthentication aRequestAuthenticationInstance) {
        if (aRequestAuthenticationInstance == null) {
            i.a("setRequestAuthentication", (Object) "Fatal Error,pRequestAuth must not be null.");
        }
        if (aRequestAuthenticationInstance instanceof UTBaseRequestAuthentication) {
            AppMonitor.setRequestAuthInfo(false, aRequestAuthenticationInstance.getAppkey(), ((UTBaseRequestAuthentication) aRequestAuthenticationInstance).getAppSecret(), ((UTBaseRequestAuthentication) aRequestAuthenticationInstance).isEncode() ? "1" : "0");
        } else {
            AppMonitor.setRequestAuthInfo(true, aRequestAuthenticationInstance.getAppkey(), null, ((UTSecuritySDKRequestAuthentication) aRequestAuthenticationInstance).getAuthCode());
        }
    }

    @Deprecated
    public void setAppVersion(String aAppVersion) {
        b.a().setAppVersion(aAppVersion);
    }

    public synchronized UTTracker getTracker(String aTrackId) {
        UTTracker uTTracker;
        if (TextUtils.isEmpty(aTrackId)) {
            i.a("getTracker", (Object) "TrackId is null.");
            uTTracker = null;
        } else if (this.x.containsKey(aTrackId)) {
            uTTracker = (UTTracker) this.x.get(aTrackId);
        } else {
            uTTracker = new UTTracker();
            uTTracker.o(aTrackId);
            this.x.put(aTrackId, uTTracker);
        }
        return uTTracker;
    }

    public synchronized UTTracker getTrackerByAppkey(String appkey) {
        UTTracker uTTracker;
        if (TextUtils.isEmpty(appkey)) {
            i.a("getTracker", (Object) "TrackId is null.");
            uTTracker = null;
        } else if (this.y.containsKey(appkey)) {
            uTTracker = (UTTracker) this.y.get(appkey);
        } else {
            uTTracker = new UTTracker();
            uTTracker.p(appkey);
            this.y.put(appkey, uTTracker);
        }
        return uTTracker;
    }

    @Deprecated
    public void setChannel(String aChannel) {
        AppMonitor.setChannel(aChannel);
    }

    @Deprecated
    public void turnOnDebug() {
        b.a().turnOnDebug();
    }

    public void updateUserAccount(String aUsernick, String aUserid) {
        b.a().updateUserAccount(aUsernick, aUserid);
    }

    public void userRegister(String aUsernick) {
        if (TextUtils.isEmpty(aUsernick)) {
            i.a("userRegister", (Object) "Fatal Error,usernick can not be null or empty!");
            return;
        }
        UTTracker defaultTracker = getDefaultTracker();
        if (defaultTracker != null) {
            defaultTracker.send(new UTOriginalCustomHitBuilder("UT", 1006, aUsernick, null, null, null).build());
        } else {
            i.a("Record userRegister event error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
        }
    }

    public void updateSessionProperties(Map<String, String> aMap) {
        Map a = c.a().a();
        Map hashMap = new HashMap();
        if (a != null) {
            hashMap.putAll(a);
        }
        hashMap.putAll(aMap);
        c.a().c(hashMap);
    }

    public void turnOffAutoPageTrack() {
        UTPageHitHelper.getInstance().turnOffAutoPageTrack();
    }
}
