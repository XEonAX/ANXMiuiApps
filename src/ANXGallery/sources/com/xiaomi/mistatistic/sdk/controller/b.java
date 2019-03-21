package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import com.xiaomi.mistatistic.sdk.controller.e.a;

@TargetApi(14)
/* compiled from: ActivityLifecycleMonitor */
public class b implements ActivityLifecycleCallbacks {
    private static Integer a = Integer.valueOf(0);
    private final Object b = new Object();
    private boolean c = false;
    private int d = 0;

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        try {
            synchronized (this.b) {
                if (a.intValue() == 0) {
                    if (this.c) {
                        j.b("ALM", "The App enters foreground from the background.");
                    } else {
                        j.b("ALM", "The App enters foreground for the first time.");
                    }
                    e.a().a(new a() {
                        public void execute() {
                            s.a().h();
                        }
                    });
                    this.c = true;
                }
                if (this.d < 0) {
                    this.d++;
                } else {
                    a = Integer.valueOf(a.intValue() + 1);
                }
            }
        } catch (Throwable e) {
            j.a("ALM", "onActivityStarted exception", e);
        }
    }

    public void onActivityResumed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
        try {
            synchronized (this.b) {
                if (activity.isChangingConfigurations()) {
                    j.b("ALM", "Activity is changing configuration.");
                    this.d--;
                } else {
                    a = Integer.valueOf(a.intValue() - 1);
                    if (a.intValue() == 0) {
                        j.b("ALM", "The App enters background.");
                        e.a().a(new a() {
                            public void execute() {
                                s.a().g();
                            }
                        });
                    }
                }
            }
        } catch (Throwable e) {
            j.a("ALM", "onActivityStopped exception", e);
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }
}
