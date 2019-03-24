package com.miui.internal.log.appender.rolling;

import com.miui.internal.log.appender.FileManager;

public class RollingFileManager extends FileManager {
    private RolloverStrategy gN;
    private String gO;

    public RollingFileManager(String str, String str2) {
        super(str, str2);
    }

    public synchronized void setRolloverStrategy(RolloverStrategy rolloverStrategy) {
        this.gN = rolloverStrategy;
    }

    public RolloverStrategy getRolloverStrategy() {
        return this.gN;
    }

    protected String onBuildLogPath() {
        if (this.gO == null) {
            return super.onBuildLogPath();
        }
        return this.gO;
    }

    public synchronized void write(String str) {
        O();
        super.write(str);
    }

    private void O() {
        if (this.mLogFile != null && this.gN != null) {
            this.gO = this.gN.rollover(this);
            if (this.gO != null) {
                close();
            }
        }
    }
}
