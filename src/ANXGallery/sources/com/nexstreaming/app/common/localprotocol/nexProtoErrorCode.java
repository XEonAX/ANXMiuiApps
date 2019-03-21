package com.nexstreaming.app.common.localprotocol;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

public enum nexProtoErrorCode {
    OK(0),
    InvalidHDR(BaiduSceneResult.SHOOTING),
    InvalidRQ(BaiduSceneResult.TAEKWONDO),
    InvalidRS(BaiduSceneResult.MOUNTAINEERING),
    InvalidSSID(BaiduSceneResult.SPORTS_OTHER),
    Unrecognized(800);
    
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
