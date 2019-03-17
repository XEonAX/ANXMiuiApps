package com.alimama.tunion.a;

import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.LruCache;

/* compiled from: ABTestMemCache */
public class a {
    private static a a;
    private LruCache<String, String> b;

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    private a() {
        int maxMemory = (int) (Runtime.getRuntime().maxMemory() / 10240);
        if (VERSION.SDK_INT > 11) {
            this.b = new LruCache<String, String>(maxMemory) {
                /* renamed from: a */
                protected int sizeOf(String str, String str2) {
                    return str2.length();
                }
            };
        }
    }

    public void a(String str, String str2) {
        if (this.b != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.b.put(str, str2);
        }
    }

    public String a(String str) {
        if (this.b == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return (String) this.b.get(str);
    }
}
