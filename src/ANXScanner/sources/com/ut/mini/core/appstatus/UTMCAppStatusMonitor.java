package com.ut.mini.core.appstatus;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import com.alibaba.mtl.log.d.r;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ScheduledFuture;

@TargetApi(14)
public class UTMCAppStatusMonitor implements ActivityLifecycleCallbacks {
    private static UTMCAppStatusMonitor a = null;
    private int J = 0;
    private boolean T = false;
    /* renamed from: a */
    private ScheduledFuture<?> f101a = null;
    private Object d = new Object();
    private Object e = new Object();
    private List<UTMCAppStatusCallbacks> m = new LinkedList();

    private class a implements Runnable {
        private a() {
        }

        public void run() {
            UTMCAppStatusMonitor.this.T = false;
            synchronized (UTMCAppStatusMonitor.this.e) {
                for (UTMCAppStatusCallbacks onSwitchBackground : UTMCAppStatusMonitor.this.e) {
                    onSwitchBackground.onSwitchBackground();
                }
            }
        }
    }

    private UTMCAppStatusMonitor() {
    }

    public static synchronized UTMCAppStatusMonitor getInstance() {
        UTMCAppStatusMonitor uTMCAppStatusMonitor;
        synchronized (UTMCAppStatusMonitor.class) {
            if (a == null) {
                a = new UTMCAppStatusMonitor();
            }
            uTMCAppStatusMonitor = a;
        }
        return uTMCAppStatusMonitor;
    }

    public void registerAppStatusCallbacks(UTMCAppStatusCallbacks aCallbacks) {
        if (aCallbacks != null) {
            synchronized (this.e) {
                this.m.add(aCallbacks);
            }
        }
    }

    public void unregisterAppStatusCallbacks(UTMCAppStatusCallbacks aCallbacks) {
        if (aCallbacks != null) {
            synchronized (this.e) {
                this.m.remove(aCallbacks);
            }
        }
    }

    private void K() {
        synchronized (this.d) {
            r.a().f(11);
        }
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        synchronized (this.e) {
            for (UTMCAppStatusCallbacks onActivityCreated : this.m) {
                onActivityCreated.onActivityCreated(activity, savedInstanceState);
            }
        }
    }

    public void onActivityDestroyed(Activity activity) {
        synchronized (this.e) {
            for (UTMCAppStatusCallbacks onActivityDestroyed : this.m) {
                onActivityDestroyed.onActivityDestroyed(activity);
            }
        }
    }

    public void onActivityPaused(Activity activity) {
        synchronized (this.e) {
            for (UTMCAppStatusCallbacks onActivityPaused : this.m) {
                onActivityPaused.onActivityPaused(activity);
            }
        }
    }

    public void onActivityResumed(Activity activity) {
        synchronized (this.e) {
            for (UTMCAppStatusCallbacks onActivityResumed : this.m) {
                onActivityResumed.onActivityResumed(activity);
            }
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        synchronized (this.e) {
            for (UTMCAppStatusCallbacks onActivitySaveInstanceState : this.m) {
                onActivitySaveInstanceState.onActivitySaveInstanceState(activity, outState);
            }
        }
    }

    public void onActivityStarted(Activity activity) {
        K();
        this.J++;
        if (!this.T) {
            synchronized (this.e) {
                for (UTMCAppStatusCallbacks onSwitchForeground : this.m) {
                    onSwitchForeground.onSwitchForeground();
                }
            }
        }
        this.T = true;
    }

    public void onActivityStopped(Activity activity) {
        this.J--;
        if (this.J == 0) {
            K();
            r.a().a(11, new a(), 1000);
        }
    }
}
