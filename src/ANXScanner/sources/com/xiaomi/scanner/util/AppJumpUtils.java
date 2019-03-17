package com.xiaomi.scanner.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Locale;
import miui.os.Build;

public class AppJumpUtils {
    private static final Tag TAG = new Tag("AppJumpUtils");

    public static void requestDecodeImage(ScanActivity activity) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.GET_CONTENT");
            intent.setPackage("com.miui.gallery");
            intent.setType("image/*");
            activity.startActivityForResult(intent, 1);
        } catch (Exception e) {
            Intent innerIntent = new Intent();
            innerIntent.setAction("android.intent.action.GET_CONTENT");
            innerIntent.setType("image/*");
            if (VERSION.SDK_INT >= 19) {
                activity.startActivityForResult(innerIntent, 1);
            } else {
                activity.startActivityForResult(Intent.createChooser(innerIntent, activity.getString(R.string.choose_picture)), 1);
            }
        }
    }

    public static void showPrivacy(Activity activity) {
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(String.format("http://www.miui.com/res/doc/privacy.html?region=%1$s&lang=%2$s", new Object[]{Build.getRegion(), Locale.getDefault().toString()}))));
        } catch (Exception e) {
            Log.e(TAG, "Can not open privacy page.", e);
        }
    }

    public static boolean startAlipay(Context context, String result) {
        Uri uri = Uri.parse(getAlipayUrl(result));
        try {
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_ALIPAY_COUNT);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return startAppStore(context, Constants.ALIPAY_PACKAGE_NAME);
        }
    }

    public static boolean startZuoyebang(Context context) {
        UsageStatistics.trackEvent(UsageStatistics.KEY_STUDY_OPEN_ZUOYEBANG_COUNT);
        String APPLICATION_ID = "com.baidu.homework";
        Intent intent = new Intent(AppUtil.INTENT_ACTION_MAIN);
        intent.setClassName("com.baidu.homework", "com.baidu.homework.activity.init.InitActivity");
        intent.addFlags(335544320);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return startAppStore(context, "com.baidu.homework");
        }
    }

    private static String getAlipayUrl(String url) {
        String newUrl = url;
        if (!TextUtils.isEmpty(Uri.parse(url).getQueryParameter("tradeNo"))) {
            newUrl = URLEncoder.encode(url);
        }
        return "alipays://platformapi/startApp?appId=10000007&sourceId=xiaomiScan&actionType=route&qrcode=" + newUrl;
    }

    private static boolean startAppStore(Context context, String applicationid) {
        try {
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_APPSTORE_COUNT);
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + applicationid));
            intent.setClassName("com.xiaomi.market", "com.xiaomi.market.ui.AppDetailActivity");
            intent.putExtra("ref", "barcodeScanner");
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e(TAG, "startAppStore error = " + e);
            return false;
        }
    }

    public static boolean toShowKoreaPermission(Activity activity, int reqId) {
        Intent intent = new Intent("miui.intent.action.APP_PERMISSION_USE");
        ArrayList<String> list = new ArrayList();
        list.add("android.permission-group.CAMERA@1");
        list.add("android.permission-group.STORAGE@1");
        list.add("android.permission-group.PHONE@1");
        intent.putStringArrayListExtra("extra_main_permission_groups", list);
        intent.putExtra("extra_pkgname", "com.xiaomi.scanner");
        try {
            activity.startActivityForResult(intent, reqId);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "toShowKoreaPermission error = " + e);
            return false;
        }
    }
}
