package com.miui.screenrecorder.tools;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.text.TextUtils.SimpleStringSplitter;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.compat.SettingsCompat;
import com.miui.screenrecorder.compat.UserHandleCompat;
import com.miui.screenrecorder.config.PhoneConfig;
import com.miui.screenrecorder.config.PhoneConfigInstance;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.os.Build;

public class ScreenRecorderUtils {
    private static final String ACTION_SCREEN_RECORDER_ENABLE_KEYEVENT = "miui.intent.SCREEN_RECORDER_ENABLE_KEYEVENT";
    public static final String ACTION_SCREEN_RECORDER_TRACK_KEYEVENT = "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT";
    private static final String KEY_IS_RECORD_FIRST_TIME = "key_is_first_show_record_window";
    private static final String MIME_TYPE = "video/mp4";
    public static final int MIN_BATTERY_ALLOW = 3;
    public static final int MIN_BATTERY_REQUIRED = 20;
    public static final long MIN_MEMORY_ALLOW = 524288000;
    public static final long MIN_MEMORY_REQUIRED = 1048576000;
    private static final String SCREEN_RECORDER_PREFERENCE = "screen_recorder_preference";
    private static final String TAG = "ScreenRecorderUtils";
    public static boolean isMonkeyMode = false;

    public static void recorderKeyEvent(Context context, boolean isShowKeyEvent) {
        LogUtil.i(TAG, "recorderKeyEvent sendBroadcastAsUser isShowKeyEvent=" + isShowKeyEvent);
        Intent intent = new Intent(ACTION_SCREEN_RECORDER_ENABLE_KEYEVENT);
        intent.putExtra("enable", isShowKeyEvent);
        context.sendBroadcastAsUser(intent, UserHandleCompat.ALL);
    }

    public static boolean checkBatteryEnough(int curBattery, int minBattery) {
        return curBattery <= 0 || curBattery > minBattery;
    }

    public static boolean checkMemoryEnough(long minMemory) {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()) > minMemory;
    }

    public static String parserSecondsToYMD(Context context, long time) {
        SimpleDateFormat sf;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        int nowYear = calendar.get(1);
        calendar.setTime(new Date(1000 * time));
        int inputYear = calendar.get(1);
        if (RegionUtils.isInARLan() || RegionUtils.isInFaIRLan()) {
            sf = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        } else {
            sf = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        }
        StringBuilder str = new StringBuilder();
        str.append(sf.format(Long.valueOf(1000 * time)));
        int p1 = str.indexOf("-");
        int p2 = str.lastIndexOf("-");
        str.replace(p1, p1 + 1, context.getString(R.string.date_year));
        str.replace(p2, p2 + 1, context.getString(R.string.date_month));
        str.append(context.getString(R.string.date_day));
        if (nowYear == inputYear) {
            return str.substring(p1 + 1);
        }
        return str.toString();
    }

    public static String turnSizeInt2Str(long intSize) {
        StringBuilder stringBuilder = new StringBuilder();
        ArrayList<Integer> data = new ArrayList();
        while (intSize > 0) {
            data.add(Integer.valueOf((int) (intSize % 1000)));
            intSize /= 1000;
        }
        if (data.size() == 0) {
            stringBuilder.append(obtainLocalInteger(0)).append(ScreenRecorderApplication.getContext().getResources().getString(R.string.size_byte));
        } else if (data.size() == 1) {
            stringBuilder.append(obtainLocalInteger(((Integer) data.get(0)).intValue())).append(ScreenRecorderApplication.getContext().getResources().getString(R.string.size_byte));
        } else if (data.size() == 2) {
            stringBuilder.append(obtainLocalInteger(((Integer) data.get(1)).intValue())).append(".").append(obtainLocalInteger(((Integer) data.get(0)).intValue() / 100)).append(ScreenRecorderApplication.getContext().getResources().getString(R.string.size_kilobyte));
        } else if (data.size() == 3) {
            stringBuilder.append(obtainLocalInteger(((Integer) data.get(2)).intValue())).append(".").append(obtainLocalInteger(((Integer) data.get(1)).intValue() / 100)).append(ScreenRecorderApplication.getContext().getResources().getString(R.string.size_megabyte));
        } else {
            stringBuilder.append(obtainLocalInteger(((Integer) data.get(3)).intValue())).append(".").append(obtainLocalInteger(((Integer) data.get(2)).intValue() / 100)).append(ScreenRecorderApplication.getContext().getResources().getString(R.string.size_gigabyte));
        }
        return stringBuilder.toString();
    }

    public static String turnMillSecondsToHour(long ms) {
        StringBuilder stringBuilder = new StringBuilder();
        int hour = (int) (ms / 3600000);
        int lastms = (int) (ms % 3600000);
        int min = lastms / 60000;
        int seconds = (lastms % 60000) / 1000;
        if (hour > 0) {
            if (hour < 10) {
                stringBuilder.append(obtainLocalInteger(0));
            }
            stringBuilder.append(obtainLocalInteger(hour)).append(":");
        }
        if (min < 10) {
            stringBuilder.append(obtainLocalInteger(0));
        }
        stringBuilder.append(obtainLocalInteger(min)).append(":");
        if (seconds < 10) {
            stringBuilder.append(obtainLocalInteger(0));
        }
        stringBuilder.append(obtainLocalInteger(seconds));
        return stringBuilder.toString();
    }

    public static String getAppName(String fileName) {
        if (TextUtils.isEmpty(fileName)) {
            return "";
        }
        int leftpos = fileName.lastIndexOf("_");
        int rightpos = fileName.lastIndexOf(".");
        if (leftpos < 0 || leftpos >= rightpos - 1 || rightpos >= fileName.length()) {
            return fileName;
        }
        return fileName.substring(leftpos + 1, rightpos);
    }

    public static void playVideo(Context context, String filePath) {
        Intent intent = getGalleryIntent(filePath);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void playVideoInHome(Activity activity, String filePath) {
        activity.startActivity(getGalleryIntent(filePath));
    }

    @NonNull
    private static Intent getGalleryIntent(String filePath) {
        Intent intent = new Intent();
        intent.setAction("com.android.camera.action.REVIEW");
        intent.setPackage("com.miui.gallery");
        intent.setDataAndType(Uri.fromFile(new File(filePath)), MIME_TYPE);
        return intent;
    }

    public static boolean isAndroid24AndLater() {
        return VERSION.SDK_INT >= 24;
    }

    public static void writeShowTouchesOption(ContentResolver cr, boolean isShowTouch) {
        try {
            System.putInt(cr, SettingsCompat.System.SHOW_TOUCHES, isShowTouch ? 1 : 0);
        } catch (Exception e) {
            LogUtil.e(TAG, "Write private settings failed: " + e.toString());
        }
    }

    public static boolean getShowTouchesOptions(ContentResolver cr) {
        return System.getInt(cr, SettingsCompat.System.SHOW_TOUCHES, 0) != 0;
    }

    public static boolean isShowInnerSoundEntrance() {
        boolean isSupportInnerRecord = false;
        PhoneConfig config = PhoneConfigInstance.INSTANCE.getInstance();
        if (!config.isSupportInner()) {
            return false;
        }
        if (config.getInnerStreamType() == 0) {
            try {
                Class<?> smClazz = Class.forName("android.os.ServiceManager");
                IBinder binder = (IBinder) smClazz.getDeclaredMethod("getService", new Class[]{String.class}).invoke(smClazz.newInstance(), new Object[]{"audio"});
                Class<?> asStubClazz = Class.forName("android.media.IAudioService$Stub");
                Class[] clsArr = new Class[]{ParcelFileDescriptor.class, Long.TYPE};
                asStubClazz.getDeclaredMethod("asInterface", new Class[]{IBinder.class}).invoke(asStubClazz, new Object[]{binder}).getClass().getDeclaredMethod("createAudioRecordForLoopback", clsArr);
                isSupportInnerRecord = true;
            } catch (Exception e) {
                LogUtil.e(TAG, "debug", e);
                LogUtil.w(TAG, "This phone isn't support InnerPCMRecord");
            }
        }
        if (config.getInnerStreamType() != 1) {
            return isSupportInnerRecord;
        }
        try {
            Class.forName("android.media.AudioSystem").getDeclaredField("FOR_LOOPBACK").getInt(null);
            return true;
        } catch (Exception e2) {
            LogUtil.e(TAG, "debug", e2);
            LogUtil.w(TAG, "This phone isn't support InnerSUBMIXRecord");
            return isSupportInnerRecord;
        }
    }

    public static boolean isGarbageCleanupAvailable(Context context) {
        return isIntentAvailable(context, new Intent("miui.intent.action.GARBAGE_CLEANUP"));
    }

    public static boolean isIntentAvailable(Context context, Intent intent) {
        return intent.resolveActivity(context.getPackageManager()) != null;
    }

    public static String getLastPackageName(Context context) {
        List<RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        RunningTaskInfo cinfo = null;
        if (runningTasks != null && runningTasks.size() > 0) {
            cinfo = (RunningTaskInfo) runningTasks.get(0);
        }
        if (cinfo == null) {
            return "";
        }
        ComponentName componentName = cinfo.topActivity;
        if (componentName == null) {
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            return packageManager.getApplicationInfo(packageManager.getActivityInfo(componentName, 0).packageName, 0).loadLabel(packageManager).toString();
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static long millTurnToSeconds(long time) {
        return time / 1000;
    }

    public static boolean isShowRecordHint() {
        return ScreenRecorderApplication.getContext().getSharedPreferences(SCREEN_RECORDER_PREFERENCE, 0).getBoolean(KEY_IS_RECORD_FIRST_TIME, true);
    }

    public static void setIsShowRecordHint(boolean isShow) {
        Editor editor = ScreenRecorderApplication.getContext().getSharedPreferences(SCREEN_RECORDER_PREFERENCE, 0).edit();
        editor.putBoolean(KEY_IS_RECORD_FIRST_TIME, isShow);
        editor.apply();
    }

    public static boolean isSupportHighFrames() {
        String cpuName = getCpuName();
        LogUtil.d(TAG, cpuName);
        for (String cpu : ScreenRecorderApplication.getContext().getResources().getStringArray(R.array.screenrecorder_utils_support_high_frames_cpu)) {
            if (cpu.equals(cpuName)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0078 A:{SYNTHETIC, Splitter: B:37:0x0078} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x008a A:{SYNTHETIC, Splitter: B:44:0x008a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getCpuName() {
        IOException e;
        Throwable th;
        BufferedReader br = null;
        try {
            String text;
            BufferedReader br2 = new BufferedReader(new FileReader("/proc/cpuinfo"));
            do {
                try {
                    text = br2.readLine();
                    if (text == null) {
                        break;
                    }
                } catch (IOException e2) {
                    e = e2;
                    br = br2;
                    try {
                        LogUtil.e(TAG, "IOException in getCpuName", e);
                        if (br != null) {
                        }
                        return "";
                    } catch (Throwable th2) {
                        th = th2;
                        if (br != null) {
                            try {
                                br.close();
                            } catch (IOException e3) {
                                LogUtil.e(TAG, "Close IOException in getCpuName", e3);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    br = br2;
                    if (br != null) {
                    }
                    throw th;
                }
            } while (!text.startsWith("Hardware"));
            String str;
            if (TextUtils.isEmpty(text)) {
                LogUtil.e(TAG, "Fail get CPU Name");
                str = "";
                if (br2 == null) {
                    return str;
                }
                try {
                    br2.close();
                    return str;
                } catch (IOException e32) {
                    LogUtil.e(TAG, "Close IOException in getCpuName", e32);
                    return str;
                }
            }
            String[] array = text.split(":\\s+", 2);
            if (array.length < 2) {
                LogUtil.e(TAG, "Fail get CPU Name");
                str = "";
                if (br2 == null) {
                    return str;
                }
                try {
                    br2.close();
                    return str;
                } catch (IOException e322) {
                    LogUtil.e(TAG, "Close IOException in getCpuName", e322);
                    return str;
                }
            }
            str = array[1];
            if (br2 == null) {
                return str;
            }
            try {
                br2.close();
                return str;
            } catch (IOException e3222) {
                LogUtil.e(TAG, "Close IOException in getCpuName", e3222);
                return str;
            }
        } catch (IOException e4) {
            e3222 = e4;
            LogUtil.e(TAG, "IOException in getCpuName", e3222);
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e32222) {
                    LogUtil.e(TAG, "Close IOException in getCpuName", e32222);
                }
            }
            return "";
        }
    }

    public static void collapseStatusBar(Context context) {
        try {
            Object statusBarManager = context.getSystemService("statusbar");
            statusBarManager.getClass().getMethod("collapsePanels", new Class[0]).invoke(statusBarManager, new Object[0]);
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public static Locale getLocaleFromConfig(Configuration configuration) {
        if (VERSION.SDK_INT >= 24) {
            return configuration.getLocales().get(0);
        }
        return configuration.locale;
    }

    public static boolean isBluetoothHeadsetConnected() {
        BluetoothAdapter ba = BluetoothAdapter.getDefaultAdapter();
        if (ba == null || !ba.isEnabled()) {
            return false;
        }
        int a2dp = ba.getProfileConnectionState(2);
        int headset = ba.getProfileConnectionState(1);
        int flag = -1;
        if (a2dp == 2) {
            flag = a2dp;
        } else if (headset == 2) {
            flag = headset;
        }
        if (flag != -1) {
            return true;
        }
        return false;
    }

    public static boolean isSupportA2dpInner() {
        PhoneConfig config = PhoneConfigInstance.INSTANCE.getInstance();
        String deviceName = Build.DEVICE;
        if (config.getInnerStreamType() != 1) {
            return true;
        }
        if (deviceName.equals("riva") || deviceName.equals("rolex") || deviceName.equals("gemini") || deviceName.equals("rosy") || deviceName.equals("scorpio") || deviceName.equals("capricorn") || deviceName.equals("lithium") || deviceName.equals("natrium") || deviceName.equals("oxygen") || deviceName.equals("tiffany") || deviceName.equals("ysl") || deviceName.equals("vince") || deviceName.equals("sakura") || deviceName.equals("lotus") || deviceName.equals("onc")) {
            return false;
        }
        return true;
    }

    public static boolean isUseInnerSound() {
        return ScreenRecorderConfig.getConfig().getSound() == Integer.parseInt(ScreenRecorderConfig.INNER_SOUND);
    }

    public static boolean isTalkBackOn() {
        Context context = ScreenRecorderApplication.getContext();
        Set<ComponentName> enabledServices = new HashSet();
        String enabledServicesSetting = Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        if (TextUtils.isEmpty(enabledServicesSetting)) {
            return false;
        }
        SimpleStringSplitter colonSplitter = new SimpleStringSplitter(':');
        colonSplitter.setString(enabledServicesSetting);
        while (colonSplitter.hasNext()) {
            ComponentName enabledService = ComponentName.unflattenFromString(colonSplitter.next());
            if (enabledService != null) {
                enabledServices.add(enabledService);
            }
        }
        if (enabledServices.isEmpty()) {
            return false;
        }
        return true;
    }

    public static String obtainLocalInteger(int number, int quantityId) {
        return obtainLocalNumber(ScreenRecorderApplication.getContext().getResources().getQuantityText(quantityId, number).toString(), number);
    }

    public static String obtainLocalNumber(String format, int number) {
        return String.format(Locale.getDefault(), format, new Object[]{Integer.valueOf(number)});
    }

    public static String obtainLocalNumber(String format, float number) {
        return String.format(Locale.getDefault(), format, new Object[]{Float.valueOf(number)});
    }

    public static String obtainLocalInteger(int number) {
        return obtainLocalNumber("%d", number);
    }

    public static String obtainLocalFloat(float number) {
        return obtainLocalNumber("%f", number);
    }
}
