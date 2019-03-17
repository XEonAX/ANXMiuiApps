package com.alibaba.mtl.log.d;

import android.text.TextUtils;
import com.alibaba.mtl.log.a;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LogAssemble */
public class h {
    public static String a(Map<String, String> map) {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        for (LogField logField : LogField.values()) {
            if (logField == LogField.ARGS) {
                break;
            }
            if (map.containsKey(logField.toString())) {
                str = ((String) map.get(logField.toString())) + "";
                map.remove(logField.toString());
            } else {
                str = null;
            }
            stringBuilder.append(d(str)).append("||");
        }
        Object obj = 1;
        if (map.containsKey(LogField.ARGS.toString())) {
            stringBuilder.append(d(((String) map.get(LogField.ARGS.toString())) + ""));
            map.remove(LogField.ARGS.toString());
            obj = null;
        }
        Iterator it = map.keySet().iterator();
        while (true) {
            Object obj2 = obj;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            if (map.containsKey(str2)) {
                str = ((String) map.get(str2)) + "";
            } else {
                str = null;
            }
            if (obj2 != null) {
                if ("StackTrace".equals(str2)) {
                    stringBuilder.append("StackTrace=====>").append(str);
                } else {
                    stringBuilder.append(d(str2)).append("=").append(str);
                }
                obj = null;
            } else if ("StackTrace".equals(str2)) {
                stringBuilder.append(",").append("StackTrace=====>").append(str);
                obj = obj2;
            } else {
                stringBuilder.append(",").append(d(str2)).append("=").append(str);
                obj = obj2;
            }
        }
        str = stringBuilder.toString();
        if (TextUtils.isEmpty(str) || !str.endsWith("||")) {
            return str;
        }
        return str + "-";
    }

    public static String b(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        a((Map) map);
        return a((Map) map);
    }

    /* renamed from: a */
    public static Map<String, String> m19a(Map<String, String> map) {
        if (map == null) {
            map = new HashMap();
        }
        try {
            CharSequence o = b.o();
            if (!(TextUtils.isEmpty(o) || map.containsKey(LogField.USERNICK.toString()))) {
                map.put(LogField.USERNICK.toString(), o);
            }
            o = b.l();
            if (!(TextUtils.isEmpty(o) || map.containsKey(LogField.LL_USERNICK.toString()))) {
                map.put(LogField.LL_USERNICK.toString(), o);
            }
            o = b.p();
            if (!(TextUtils.isEmpty(o) || map.containsKey(LogField.USERID.toString()))) {
                map.put(LogField.USERID.toString(), o);
            }
            o = b.m();
            if (!(TextUtils.isEmpty(o) || map.containsKey(LogField.LL_USERID.toString()))) {
                map.put(LogField.LL_USERID.toString(), o);
            }
            String valueOf = String.valueOf(System.currentTimeMillis());
            if (!map.containsKey(LogField.RECORD_TIMESTAMP.toString())) {
                map.put(LogField.RECORD_TIMESTAMP.toString(), valueOf);
            }
            if (!map.containsKey(LogField.START_SESSION_TIMESTAMP.toString())) {
                map.put(LogField.START_SESSION_TIMESTAMP.toString(), String.valueOf(a.B));
            }
            Map a = d.a(a.getContext());
            if (a != null) {
                for (String valueOf2 : a.keySet()) {
                    String str = (String) a.get(valueOf2);
                    if (!(TextUtils.isEmpty(str) || map.containsKey(valueOf2) || map.containsKey(valueOf2))) {
                        map.put(valueOf2, str);
                    }
                }
            }
            o = c(map);
            if (!(TextUtils.isEmpty(o) || map.containsKey(LogField.RESERVES.toString()))) {
                map.put(LogField.RESERVES.toString(), o);
            }
        } catch (Throwable th) {
        }
        return map;
    }

    private static String c(Map<String, String> map) {
        String str = "_ap=1";
        if ("y".equalsIgnoreCase((String) map.get(LogField.OS.toString()))) {
            Object uuid = d.getUUID();
            if (!TextUtils.isEmpty(uuid)) {
                str = str + ",_did=" + uuid;
            }
        }
        String str2 = (String) map.get(LogField.APPKEY.toString());
        if (TextUtils.isEmpty(b.getAppkey()) || TextUtils.isEmpty(str2) || b.getAppkey().equalsIgnoreCase(str2)) {
            return str;
        }
        return str + ",_mak=" + b.getAppkey();
    }

    private static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return "-";
        }
        return str;
    }

    public static String a(String str, String str2, String str3, String str4, String str5, Map<String, String> map, String str6, String str7) {
        Map hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(LogField.PAGE.toString(), str);
        }
        hashMap.put(LogField.EVENTID.toString(), str2);
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put(LogField.ARG1.toString(), str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            hashMap.put(LogField.ARG2.toString(), str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            hashMap.put(LogField.ARG3.toString(), str5);
        }
        if (!TextUtils.isEmpty(str7)) {
            hashMap.put(LogField.RECORD_TIMESTAMP.toString(), str7);
        }
        if (!TextUtils.isEmpty(str6)) {
            hashMap.put(LogField.RESERVE3.toString(), str6);
        }
        return b(hashMap);
    }
}
