package com.alipay.sdk.app.statistic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.sdk.cons.a;
import com.alipay.sdk.sys.b;
import java.text.SimpleDateFormat;
import java.util.Date;
import mtopsdk.common.util.SymbolExpUtil;

public final class c {
    public static final String A = "ClientBindServiceFailed";
    public static final String B = "BindWaitTimeoutEx";
    public static final String C = "CheckClientExistEx";
    public static final String D = "CheckClientSignEx";
    public static final String E = "GetInstalledAppEx";
    public static final String F = "GetInstalledAppEx";
    public static final String G = "tid_context_null";
    public static final String H = "partner";
    public static final String I = "out_trade_no";
    public static final String J = "trade_no";
    public static final String a = "net";
    public static final String b = "biz";
    public static final String c = "cp";
    public static final String d = "auth";
    public static final String e = "third";
    public static final String f = "tid";
    public static final String g = "FormatResultEx";
    public static final String h = "GetApdidEx";
    public static final String i = "GetApdidNull";
    public static final String j = "GetApdidTimeout";
    public static final String k = "GetUtdidEx";
    public static final String l = "GetPackageInfoEx";
    public static final String m = "NotIncludeSignatures";
    public static final String n = "GetInstalledPackagesEx";
    public static final String o = "GetPublicKeyFromSignEx";
    public static final String p = "H5PayNetworkError";
    public static final String q = "H5AuthNetworkError";
    public static final String r = "SSLError";
    public static final String s = "H5PayDataAnalysisError";
    public static final String t = "H5AuthDataAnalysisError";
    public static final String u = "PublicKeyUnmatch";
    public static final String v = "ClientBindFailed";
    public static final String w = "TriDesEncryptError";
    public static final String x = "TriDesDecryptError";
    public static final String y = "ClientBindException";
    public static final String z = "SaveTradeTokenError";
    private String K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private String S = "";
    private String T;

    public c(Context context) {
        if (context != null) {
            context = context.getApplicationContext();
        }
        String format = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date());
        this.K = String.format("123456789,%s", new Object[]{format});
        this.M = a(context);
        format = b(a.f);
        String b = b(a.g);
        this.N = String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", new Object[]{format, b});
        format = b(com.alipay.sdk.tid.c.a(b.a().a).a());
        b = b(b.a().c());
        this.O = String.format("%s,%s,-,-,-", new Object[]{format, b});
        format = b(com.alipay.sdk.util.a.d(context));
        String b2 = b(VERSION.RELEASE);
        String b3 = b(Build.MODEL);
        String b4 = b(com.alipay.sdk.util.a.a(context).a());
        String b5 = b(com.alipay.sdk.util.a.b(context).p);
        String b6 = b(com.alipay.sdk.util.a.a(context).b());
        this.P = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", new Object[]{format, "android", b2, b3, "-", b4, b5, "gw", b6});
        this.Q = "-";
        this.R = "-";
        this.T = "-";
    }

    private boolean a() {
        return TextUtils.isEmpty(this.S);
    }

    public final void a(String str, String str2, Throwable th) {
        a(str, str2, a(th));
    }

    private void a(String str, String str2, Throwable th, String str3) {
        a(str, str2, a(th), str3);
    }

    public final void a(String str, String str2, String str3, String str4) {
        String str5 = "";
        if (!TextUtils.isEmpty(this.S)) {
            str5 = str5 + "^";
        }
        this.S += (str5 + String.format("%s,%s,%s,%s", new Object[]{str, str2, b(str3), str4}));
    }

    public final void a(String str, String str2, String str3) {
        a(str, str2, str3, "-");
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.replace("[", "【").replace("]", "】").replace("(", "（").replace(")", "）").replace(",", "，").replace("-", "=").replace("^", "~");
    }

    static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append(th.getClass().getName()).append(SymbolExpUtil.SYMBOL_COLON);
            stringBuffer.append(th.getMessage());
            stringBuffer.append(" 》 ");
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    stringBuffer.append(stackTraceElement.toString() + " 》 ");
                }
            }
        } catch (Throwable th2) {
        }
        return stringBuffer.toString();
    }

    public final String a(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(this.S)) {
            return "";
        }
        String str3;
        String[] split = str.split("&");
        if (split != null) {
            str3 = null;
            for (String split2 : split) {
                String[] split3 = split2.split("=");
                if (split3 != null && split3.length == 2) {
                    if (split3[0].equalsIgnoreCase(H)) {
                        split3[1].replace("\"", "");
                    } else if (split3[0].equalsIgnoreCase(I)) {
                        str3 = split3[1].replace("\"", "");
                    } else if (split3[0].equalsIgnoreCase(J)) {
                        str2 = split3[1].replace("\"", "");
                    }
                }
            }
        } else {
            str3 = null;
        }
        str2 = b(str2);
        String b = b(b(str3));
        this.L = String.format("%s,%s,-,%s,-,-,-", new Object[]{str2, str3, b});
        return String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", new Object[]{this.K, this.L, this.M, this.N, this.O, this.P, this.Q, this.R, this.S, this.T});
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String b() {
        String format = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date());
        return String.format("123456789,%s", new Object[]{format});
    }

    private static String c(String str) {
        String str2;
        String str3 = null;
        String[] split = str.split("&");
        if (split != null) {
            str2 = null;
            for (String split2 : split) {
                String[] split3 = split2.split("=");
                if (split3 != null && split3.length == 2) {
                    if (split3[0].equalsIgnoreCase(H)) {
                        split3[1].replace("\"", "");
                    } else if (split3[0].equalsIgnoreCase(I)) {
                        str2 = split3[1].replace("\"", "");
                    } else if (split3[0].equalsIgnoreCase(J)) {
                        str3 = split3[1].replace("\"", "");
                    }
                }
            }
        } else {
            str2 = null;
        }
        str3 = b(str3);
        String b = b(b(str2));
        return String.format("%s,%s,-,%s,-,-,-", new Object[]{str3, b(str2), b});
    }

    private static String a(Context context) {
        String str = "-";
        String str2 = "-";
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                str = applicationContext.getPackageName();
                str2 = applicationContext.getPackageManager().getPackageInfo(str, 0).versionName;
            } catch (Throwable th) {
            }
        }
        return String.format("%s,%s,-,-,-", new Object[]{str, str2});
    }

    private static String c() {
        String b = b(a.f);
        String b2 = b(a.g);
        return String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", new Object[]{b, b2});
    }

    private static String d() {
        String b = b(com.alipay.sdk.tid.c.a(b.a().a).a());
        String b2 = b(b.a().c());
        return String.format("%s,%s,-,-,-", new Object[]{b, b2});
    }

    private static String b(Context context) {
        String b = b(com.alipay.sdk.util.a.d(context));
        String b2 = b(VERSION.RELEASE);
        String b3 = b(Build.MODEL);
        String b4 = b(com.alipay.sdk.util.a.a(context).a());
        String b5 = b(com.alipay.sdk.util.a.b(context).p);
        String b6 = b(com.alipay.sdk.util.a.a(context).b());
        return String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", new Object[]{b, "android", b2, b3, "-", b4, b5, "gw", b6});
    }
}
