package com.miui.gallery.view.menu;

import android.view.View;
import com.miui.gallery.widget.BottomMenu;

public class BottomMenuBarUtils {
    public static BottomMenu findBottomMenuBar(View view) {
        while (view != null) {
            if (view instanceof BottomMenu) {
                return (BottomMenu) view;
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            } else {
                view = null;
            }
        }
        return null;
    }
}
