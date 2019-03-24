package com.miui.internal.variable.v16;

import android.view.Window;
import com.miui.internal.variable.VariableExceptionHandler;

public class Android_View_Window_class extends com.miui.internal.variable.Android_View_Window_class {
    private static final int lV = 1;
    private static final int lW = 16;
    private static final int lX = 17;

    public boolean setTranslucentStatus(Window window, int i) {
        boolean z = false;
        if (setExtraFlags == null) {
            return false;
        }
        if (i == 0) {
            try {
                setExtraFlags.invoke(null, window, Integer.valueOf(0), Integer.valueOf(17));
            } catch (Throwable e) {
                VariableExceptionHandler.getInstance().onThrow("clearExtraFlags failed", e);
            }
        } else {
            i = i == 1 ? 17 : 1;
            try {
                setExtraFlags.invoke(null, window, Integer.valueOf(i), Integer.valueOf(17));
            } catch (Throwable e2) {
                VariableExceptionHandler.getInstance().onThrow("addExtraFlags failed", e2);
            }
        }
        z = true;
        return z;
    }
}
