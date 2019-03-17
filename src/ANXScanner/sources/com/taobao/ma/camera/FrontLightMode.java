package com.taobao.ma.camera;

import android.content.SharedPreferences;
import com.taobao.ma.camera.constants.PreferencesKey;

public enum FrontLightMode {
    ON,
    AUTO,
    OFF;

    private static FrontLightMode parse(String modeString) {
        return modeString == null ? OFF : valueOf(modeString);
    }

    public static FrontLightMode readPref(SharedPreferences sharedPrefs) {
        return parse(sharedPrefs.getString(PreferencesKey.KEY_FRONT_LIGHT_MODE, OFF.toString()));
    }
}
