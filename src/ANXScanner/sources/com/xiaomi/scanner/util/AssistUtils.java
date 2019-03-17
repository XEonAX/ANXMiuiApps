package com.xiaomi.scanner.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class AssistUtils {
    private static AssistUtils uiUtils;

    public static AssistUtils getInstant(Context context) {
        if (uiUtils == null) {
            uiUtils = new AssistUtils();
        }
        return uiUtils;
    }

    public static boolean isAvilible(Context context, String packageName) {
        List<PackageInfo> packageInfos = context.getPackageManager().getInstalledPackages(0);
        List<String> packageNames = new ArrayList();
        if (packageInfos != null) {
            for (int i = 0; i < packageInfos.size(); i++) {
                packageNames.add(((PackageInfo) packageInfos.get(i)).packageName);
            }
        }
        return packageNames.contains(packageName);
    }

    public static void startMap(Context context, String text) {
        Exception e;
        String path;
        Intent intent;
        Intent intent2;
        if (isAvilible(context, "com.baidu.BaiduMap")) {
            path = Constants.SEARCH_BAIDU_URI.replace("AAAA", text);
            try {
                intent = new Intent();
                try {
                    intent.setData(Uri.parse(path));
                    context.startActivity(intent);
                    intent2 = intent;
                } catch (Exception e2) {
                    e = e2;
                    intent2 = intent;
                    Log.e("intent", e.getMessage());
                }
            } catch (Exception e3) {
                e = e3;
                Log.e("intent", e.getMessage());
            }
        } else if (isAvilible(context, "com.autonavi.minimap")) {
            path = Constants.SEARCH_GAODE_URI.replace("AAAA", text);
            try {
                intent = new Intent();
                try {
                    intent.setData(Uri.parse(path));
                    context.startActivity(intent);
                    intent2 = intent;
                } catch (Exception e4) {
                    e = e4;
                    intent2 = intent;
                    e.printStackTrace();
                }
            } catch (Exception e5) {
                e = e5;
                e.printStackTrace();
            }
        } else {
            Toast.makeText(context, "您尚未安装地图", 1).show();
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.baidu.BaiduMap")));
        }
    }
}
