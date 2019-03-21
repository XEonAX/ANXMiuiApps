package com.xiaomi.mistatistic.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder;
import com.xiaomi.mistatistic.sdk.controller.b;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.e;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.p;
import com.xiaomi.mistatistic.sdk.controller.q;
import com.xiaomi.mistatistic.sdk.controller.s;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.util.Map;

public abstract class MiStatInterface {
    private static boolean sABTestInitialized = false;
    private static boolean sInitialized = false;

    public static final void initialize(Context context, String str, String str2, String str3) throws MiStatException {
        initialize(context, str, str2, str3, false);
    }

    public static final void initialize(Context context, String str, String str2, String str3, final boolean z) throws MiStatException {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (sInitialized) {
            Log.w(j.b(), "Do NOT initialize the SDK again.");
        } else if (context == null) {
            throw new MiStatException("Initializing sdk fails: context is null.");
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new MiStatException("Initializing sdk fails: appID or appKey is empty.");
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            Log.i(j.b(), String.format("Initializing SDK: %s, %s, %s, %s", new Object[]{context.getPackageName(), str, str3, Boolean.valueOf(z)}));
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            if (TextUtils.isEmpty(str3)) {
                str3 = "mistats_default";
            }
            d.a(applicationContext, str, str2, str3);
            l.a();
            e.a();
            e.b();
            h.a();
            g.a();
            s.a().b();
            e.b().a(new a() {
                public void execute() {
                    f.a(d.a()).a(true);
                    if (z) {
                        URLStatsRecorder.enableAutoRecord();
                    }
                }
            });
            if (VERSION.SDK_INT >= 14) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new b());
            }
            sInitialized = true;
            Log.i(j.b(), "The initialization consumes " + (System.currentTimeMillis() - currentTimeMillis) + " ms.");
        }
    }

    public static final void setUploadPolicy(int i, long j) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (!checkInitialized()) {
        } else {
            if (i != 0 && i != 1) {
                Log.e(j.b(), String.format("setUploadPolicy: Policy(%d) is invalid.", new Object[]{Integer.valueOf(i)}));
            } else if (i == 0 && (j > 86400000 || j < 90000)) {
                Log.e(j.b(), String.format("setUploadPolicy: value(interval of UPLOAD_POLICY_INTERVAL) should be set between %d and %d.", new Object[]{Long.valueOf(90000), Long.valueOf(86400000)}));
            } else if (i != 1 || (j <= 30720 && j >= 3072)) {
                s.a().a(i, j);
            } else {
                Log.e(j.b(), String.format("setUploadPolicy: value(size of UPLOAD_POLICY_BATCH) should be set between %d and %d.", new Object[]{Long.valueOf(3072), Long.valueOf(30720)}));
            }
        }
    }

    public static final void setUploadNetwork(int i) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (!checkInitialized()) {
        } else {
            if ((i & -32) != 0) {
                Log.e(j.b(), "setNetworkType: networkType is invalid.");
            } else {
                s.a().a(i);
            }
        }
    }

    public static final void recordPageStart(Activity activity, String str) throws MiStatException {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (checkInitialized()) {
            String b = t.b(activity, t.g(str));
            if (TextUtils.isEmpty(b)) {
                throw new MiStatException("recordPageStart: pageName is empty or can't get pageName from context");
            }
            e.a().a(new com.xiaomi.mistatistic.sdk.controller.asyncjobs.a());
            p.a().a(b, "");
            q.a().a(b);
        }
    }

    public static final void recordPageEnd(Activity activity, String str) throws MiStatException {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (checkInitialized()) {
            String b = t.b(activity, t.g(str));
            if (TextUtils.isEmpty(b)) {
                throw new MiStatException("recordPageEnd: pageName is empty or can't get pageName from context.");
            }
            p.a().a(b);
            q.a().b(b);
        }
    }

    public static final void recordCountEvent(String str, String str2) {
        recordCountEvent(str, str2, null);
    }

    public static final void recordCountEvent(String str, String str2, Map<String, String> map) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (!checkInitialized() || !checkCategory(str) || !checkKey(str2)) {
        } else {
            if (map == null || map.size() <= 15) {
                if (TextUtils.isEmpty(str)) {
                    str = "default_category";
                }
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.d(str, str2, map));
                com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
                return;
            }
            Log.e(j.b(), "recordCountEvent: The amount of params is over 15");
        }
    }

    public static final void recordCalculateEvent(String str, String str2, long j) {
        recordCalculateEvent(str, str2, j, null);
    }

    public static final void recordCalculateEvent(String str, String str2, long j, Map<String, String> map) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (!checkInitialized() || !checkCategory(str) || !checkKey(str2)) {
        } else {
            if (map == null || map.size() <= 15) {
                String str3;
                if (TextUtils.isEmpty(str)) {
                    str3 = "default_category";
                } else {
                    str3 = str;
                }
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.b(str3, str2, j, map));
                com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
                return;
            }
            Log.e(j.b(), "recordCalculateEvent: The amount of params is over 15");
        }
    }

    public static final void recordNumericPropertyEvent(String str, String str2, long j) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (checkInitialized() && checkCategory(str) && checkKey(str2)) {
            if (TextUtils.isEmpty(str)) {
                str = "default_category";
            }
            LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.f(str, str2, j));
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
        }
    }

    public static final void recordStringPropertyEvent(String str, String str2, String str3) {
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
        } else if (checkInitialized() && checkCategory(str) && checkKey(str2) && checkValue(str3)) {
            if (TextUtils.isEmpty(str)) {
                str = "default_category";
            }
            LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.g(str, str2, str3));
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
        }
    }

    public static boolean isABTestInitialized() {
        return sABTestInitialized;
    }

    public static boolean checkInitialized() {
        if (!sInitialized) {
            Log.e(j.b(), "The SDK has NOT been initialized, you should invoke initialize() first.");
        }
        return sInitialized;
    }

    private static boolean checkCategory(String str) {
        if (TextUtils.isEmpty(str) || (!str.startsWith("mistat_") && t.a(t.a.TYPE_CATEGORY, str))) {
            return true;
        }
        Log.e(j.b(), "Category does not meet the specification.");
        return false;
    }

    private static boolean checkKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.startsWith("mistat_") && t.a(t.a.TYPE_KEY, str)) {
            return true;
        }
        Log.e(j.b(), "Key does not meet the specification.");
        return false;
    }

    private static boolean checkValue(String str) {
        if (TextUtils.isEmpty(str) || t.a(t.a.TYPE_VALUE, str)) {
            return true;
        }
        Log.e(j.b(), "Value does not meet the specification.");
        return false;
    }
}
