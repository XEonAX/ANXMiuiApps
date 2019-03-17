package com.alibaba.alibclinkpartner.param;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.h;
import com.ut.device.UTDevice;

public class b {
    public static String a;
    public volatile String b;
    public volatile String c;
    public volatile String d;

    public b(Context context, String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            this.b = b(context);
        } else {
            this.b = str;
        }
        if (this.b == null || TextUtils.isEmpty(this.b.trim())) {
            this.b = "0000000";
        }
        if (TextUtils.isEmpty(a)) {
            a(this.b);
        } else {
            this.c = a;
        }
        a(context);
    }

    private void a(Context context) {
        this.d = UTDevice.getUtdid(context);
    }

    private void a(String str) {
        if (str != null && !TextUtils.isEmpty(this.b.trim())) {
            this.c = String.format("2014_0_%s@baichuan_android_%s_linkout", new Object[]{str, com.alibaba.alibclinkpartner.b.d()});
        }
    }

    private String b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (Class.forName("com.alibaba.wireless.security.open.SecurityGuardManager") == null) {
                return null;
            }
            return (String) h.a("com.alibaba.wireless.security.open.staticdatastore.IStaticDataStoreComponent", "getAppKeyByIndex", new String[]{"int", "java.lang.String"}, h.a("com.alibaba.wireless.security.open.SecurityGuardManager", "getStaticDataStoreComp", null, h.a("com.alibaba.wireless.security.open.SecurityGuardManager", "getInstance", new String[]{"android.content.Context"}, null, new Object[]{context}), null), new Object[]{Integer.valueOf(0), null});
        } catch (Exception e) {
            e.a("ALPOpenParam", "getAppkey", "getappkey fail , errmsg =" + e.toString());
            return null;
        }
    }
}
