package com.xiaomi.push.log;

import com.xiaomi.channel.commonutils.logger.LoggerInterface;

public class MIPushDebugLog implements LoggerInterface {
    private LoggerInterface sPushLogFileInterface = null;
    private LoggerInterface sUserLogInterface = null;

    public MIPushDebugLog(LoggerInterface sUserLogInterface, LoggerInterface sPushLogFileInterface) {
        this.sUserLogInterface = sUserLogInterface;
        this.sPushLogFileInterface = sPushLogFileInterface;
    }

    public void log(String content) {
        if (this.sUserLogInterface != null) {
            this.sUserLogInterface.log(content);
        }
        if (this.sPushLogFileInterface != null) {
            this.sPushLogFileInterface.log(content);
        }
    }

    public void log(String content, Throwable t) {
        if (this.sUserLogInterface != null) {
            this.sUserLogInterface.log(content, t);
        }
        if (this.sPushLogFileInterface != null) {
            this.sPushLogFileInterface.log(content, t);
        }
    }
}
