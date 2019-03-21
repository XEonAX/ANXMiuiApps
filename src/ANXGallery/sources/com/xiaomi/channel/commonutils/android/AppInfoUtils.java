package com.xiaomi.channel.commonutils.android;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import com.meicam.themehelper.BuildConfig;
import com.nexstreaming.nexeditorsdk.nexCrop;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class AppInfoUtils {

    public enum AppNotificationOp {
        UNKNOWN(0),
        ALLOWED(1),
        NOT_ALLOWED(2);
        
        private final int value;

        private AppNotificationOp(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static String getVersionName(Context context, String packageName) {
        PackageInfo info = null;
        try {
            info = context.getPackageManager().getPackageInfo(packageName, 16384);
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return info != null ? info.versionName : BuildConfig.VERSION_NAME;
    }

    public static int getVersionCode(Context context, String packageName) {
        PackageInfo info = null;
        try {
            info = context.getPackageManager().getPackageInfo(packageName, 16384);
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return info != null ? info.versionCode : 0;
    }

    @TargetApi(19)
    public static AppNotificationOp getAppNotificationOp(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName) || VERSION.SDK_INT < 19) {
            return AppNotificationOp.UNKNOWN;
        }
        try {
            if (((Integer) JavaCalls.getStaticField(AppOpsManager.class, "OP_POST_NOTIFICATION")) == null) {
                return AppNotificationOp.UNKNOWN;
            }
            ApplicationInfo info = context.getPackageManager().getApplicationInfo(packageName, 0);
            Integer mode = (Integer) JavaCalls.callMethod((AppOpsManager) context.getSystemService("appops"), "checkOpNoThrow", op, Integer.valueOf(info.uid), packageName);
            return (mode == null || mode.intValue() != 0) ? AppNotificationOp.NOT_ALLOWED : AppNotificationOp.ALLOWED;
        } catch (Throwable th) {
            return AppNotificationOp.UNKNOWN;
        }
    }

    public static String getProcessName(Context context) {
        if (context == null) {
            return null;
        }
        List<RunningAppProcessInfo> processInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (processInfos == null) {
            return null;
        }
        int myPid = Process.myPid();
        for (RunningAppProcessInfo info : processInfos) {
            if (info.pid == myPid) {
                return info.processName;
            }
        }
        return null;
    }

    public static String getRunningAppPkgNames(Context context) {
        List<RunningAppProcessInfo> processInfoList = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        List<String> packages = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (processInfoList != null && processInfoList.size() > 0) {
            for (RunningAppProcessInfo processInfo : processInfoList) {
                String[] pkgList = processInfo.pkgList;
                int i = 0;
                while (pkgList != null && i < pkgList.length) {
                    if (!packages.contains(pkgList[i])) {
                        packages.add(pkgList[i]);
                        if (packages.size() == 1) {
                            sb.append(((String) packages.get(0)).hashCode() % nexCrop.ABSTRACT_DIMENSION);
                        } else {
                            sb.append("#").append(pkgList[i].hashCode() % nexCrop.ABSTRACT_DIMENSION);
                        }
                    }
                    i++;
                }
            }
        }
        return sb.toString();
    }

    public static boolean isAppRunning(Context context, String packageName) {
        List<RunningAppProcessInfo> processInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (processInfos != null) {
            for (RunningAppProcessInfo processInfo : processInfos) {
                if (Arrays.asList(processInfo.pkgList).contains(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPkgInstalled(Context context, String pkgName) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(pkgName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo == null) {
            return false;
        }
        return true;
    }

    public static boolean isAppMainProc(Context context) {
        List<RunningAppProcessInfo> procs = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (procs == null || procs.size() < 1) {
            return false;
        }
        for (RunningAppProcessInfo proc : procs) {
            if (proc.pid == Process.myPid() && proc.processName.equals(context.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public static String getAppPermissionBase64Str(Context context, String pkgName) {
        try {
            return convertPermissionString(context.getPackageManager().getPackageInfo(pkgName, 4096).requestedPermissions);
        } catch (NameNotFoundException e) {
            MyLog.e(e.toString());
            return "";
        }
    }

    public static String convertPermissionString(String[] packagePermissions) {
        AppPermissionType[] appPermissionTypes = AppPermissionType.values();
        byte[] permissionBytes = new byte[((int) Math.ceil(((double) appPermissionTypes.length) / 8.0d))];
        int permissionByteIndex = -1;
        if (packagePermissions != null) {
            for (String appPermission : packagePermissions) {
                if (!TextUtils.isEmpty(appPermission) && appPermission.startsWith("android.permission.")) {
                    boolean owned = false;
                    for (int i = 0; i < appPermissionTypes.length; i++) {
                        if (TextUtils.equals("android.permission." + appPermissionTypes[i].name(), appPermission)) {
                            owned = true;
                            permissionByteIndex = i;
                            break;
                        }
                    }
                    if (owned && permissionByteIndex != -1) {
                        int byteIndex = permissionByteIndex / 8;
                        permissionBytes[byteIndex] = (byte) (permissionBytes[byteIndex] | (1 << (7 - (permissionByteIndex % 8))));
                    }
                }
            }
            return new String(Base64.encode(permissionBytes, 0));
        }
        MyLog.v("AppInfoUtils.: no permissions");
        return "";
    }

    public static boolean checkSelfPermission(Context context, String permName) {
        return context.getPackageManager().checkPermission(permName, context.getPackageName()) == 0;
    }

    public static String getAppLabel(Context context, String targetName) {
        String label = targetName;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(targetName, 0);
            if (packageInfo == null) {
                return label;
            }
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null) {
                return packageManager.getApplicationLabel(applicationInfo).toString();
            }
            return label;
        } catch (Throwable e) {
            MyLog.e(e);
            return label;
        }
    }
}
