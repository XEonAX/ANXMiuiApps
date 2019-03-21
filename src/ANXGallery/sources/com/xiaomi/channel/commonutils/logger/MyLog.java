package com.xiaomi.channel.commonutils.logger;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class MyLog {
    private static int LOG_LEVEL = 2;
    private static final Integer NEGATIVE_CODE = Integer.valueOf(-1);
    private static LoggerInterface logger = new DefaultAndroidLogger();
    private static final HashMap<Integer, String> mActionNames = new HashMap();
    private static AtomicInteger mCodeGenerator = new AtomicInteger(1);
    private static final HashMap<Integer, Long> mStartTimes = new HashMap();

    public static void setLogger(LoggerInterface newLogger) {
        logger = newLogger;
    }

    public static void w(String msg) {
        log(2, "[Thread:" + Thread.currentThread().getId() + "] " + msg);
    }

    public static void i(String msg) {
        log(0, msg);
    }

    public static void v(String msg) {
        log(1, "[Thread:" + Thread.currentThread().getId() + "] " + msg);
    }

    public static void e(String msg, Throwable t) {
        log(4, msg, t);
    }

    public static void e(Throwable t) {
        log(4, t);
    }

    public static void e(String msg) {
        log(4, msg);
    }

    public static Integer ps(String action) {
        if (LOG_LEVEL > 1) {
            return NEGATIVE_CODE;
        }
        Integer code = Integer.valueOf(mCodeGenerator.incrementAndGet());
        mStartTimes.put(code, Long.valueOf(System.currentTimeMillis()));
        mActionNames.put(code, action);
        logger.log(action + " starts");
        return code;
    }

    public static void pe(Integer code) {
        if (LOG_LEVEL <= 1 && mStartTimes.containsKey(code)) {
            long time = System.currentTimeMillis() - ((Long) mStartTimes.remove(code)).longValue();
            logger.log(((String) mActionNames.remove(code)) + " ends in " + time + " ms");
        }
    }

    public static void log(int level, String msg) {
        if (level >= LOG_LEVEL) {
            logger.log(msg);
        }
    }

    public static void log(int level, Throwable t) {
        if (level >= LOG_LEVEL) {
            logger.log("", t);
        }
    }

    public static void log(int level, String msg, Throwable t) {
        if (level >= LOG_LEVEL) {
            logger.log(msg, t);
        }
    }

    public static void setLogLevel(int level) {
        if (level < 0 || level > 5) {
            log(2, "set log level as " + level);
        }
        LOG_LEVEL = level;
    }

    public static int getLogLevel() {
        return LOG_LEVEL;
    }
}
