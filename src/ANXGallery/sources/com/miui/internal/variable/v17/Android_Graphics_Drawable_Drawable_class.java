package com.miui.internal.variable.v17;

import android.graphics.drawable.Drawable;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Graphics_Drawable_Drawable_class extends com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class {
    private static final Method mg = Method.of(Drawable.class, "getLayoutDirection", "()I");

    public int getLayoutDirection(Drawable drawable) {
        try {
            return mg.invokeInt(null, drawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.Drawable.getLayoutDirection", e);
            return 0;
        }
    }
}
