package miui.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

public class ResourceHelper {
    private static final String[] JR = new String[0];
    private static final String TAG = "ResourceHelper";

    private ResourceHelper() {
    }

    public static XmlResourceParser loadXml(Context context, String str, String str2) {
        return loadXml(context, str, str2, JR);
    }

    public static XmlResourceParser loadXml(Context context, String str, String str2, String... strArr) {
        int a = a(context, str, str2, strArr);
        if (a > 0) {
            return context.getResources().getXml(a);
        }
        String str3 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Fail to load config for resource id is ");
        stringBuilder.append(a);
        Log.i(str3, stringBuilder.toString());
        return null;
    }

    private static int a(Context context, String str, String str2, String... strArr) {
        int i;
        Bundle s = s(context);
        if (s == null) {
            Log.w(TAG, "Fail to load meta data");
        } else {
            i = s.getInt(str);
            if (i > 0) {
                return i;
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            i = context.getResources().getIdentifier(str2, "xml", context.getPackageName());
            if (i > 0) {
                return i;
            }
            for (String identifier : strArr) {
                int identifier2 = context.getResources().getIdentifier(str2, "xml", identifier);
                if (identifier2 > 0) {
                    return identifier2;
                }
            }
        }
        return -1;
    }

    private static Bundle s(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo.metaData == null) {
            try {
                applicationInfo.metaData = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (Throwable e) {
                Log.e(TAG, "Fail to load config for application not found", e);
            }
        }
        return applicationInfo.metaData;
    }
}
