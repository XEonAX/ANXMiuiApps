package com.miui.internal.log.appender.rolling;

import android.content.res.MiuiConfiguration;
import android.util.Log;
import java.io.File;

public class FileRolloverStrategy implements RolloverStrategy {
    private static final String TAG = "FileRolloverStrategy";
    private int gL = 1;
    private long gM = MiuiConfiguration.THEME_FLAG_ALARMSTYLE;

    public void setMaxBackupIndex(int i) {
        if (i >= 1) {
            this.gL = i;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("index can't be less than 1: ");
        stringBuilder.append(i);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public int getMaxBackupIndex() {
        return this.gL;
    }

    public void setMaxFileSize(int i) {
        if (i >= 1) {
            this.gM = (long) i;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("size can't be less than 1: ");
        stringBuilder.append(i);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public long getMaxFileSize() {
        return this.gM;
    }

    public String rollover(RollingFileManager rollingFileManager) {
        if (rollingFileManager.getLogSize() < this.gM) {
            return null;
        }
        File logFile = rollingFileManager.getLogFile();
        Log.d(TAG, "Start to rollover");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(logFile.getPath());
        stringBuilder.append('.');
        String stringBuilder2 = stringBuilder.toString();
        for (int i = this.gL - 1; i > 0; i--) {
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(stringBuilder2);
            stringBuilder3.append(i);
            File file = new File(stringBuilder3.toString());
            if (file.exists()) {
                StringBuilder stringBuilder4 = new StringBuilder();
                stringBuilder4.append(stringBuilder2);
                stringBuilder4.append(i + 1);
                file.renameTo(new File(stringBuilder4.toString()));
            }
        }
        StringBuilder stringBuilder5 = new StringBuilder();
        stringBuilder5.append(stringBuilder2);
        stringBuilder5.append(1);
        logFile.renameTo(new File(stringBuilder5.toString()));
        Log.d(TAG, "Rollover done");
        return logFile.getPath();
    }
}
