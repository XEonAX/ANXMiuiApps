package com.miui.gallery.compat.app;

import android.app.ActionBar;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.view.ActionBarWrapper;

public class ActionBarCompat {
    public static void setShowHideAnimationEnabled(ActionBar actionBar, boolean enable) {
        if (actionBar == null) {
            return;
        }
        if (actionBar instanceof ActionBarWrapper) {
            ((ActionBarWrapper) actionBar).setShowHideAnimationEnabled(enable);
            return;
        }
        BaseMiscUtil.invokeSafely(actionBar, "setShowHideAnimationEnabled", new Class[]{Boolean.TYPE}, Boolean.valueOf(enable));
    }
}
