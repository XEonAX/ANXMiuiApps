package com.xiaomi.scanner.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageInstallObserver;
import android.content.pm.IPackageInstallObserver.Stub;
import android.content.pm.IPackageInstallObserver2;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.RemoteException;
import android.provider.Settings.Global;
import android.text.TextUtils;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.Window;
import com.ali.auth.third.login.LoginConstants;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.camera.CameraServicesImpl;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.settings.Keys;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.util.ReflectUtil.ReflAgent;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AppUtil {
    public static final long DELAY_TIME = 200;
    public static final String EXTRA_INTENT_BUSINESS_CARD = "miui.intent.action.scanbusinesscard";
    public static final String EXTRA_INTENT_IS_BACKTO_THIRDAPP = "isBackToThirdApp";
    public static final String EXTRA_INTENT_MODULE_ACTION = "android.intent.action.scanner";
    public static final String EXTRA_INTENT_MODULE_APP = "miref";
    public static final String EXTRA_INTENT_MODULE_IMAGE_PATH = "imagePath";
    public static final String EXTRA_INTENT_MODULE_INDEX = "extra_intent_module_index";
    public static final String EXTRA_INTENT_MODULE_MIUI_ACTION = "miui.intent.action.scanner";
    public static final String EXTRA_INTENT_MODULE_PACKAGE_NAME = "fromApp";
    private static final int INSTALL_PRELOADED_APP_FLAG_NEED_CONFIRM = 1;
    private static final int INSTALL_PRELOADED_APP_FLAG_SHOW_TOAST = 2;
    public static final String INTENT_ACTION_MAIN = "android.intent.action.MAIN";
    public static final int MIUI_VERSION_LOWEST_NUMBER = 8;
    public static final String SCAN_BARCODE_ACTION = "android.intent.action.scanbarcode";
    public static final String SCAN_BARCODE_MIUI_ACTION = "miui.intent.action.scanbarcode";
    private static final Tag TAG = new Tag("AppUtil");
    public static final String TAOKE_ID = "mm_113567256_12244709_53870994";
    public static final String XIAOMI = "xiaomi";
    private static boolean isShoppingMenuShown = false;
    private static int sNavigationBarType = -1;

    public interface AppUtilListener {
        void packageInstalled(String str, boolean z, Object obj);
    }

    public static String getPhoneType() {
        return Build.MANUFACTURER + LoginConstants.UNDER_LINE + Build.MODEL;
    }

    public static boolean isExternalStorageAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isPackageAvailable(Context context, String packageName) {
        try {
            if (!context.getPackageManager().getPackageInfo(packageName, 0).packageName.equalsIgnoreCase(packageName)) {
                return false;
            }
            Log.d(TAG, "isPackageAvailable - getPackageName.equalsIgnoreCase(packageName) - true");
            return true;
        } catch (NameNotFoundException e) {
            Log.e(TAG, "Unable to query for Package - " + packageName + " with error " + e.getMessage());
            return false;
        }
    }

    public static String getLauncherClassName(String packageName) {
        if (packageName == null) {
            return null;
        }
        PackageManager pm = AndroidServices.instance().providePackageManager();
        Intent intent = new Intent(INTENT_ACTION_MAIN);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageName);
        List<ResolveInfo> list = pm.queryIntentActivities(intent, 0);
        if (list == null) {
            return null;
        }
        for (ResolveInfo r : list) {
            if (packageName.equals(r.activityInfo.applicationInfo.packageName)) {
                return r.activityInfo.name;
            }
        }
        return null;
    }

    public static boolean startActivity(Context context, String packageName, String activityName) {
        if (context == null || packageName == null || activityName == null) {
            Log.w(TAG, "invalid param!");
            return false;
        }
        Log.d(TAG, "start " + packageName + "/" + activityName);
        Intent intent;
        try {
            intent = new Intent();
            intent.setClassName(packageName, activityName);
            intent.setFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.w(TAG, e.getMessage(), e);
            try {
                intent = new Intent(INTENT_ACTION_MAIN);
                intent.addCategory("android.intent.category.LAUNCHER");
                String className = getLauncherClassName(packageName);
                intent.setClassName(packageName, className);
                intent.setFlags(268435456);
                Log.d(TAG, "start " + packageName + "/" + className);
                context.startActivity(intent);
                return true;
            } catch (Exception ex) {
                Log.w(TAG, ex.getMessage(), ex);
                return false;
            }
        }
    }

    public static boolean isInLowMemoryState(Context context) {
        if (context == null) {
            Log.w(TAG, "isInLowMemoryState error null context");
            return false;
        }
        ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
        MemoryInfo memoryInfo = new MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        int memSize = activityManager.getMemoryClass();
        int pss = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})[0].getTotalPss();
        Log.i(TAG, "isInLowMemoryState=" + memoryInfo.lowMemory + ", pss=" + pss + ", memSize=" + memSize);
        if (memoryInfo.lowMemory || pss > ((memSize * 4) / 5) * 1024) {
            return true;
        }
        return false;
    }

    public static boolean isRtlLayout(View view) {
        if (view == null) {
            return false;
        }
        if (view.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    public static boolean isRtlLayout() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static boolean isRightVersion() {
        try {
            Matcher matcher = Pattern.compile("\\d+").matcher(ReflAgent.getClass("android.os.SystemProperties").callStaticMethod("get", new Class[]{String.class}, "ro.miui.ui.version.name").stringResult());
            matcher.find();
            int version = Integer.parseInt(matcher.group());
            Log.i(TAG, "current miui version is " + version);
            if (version >= 8) {
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, "get version error", e);
            return false;
        }
    }

    public static void saveUserAgreeToRun(boolean agree) {
        CameraServicesImpl.instance().getSettingsManager().set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_USER_AGREE_TO_RUN, agree);
    }

    public static boolean isUserAgreeToRun() {
        return CameraServicesImpl.instance().getSettingsManager().getBoolean(SettingsManager.SCOPE_GLOBAL, Keys.KEY_USER_AGREE_TO_RUN, false);
    }

    public static boolean isKoreaPermissionShowed() {
        return SPUtils.getLocalBoolean(Constants.KEY_LOCAL_SHOW_KOREA_PERMISSION, false);
    }

    public static void saveKoreaPermissionShowed() {
        SPUtils.saveToLocal(Constants.KEY_LOCAL_SHOW_KOREA_PERMISSION, Boolean.valueOf(true));
    }

    public static void installPackage(Context context, String pkgName, final AppUtilListener appUtilListener, final Object extra) {
        if (context == null || TextUtils.isEmpty(pkgName)) {
            Log.w(TAG, "null context or null pkgName=" + pkgName);
            return;
        }
        try {
            if (VERSION.SDK_INT < 28) {
                IPackageInstallObserver observer = new Stub() {
                    public void packageInstalled(String packageName, int returnCode) throws RemoteException {
                        boolean z = true;
                        Log.i(AppUtil.TAG, "packageInstalled packageName=" + packageName + " ,returnCode=" + returnCode);
                        if (appUtilListener != null) {
                            AppUtilListener appUtilListener = appUtilListener;
                            if (returnCode != 1) {
                                z = false;
                            }
                            appUtilListener.packageInstalled(packageName, z, extra);
                        }
                    }
                };
                Log.i(TAG, "installPackage result=" + ReflAgent.getClass("miui.content.pm.PreloadedAppPolicy").callStaticMethod("installPreloadedDataApp", new Class[]{Context.class, String.class, IPackageInstallObserver.class, Integer.TYPE}, context, pkgName, observer, Integer.valueOf(1)).booleanResult());
                return;
            }
            IPackageInstallObserver2 observer2 = new IPackageInstallObserver2.Stub() {
                public void onPackageInstalled(String basePackageName, int returnCode, String msg, Bundle extras) throws RemoteException {
                    boolean z = true;
                    if (appUtilListener != null) {
                        AppUtilListener appUtilListener = appUtilListener;
                        if (returnCode != 1) {
                            z = false;
                        }
                        appUtilListener.packageInstalled(basePackageName, z, extra);
                    }
                }
            };
            Log.i(TAG, "installPackage result=" + ReflAgent.getClass("miui.content.pm.PreloadedAppPolicy").callStaticMethod("installPreloadedDataApp", new Class[]{Context.class, String.class, IPackageInstallObserver2.class, Integer.TYPE}, context, pkgName, observer2, Integer.valueOf(1)).booleanResult());
        } catch (Exception e) {
            Log.e(TAG, "installPackage error", e);
        }
    }

    public static int getNavigationBarHeight(Context context) {
        if (context == null) {
            Log.w(TAG, "getBottomBarHeight error, null context");
            return 0;
        }
        int height = 0;
        try {
            Resources resources = context.getResources();
            height = resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        } catch (Exception e) {
            Log.e(TAG, "getNavigationBarHeight error", e);
        }
        Log.v(TAG, "Navi height:" + height);
        return height;
    }

    public static int getBottomBarHeight(Context context) {
        if (context == null) {
            Log.w(TAG, "getBottomBarHeight error, null context");
            return 0;
        }
        int bottom = (int) context.getResources().getDimension(R.dimen.bottom_bar_height);
        if (checkDeviceHasNavigationBar()) {
            return bottom + getNavigationBarHeight(context);
        }
        return bottom;
    }

    public static boolean checkDeviceHasNavigationBar() {
        int i = 1;
        if (-1 == sNavigationBarType) {
            boolean hasBar;
            if (KeyCharacterMap.deviceHasKey(82) && KeyCharacterMap.deviceHasKey(4)) {
                hasBar = false;
            } else {
                hasBar = true;
            }
            if (!hasBar) {
                i = 0;
            }
            sNavigationBarType = i;
            return hasBar;
        } else if (sNavigationBarType == 1) {
            return true;
        } else {
            return false;
        }
    }

    public static void hideNavigationLayout(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            window.clearFlags(134217728);
            window.getDecorView().setSystemUiVisibility(768);
            window.addFlags(Integer.MIN_VALUE);
        }
    }

    public static int getViewYpoint(View view) {
        if (view == null) {
            return 0;
        }
        int[] location = new int[2];
        try {
            view.getLocationOnScreen(location);
            return location[1];
        } catch (Exception e) {
            Log.e(TAG, "getViewYpoint error", e);
            return 0;
        }
    }

    public static boolean isAmazonAssistantEnabled() {
        return CameraServicesImpl.instance().getSettingsManager().getBoolean(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_STATUS, false);
    }

    public static boolean shouldRedrawMenuAgain(Context context) {
        return isShoppingMenuShown && !isPackageAvailable(context, Util.AMAZON_ASSISTANT_PACKAGE);
    }

    public static void setAAFeatureShown(boolean isShown) {
        isShoppingMenuShown = isShown;
    }

    public static int getGlobalSettingsInt(Context context, String key, int defaultValue) {
        return Global.getInt(context.getContentResolver(), key, defaultValue);
    }
}
