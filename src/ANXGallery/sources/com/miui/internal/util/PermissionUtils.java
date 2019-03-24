package com.miui.internal.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Process;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;

public class PermissionUtils {
    private static final String TAG = "PermissionUtils";

    public static void requestPermissions(Context context, String[] strArr) {
        if (VERSION.SDK_INT >= 23) {
            strArr = a(context, strArr);
            if (strArr.length > 0) {
                b(context, strArr);
            }
        }
    }

    private static String[] a(Context context, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (!d(context, str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return new String[0];
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }

    private static boolean d(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    private static void b(Context context, String[] strArr) {
        String str;
        StringBuilder stringBuilder;
        try {
            Intent intent = (Intent) PackageManager.class.getDeclaredMethod("buildRequestPermissionsIntent", new Class[]{String[].class}).invoke(context.getPackageManager(), new Object[]{strArr});
            intent.setFlags(268435456);
            context.startActivity(intent);
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Success to request permissions: ");
            stringBuilder2.append(Arrays.toString(strArr));
            Log.i(str2, stringBuilder2.toString());
        } catch (Throwable e) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Fail to request permissions: ");
            stringBuilder.append(Arrays.toString(strArr));
            Log.e(str, stringBuilder.toString(), e);
        } catch (Throwable e2) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Fail to request permissions: ");
            stringBuilder.append(Arrays.toString(strArr));
            Log.e(str, stringBuilder.toString(), e2);
        } catch (Throwable e22) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Fail to request permissions: ");
            stringBuilder.append(Arrays.toString(strArr));
            Log.e(str, stringBuilder.toString(), e22);
        }
    }
}
