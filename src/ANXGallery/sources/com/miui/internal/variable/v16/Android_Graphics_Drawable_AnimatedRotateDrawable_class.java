package com.miui.internal.variable.v16;

import android.graphics.drawable.Drawable;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.Factory;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Graphics_Drawable_AnimatedRotateDrawable_class extends com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class {
    private static final Class<?> lo;
    private static final Method lu = Method.of(lo, "setFramesCount", "(I)V");
    private static final Method lv = Method.of(lo, "setFramesDuration", "(I)V");
    private static final Method lw = Method.of(lo, "start", "()V");
    private static final Method lx = Method.of(lo, "stop", "()V");

    static {
        Class cls;
        try {
            cls = Class.forName(com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow(com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME, e);
            cls = null;
        }
        lo = cls;
    }

    public void setFramesCount(Drawable drawable, int i) {
        try {
            lu.invoke(null, drawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.setFramesCount", e);
        }
    }

    public void setFramesDuration(Drawable drawable, int i) {
        try {
            lv.invoke(null, drawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.setFramesDuration", e);
        }
    }

    public void start(Drawable drawable) {
        try {
            lw.invoke(null, drawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.start", e);
        }
    }

    public void stop(Drawable drawable) {
        try {
            lx.invoke(null, drawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.AnimatedRotateDrawable.stop", e);
        }
    }

    public int getLayoutDirection(Drawable drawable) {
        return Factory.getInstance().get().getLayoutDirection(drawable);
    }
}
