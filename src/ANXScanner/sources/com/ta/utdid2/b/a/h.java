package com.ta.utdid2.b.a;

import android.annotation.TargetApi;
import android.content.SharedPreferences.Editor;

/* compiled from: SharedPreferenceHelper */
public class h {
    @TargetApi(9)
    public static void a(Editor editor) {
        if (editor != null) {
            editor.apply();
        }
    }
}
