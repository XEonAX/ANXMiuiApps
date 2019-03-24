package com.miui.internal.util;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.io.File;
import miui.core.Manifest;
import miui.core.ManifestParser;
import miui.util.AppConstants;

public class PackageConstants extends AppConstants {
    public static final int CURRENT_SDK_LEVEL = ag();
    public static final String LOG_TAG = "miuisdk";
    public static final String ORIGINAL_PACKAGE_NAME = "miui";
    public static final String PACKAGE_NAME = "com.miui.core";
    public static final String RESOURCE_PATH = PackageHelper.getApkPath(null, PACKAGE_NAME, "miui");
    public static final int SDK_STATUS_INITIALIZED = 2;
    public static final int SDK_STATUS_LOADED = 1;
    public static final int SDK_STATUS_NOT_EXISTS = 0;
    public static final int SDK_STATUS_STARTED = 3;
    private static final String jw = "miuisdk";
    public static volatile Application sApplication;
    public static Application sInitializingApplication;
    public static int sSdkStatus = 0;

    private PackageConstants() {
    }

    private static int ag() {
        String[] strArr = new String[1];
        int i = 0;
        strArr[0] = RESOURCE_PATH;
        Manifest parse = ManifestParser.createFromResources(ResourcesUtils.createResources(strArr), "miui", null).parse(null);
        if (parse != null) {
            i = parse.getModule().getLevel();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("current sdk level is ");
            stringBuilder.append(i);
            Log.d("miuisdk", stringBuilder.toString());
        }
        if (i != 0) {
            return i;
        }
        throw new IllegalStateException("cannot retrieve sdk level");
    }

    public static File getSdkBaseFolder(Context context) {
        return new File(context.getFilesDir(), "miuisdk");
    }
}
