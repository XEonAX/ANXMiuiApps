package com.taobao.ma.common.log;

public enum LogLevel {
    TRACE(2),
    DEBUG(3),
    INFO(4),
    WARN(5),
    ERROR(6);
    
    private final int mAndroidLogLevel;

    private LogLevel(int androidLogLevel) {
        this.mAndroidLogLevel = androidLogLevel;
    }

    int getAndroidLogLevel() {
        return this.mAndroidLogLevel;
    }
}
