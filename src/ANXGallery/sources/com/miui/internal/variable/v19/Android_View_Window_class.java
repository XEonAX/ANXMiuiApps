package com.miui.internal.variable.v19;

import android.view.Window;

public class Android_View_Window_class extends com.miui.internal.variable.v16.Android_View_Window_class {
    private static final int FLAG_TRANSLUCENT_STATUS = 67108864;

    public boolean setTranslucentStatus(Window window, int i) {
        if (i == 0) {
            window.clearFlags(FLAG_TRANSLUCENT_STATUS);
        } else {
            window.setFlags(FLAG_TRANSLUCENT_STATUS, FLAG_TRANSLUCENT_STATUS);
        }
        super.setTranslucentStatus(window, i);
        return true;
    }
}
