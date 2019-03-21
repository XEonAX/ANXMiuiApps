package com.miui.gallery.cloud.syncstate;

import android.text.TextUtils;

public enum SyncType {
    UNKNOW("unknow", false),
    BACKGROUND("auto-background", false),
    NORMAL("auto-foreground", false),
    POWER_FORCE("manual-battery", true),
    GPRS_FORCE("manual-network", true);
    
    private String mIdentifier;
    private boolean mIsForce;

    private SyncType(String identifier, boolean force) {
        this.mIdentifier = identifier;
        this.mIsForce = force;
    }

    public boolean isForce() {
        return this.mIsForce;
    }

    public String getIdentifier() {
        return this.mIdentifier;
    }

    public static SyncType fromIdentifier(String identifier) {
        if (TextUtils.isEmpty(identifier)) {
            return UNKNOW;
        }
        for (SyncType type : values()) {
            if (TextUtils.equals(type.getIdentifier(), identifier)) {
                return type;
            }
        }
        return UNKNOW;
    }

    public static int compare(SyncType type1, SyncType type2) {
        return type1.ordinal() - type2.ordinal();
    }
}
