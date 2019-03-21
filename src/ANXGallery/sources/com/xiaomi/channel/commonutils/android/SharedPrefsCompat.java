package com.xiaomi.channel.commonutils.android;

import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public final class SharedPrefsCompat {
    public static void apply(Editor editor) {
        if (VERSION.SDK_INT > 8) {
            editor.apply();
        } else {
            editor.commit();
        }
    }
}
