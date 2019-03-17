package com.alipay.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.alibaba.fastjson.asm.Opcodes;
import com.alipay.sdk.app.EnvUtils;
import com.alipay.sdk.app.i;
import com.alipay.sdk.app.j;
import com.alipay.sdk.app.statistic.c;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mtopsdk.common.util.SymbolExpUtil;

@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
public final class l {
    static final String a = "com.alipay.android.app";
    public static final int b = 99;
    public static final int c = 73;
    private static final String d = "com.eg.android.AlipayGphone";
    private static final String e = "com.eg.android.AlipayGphoneRC";

    public static class a {
        public Signature[] a;
        public int b;

        public final boolean a() {
            if (this.a == null || this.a.length <= 0) {
                return false;
            }
            int i = 0;
            while (i < this.a.length) {
                String a = l.a(this.a[i].toByteArray());
                if (a == null || TextUtils.equals(a, com.alipay.sdk.cons.a.h)) {
                    i++;
                } else {
                    com.alipay.sdk.app.statistic.a.a(c.b, c.u, a);
                    return true;
                }
            }
            return false;
        }
    }

    public static String a() {
        if (EnvUtils.isSandBox()) {
            return e;
        }
        return "com.eg.android.AlipayGphone";
    }

    public static Map<String, String> a(String str) {
        Map<String, String> hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            int indexOf = str2.indexOf("=", 1);
            hashMap.put(str2.substring(0, indexOf), URLDecoder.decode(str2.substring(indexOf + 1)));
        }
        return hashMap;
    }

    public static String a(String str, String str2, String str3) {
        try {
            int length = str.length() + str3.indexOf(str);
            if (length <= str.length()) {
                return "";
            }
            int i = 0;
            if (!TextUtils.isEmpty(str2)) {
                i = str3.indexOf(str2, length);
            }
            if (i <= 0) {
                return str3.substring(length);
            }
            return str3.substring(length, i);
        } catch (Throwable th) {
            return "";
        }
    }

    public static String b(String str, String str2, String str3) {
        try {
            int length = str.length() + str3.indexOf(str);
            int i = 0;
            if (!TextUtils.isEmpty(str2)) {
                i = str3.indexOf(str2, length);
            }
            if (i <= 0) {
                return str3.substring(length);
            }
            return str3.substring(length, i);
        } catch (Throwable th) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        try {
            String obj = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))).getPublicKey().toString();
            if (obj.indexOf("modulus") != -1) {
                return obj.substring(obj.indexOf("modulus") + 8, obj.lastIndexOf(",")).trim();
            }
        } catch (Throwable e) {
            com.alipay.sdk.app.statistic.a.a(c.d, c.o, e);
        }
        return null;
    }

    public static a a(Context context) {
        return a(context, a());
    }

    private static a a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, Opcodes.CHECKCAST);
            if (!a(packageInfo)) {
                try {
                    packageInfo = c(context, str);
                } catch (Throwable th) {
                    com.alipay.sdk.app.statistic.a.a(c.d, c.n, th);
                }
            }
        } catch (Throwable th2) {
            com.alipay.sdk.app.statistic.a.a(c.d, c.n, th2);
            packageInfo = null;
        }
        if (!a(packageInfo) || packageInfo == null) {
            return null;
        }
        a aVar = new a();
        aVar.a = packageInfo.signatures;
        aVar.b = packageInfo.versionCode;
        return aVar;
    }

    private static boolean a(PackageInfo packageInfo) {
        String str = "";
        boolean z = false;
        if (packageInfo == null) {
            str = str + "info == null";
        } else if (packageInfo.signatures == null) {
            str = str + "info.signatures == null";
        } else if (packageInfo.signatures.length <= 0) {
            str = str + "info.signatures.length <= 0";
        } else {
            z = true;
        }
        if (!z) {
            com.alipay.sdk.app.statistic.a.a(c.d, c.m, str);
        }
        return z;
    }

    private static PackageInfo b(Context context, String str) throws NameNotFoundException {
        return context.getPackageManager().getPackageInfo(str, Opcodes.CHECKCAST);
    }

    private static PackageInfo c(Context context, String str) {
        for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(Opcodes.CHECKCAST)) {
            if (packageInfo.packageName.equals(str)) {
                return packageInfo;
            }
        }
        return null;
    }

    private static a b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        a aVar = new a();
        aVar.a = packageInfo.signatures;
        aVar.b = packageInfo.versionCode;
        return aVar;
    }

    public static boolean b(Context context) {
        try {
            if (context.getPackageManager().getPackageInfo(a, 128) == null) {
                return false;
            }
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static boolean c(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(a(), 128);
            if (packageInfo != null && packageInfo.versionCode > 73) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(c.b, c.C, th);
            return false;
        }
    }

    public static boolean d(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(a(), 128);
            if (packageInfo != null && packageInfo.versionCode < 99) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static String e(Context context) {
        String b = b();
        String c = c();
        String f = f(context);
        return " (" + b + ";" + c + ";" + f + ";;" + g(context) + ")(sdk android)";
    }

    public static String b() {
        return "Android " + VERSION.RELEASE;
    }

    public static WebView a(Activity activity, String str, String str2) {
        Method method;
        Context applicationContext = activity.getApplicationContext();
        if (!TextUtils.isEmpty(str2)) {
            CookieSyncManager.createInstance(applicationContext).sync();
            CookieManager.getInstance().setCookie(str, str2);
            CookieSyncManager.getInstance().sync();
        }
        View linearLayout = new LinearLayout(applicationContext);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        activity.setContentView(linearLayout, layoutParams);
        View webView = new WebView(applicationContext);
        layoutParams.weight = 1.0f;
        webView.setVisibility(0);
        linearLayout.addView(webView, layoutParams);
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString(settings.getUserAgentString() + e(applicationContext));
        settings.setRenderPriority(RenderPriority.HIGH);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
        settings.setAllowFileAccess(false);
        settings.setTextSize(TextSize.NORMAL);
        webView.setVerticalScrollbarOverlay(true);
        webView.setDownloadListener(new m(applicationContext));
        if (VERSION.SDK_INT >= 7) {
            try {
                method = webView.getSettings().getClass().getMethod("setDomStorageEnabled", new Class[]{Boolean.TYPE});
                if (method != null) {
                    method.invoke(webView.getSettings(), new Object[]{Boolean.valueOf(true)});
                }
            } catch (Exception e) {
            }
        }
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
        }
        if (VERSION.SDK_INT >= 19) {
            webView.getSettings().setCacheMode(2);
        }
        webView.loadUrl(str);
        return webView;
    }

    public static String c() {
        String e = e();
        int indexOf = e.indexOf("-");
        if (indexOf != -1) {
            e = e.substring(0, indexOf);
        }
        indexOf = e.indexOf("\n");
        if (indexOf != -1) {
            e = e.substring(0, indexOf);
        }
        return "Linux " + e;
    }

    private static String e() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/version"), 256);
            CharSequence readLine = bufferedReader.readLine();
            bufferedReader.close();
            Matcher matcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(readLine);
            if (!matcher.matches()) {
                return "Unavailable";
            }
            if (matcher.groupCount() < 4) {
                return "Unavailable";
            }
            return new StringBuilder(matcher.group(1)).append("\n").append(matcher.group(2)).append(" ").append(matcher.group(3)).append("\n").append(matcher.group(4)).toString();
        } catch (IOException e) {
            return "Unavailable";
        } catch (Throwable th) {
            bufferedReader.close();
        }
    }

    public static String f(Context context) {
        return context.getResources().getConfiguration().locale.toString();
    }

    private static DisplayMetrics j(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    private static String k(Context context) {
        String a = k.a(context);
        return a.substring(0, a.indexOf("://"));
    }

    private static String f() {
        return "-1;-1";
    }

    public static String d() {
        Random random = new Random();
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < 24; i++) {
            switch (random.nextInt(3)) {
                case 0:
                    stringBuilder.append(String.valueOf((char) ((int) Math.round((Math.random() * 25.0d) + 65.0d))));
                    break;
                case 1:
                    stringBuilder.append(String.valueOf((char) ((int) Math.round((Math.random() * 25.0d) + 97.0d))));
                    break;
                case 2:
                    stringBuilder.append(String.valueOf(new Random().nextInt(10)));
                    break;
                default:
                    break;
            }
        }
        return stringBuilder.toString();
    }

    public static boolean b(String str) {
        return Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipaydev|alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(str).matches();
    }

    public static String h(Context context) {
        String str = "";
        try {
            for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getApplicationContext().getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(a())) {
                    str = str + "#M";
                } else {
                    String str2;
                    if (runningAppProcessInfo.processName.startsWith(a() + SymbolExpUtil.SYMBOL_COLON)) {
                        str2 = str + "#" + runningAppProcessInfo.processName.replace(a() + SymbolExpUtil.SYMBOL_COLON, "");
                    } else {
                        str2 = str;
                    }
                    str = str2;
                }
            }
        } catch (Throwable th) {
            str = "";
        }
        if (str.length() > 0) {
            str = str.substring(1);
        }
        if (str.length() == 0) {
            return "N";
        }
        return str;
    }

    public static String i(Context context) {
        try {
            List installedPackages = context.getPackageManager().getInstalledPackages(0);
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < installedPackages.size(); i++) {
                Object obj;
                PackageInfo packageInfo = (PackageInfo) installedPackages.get(i);
                int i2 = packageInfo.applicationInfo.flags;
                if ((i2 & 1) == 0 && (i2 & 128) == 0) {
                    obj = 1;
                } else {
                    obj = null;
                }
                if (obj != null) {
                    if (packageInfo.packageName.equals(a())) {
                        stringBuilder.append(packageInfo.packageName).append(packageInfo.versionCode).append("-");
                    } else if (!(packageInfo.packageName.contains("theme") || packageInfo.packageName.startsWith("com.google.") || packageInfo.packageName.startsWith("com.android."))) {
                        stringBuilder.append(packageInfo.packageName).append("-");
                    }
                }
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(c.b, "GetInstalledAppEx", th);
            return "";
        }
    }

    @SuppressLint({"InlinedApi"})
    private static boolean c(PackageInfo packageInfo) {
        int i = packageInfo.applicationInfo.flags;
        return (i & 1) == 0 && (i & 128) == 0;
    }

    public static boolean a(WebView webView, String str, Activity activity) {
        if (!TextUtils.isEmpty(str)) {
            if (str.toLowerCase().startsWith("alipays://platformapi/startApp?".toLowerCase()) || str.toLowerCase().startsWith(com.alipay.sdk.cons.a.j.toLowerCase())) {
                try {
                    a a = a((Context) activity);
                    if (!(a == null || a.a())) {
                        if (str.startsWith("intent://platformapi/startapp")) {
                            str = str.replaceFirst("intent://platformapi/startapp\\?", "alipays://platformapi/startApp?");
                        }
                        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    }
                } catch (Throwable th) {
                }
            } else if (TextUtils.equals(str, com.alipay.sdk.cons.a.l) || TextUtils.equals(str, com.alipay.sdk.cons.a.m)) {
                i.a = i.a();
                activity.finish();
            } else if (str.startsWith(com.alipay.sdk.cons.a.k)) {
                j a2;
                try {
                    String substring = str.substring(str.indexOf(com.alipay.sdk.cons.a.k) + 24);
                    int parseInt = Integer.parseInt(substring.substring(substring.lastIndexOf(com.alipay.sdk.cons.a.n) + 10));
                    if (parseInt == j.SUCCEEDED.h || parseInt == j.PAY_WAITTING.h) {
                        if (com.alipay.sdk.cons.a.r) {
                            StringBuilder stringBuilder = new StringBuilder();
                            String decode = URLDecoder.decode(str);
                            String decode2 = URLDecoder.decode(decode);
                            int indexOf = decode.indexOf(com.alipay.sdk.cons.a.p) + 12;
                            stringBuilder.append(decode2.substring(decode2.indexOf(com.alipay.sdk.cons.a.k) + 24, decode2.lastIndexOf(com.alipay.sdk.cons.a.n)).split(com.alipay.sdk.cons.a.p)[0]).append(com.alipay.sdk.cons.a.p).append(decode.substring(indexOf, decode.indexOf("&", indexOf))).append(decode.substring(decode.indexOf("&", indexOf)));
                            substring = stringBuilder.toString();
                        } else {
                            substring = URLDecoder.decode(str);
                            substring = substring.substring(substring.indexOf(com.alipay.sdk.cons.a.k) + 24, substring.lastIndexOf(com.alipay.sdk.cons.a.n));
                        }
                        j a3 = j.a(parseInt);
                        i.a = i.a(a3.h, a3.i, substring);
                        activity.runOnUiThread(new n(activity));
                    } else {
                        a2 = j.a(j.FAILED.h);
                        i.a = i.a(a2.h, a2.i, "");
                        activity.runOnUiThread(new n(activity));
                    }
                } catch (Exception e) {
                    a2 = j.a(j.PARAMS_ERROR.h);
                    i.a = i.a(a2.h, a2.i, "");
                }
            } else {
                webView.loadUrl(str);
            }
        }
        return true;
    }

    public static String g(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(displayMetrics.widthPixels);
        stringBuilder.append("*");
        stringBuilder.append(displayMetrics.heightPixels);
        return stringBuilder.toString();
    }
}
