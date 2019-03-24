package miui.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Build.VERSION;
import com.android.server.pm.PackageManagerService;
import com.miui.internal.util.UrlResolverHelper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class UrlResolver {
    private static Method JY = null;

    private UrlResolver() {
    }

    public static ResolveInfo checkMiuiIntent(Context context, Object obj, Intent intent, String str, int i, List<ResolveInfo> list, int i2) {
        return a(context, false, context.getPackageManager(), obj, intent, str, i, list, i2);
    }

    public static ResolveInfo checkMiuiIntent(Context context, PackageManager packageManager, Intent intent) {
        return a(context, true, packageManager, null, intent, null, 0, null, 0);
    }

    private static ResolveInfo a(Context context, boolean z, PackageManager packageManager, Object obj, Intent intent, String str, int i, List<ResolveInfo> list, int i2) {
        List queryIntentActivities;
        ResolveInfo resolveInfo;
        Context context2 = context;
        PackageManager packageManager2 = packageManager;
        Object obj2 = obj;
        Intent intent2 = intent;
        String str2 = str;
        if (z) {
            queryIntentActivities = packageManager2.queryIntentActivities(intent2, 0);
        } else {
            queryIntentActivities = list;
        }
        List arrayList = new ArrayList();
        for (int i3 = 0; i3 < queryIntentActivities.size(); i3++) {
            resolveInfo = (ResolveInfo) queryIntentActivities.get(i3);
            if (!resolveInfo.activityInfo.packageName.equals("com.android.browser")) {
                if (UrlResolverHelper.isWhiteListPackage(resolveInfo.activityInfo.packageName)) {
                    arrayList.add(resolveInfo);
                } else {
                    try {
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        PackageInfo packageInfo = packageManager2.getPackageInfo(resolveInfo.activityInfo.packageName, 0);
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        if (!(packageInfo.applicationInfo == null || (1 & packageInfo.applicationInfo.flags) == 0 || packageInfo.packageName.equals("com.android.chrome"))) {
                            arrayList.add(resolveInfo);
                        }
                    } catch (NameNotFoundException e) {
                    }
                }
            }
        }
        if (arrayList.size() == 1) {
            return (ResolveInfo) arrayList.get(0);
        }
        if (arrayList.size() > 1) {
            return null;
        }
        Uri data = intent.getData();
        if (data == null) {
            return null;
        }
        String host = data.getHost();
        if (host == null || !UrlResolverHelper.isMiHost(host)) {
            return null;
        }
        String fallbackParameter = UrlResolverHelper.getFallbackParameter(data);
        if (fallbackParameter == null) {
            return null;
        }
        int i4;
        Uri parse = Uri.parse(fallbackParameter);
        if (UrlResolverHelper.isBrowserFallbackScheme(parse.getScheme())) {
            parse = UrlResolverHelper.getBrowserFallbackUri(fallbackParameter);
            i4 = 1;
        } else {
            i4 = 0;
        }
        intent2.setData(parse);
        if (!z) {
            if (VERSION.SDK_INT > 20) {
                try {
                    if (JY == null) {
                        JY = context2.getClassLoader().loadClass("com.android.server.pm.PackageManagerService").getDeclaredMethod("resolveIntent", new Class[]{Intent.class, String.class, Integer.TYPE, Integer.TYPE});
                    }
                    resolveInfo = (ResolveInfo) JY.invoke(obj2, new Object[]{intent2, str2, Integer.valueOf(i), Integer.valueOf(i2)});
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
            resolveInfo = ((PackageManagerService) obj2).resolveIntent(intent2, str2, i, i2);
            return resolveInfo;
        } else if (i4 == 0) {
            return checkMiuiIntent(context2, packageManager2, intent2);
        } else {
            context2.startActivity(intent2);
            return new ResolveInfo();
        }
    }
}
