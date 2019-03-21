package com.miui.filtersdk.utils;

import com.nexstreaming.nexeditorsdk.nexClip;

public enum Rotation {
    NORMAL,
    ROTATION_90,
    ROTATION_180,
    ROTATION_270;

    public int asInt() {
        switch (this) {
            case NORMAL:
                return 0;
            case ROTATION_90:
                return 90;
            case ROTATION_180:
                return nexClip.kClip_Rotate_180;
            case ROTATION_270:
                return nexClip.kClip_Rotate_270;
            default:
                throw new IllegalStateException("Unknown Rotation!");
        }
    }

    public static Rotation fromInt(int rotation) {
        switch (rotation) {
            case 0:
                return NORMAL;
            case 90:
                return ROTATION_90;
            case nexClip.kClip_Rotate_180 /*180*/:
                return ROTATION_180;
            case nexClip.kClip_Rotate_270 /*270*/:
                return ROTATION_270;
            case 360:
                return NORMAL;
            default:
                throw new IllegalStateException(rotation + " is an unknown rotation. Needs to be either 0, 90, 180 or 270!");
        }
    }
}
