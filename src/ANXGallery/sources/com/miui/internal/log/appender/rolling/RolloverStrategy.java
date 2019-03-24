package com.miui.internal.log.appender.rolling;

public interface RolloverStrategy {
    String rollover(RollingFileManager rollingFileManager);
}
