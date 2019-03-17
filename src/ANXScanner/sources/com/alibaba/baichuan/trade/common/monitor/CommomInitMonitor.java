package com.alibaba.baichuan.trade.common.monitor;

public class CommomInitMonitor {
    public long securityInitTime = 0;
    public long utInitTime = 0;

    public void startSecurityInitRecord() {
        this.securityInitTime = System.currentTimeMillis();
    }

    public void startUTInitRecord() {
        this.utInitTime = System.currentTimeMillis();
    }

    public void stopSecurityInitRecord() {
        this.securityInitTime = System.currentTimeMillis() - this.securityInitTime;
    }

    public void stopUTInitRecord() {
        this.utInitTime = System.currentTimeMillis() - this.utInitTime;
    }
}
