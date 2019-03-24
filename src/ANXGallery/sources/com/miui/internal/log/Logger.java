package com.miui.internal.log;

import com.miui.internal.log.appender.Appender;
import com.miui.internal.log.message.Message;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class Logger {
    public static final int MAX_LOG_LENGTH = 8192;
    private static final String TAG = "Logger";
    private Level gu = Level.VERBOSE;
    private CopyOnWriteArrayList<Appender> gv = new CopyOnWriteArrayList();
    private String mName;

    public Logger(String str) {
        this.mName = str;
    }

    public void setLevel(Level level) {
        this.gu = level;
    }

    public Level getLevel() {
        return this.gu;
    }

    public void addAppender(Appender appender) {
        if (appender != null) {
            this.gv.addIfAbsent(appender);
            return;
        }
        throw new IllegalArgumentException("Appender not allowed to be null");
    }

    public void removeAppender(Appender appender) {
        if (appender != null) {
            appender.close();
            this.gv.remove(appender);
            return;
        }
        throw new IllegalArgumentException("The appender must not be null.");
    }

    public int getAppenderCount() {
        return this.gv.size();
    }

    public Appender getAppenderAt(int i) {
        return (Appender) this.gv.get(i);
    }

    public void log(Level level, String str, String str2) {
        doLog(level, str, str2, null, null);
    }

    public void log(Level level, String str, String str2, Throwable th) {
        doLog(level, str, str2, th, null);
    }

    public void log(Level level, String str, Message message) {
        doLog(level, str, null, null, message);
    }

    private void doLog(Level level, String str, String str2, Throwable th, Message message) {
        Level level2 = level;
        if (level2.compareTo(this.gu) >= 0) {
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = this.gv.iterator();
            while (it.hasNext()) {
                Appender appender = (Appender) it.next();
                if (str2 == null) {
                    appender.append(this.mName, str, currentTimeMillis, level2, message);
                } else {
                    appender.append(this.mName, str, currentTimeMillis, level2, str2, th);
                }
            }
        }
    }

    public void shutdown() {
        Iterator it = this.gv.iterator();
        while (it.hasNext()) {
            ((Appender) it.next()).close();
        }
        this.gv.clear();
    }
}
