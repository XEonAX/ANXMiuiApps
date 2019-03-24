package com.nexstreaming.app.common.localprotocol;

import com.miui.internal.widget.ActionBarMovableLayout;

public enum nexProtoErrorCode {
    OK(0),
    InvalidHDR(101),
    InvalidRQ(102),
    InvalidRS(103),
    InvalidSSID(104),
    Unrecognized(ActionBarMovableLayout.DEFAULT_SPRING_BACK_DURATION);
    
    private final int mValue;

    private nexProtoErrorCode(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }

    static nexProtoErrorCode fromValue(int i) {
        for (nexProtoErrorCode nexprotoerrorcode : values()) {
            if (nexprotoerrorcode.getValue() == i) {
                return nexprotoerrorcode;
            }
        }
        return Unrecognized;
    }
}
