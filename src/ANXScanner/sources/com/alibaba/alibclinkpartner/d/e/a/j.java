package com.alibaba.alibclinkpartner.d.e.a;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import java.util.Map;

public class j extends d {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f = "lpSDK";

    public j(Context context) {
        this.b = context.getPackageName();
        this.a = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
        try {
            this.d = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
        }
        this.e = b.d();
        this.c = b.a().b;
    }

    public String a() {
        return "cf.linkpartner.0.1";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("currentName", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("currentPN", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("appkey", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put("currentVersion", TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        b.put("sdkVersion", TextUtils.isEmpty(this.e) ? "unknown" : this.e);
        b.put("dataFrom", TextUtils.isEmpty(this.f) ? "unknown" : this.f);
        return b;
    }
}
