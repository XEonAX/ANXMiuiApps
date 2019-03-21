package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

public class CrashStorage {
    private static final Object mCrashFileLock = new Object();
    private static volatile CrashStorage sInstance;
    private Context mContext;

    public static CrashStorage getInstance(Context context) {
        if (sInstance == null) {
            synchronized (CrashStorage.class) {
                if (sInstance == null) {
                    sInstance = new CrashStorage(context);
                }
            }
        }
        return sInstance;
    }

    private CrashStorage(Context context) {
        this.mContext = context;
    }

    private File getCrashFileBySummary(String crashSummary) {
        File fileDir = new File(this.mContext.getFilesDir() + "/crash");
        if (fileDir.exists()) {
            File[] files = fileDir.listFiles();
            int i = 0;
            while (i < files.length) {
                if (files[i].isFile() && files[i].getName().startsWith(crashSummary)) {
                    return files[i];
                }
                i++;
            }
            return null;
        }
        fileDir.mkdirs();
        return null;
    }

    public ArrayList<File> getAllCrashFile() {
        ArrayList<File> uploadingFiles = new ArrayList();
        File fileDir = new File(this.mContext.getFilesDir() + "/crash");
        if (fileDir.exists()) {
            File[] files = fileDir.listFiles();
            int i = 0;
            while (i < files.length) {
                String[] crashFileNames = files[i].getName().split(":");
                if (crashFileNames.length >= 2 && Integer.parseInt(crashFileNames[1]) >= 1 && files[i].isFile()) {
                    uploadingFiles.add(files[i]);
                }
                i++;
            }
        } else {
            fileDir.mkdirs();
        }
        return uploadingFiles;
    }

    public void writeCrash2File(String content, String summary) {
        Throwable e;
        Throwable th;
        if (!TextUtils.isEmpty(summary) && !TextUtils.isEmpty(content)) {
            synchronized (mCrashFileLock) {
                File crashFile = getCrashFileBySummary(summary);
                if (crashFile != null) {
                    String[] fileNameSplited = crashFile.getName().split(":");
                    if (fileNameSplited.length < 2) {
                    } else {
                        crashFile.renameTo(new File(this.mContext.getFilesDir() + "/crash" + "/" + summary + ":" + String.valueOf(Integer.parseInt(fileNameSplited[1]) + 1)));
                    }
                } else {
                    FileOutputStream output = null;
                    try {
                        FileOutputStream output2 = new FileOutputStream(new File(this.mContext.getFilesDir() + "/crash" + "/" + summary + ":" + "1"));
                        try {
                            output2.write(content.getBytes());
                            output2.flush();
                            IOUtils.closeQuietly(output2);
                        } catch (Exception e2) {
                            e = e2;
                            output = output2;
                            try {
                                MyLog.e(e);
                                IOUtils.closeQuietly(output);
                            } catch (Throwable th2) {
                                th = th2;
                                IOUtils.closeQuietly(output);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            output = output2;
                            IOUtils.closeQuietly(output);
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        MyLog.e(e);
                        IOUtils.closeQuietly(output);
                    }
                }
            }
        }
    }

    public String getCrashSummary(File file) {
        if (file == null) {
            return "";
        }
        String[] fileNameSplited = file.getName().split(":");
        if (fileNameSplited.length != 2) {
            return "";
        }
        return fileNameSplited[0];
    }
}
