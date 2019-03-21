package com.miui.gallery.util;

import android.os.Process;
import android.util.Log;
import com.miui.os.Rom;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import miui.util.SoftReferenceSingleton;

public class Log2File {
    private static final SoftReferenceSingleton<SimpleDateFormat> DATE_FORMAT = new SoftReferenceSingleton<SimpleDateFormat>() {
        protected SimpleDateFormat createInstance() {
            return new SimpleDateFormat("MM-dd");
        }
    };
    private static final String LOG_FEATURE_OPEN_PATH = StorageUtils.getPathInPrimaryStorage("MIUI/Gallery/cloud/openlog");
    private static final SoftReferenceSingleton<SimpleDateFormat> TIME_FORMAT = new SoftReferenceSingleton<SimpleDateFormat>() {
        protected SimpleDateFormat createInstance() {
            return new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
        }
    };
    private boolean mCanLog;
    private BufferedWriter mOut;
    private StringBuilder mStringBuilder;

    private static class SingletonHolder {
        private static Log2File instance = new Log2File();
    }

    /* synthetic */ Log2File(AnonymousClass1 x0) {
        this();
    }

    private Log2File() {
        this.mStringBuilder = new StringBuilder();
        this.mCanLog = false;
        if (Rom.IS_ALPHA || new File(LOG_FEATURE_OPEN_PATH).exists()) {
            this.mCanLog = true;
            initialWriter();
        }
    }

    private void initialWriter() {
        if (this.mCanLog) {
            try {
                this.mOut = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(StorageUtils.getPathInPrimaryStorage(BaseFileUtils.concat("MIUI/Gallery/cloud", ((SimpleDateFormat) DATE_FORMAT.get()).format(new Date()) + "_gallery_log")), true)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static Log2File getInstance() {
        return SingletonHolder.instance;
    }

    public synchronized void flushLog(String tag, String msg, Throwable tr) {
        if (this.mCanLog) {
            if (this.mOut == null) {
                initialWriter();
            }
            if (this.mOut != null) {
                this.mStringBuilder.append(((SimpleDateFormat) TIME_FORMAT.get()).format(new Date()));
                this.mStringBuilder.append(' ');
                this.mStringBuilder.append('/');
                this.mStringBuilder.append(tag);
                this.mStringBuilder.append('(');
                this.mStringBuilder.append(Process.myPid());
                this.mStringBuilder.append(')');
                this.mStringBuilder.append(':');
                this.mStringBuilder.append(msg);
                if (tr != null) {
                    this.mStringBuilder.append(':');
                    this.mStringBuilder.append(Log.getStackTraceString(tr));
                }
                this.mStringBuilder.append(10);
                try {
                    if (this.mOut != null) {
                        this.mOut.write(this.mStringBuilder.toString());
                        this.mOut.flush();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
                this.mStringBuilder.setLength(0);
            }
        }
        return;
    }

    public boolean canLog() {
        return this.mCanLog;
    }
}
