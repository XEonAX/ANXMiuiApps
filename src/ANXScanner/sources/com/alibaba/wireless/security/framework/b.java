package com.alibaba.wireless.security.framework;

import java.io.File;
import org.json.JSONObject;

public class b {
    private static String b = "version";
    private static String c = "lib_dep_version";
    private static String d = "lib_dep_arch";
    private static String e = "target_plugin";
    private JSONObject a;
    private boolean f = true;
    private int g = 0;
    private boolean h = true;
    private String i = "";
    private boolean j = true;
    private String k = "";

    private b(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public static b a(File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            String a = com.alibaba.wireless.security.framework.utils.b.a(file);
            if (a != null && a.length() > 0) {
                JSONObject jSONObject = new JSONObject(a);
                if ("1.0".equals(jSONObject.getString(b))) {
                    return new b(jSONObject);
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public String a(String str) {
        String str2 = "";
        try {
            return a().getString(str);
        } catch (Exception e) {
            return "";
        }
    }

    public JSONObject a() {
        return this.a;
    }

    public int b() {
        if (this.f) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(a().getString(c));
            } catch (Exception e) {
                parseInt = 0;
            }
            this.g = parseInt;
            this.f = false;
        }
        return this.g;
    }

    public String c() {
        if (this.h) {
            String str = "";
            try {
                str = a().getString(d);
            } catch (Exception e) {
                str = "";
            }
            this.i = str;
            this.h = false;
        }
        return this.i;
    }

    public String d() {
        if (this.j) {
            String str = "";
            try {
                str = a().getString(e);
            } catch (Exception e) {
                str = "";
            }
            this.k = str;
            this.j = false;
        }
        return this.k;
    }
}
