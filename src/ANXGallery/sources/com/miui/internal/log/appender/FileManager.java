package com.miui.internal.log.appender;

import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import miui.util.IOUtils;

public class FileManager {
    private static final String TAG = "FileManager";
    private static final int gA = 30000;
    private static final int gB = 10;
    private static final String gy = ".log";
    private static final int gz = 1000;
    private FileOutputStream gC;
    private OutputStreamWriter gD;
    private long gE;
    private long gF;
    private int gG;
    private long gH;
    protected File mLogFile;
    protected String mLogName;
    protected String mLogRoot;

    public FileManager(String str, String str2) {
        this.mLogRoot = str;
        this.mLogName = str2;
    }

    public String getLogRoot() {
        return this.mLogRoot;
    }

    public String getLogName() {
        return this.mLogName;
    }

    public String getLogExtension() {
        return gy;
    }

    public File getLogFile() {
        return this.mLogFile;
    }

    public long getLogSize() {
        return this.gH;
    }

    public synchronized void write(String str) {
        if (this.gD == null) {
            L();
        } else if (this.gD != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime - this.gE > 1000) {
                this.gE = elapsedRealtime;
                if (!this.mLogFile.exists()) {
                    Log.d(TAG, "Repair writer for log file is missing");
                    M();
                }
            }
        }
        if (this.gD == null) {
            Log.e(TAG, "Fail to append log for writer is null");
        } else {
            try {
                m(str);
            } catch (Throwable e) {
                Log.w(TAG, "Retry to write log", e);
                M();
                if (this.gD == null) {
                    Log.e(TAG, "Fail to append log for writer is null when retry");
                } else {
                    try {
                        m(str);
                    } catch (Throwable e2) {
                        Log.e(TAG, "Fail to append log for writer is null when retry", e2);
                    }
                }
            }
        }
        return;
    }

    private void m(String str) throws IOException {
        this.gD.write(str);
        this.gD.flush();
        this.gH += (long) str.length();
    }

    public synchronized void close() {
        this.mLogFile = null;
        this.gG = 0;
        this.gC = null;
        IOUtils.closeQuietly(this.gD);
        this.gD = null;
        this.gH = 0;
    }

    private void L() {
        if (this.gG >= 10) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime - this.gF > 30000) {
                this.gF = elapsedRealtime;
            } else {
                return;
            }
        }
        this.gG++;
        this.mLogFile = onCreateLogFile();
        if (this.mLogFile != null) {
            try {
                this.gC = new FileOutputStream(this.mLogFile, true);
                this.gD = new OutputStreamWriter(this.gC);
                this.gG = 0;
                this.gH = this.mLogFile.length();
            } catch (Throwable e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to create writer: ");
                stringBuilder.append(this.mLogFile.getPath());
                Log.e(str, stringBuilder.toString(), e);
            }
        }
    }

    private void M() {
        close();
        L();
    }

    protected File onCreateLogFile() {
        String onBuildLogPath = onBuildLogPath();
        if (onBuildLogPath == null) {
            Log.e(TAG, "Fail to build log path");
            return null;
        }
        File file = new File(onBuildLogPath);
        File parentFile = file.getParentFile();
        StringBuilder stringBuilder;
        if (parentFile.exists()) {
            if (!parentFile.isDirectory()) {
                onBuildLogPath = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("LogDir is not a directory: ");
                stringBuilder.append(parentFile.getPath());
                Log.e(onBuildLogPath, stringBuilder.toString());
                return null;
            }
        } else if (!(parentFile.mkdirs() || parentFile.exists())) {
            onBuildLogPath = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Fail to create directory: ");
            stringBuilder.append(parentFile.getPath());
            Log.e(onBuildLogPath, stringBuilder.toString());
            return null;
        }
        String str;
        StringBuilder stringBuilder2;
        if (!file.exists()) {
            try {
                if (!(file.createNewFile() || file.exists())) {
                    str = TAG;
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("Fail to create LogFile: ");
                    stringBuilder2.append(onBuildLogPath);
                    Log.e(str, stringBuilder2.toString());
                    return null;
                }
            } catch (Throwable e) {
                String str2 = TAG;
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append("Fail to create LogFile: ");
                stringBuilder3.append(onBuildLogPath);
                Log.e(str2, stringBuilder3.toString(), e);
                return null;
            }
        } else if (!file.isFile()) {
            str = TAG;
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("LogFile is not a file: ");
            stringBuilder2.append(onBuildLogPath);
            Log.e(str, stringBuilder2.toString());
            return null;
        }
        return file;
    }

    protected String onBuildLogPath() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.mLogRoot);
        stringBuilder.append("/");
        stringBuilder.append(this.mLogName);
        stringBuilder.append(gy);
        return stringBuilder.toString();
    }
}
