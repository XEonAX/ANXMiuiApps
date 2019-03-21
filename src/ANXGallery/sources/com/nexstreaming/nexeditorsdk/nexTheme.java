package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;

@Deprecated
public final class nexTheme {
    private static final String none = "none";

    nexTheme() {
    }

    @Deprecated
    public String getId() {
        return none;
    }

    @Deprecated
    public String getName(Context context) {
        return none;
    }

    @Deprecated
    public String getDesc(Context context) {
        return none;
    }

    @Deprecated
    public Bitmap getIconSyncEx() {
        return null;
    }

    @Deprecated
    public String getTransitionId() {
        return none;
    }

    @Deprecated
    public String getOpeningTitleEffectId() {
        return none;
    }

    @Deprecated
    public String getEndingTitleEffectId() {
        return none;
    }

    @Deprecated
    public String getMiddleTitleEffectId() {
        return none;
    }

    @Deprecated
    public String getAccentEffectId() {
        return none;
    }

    @Deprecated
    public static boolean isValidThemeId(String str) {
        return false;
    }
}
