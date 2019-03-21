package com.xiaomi.push.service.awake.module;

public class AwakeInfo {
    private String mAction;
    private String mAwakeInfo;
    private String mClassName;
    private String mTargetPackageName;

    public String getTargetPackageName() {
        return this.mTargetPackageName;
    }

    public void setTargetPackageName(String mTargetPackageName) {
        this.mTargetPackageName = mTargetPackageName;
    }

    public String getAction() {
        return this.mAction;
    }

    public void setAction(String mAction) {
        this.mAction = mAction;
    }

    public String getClassName() {
        return this.mClassName;
    }

    public void setClassName(String mClassName) {
        this.mClassName = mClassName;
    }

    public String getAwakeInfo() {
        return this.mAwakeInfo;
    }

    public void setAwakeInfo(String mAwakeInfo) {
        this.mAwakeInfo = mAwakeInfo;
    }
}
