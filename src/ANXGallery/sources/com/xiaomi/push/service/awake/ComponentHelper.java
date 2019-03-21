package com.xiaomi.push.service.awake;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.List;

public class ComponentHelper {
    public static boolean checkService(Context context, String targetPackage) {
        try {
            ServiceInfo[] serviceInfos = context.getPackageManager().getPackageInfo(targetPackage, 4).services;
            if (serviceInfos == null) {
                return false;
            }
            for (ServiceInfo serviceInfo : serviceInfos) {
                if (serviceInfo.exported && serviceInfo.enabled && "com.xiaomi.mipush.sdk.PushMessageHandler".equals(serviceInfo.name) && !context.getPackageName().equals(serviceInfo.packageName)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    public static boolean checkService(Context context, String targetPackage, String action) {
        try {
            PackageManager pkgManager = context.getPackageManager();
            Intent intent = new Intent(action);
            intent.setPackage(targetPackage);
            List<ResolveInfo> infos = pkgManager.queryIntentServices(intent, 32);
            if (infos == null || infos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    public static boolean checkActivity(Context context, String targetPackage, String action) {
        try {
            PackageManager pkgManager = context.getPackageManager();
            Intent intent = new Intent(action);
            intent.setPackage(targetPackage);
            List<ResolveInfo> infos = pkgManager.queryIntentActivities(intent, 32);
            if (infos == null || infos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    public static boolean checkProvider(Context context, String authority) {
        boolean result = false;
        try {
            PackageManager pkgManager = context.getPackageManager();
            if (VERSION.SDK_INT < 19) {
                return true;
            }
            List<ProviderInfo> infos = pkgManager.queryContentProviders(null, 0, 8);
            if (infos == null || infos.isEmpty()) {
                return false;
            }
            for (ProviderInfo info : infos) {
                if (info.enabled && info.exported && info.authority.equals(authority)) {
                    result = true;
                }
            }
            return result;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }
}
