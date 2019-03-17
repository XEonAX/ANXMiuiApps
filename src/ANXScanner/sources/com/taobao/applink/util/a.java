package com.taobao.applink.util;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class a {
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0070 A:{SYNTHETIC, Splitter: B:33:0x0070} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(Context context, String str) {
        Throwable th;
        Throwable th2;
        String str2 = null;
        if (!(context == null || TextUtils.isEmpty(str))) {
            InputStream open;
            try {
                open = context.getAssets().open(str);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
                    StringBuilder stringBuilder = new StringBuilder();
                    String readLine;
                    do {
                        readLine = bufferedReader.readLine();
                        if (!(readLine == null || readLine.matches("^\\s*\\/\\/.*"))) {
                            stringBuilder.append(readLine);
                            continue;
                        }
                    } while (readLine != null);
                    bufferedReader.close();
                    open.close();
                    str2 = stringBuilder.toString();
                    if (open != null) {
                        try {
                            open.close();
                        } catch (IOException e) {
                            Log.d(TBAppLinkUtil.TAG, e.toString());
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        Log.d(TBAppLinkUtil.TAG, th.toString());
                        if (open != null) {
                            try {
                                open.close();
                            } catch (IOException e2) {
                                Log.d(TBAppLinkUtil.TAG, e2.toString());
                            }
                        }
                        return str2;
                    } catch (Throwable th4) {
                        th2 = th4;
                        if (open != null) {
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th5) {
                open = null;
                th2 = th5;
                if (open != null) {
                    try {
                        open.close();
                    } catch (IOException e22) {
                        Log.d(TBAppLinkUtil.TAG, e22.toString());
                    }
                }
                throw th2;
            }
        }
        return str2;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.replace("tblink://return/", "").split("/");
        return split.length >= 1 ? split[0] : null;
    }

    public static void a(WebView webView) {
        if (webView != null && !TextUtils.isEmpty("TBAppLinkJsBridge.js")) {
            webView.loadUrl("javascript:" + a(webView.getContext(), "TBAppLinkJsBridge.js"));
        }
    }

    public static void a(WebView webView, com.taobao.applink.i.a aVar) {
        if (webView != null && aVar != null) {
            com.taobao.applink.f.a.a a = aVar.a();
            if (a != null) {
                a.a(webView, "TBAppLink", new b(webView));
            }
        }
    }

    public static void a(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            webView.loadUrl("javascript:" + str);
        }
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? null : str.replace("javascript:TBAppLinkJsBridge.", "").replaceAll("\\(.*\\);", "");
    }

    public static void b(WebView webView) {
        try {
            a(webView, String.format("window.applinkInfo ={sdkVersion:\"%s\",system:\"%s\",device:\"%s\",taoVersion:\"%s\"};", new Object[]{TBAppLinkUtil.SDKVERSION, String.valueOf("ANDROID " + VERSION.SDK_INT), String.valueOf(Build.MODEL), com.taobao.applink.b.a.c(webView.getContext())}));
        } catch (Throwable th) {
            Log.d(TBAppLinkUtil.TAG, th.toString());
        }
    }

    public static String c(String str) {
        if (str.startsWith("tblink://return/_fetchQueue/")) {
            return str.replace("tblink://return/_fetchQueue/", "");
        }
        String[] split = str.replace("tblink://return/", "").split("/");
        if (split.length < 2) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 1; i < split.length; i++) {
            stringBuilder.append(split[i]);
        }
        return stringBuilder.toString();
    }
}
