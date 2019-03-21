package com.miui.gallery.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Process;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.os.Device;
import com.miui.telephony.TelephonyHelper;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import miui.net.ConnectivityHelper;

public class MiscUtil extends BaseMiscUtil {
    private static String sHashedDeviceId;

    public static boolean isKeyGuardLocked(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    public static String getHashedDeviceId() {
        if (TextUtils.isEmpty(sHashedDeviceId)) {
            sHashedDeviceId = selectHashedId();
        }
        return sHashedDeviceId;
    }

    private static String selectHashedId() {
        if (Device.IS_TABLET) {
            return ConnectivityHelper.getInstance().getMacAddress();
        }
        return hashDeviceInfo(TelephonyHelper.getDeviceId());
    }

    private static String hashDeviceInfo(String plain) {
        if (plain == null) {
            return null;
        }
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(plain.getBytes()), 8).substring(0, 16);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("failed to init SHA1 digest");
        }
    }

    public static long[] ListToArray(List<Long> list) {
        if (!BaseMiscUtil.isValid(list)) {
            return null;
        }
        int size = list.size();
        long[] array = new long[size];
        for (int i = 0; i < size; i++) {
            Long obj = (Long) list.get(i);
            array[i] = obj == null ? 0 : obj.longValue();
        }
        return array;
    }

    public static List<Long> arrayToList(long[] array) {
        List<Long> l = new ArrayList(array.length);
        for (long valueOf : array) {
            l.add(Long.valueOf(valueOf));
        }
        return l;
    }

    public static long[] listToArray(List<Long> list) {
        if (list == null) {
            return null;
        }
        long[] array = new long[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = ((Long) list.get(i)).longValue();
        }
        return array;
    }

    public static String[] copyStringArray(String[] origin) {
        if (origin == null || origin.length <= 0) {
            return null;
        }
        String[] ret = new String[origin.length];
        System.arraycopy(origin, 0, ret, 0, origin.length);
        return ret;
    }

    public static int getAppVersionCode() {
        return getAppVersionCode("com.miui.gallery");
    }

    public static int getAppVersionCode(String packageName) {
        int versioncode = -1;
        if (TextUtils.isEmpty(packageName)) {
            return versioncode;
        }
        try {
            return GalleryApp.sGetAndroidContext().getPackageManager().getPackageInfo(packageName, 16384).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return versioncode;
        }
    }

    public static boolean isIntentSupported(Intent intent) {
        if (intent == null || GalleryApp.sGetAndroidContext().getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean isPackageInstalled(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(packageName);
        return isIntentSupported(intent);
    }

    public static boolean isAppProcessInForeground(Context context) {
        List<RunningAppProcessInfo> runningAppProcessInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (!BaseMiscUtil.isValid(runningAppProcessInfos)) {
            return false;
        }
        int pid = Process.myPid();
        for (RunningAppProcessInfo appProcess : runningAppProcessInfos) {
            if (appProcess.pid == pid) {
                if (appProcess.importance == 100) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public static String getSimOperator() {
        return ((TelephonyManager) GalleryApp.sGetAndroidContext().getSystemService("phone")).getSimOperator();
    }

    public static String getDeviceId() {
        return TelephonyHelper.getDeviceId();
    }

    public static int getStatusBarHeight(Context context) {
        return getDimensionPixelOffset(context.getResources(), "status_bar_height", "dimen", "android");
    }

    public static int getDefaultSplitActionBarHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.action_button_default_height);
    }

    public static int getDimensionPixelOffset(Resources resources, String name, String defType, String defPackage) {
        int resourceId = resources.getIdentifier(name, defType, defPackage);
        if (resourceId > 0) {
            return resources.getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    public static String getCurrentDate() {
        return new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }

    public static void setRecyclerViewScrollToBottomListener(RecyclerView recyclerView, final Runnable scrollToBottomListener) {
        if (recyclerView != null && scrollToBottomListener != null) {
            recyclerView.addOnScrollListener(new OnScrollListener() {
                public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                    View lastChild = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                    if (lastChild != null) {
                        Adapter adapter = recyclerView.getAdapter();
                        int adapterCount = adapter == null ? 0 : adapter.getItemCount();
                        LayoutParams params = (LayoutParams) lastChild.getLayoutParams();
                        if (params != null && params.getViewAdapterPosition() == adapterCount - 1) {
                            scrollToBottomListener.run();
                        }
                    }
                }
            });
        }
    }

    public static int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean isNightMode(Context context) {
        return context != null && (context.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
