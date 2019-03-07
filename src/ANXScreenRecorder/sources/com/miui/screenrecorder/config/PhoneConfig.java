package com.miui.screenrecorder.config;

public class PhoneConfig {
    private long innerOffset;
    private int innerStreamType;
    private boolean isSupportInner;
    private long micOffset;
    private String phoneId;

    public PhoneConfig(String phoneId, boolean isSupportInner, int innerStreamType, long micOffset, long innerOffset) {
        this.phoneId = phoneId;
        this.isSupportInner = isSupportInner;
        this.innerStreamType = innerStreamType;
        this.micOffset = micOffset;
        this.innerOffset = innerOffset;
    }

    public PhoneConfig() {
        this.phoneId = "default";
        this.isSupportInner = false;
        this.innerStreamType = 0;
        this.micOffset = 500;
        this.innerOffset = 500;
    }

    public String getPhoneId() {
        return this.phoneId;
    }

    public boolean isSupportInner() {
        return this.isSupportInner;
    }

    public int getInnerStreamType() {
        return this.innerStreamType;
    }

    public long getMicOffset() {
        return this.micOffset;
    }

    public long getInnerOffset() {
        return this.innerOffset;
    }
}
