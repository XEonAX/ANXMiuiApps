package com.xiaomi.clientreport.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.Base64Coder;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.Arrays;
import java.util.List;

public class ClientReportUtil {
    public static String getOs() {
        return VERSION.RELEASE + "-" + VERSION.INCREMENTAL;
    }

    @TargetApi(9)
    public static byte[] parseKey(String key) {
        byte[] parsedKey = Arrays.copyOf(Base64Coder.decode(key), 16);
        parsedKey[0] = (byte) 68;
        parsedKey[15] = (byte) 84;
        return parsedKey;
    }

    public static String getEventKeyWithDefault(Context context) {
        String key = SPManager.getInstance(context).getStringValue("sp_client_report_status", "sp_client_report_key", "");
        if (!TextUtils.isEmpty(key)) {
            return key;
        }
        key = XMStringUtils.generateRandomString(20);
        SPManager.getInstance(context).setStringnValue("sp_client_report_status", "sp_client_report_key", key);
        return key;
    }

    public static boolean isSupportXMSFUpload(Context context) {
        try {
            if (context.getApplicationContext().getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode >= BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void sendData(Context context, String eventData) {
        Intent intent = new Intent("com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE");
        intent.putExtra("pkgname", context.getPackageName());
        intent.putExtra("category", "category_client_report_data");
        intent.putExtra("name", "quality_support");
        intent.putExtra("data", eventData);
        context.sendBroadcast(intent, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD");
    }

    public static void sendFile(Context context, List<String> datas) {
        if (datas != null && datas.size() > 0 && isSupportXMSFUpload(context)) {
            for (String data : datas) {
                if (!TextUtils.isEmpty(data)) {
                    sendData(context, data);
                }
            }
        }
    }

    public static int checkPerfNeedUpload(Context context) {
        if (!ClientReportLogicManager.getInstance(context).getConfig().isPerfUploadSwitchOpen()) {
            return -1;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(context).getConfig().getPerfUploadFrequency();
        int timeDiff = (int) ((System.currentTimeMillis() - SPManager.getInstance(context).getLongValue("sp_client_report_status", "perf_last_upload_time", 0)) / 1000);
        MyLog.v(context.getPackageName() + " start perf upload timeDiff " + timeDiff);
        if (timeDiff >= frequency - 5) {
            return 0;
        }
        return timeDiff;
    }

    public static int checkEventNeedUpload(Context context) {
        if (!ClientReportLogicManager.getInstance(context).getConfig().isEventUploadSwitchOpen()) {
            return -1;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(context).getConfig().getEventUploadFrequency();
        int timeDiff = (int) ((System.currentTimeMillis() - SPManager.getInstance(context).getLongValue("sp_client_report_status", "event_last_upload_time", 0)) / 1000);
        MyLog.v(context.getPackageName() + " start event upload timeDiff " + timeDiff);
        if (timeDiff >= frequency - 5) {
            return 0;
        }
        return timeDiff;
    }

    /* JADX WARNING: Removed duplicated region for block: B:78:0x0136  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void moveFiles(Context context, String srcDir, String destDir) {
        RandomAccessFile lockRandomFile;
        FileLock lock;
        File lockFile;
        Throwable e;
        Throwable th;
        File destFolder = context.getExternalFilesDir(destDir);
        if (destFolder != null) {
            if (!destFolder.exists()) {
                destFolder.mkdirs();
            }
            File folder = context.getExternalFilesDir(srcDir);
            if (folder == null) {
                return;
            }
            if (folder.exists()) {
                File[] files = folder.listFiles(new FilenameFilter() {
                    public boolean accept(File dir, String filename) {
                        if (TextUtils.isEmpty(filename) || filename.toLowerCase().endsWith(".lock")) {
                            return false;
                        }
                        return true;
                    }
                });
                if (files != null && files.length > 0) {
                    lockRandomFile = null;
                    lock = null;
                    lockFile = null;
                    long now = System.currentTimeMillis();
                    int length = files.length;
                    int i = 0;
                    while (true) {
                        File lockFile2 = lockFile;
                        RandomAccessFile lockRandomFile2 = lockRandomFile;
                        if (i < length) {
                            File file = files[i];
                            if (file != null) {
                                try {
                                    if (!TextUtils.isEmpty(file.getAbsolutePath())) {
                                        lockFile = new File(file.getAbsolutePath() + ".lock");
                                        try {
                                            IOUtils.createFileQuietly(lockFile);
                                            lockRandomFile = new RandomAccessFile(lockFile, "rw");
                                            try {
                                                lock = lockRandomFile.getChannel().lock();
                                                File destFile = new File(destFolder.getAbsolutePath() + File.separator + file.getName() + now);
                                                try {
                                                    IOUtils.copyFile(file, destFile);
                                                } catch (IOException e2) {
                                                    e2.printStackTrace();
                                                    file.delete();
                                                    destFile.delete();
                                                }
                                                file.delete();
                                                if (lock != null && lock.isValid()) {
                                                    try {
                                                        lock.release();
                                                    } catch (Throwable e3) {
                                                        MyLog.e(e3);
                                                    }
                                                }
                                                IOUtils.closeQuietly(lockRandomFile);
                                                if (lockFile != null) {
                                                    lockFile.delete();
                                                }
                                            } catch (Exception e4) {
                                                e3 = e4;
                                            }
                                        } catch (Exception e5) {
                                            e3 = e5;
                                            lockRandomFile = lockRandomFile2;
                                            try {
                                                MyLog.e(e3);
                                                if (lock != null && lock.isValid()) {
                                                    try {
                                                        lock.release();
                                                    } catch (Throwable e32) {
                                                        MyLog.e(e32);
                                                    }
                                                }
                                                IOUtils.closeQuietly(lockRandomFile);
                                                if (lockFile != null) {
                                                    lockFile.delete();
                                                }
                                                i++;
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            lockRandomFile = lockRandomFile2;
                                        }
                                        i++;
                                    }
                                } catch (Exception e6) {
                                    e32 = e6;
                                    lockFile = lockFile2;
                                    lockRandomFile = lockRandomFile2;
                                } catch (Throwable th4) {
                                    th = th4;
                                    lockFile = lockFile2;
                                    lockRandomFile = lockRandomFile2;
                                }
                            }
                            if (lock != null && lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (Throwable e322) {
                                    MyLog.e(e322);
                                }
                            }
                            IOUtils.closeQuietly(lockRandomFile2);
                            if (lockFile2 != null) {
                                lockFile2.delete();
                                lockFile = lockFile2;
                                lockRandomFile = lockRandomFile2;
                            } else {
                                lockFile = lockFile2;
                                lockRandomFile = lockRandomFile2;
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                }
                return;
            }
            folder.mkdirs();
            return;
        }
        return;
        IOUtils.closeQuietly(lockRandomFile);
        if (lockFile != null) {
            lockFile.delete();
        }
        throw th;
        if (lock != null && lock.isValid()) {
            try {
                lock.release();
            } catch (Throwable e3222) {
                MyLog.e(e3222);
            }
        }
        IOUtils.closeQuietly(lockRandomFile);
        if (lockFile != null) {
        }
        throw th;
    }

    public static boolean isFileCanBeUse(Context context, String filePath) {
        File file = new File(filePath);
        long fileLength = ClientReportLogicManager.getInstance(context).getConfig().getMaxFileLength();
        if (file.exists()) {
            try {
                if (file.length() > fileLength) {
                    return false;
                }
                return true;
            } catch (Throwable e) {
                MyLog.e(e);
                return false;
            }
        }
        IOUtils.createFileQuietly(file);
        return true;
    }

    public static File[] getReadFileName(Context context, String floder) {
        File folder = context.getExternalFilesDir(floder);
        if (folder != null) {
            return folder.listFiles(new FilenameFilter() {
                public boolean accept(File dir, String filename) {
                    if (TextUtils.isEmpty(filename) || filename.toLowerCase().endsWith(".lock")) {
                        return false;
                    }
                    return true;
                }
            });
        }
        return null;
    }
}
