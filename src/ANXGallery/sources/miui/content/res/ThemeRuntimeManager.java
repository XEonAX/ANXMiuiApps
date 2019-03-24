package miui.content.res;

import android.app.WallpaperManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.MiuiConfiguration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.media.ExtraRingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import miui.app.constants.ThemeManagerConstants;
import miui.drm.DrmManager;
import miui.os.C0002FileUtils;
import miui.reflect.Method;
import miui.system.R;

public class ThemeRuntimeManager {
    public static final String BUILTIN_ALARM_PATH = "/system/media/audio/alarms/";
    public static final String BUILTIN_LOCKSCREEN_PATH = "/system/media/lockscreen/";
    public static final String BUILTIN_NOTIFICATION_PATH = "/system/media/audio/notifications/";
    public static final String BUILTIN_RINGTONE_PATH = "/system/media/audio/ringtones/";
    public static final String BUILTIN_ROOT_PATH = "/system/media/";
    public static final String BUILTIN_WALLPAPER_PATH = "/system/media/wallpaper/";
    public static final int DEFAULT_ALARM_FILE_PATH_RES_ID = R.string.def_alarm_alert;
    public static final int DEFAULT_NOTIFICATION_FILE_PATH_RES_ID = R.string.def_notification_sound;
    public static final int DEFAULT_RINGTONE_FILE_PATH_RES_ID = R.string.def_ringtone;
    public static final int DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID = R.string.def_sms_delivered_sound;
    public static final int DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID = R.string.def_sms_received_sound;
    public static final String RUNTIME_PATH_BOOT_ANIMATION = (VERSION.SDK_INT > 19 ? "/data/system/theme/boots/bootanimation.zip" : "/data/local/bootanimation.zip");
    public static final String RUNTIME_PATH_LOCKSCREEN = "/data/system/theme/lock_wallpaper";
    public static final String RUNTIME_PATH_WALLPAPER = "/data/system/theme/wallpaper";
    public static final String RUNTIME_PIC_FOLDER = "/data/system/theme/";
    private static final int SAVE_ICON_MAX_SIZE = 163840;
    private static final String TAG = "ThemeRuntimeManager";
    private static final String TEMP_ICON_FOLDER;
    private static final String THEME_PACKAGE_NAME = "com.android.thememanager";
    private static Set<String> sWhiteList = new HashSet();
    private Context mContext;
    private byte[] mJobLocker = new byte[0];
    private Stack<Pair<String, Bitmap>> mPendingJobs = new Stack();
    private Object mSecurityManager;
    private byte[] mServiceLocker = new byte[0];
    private boolean mThreadFinished = true;

    private class ThemeServiceThread extends Thread {
        private ThemeServiceThread() {
        }

        public void run() {
            while (true) {
                ThemeRuntimeManager.this.bindService();
                synchronized (ThemeRuntimeManager.this.mJobLocker) {
                    while (!ThemeRuntimeManager.this.mPendingJobs.isEmpty()) {
                        synchronized (ThemeRuntimeManager.this.mServiceLocker) {
                            if (ThemeRuntimeManager.this.mSecurityManager != null) {
                                Pair<String, Bitmap> pair = (Pair) ThemeRuntimeManager.this.mPendingJobs.pop();
                                ThemeRuntimeManager.this.saveIconInner((String) pair.first, (Bitmap) pair.second);
                            }
                        }
                    }
                    try {
                        ThemeRuntimeManager.this.mJobLocker.wait(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    if (ThemeRuntimeManager.this.mPendingJobs.isEmpty()) {
                        ThemeRuntimeManager.this.unbindService();
                        ThemeRuntimeManager.this.mThreadFinished = true;
                        return;
                    }
                }
            }
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ThemeResources.THEME_MAGIC_PATH);
        stringBuilder.append("tempIcon/");
        TEMP_ICON_FOLDER = stringBuilder.toString();
    }

    public ThemeRuntimeManager(Context context) {
        this.mContext = context;
    }

    public static String createTempIconFile(Context context, String fileName, Bitmap icon) {
        String path = null;
        FileOutputStream outputStream = null;
        String str = null;
        try {
            StringBuilder stringBuilder;
            if (!ThemeResources.FRAMEWORK_PACKAGE.equals(context.getPackageName())) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(context.getCacheDir());
                stringBuilder.append("/");
                stringBuilder.append(fileName);
                path = stringBuilder.toString();
                outputStream = getFileOutputStream(path);
            }
            if (outputStream == null) {
                new File(TEMP_ICON_FOLDER).mkdirs();
                stringBuilder = new StringBuilder();
                stringBuilder.append(TEMP_ICON_FOLDER);
                stringBuilder.append(fileName);
                path = stringBuilder.toString();
                outputStream = getFileOutputStream(path);
            }
            if (outputStream == null) {
                Log.e(TAG, "can't get icon cache folder");
                return null;
            }
            icon.compress(CompressFormat.PNG, 100, outputStream);
            outputStream.flush();
            outputStream.close();
            if (new File(path).exists()) {
                str = path;
            }
            return str;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static FileOutputStream getFileOutputStream(String path) {
        File file = new File(path);
        FileOutputStream outputStream = null;
        try {
            outputStream = new FileOutputStream(file);
            C0002FileUtils.chmod(file.getPath(), 436);
            return outputStream;
        } catch (FileNotFoundException e) {
            return outputStream;
        }
    }

    private void bindService() {
        synchronized (this.mServiceLocker) {
            this.mSecurityManager = this.mContext.getSystemService("security");
        }
        if (this.mSecurityManager == null) {
            Log.e(TAG, "can't bind SecurityManager");
        }
    }

    private boolean existIntentService(Intent intent) {
        List<ResolveInfo> list = this.mContext.getPackageManager().queryIntentServices(intent, 0);
        if (list == null || list.isEmpty()) {
            return false;
        }
        return true;
    }

    private void unbindService() {
        synchronized (this.mServiceLocker) {
            this.mSecurityManager = null;
        }
    }

    private void saveIconInner(String fileName, Bitmap icon) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("saving icon for ");
        stringBuilder.append(fileName);
        Log.i(str, stringBuilder.toString());
        Method method = Method.of(this.mSecurityManager.getClass(), "saveIcon", Void.TYPE, String.class, Bitmap.class);
        if (method != null) {
            method.invoke(this.mSecurityManager.getClass(), this.mSecurityManager, fileName, icon);
        }
    }

    public void saveIcon(String fileName, Bitmap icon) {
        String str;
        try {
            ApplicationInfo appInfo = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 0);
            if (appInfo != null && (appInfo.flags & 1) == 1) {
                if (icon == null || icon.getByteCount() <= SAVE_ICON_MAX_SIZE) {
                    synchronized (this.mJobLocker) {
                        str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("add pending job ");
                        stringBuilder.append(fileName);
                        Log.i(str, stringBuilder.toString());
                        this.mPendingJobs.push(new Pair(fileName, icon));
                        this.mJobLocker.notifyAll();
                        if (this.mThreadFinished) {
                            this.mThreadFinished = false;
                            new ThemeServiceThread().start();
                        }
                    }
                    return;
                }
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("saveIcon fail because icon bitmap is too large ");
                stringBuilder2.append(fileName);
                Log.d(str2, stringBuilder2.toString());
            }
        } catch (NameNotFoundException e) {
            str = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("fail to find package: ");
            stringBuilder3.append(this.mContext.getPackageName());
            Log.w(str, stringBuilder3.toString(), e);
        }
    }

    public void markGadgetUpdated() {
        String prefix = "clock_changed_time_";
        long time = System.currentTimeMillis();
        ContentResolver contentResolver = this.mContext.getContentResolver();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(prefix);
        stringBuilder.append(ThemeManagerConstants.GADGET_SIZE_1x2);
        System.putLong(contentResolver, stringBuilder.toString(), time);
        contentResolver = this.mContext.getContentResolver();
        stringBuilder = new StringBuilder();
        stringBuilder.append(prefix);
        stringBuilder.append(ThemeManagerConstants.GADGET_SIZE_2x2);
        System.putLong(contentResolver, stringBuilder.toString(), time);
        contentResolver = this.mContext.getContentResolver();
        stringBuilder = new StringBuilder();
        stringBuilder.append(prefix);
        stringBuilder.append(ThemeManagerConstants.GADGET_SIZE_2x4);
        System.putLong(contentResolver, stringBuilder.toString(), time);
        contentResolver = this.mContext.getContentResolver();
        stringBuilder = new StringBuilder();
        stringBuilder.append(prefix);
        stringBuilder.append(ThemeManagerConstants.GADGET_SIZE_4x4);
        System.putLong(contentResolver, stringBuilder.toString(), time);
        contentResolver = this.mContext.getContentResolver();
        stringBuilder = new StringBuilder();
        stringBuilder.append(prefix);
        stringBuilder.append(ThemeManagerConstants.GADGET_SIZE_3x4);
        System.putLong(contentResolver, stringBuilder.toString(), time);
    }

    public void restoreDefault() {
        File folder = new File("/data/system/theme/");
        if (folder.exists() && folder.isDirectory()) {
            for (File file : folder.listFiles()) {
                if (!sWhiteList.contains(file.getAbsolutePath())) {
                    ThemeNativeUtils.remove(file.getAbsolutePath());
                }
            }
        }
        ThemeNativeUtils.remove(RUNTIME_PATH_BOOT_ANIMATION);
        this.mContext.sendBroadcast(new Intent(ThemeManagerConstants.ACTION_CLEAR_THEME_RUNTIME_DATA));
        try {
            ((WallpaperManager) this.mContext.getSystemService("wallpaper")).clear();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (isRestoreIndependentComponents()) {
            ExtraRingtoneManager.saveDefaultSound(this.mContext, 1, Uri.fromFile(new File(this.mContext.getString(DEFAULT_RINGTONE_FILE_PATH_RES_ID))));
            ExtraRingtoneManager.saveDefaultSound(this.mContext, 2, Uri.fromFile(new File(this.mContext.getString(DEFAULT_NOTIFICATION_FILE_PATH_RES_ID))));
            ExtraRingtoneManager.saveDefaultSound(this.mContext, 4, Uri.fromFile(new File(this.mContext.getString(DEFAULT_ALARM_FILE_PATH_RES_ID))));
            ExtraRingtoneManager.saveDefaultSound(this.mContext, 8, Uri.fromFile(new File(this.mContext.getString(DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID))));
            ExtraRingtoneManager.saveDefaultSound(this.mContext, 16, Uri.fromFile(new File(this.mContext.getString(DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID))));
        }
        IconCustomizer.clearCustomizedIcons(null);
        ThemeResources.getSystem().resetIcons();
        markGadgetUpdated();
        DrmManager.setSupportAd(this.mContext, false);
        MiuiConfiguration.sendThemeConfigurationChangeMsg(MiuiConfiguration.SYSTEM_INTEREST_CHANGE_FLAG);
    }

    private boolean isRestoreIndependentComponents() {
        return false;
    }
}
