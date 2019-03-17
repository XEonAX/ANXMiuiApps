package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.alipay.sdk.data.c;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.widget.a;

public final class h {
    private static final String a = "com.eg.android.AlipayGphone";
    private static final int b = 65;
    private static a c = null;
    private static String d = null;

    private static boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
            if (packageInfo != null && packageInfo.versionCode >= 65) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static void a(Activity activity, APAuthInfo aPAuthInfo) {
        b a = b.a();
        c.a();
        a.a((Context) activity);
        StringBuilder stringBuilder;
        if (a((Context) activity)) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("alipayauth://platformapi/startapp");
            stringBuilder.append("?appId=20000122");
            stringBuilder.append("&approveType=005");
            stringBuilder.append("&scope=kuaijie");
            stringBuilder.append("&productId=");
            stringBuilder.append(aPAuthInfo.getProductId());
            stringBuilder.append("&thirdpartyId=");
            stringBuilder.append(aPAuthInfo.getAppId());
            stringBuilder.append("&redirectUri=");
            stringBuilder.append(aPAuthInfo.getRedirectUri());
            a(activity, stringBuilder.toString());
            return;
        }
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    a aVar = new a(activity, a.a);
                    c = aVar;
                    aVar.a();
                }
            } catch (Exception e) {
                c = null;
            }
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append("app_id=");
        stringBuilder.append(aPAuthInfo.getAppId());
        stringBuilder.append("&partner=");
        stringBuilder.append(aPAuthInfo.getPid());
        stringBuilder.append("&scope=kuaijie");
        stringBuilder.append("&login_goal=auth");
        stringBuilder.append("&redirect_url=");
        stringBuilder.append(aPAuthInfo.getRedirectUri());
        stringBuilder.append("&view=wap");
        stringBuilder.append("&prod_code=");
        stringBuilder.append(aPAuthInfo.getProductId());
        new Thread(new i(activity, stringBuilder, aPAuthInfo)).start();
    }

    private static void b(Activity activity, APAuthInfo aPAuthInfo) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("alipayauth://platformapi/startapp");
        stringBuilder.append("?appId=20000122");
        stringBuilder.append("&approveType=005");
        stringBuilder.append("&scope=kuaijie");
        stringBuilder.append("&productId=");
        stringBuilder.append(aPAuthInfo.getProductId());
        stringBuilder.append("&thirdpartyId=");
        stringBuilder.append(aPAuthInfo.getAppId());
        stringBuilder.append("&redirectUri=");
        stringBuilder.append(aPAuthInfo.getRedirectUri());
        a(activity, stringBuilder.toString());
    }

    private static void c(Activity activity, APAuthInfo aPAuthInfo) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    a aVar = new a(activity, a.a);
                    c = aVar;
                    aVar.a();
                }
            } catch (Exception e) {
                c = null;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("app_id=");
        stringBuilder.append(aPAuthInfo.getAppId());
        stringBuilder.append("&partner=");
        stringBuilder.append(aPAuthInfo.getPid());
        stringBuilder.append("&scope=kuaijie");
        stringBuilder.append("&login_goal=auth");
        stringBuilder.append("&redirect_url=");
        stringBuilder.append(aPAuthInfo.getRedirectUri());
        stringBuilder.append("&view=wap");
        stringBuilder.append("&prod_code=");
        stringBuilder.append(aPAuthInfo.getProductId());
        new Thread(new i(activity, stringBuilder, aPAuthInfo)).start();
    }

    public static void a(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }
}
