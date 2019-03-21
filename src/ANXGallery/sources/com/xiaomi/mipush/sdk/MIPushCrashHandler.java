package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ConfigKey;
import java.io.File;
import java.io.IOException;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.HashMap;

class MIPushCrashHandler implements UncaughtExceptionHandler {
    private static final String[] crashFilterByPkgName = new String[]{"com.xiaomi.channel.commonutils", "com.xiaomi.common.logger", "com.xiaomi.measite.smack", "com.xiaomi.metoknlp", "com.xiaomi.mipush.sdk", "com.xiaomi.network", "com.xiaomi.push", "com.xiaomi.slim", "com.xiaomi.smack", "com.xiaomi.stats", "com.xiaomi.tinyData", "com.xiaomi.xmpush.thrift", "com.xiaomi.clientreport"};
    private static final Object mObject = new Object();
    private Context mContext;
    private UncaughtExceptionHandler mDefaultCrashHandler;
    private SharedPreferences mSharedPreference;

    public MIPushCrashHandler(Context context) {
        this(context, Thread.getDefaultUncaughtExceptionHandler());
    }

    public MIPushCrashHandler(Context context, UncaughtExceptionHandler handler) {
        this.mContext = context;
        this.mDefaultCrashHandler = handler;
    }

    public void uncaughtException(Thread thread, Throwable ex) {
        handleCrash(ex);
        synchronized (mObject) {
            try {
                mObject.wait(3000);
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
        if (this.mDefaultCrashHandler != null) {
            this.mDefaultCrashHandler.uncaughtException(thread, ex);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(1);
    }

    private void handleCrash(Throwable ex) {
        String crashContent = getCrashContent(ex);
        if (!TextUtils.isEmpty(crashContent)) {
            String crashSummary = getCrashSummary(ex);
            if (!TextUtils.isEmpty(crashSummary)) {
                CrashStorage.getInstance(this.mContext).writeCrash2File(crashContent, crashSummary);
                if (canUploadCrash()) {
                    uploadCrash();
                }
            }
        }
    }

    private String getCrashSummary(Throwable ex) {
        StackTraceElement[] crashStackTraceElements = ex.getStackTrace();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Math.min(3, crashStackTraceElements.length); i++) {
            sb.append(crashStackTraceElements[i].toString() + "\r\n");
        }
        String crashSummary = sb.toString();
        if (TextUtils.isEmpty(crashSummary)) {
            return "";
        }
        return XMStringUtils.getMd5Digest(crashSummary);
    }

    private boolean filterCrashByPkgName(boolean isFromMiPush, String crashStackTraceElement) {
        for (String str : crashFilterByPkgName) {
            if (crashStackTraceElement.contains(str)) {
                return true;
            }
        }
        return isFromMiPush;
    }

    private String getCrashContent(Throwable ex) {
        StackTraceElement[] crashStackTraceElements = ex.getStackTrace();
        StringBuilder sb = new StringBuilder(ex.toString());
        sb.append("\r\n");
        boolean isFromMiPush = false;
        for (StackTraceElement stackTraceElement : crashStackTraceElements) {
            String crashStackTraceElement = stackTraceElement.toString();
            isFromMiPush = filterCrashByPkgName(isFromMiPush, crashStackTraceElement);
            sb.append(crashStackTraceElement);
            sb.append("\r\n");
        }
        return isFromMiPush ? sb.toString() : "";
    }

    private boolean canUploadCrash() {
        this.mSharedPreference = this.mContext.getSharedPreferences("mipush_extra", 4);
        if (Network.isUsingMobileDataConnection(this.mContext)) {
            if (!OnlineConfig.getInstance(this.mContext).getBooleanValue(ConfigKey.Crash4GUploadSwitch.getValue(), true)) {
                return false;
            }
            return ((float) Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_crash_upload_time_stamp", 0))) >= ((float) Math.max(3600, OnlineConfig.getInstance(this.mContext).getIntValue(ConfigKey.Crash4GUploadFrequency.getValue(), 3600))) * 0.9f;
        } else if (!Network.isWIFIConnected(this.mContext)) {
            return true;
        } else {
            return Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_crash_upload_time_stamp", 0)) >= ((long) Math.max(60, OnlineConfig.getInstance(this.mContext).getIntValue(ConfigKey.CrashWIFIUploadFrequency.getValue(), 1800)));
        }
    }

    private void uploadCrash() {
        ScheduledJobManager.getInstance(this.mContext).addOneShootJob(new Runnable() {
            public void run() {
                File uploadingFile;
                Throwable e;
                File uploadingFile2 = null;
                try {
                    ArrayList<File> crashFiles = CrashStorage.getInstance(MIPushCrashHandler.this.mContext).getAllCrashFile();
                    if (crashFiles == null || crashFiles.size() < 1) {
                        MyLog.w("no crash file to upload");
                        return;
                    }
                    HashMap<String, String> headers = MiPushUtils.collectDeviceInfo(MIPushCrashHandler.this.mContext, "C100000");
                    int i = 0;
                    while (true) {
                        try {
                            uploadingFile = uploadingFile2;
                            if (i >= crashFiles.size()) {
                                break;
                            }
                            File crashFile = (File) crashFiles.get(i);
                            String crashSummary = CrashStorage.getInstance(MIPushCrashHandler.this.mContext).getCrashSummary(crashFile);
                            uploadingFile2 = new File(MIPushCrashHandler.this.mContext.getFilesDir() + "/crash" + "/" + crashFile.getName() + ".zip");
                            IOUtils.zip(uploadingFile2, crashFile);
                            if (uploadingFile2.exists()) {
                                Network.uploadFile("https://api.xmpush.xiaomi.com/upload/crash_log?file=" + uploadingFile2.getName(), headers, uploadingFile2, "file");
                                crashFile.renameTo(new File(MIPushCrashHandler.this.mContext.getFilesDir() + "/crash", crashSummary + ":" + "0"));
                                MIPushCrashHandler.this.updateUploadTimeStamp();
                            } else {
                                MyLog.w("zip crash file failed");
                            }
                            i++;
                        } catch (IOException e2) {
                            e = e2;
                            uploadingFile2 = uploadingFile;
                            MyLog.e(e);
                        } catch (Throwable th) {
                            uploadingFile2 = uploadingFile;
                        }
                    }
                    uploadingFile2 = uploadingFile;
                    if (!(uploadingFile2 == null || !uploadingFile2.exists() || uploadingFile2.delete())) {
                        MyLog.w("delete zip crash file failed");
                    }
                    synchronized (MIPushCrashHandler.mObject) {
                        MIPushCrashHandler.mObject.notifyAll();
                    }
                } catch (IOException e3) {
                    e = e3;
                    MyLog.e(e);
                } catch (Throwable th2) {
                }
            }
        });
    }

    private void updateUploadTimeStamp() {
        this.mSharedPreference = this.mContext.getSharedPreferences("mipush_extra", 4);
        Editor editor = this.mSharedPreference.edit();
        editor.putLong("last_crash_upload_time_stamp", System.currentTimeMillis() / 1000);
        SharedPrefsCompat.apply(editor);
    }
}
