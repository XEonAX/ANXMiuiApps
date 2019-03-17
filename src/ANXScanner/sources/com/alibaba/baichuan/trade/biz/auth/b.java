package com.alibaba.baichuan.trade.biz.auth;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class b {
    public static final b a = new b("1", "24", "添加商品到您的淘宝购物车");
    private static Map<String, b> c;
    private static Map<String, String> d;
    private static Map<String, Set<String>> e;
    public String b;
    private String f;
    private String g;

    private b() {
    }

    private b(String str, String str2, String str3) {
        this.f = str;
        this.b = str3;
        this.g = str2;
        synchronized (this) {
            if (c == null) {
                c = new ConcurrentHashMap();
            }
        }
        c.put(a(), this);
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "访问您淘宝账号信息的权限(" + str + ")";
        }
        Object obj = c.get(str) == null ? "" : ((b) c.get(str)).b;
        if (TextUtils.isEmpty(obj)) {
            if (d == null) {
                obj = "";
            } else {
                String obj2 = (String) d.get(str);
            }
        }
        return TextUtils.isEmpty(obj2) ? "访问您淘宝账号信息的权限(" + str + ")" : obj2;
    }

    public static synchronized void a(String str, String str2) {
        synchronized (b.class) {
            if (d == null) {
                d = new HashMap();
            }
            d.put(str, str2);
        }
    }

    public static synchronized void a(String str, Set<String> set) {
        synchronized (b.class) {
            if (e == null) {
                e = new HashMap();
            }
            e.put(str, set);
        }
    }

    public static synchronized Set<String> b(String str) {
        Set<String> set;
        synchronized (b.class) {
            set = d == null ? null : (Set) e.get(str);
        }
        return set;
    }

    public String a() {
        return AlibcTradeCommon.getEnvironment() == Environment.TEST ? this.g : this.f;
    }
}
