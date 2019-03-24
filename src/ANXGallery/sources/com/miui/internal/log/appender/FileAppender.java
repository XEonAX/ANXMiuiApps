package com.miui.internal.log.appender;

import android.util.Log;
import com.miui.internal.log.Level;
import com.miui.internal.log.format.Formatter;
import com.miui.internal.log.message.Message;

public class FileAppender implements Appender {
    private static final String TAG = "FileAppender";
    private Formatter gw;
    private FileManager gx;

    public void setFormatter(Formatter formatter) {
        this.gw = formatter;
    }

    public Formatter getFormatter() {
        return this.gw;
    }

    public void setFileManager(FileManager fileManager) {
        if (this.gx != fileManager) {
            close();
            this.gx = fileManager;
        }
    }

    public FileManager getFileManager() {
        return this.gx;
    }

    public void append(String str, String str2, long j, Level level, String str3, Throwable th) {
        a(str, str2, j, level, str3, th, null);
    }

    public void append(String str, String str2, long j, Level level, Message message) {
        a(str, str2, j, level, null, null, message);
    }

    private void a(String str, String str2, long j, Level level, String str3, Throwable th, Message message) {
        if (this.gw == null) {
            Log.e(TAG, "Fail to append log for formatter is null");
        } else if (this.gx == null) {
            Log.e(TAG, "Fail to append log for FileManager is null");
        } else {
            if (str3 == null) {
                this.gx.write(this.gw.format(str, str2, j, level, message));
            } else {
                this.gx.write(this.gw.format(str, str2, j, level, str3, th));
            }
        }
    }

    public void close() {
        if (this.gx != null) {
            this.gx.close();
            this.gx = null;
        }
    }
}
