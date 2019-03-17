package com.ut.mini.sdkevents;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import com.alibaba.mtl.log.b;
import com.alibaba.mtl.log.c;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.model.LogField;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTInterfaceCallDelegate;
import com.ut.mini.UTTracker;
import com.ut.mini.core.appstatus.UTMCAppStatusCallbacks;
import com.ut.mini.internal.UTOriginalCustomHitBuilder;
import com.ut.mini.plugin.UTPlugin;
import java.util.List;
import java.util.Map;

public class UTMI1010_2001Event extends UTPlugin implements UTMCAppStatusCallbacks {
    private long C = 0;
    private long D = 0;
    private long E = 0;

    public int[] returnRequiredMsgIds() {
        return new int[]{3};
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x004e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onPluginMsgArrivedFromSDK(int aInPluginMsgId, Object aMsgObject) {
        if (aInPluginMsgId == 3) {
            Map map = (Map) aMsgObject;
            if (map.containsKey(LogField.EVENTID.toString())) {
                if ("2001".equals((String) map.get(LogField.EVENTID.toString()))) {
                    long parseLong;
                    if (map.containsKey(LogField.ARG3.toString())) {
                        try {
                            parseLong = Long.parseLong((String) map.get(LogField.ARG3.toString()));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        this.C = parseLong + this.C;
                        if (!m()) {
                            a(this.C);
                            this.C = 0;
                            return;
                        }
                        return;
                    }
                    parseLong = 0;
                    this.C = parseLong + this.C;
                    if (!m()) {
                    }
                }
            }
        }
    }

    private static boolean m() {
        try {
            Context context = b.a().getContext();
            if (context != null) {
                String packageName = context.getPackageName();
                if (packageName != null) {
                    ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                    if (activityManager != null) {
                        try {
                            List runningTasks = activityManager.getRunningTasks(1);
                            if (runningTasks != null && runningTasks.size() > 0) {
                                ComponentName componentName = ((RunningTaskInfo) runningTasks.get(0)).topActivity;
                                if (componentName != null && packageName.contains(componentName.getPackageName())) {
                                    return false;
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private void a(long j) {
        if (!c.a().d() && j > 0) {
            long elapsedRealtime;
            if (0 != this.E) {
                elapsedRealtime = SystemClock.elapsedRealtime() - this.E;
            } else {
                elapsedRealtime = 0;
            }
            UTOriginalCustomHitBuilder uTOriginalCustomHitBuilder = new UTOriginalCustomHitBuilder("UT", 1010, "" + j, "" + elapsedRealtime, null, null);
            UTTracker defaultTracker = UTAnalytics.getInstance().getDefaultTracker();
            if (defaultTracker != null) {
                defaultTracker.send(uTOriginalCustomHitBuilder.build());
            } else {
                i.a("Record app display event error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
            }
        }
    }

    public void onSwitchBackground() {
        a(SystemClock.elapsedRealtime() - this.D);
        this.E = SystemClock.elapsedRealtime();
    }

    public void onSwitchForeground() {
        this.D = SystemClock.elapsedRealtime();
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
        UTInterfaceCallDelegate.pageDisAppearByAuto(activity);
    }

    public void onActivityResumed(Activity activity) {
        UTInterfaceCallDelegate.pageAppearByAuto(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }
}
