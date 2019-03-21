package com.miui.gallery.monitor;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;

public class FileLog {
    private int mActiveCache;
    private final LinkedList<String> mCache0;
    private final LinkedList<String> mCache1;
    private final Object mLock;
    private final LogTask mTask;

    private class LogTask extends Thread {
        private volatile boolean mActive = true;
        private final String mLogPath;
        private BufferedWriter mWriter;

        public LogTask(String logPath) {
            this.mLogPath = logPath;
        }

        private String getDefaultLogPath() {
            SimpleDateFormat format = new SimpleDateFormat("yyyy_MM_dd");
            return new File(Environment.getExternalStorageDirectory(), String.format("blog_%s", new Object[]{format.format(new Date())})).getAbsolutePath();
        }

        private String getLogPath() {
            return TextUtils.isEmpty(this.mLogPath) ? getDefaultLogPath() : this.mLogPath;
        }

        public void active() {
            synchronized (this) {
                notifyAll();
            }
        }

        public void run() {
            try {
                this.mWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(getLogPath(), true)));
            } catch (IOException e) {
                this.mWriter = null;
                e.printStackTrace();
            }
            if (this.mWriter != null) {
                while (this.mActive) {
                    try {
                        LinkedList<String> activeCache;
                        synchronized (FileLog.this.mLock) {
                            activeCache = FileLog.this.mActiveCache == 0 ? FileLog.this.mCache0 : FileLog.this.mCache1;
                            Log.d("FileLog", "write active cache: " + FileLog.this.mActiveCache);
                            FileLog.this.mActiveCache = 1 - FileLog.this.mActiveCache;
                        }
                        Iterator it = activeCache.iterator();
                        while (it.hasNext()) {
                            this.mWriter.write((String) it.next());
                            this.mWriter.write("\n");
                        }
                        this.mWriter.flush();
                        activeCache.clear();
                        activeCache = FileLog.this.mActiveCache == 0 ? FileLog.this.mCache0 : FileLog.this.mCache1;
                        synchronized (this) {
                            while (activeCache.size() <= 0) {
                                Log.d("FileLog", "wait cache: " + FileLog.this.mActiveCache);
                                wait();
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            this.mWriter.close();
                            this.mWriter = null;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                try {
                    this.mWriter.close();
                    this.mWriter = null;
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            }
        }
    }

    public FileLog() {
        this(null);
    }

    public FileLog(String logPath) {
        this.mLock = new Object();
        this.mTask = new LogTask(logPath);
        this.mCache0 = new LinkedList();
        this.mCache1 = new LinkedList();
        this.mTask.setPriority(4);
        this.mTask.start();
    }

    public void log(String msg) {
        LinkedList<String> activeCache;
        long start = System.currentTimeMillis();
        synchronized (this.mLock) {
            activeCache = this.mActiveCache == 0 ? this.mCache0 : this.mCache1;
        }
        activeCache.add(msg);
        this.mTask.active();
        Log.d("FileLog", "log cost: " + (System.currentTimeMillis() - start));
    }
}
