package com.miui.gallery.util;

import android.content.Context;

public class StaticContext {
    private static volatile Context sContext;

    public static void init(Context context) {
        sContext = context;
    }

    public static Context sGetAndroidContext() {
        return sContext;
    }
}
