package com.alibaba.wireless.security.framework.utils;

import android.content.Context;
import android.os.Process;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import mtopsdk.common.util.SymbolExpUtil;

public class UserTrackMethodJniBridge {
    private static Context a;
    private static String b = null;
    private static int c = 0;
    private static int d = 0;
    private static int e = 0;
    private static int f = 0;
    private static Class g = null;
    private static Class h = null;
    private static Class i = null;
    private static Constructor j = null;
    private static Method k = null;
    private static Method l = null;
    private static Method m = null;
    private static Method n = null;
    private static final char[] o = "0123456789abcdef".toCharArray();

    private static synchronized String a() {
        String substring;
        synchronized (UserTrackMethodJniBridge.class) {
            if (b == null || b.length() == 0) {
                b = b();
            }
            substring = b.substring(0, b.length() / 8);
        }
        return substring;
    }

    private static String a(String str) {
        String str2 = "";
        if (str == null || str.length() == 0) {
            return str2;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static int addUtRecord(String str, int i, int i2, String str2, long j, String str3, String str4, String str5, String str6, String str7) {
        if (!(utAvaiable() == 0 || str == null || str.length() == 0)) {
            try {
                String str8 = "Page_SecurityGuardSDK";
                if (str2 == null) {
                    str2 = "";
                }
                String valueOf = String.valueOf(i % 100);
                Map hashMap = new HashMap();
                hashMap.put("plugin", String.valueOf(i2));
                hashMap.put(AppLinkConstants.PID, String.valueOf(Process.myPid()));
                hashMap.put("tid", String.valueOf(Thread.currentThread().getId()));
                hashMap.put(AppLinkConstants.TIME, String.valueOf(j));
                if (d == 0) {
                    c = f.c(a) ? 1 : 0;
                    d = 1;
                }
                hashMap.put("ui", String.valueOf(c));
                hashMap.put(LoginConstants.SID, a());
                hashMap.put("uuid", b());
                hashMap.put("msg", a(str3));
                hashMap.put("rsv1", a(str4));
                hashMap.put("rsv2", a(str5));
                hashMap.put("rsv3", a(str6));
                hashMap.put("rsv4", a(str7));
                Object newInstance = j.newInstance(new Object[]{str8, Integer.valueOf(19999), str, str2, valueOf, hashMap});
                if (newInstance != null) {
                    Map map = (Map) k.invoke(newInstance, new Object[0]);
                    if (!(map == null || map.size() == 0)) {
                        Object invoke = l.invoke(h, new Object[0]);
                        if (invoke != null) {
                            invoke = m.invoke(invoke, new Object[0]);
                            if (invoke != null) {
                                n.invoke(invoke, new Object[]{map});
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
        return 0;
    }

    private static String b() {
        String str = "";
        try {
            String uuid = UUID.randomUUID().toString();
            return bytesToHex(MessageDigest.getInstance("SHA-1").digest((uuid + String.valueOf(System.nanoTime())).getBytes("UTF-8")));
        } catch (Exception e) {
            return str;
        }
    }

    public static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = o[i2 >>> 4];
            cArr[(i * 2) + 1] = o[i2 & 15];
        }
        return new String(cArr);
    }

    public static String getStackTrace(int i, int i2) {
        int i3 = 0;
        String str = "";
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace != null) {
            if (stackTrace.length <= 0) {
                return str;
            }
            if (i > 0) {
                if (i2 <= 0) {
                    return str;
                }
                StringBuilder stringBuilder = new StringBuilder();
                int i4 = 0;
                while (i3 < stackTrace.length && i4 < i2 && stringBuilder.length() < i) {
                    if (i3 > 1) {
                        i4++;
                        StackTraceElement stackTraceElement = stackTrace[i3];
                        stringBuilder.append(stackTraceElement.getClassName() + SymbolExpUtil.SYMBOL_DOT + stackTraceElement.getMethodName());
                        if (i3 < stackTrace.length - 1) {
                            stringBuilder.append("#");
                        }
                    }
                    i3++;
                }
                return stringBuilder.toString();
            }
        }
        return str;
    }

    public static void init(Context context) {
        if (context != null) {
            a = context;
        }
    }

    public static int utAvaiable() {
        if (f == 0) {
            synchronized (UserTrackMethodJniBridge.class) {
                if (f == 0) {
                    try {
                        g = Class.forName("com.ut.mini.internal.UTOriginalCustomHitBuilder");
                        h = Class.forName("com.ut.mini.UTAnalytics");
                        i = Class.forName("com.ut.mini.UTTracker");
                        try {
                            j = g.getConstructor(new Class[]{String.class, Integer.TYPE, String.class, String.class, String.class, Map.class});
                            k = g.getMethod("build", new Class[0]);
                            l = h.getMethod("getInstance", new Class[0]);
                            m = h.getMethod("getDefaultTracker", new Class[0]);
                            n = i.getMethod("send", new Class[]{Map.class});
                            e = 1;
                        } catch (NoSuchMethodException e) {
                        }
                    } catch (ClassNotFoundException e2) {
                    }
                    f = 1;
                }
            }
        }
        return e;
    }
}
