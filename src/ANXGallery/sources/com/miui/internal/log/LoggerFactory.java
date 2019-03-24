package com.miui.internal.log;

import android.util.Log;
import com.miui.internal.log.appender.Appender;
import com.miui.internal.log.appender.FileAppender;
import com.miui.internal.log.appender.FileManager;
import com.miui.internal.log.appender.LogcatAppender;
import com.miui.internal.log.appender.rolling.FileRolloverStrategy;
import com.miui.internal.log.appender.rolling.RollingFileManager;
import com.miui.internal.log.appender.rolling.RolloverStrategy;
import com.miui.internal.log.format.SimpleFormatter;
import com.miui.internal.log.receiver.DynamicDumpReceiver;
import com.miui.internal.log.util.Config;
import com.miui.internal.util.DeviceHelper;
import miui.util.AppConstants;

public class LoggerFactory {
    private static final String TAG = "LoggerFactory";

    public static Logger getLogcatLogger() {
        Logger logger = new Logger(Config.LOG_NAME);
        logger.addAppender(new LogcatAppender());
        if (DeviceHelper.IS_DEBUGGABLE) {
            logger.setLevel(Level.VERBOSE);
        } else {
            logger.setLevel(Level.INFO);
        }
        return logger;
    }

    public static Logger getFileLogger() {
        String defaultCacheLogDir = Config.getDefaultCacheLogDir();
        if (defaultCacheLogDir != null) {
            K();
            return getFileLogger(defaultCacheLogDir, Config.LOG_NAME);
        }
        Log.e(TAG, "Fail to create default logger, log dir is null");
        throw new IllegalStateException("Can't create default file logger");
    }

    public static Logger getFileLogger(String str, String str2) {
        Logger logger = new Logger(str2);
        Appender fileAppender = new FileAppender();
        fileAppender.setFormatter(new SimpleFormatter());
        RolloverStrategy fileRolloverStrategy = new FileRolloverStrategy();
        fileRolloverStrategy.setMaxBackupIndex(4);
        fileRolloverStrategy.setMaxFileSize(1048576);
        FileManager rollingFileManager = new RollingFileManager(str, str2);
        rollingFileManager.setRolloverStrategy(fileRolloverStrategy);
        fileAppender.setFileManager(rollingFileManager);
        logger.addAppender(fileAppender);
        if (DeviceHelper.IS_DEBUGGABLE) {
            logger.setLevel(Level.VERBOSE);
        } else {
            logger.setLevel(Level.INFO);
        }
        return logger;
    }

    private static void K() {
        new DynamicDumpReceiver().register(AppConstants.getCurrentApplication());
    }
}
