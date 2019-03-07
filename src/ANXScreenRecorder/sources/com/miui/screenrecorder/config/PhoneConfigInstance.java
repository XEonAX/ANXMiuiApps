package com.miui.screenrecorder.config;

public enum PhoneConfigInstance {
    INSTANCE;
    
    private PhoneConfig instance;

    public PhoneConfig getInstance() {
        return this.instance;
    }
}
