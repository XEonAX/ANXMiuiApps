package com.miui.internal.component.module;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import miui.os.C0002FileUtils;

public class ModuleUtils {
    public static final String MODULE_FILE_EXTENSION = ".apk";
    public static final String MODULE_LIB_EXTENSION = ".lib";

    private ModuleUtils() {
    }

    public static File getLibraryFolder(String str) {
        String name = C0002FileUtils.getName(str);
        str = new File(str).getParent();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(name);
        stringBuilder.append(MODULE_LIB_EXTENSION);
        return new File(str, stringBuilder.toString());
    }

    public static boolean isSignatureValid(Context context, String str) {
        PackageInfo packageInfo;
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 64);
        try {
            packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        boolean z = false;
        if (packageArchiveInfo == null || packageInfo == null) {
            return false;
        }
        if (a(packageArchiveInfo.signatures, packageInfo.signatures) == 0) {
            z = true;
        }
        return z;
    }

    private static int a(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == null || signatureArr2 == null) {
            return -3;
        }
        Set hashSet = new HashSet();
        for (Object add : signatureArr) {
            hashSet.add(add);
        }
        Set hashSet2 = new HashSet();
        for (Object add2 : signatureArr2) {
            hashSet2.add(add2);
        }
        if (hashSet.equals(hashSet2)) {
            return 0;
        }
        return -3;
    }
}
