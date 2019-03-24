package com.miui.internal.variable.v16;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.Factory;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Graphics_Drawable_StateListDrawable_class extends com.miui.internal.variable.Android_Graphics_Drawable_StateListDrawable_class {
    private static final Method lA = Method.of(StateListDrawable.class, "getStateSet", "(I)[I");
    private static final Method lB = Method.of(StateListDrawable.class, "getStateDrawable", "(I)Landroid/graphics/drawable/Drawable;");
    private static final Method lz = Method.of(StateListDrawable.class, "getStateCount", "()I");

    public int getStateCount(StateListDrawable stateListDrawable) {
        try {
            return lz.invokeInt(null, stateListDrawable, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.StateListDrawable.getStateCount", e);
            return 0;
        }
    }

    public int[] getStateSet(StateListDrawable stateListDrawable, int i) {
        try {
            return (int[]) lA.invokeObject(null, stateListDrawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.StateListDrawable.getStateSet", e);
            return null;
        }
    }

    public Drawable getStateDrawable(StateListDrawable stateListDrawable, int i) {
        try {
            return (Drawable) lB.invokeObject(null, stateListDrawable, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.graphics.drawable.StateListDrawable.getStateDrawable", e);
            return null;
        }
    }

    public int getLayoutDirection(Drawable drawable) {
        return Factory.getInstance().get().getLayoutDirection(drawable);
    }
}
