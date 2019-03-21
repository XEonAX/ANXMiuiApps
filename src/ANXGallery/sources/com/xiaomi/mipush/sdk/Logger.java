package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.log.MIPushDebugLog;
import com.xiaomi.push.log.MIPushLog2File;
import java.io.File;
import java.util.HashMap;

public class Logger {
    private static boolean sDisablePushLog = false;
    private static LoggerInterface sUserLogger = null;

    public static void setLogger(Context context, LoggerInterface newLogger) {
        sUserLogger = newLogger;
        setPushLog(context);
    }

    protected static LoggerInterface getUserLogger() {
        return sUserLogger;
    }

    public static void setPushLog(Context context) {
        boolean shouldOpenUserLogger = sUserLogger != null;
        LoggerInterface pushLog2File = new MIPushLog2File(context);
        if (!sDisablePushLog && hasWritePermission(context) && shouldOpenUserLogger) {
            MyLog.setLogger(new MIPushDebugLog(sUserLogger, pushLog2File));
        } else if (!sDisablePushLog && hasWritePermission(context)) {
            MyLog.setLogger(pushLog2File);
        } else if (shouldOpenUserLogger) {
            MyLog.setLogger(sUserLogger);
        } else {
            MyLog.setLogger(new MIPushDebugLog(null, null));
        }
    }

    private static boolean hasWritePermission(Context context) {
        try {
            String[] permissionList = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (permissionList == null) {
                return false;
            }
            for (String permission : permissionList) {
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(permission)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void uploadLogFile(final Context context, final boolean isXMSF) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:30:? A:{SYNTHETIC, RETURN, SKIP, Catch:{ Throwable -> 0x00a6 }} */
            /* JADX WARNING: Removed duplicated region for block: B:19:0x008c  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                Throwable throwable;
                File uploadingFile = null;
                try {
                    String dirPath;
                    HashMap<String, String> headers = MiPushUtils.collectDeviceInfo(context, "");
                    if (isXMSF) {
                        dirPath = context.getFilesDir().getAbsolutePath();
                    } else {
                        dirPath = context.getExternalFilesDir(null).getAbsolutePath() + MIPushLog2File.MIPUSH_LOG_PATH;
                    }
                    File logFile = Logger.getLogFile(dirPath);
                    if (logFile == null) {
                        MyLog.w("log file null");
                        return;
                    }
                    File uploadingFile2 = new File(dirPath, context.getPackageName() + ".zip");
                    try {
                        IOUtils.zip(uploadingFile2, logFile);
                        if (uploadingFile2.exists()) {
                            Network.uploadFile((isXMSF ? "https://api.xmpush.xiaomi.com/upload/xmsf_log?file=" : "https://api.xmpush.xiaomi.com/upload/app_log?file=") + uploadingFile2.getName(), headers, uploadingFile2, "file");
                        } else {
                            MyLog.w("zip log file failed");
                        }
                        uploadingFile = uploadingFile2;
                    } catch (Throwable th) {
                        throwable = th;
                        uploadingFile = uploadingFile2;
                        MyLog.e(throwable);
                        if (uploadingFile == null) {
                            return;
                        }
                    }
                    if (uploadingFile == null && uploadingFile.exists()) {
                        uploadingFile.delete();
                    }
                } catch (Throwable th2) {
                    throwable = th2;
                    MyLog.e(throwable);
                    if (uploadingFile == null) {
                    }
                }
            }
        });
    }

    public static File getLogFile(String dirPath) {
        try {
            File dir = new File(dirPath);
            if (!dir.exists() || !dir.isDirectory()) {
                return null;
            }
            File[] files = dir.listFiles();
            int i = 0;
            while (i < files.length) {
                if (files[i].isFile() && !files[i].getName().contains("lock") && files[i].getName().contains("log")) {
                    return files[i];
                }
                i++;
            }
            return null;
        } catch (NullPointerException e) {
            MyLog.e("null pointer exception while retrieve file.");
            return null;
        }
    }
}
