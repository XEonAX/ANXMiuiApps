package com.miui.internal.variable.v21;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import miui.reflect.Field;
import miui.reflect.Method;

public class Android_View_ViewGroup_class extends com.miui.internal.variable.v19.Android_View_ViewGroup_class {
    protected static int R_styleable_ViewGroup_touchscreenBlocksFocus;
    protected static final int R_styleable_ViewGroup_transitionGroup = Field.of(com_android_internal_R_styleable, "ViewGroup_transitionGroup", Field.INT_SIGNATURE_PRIMITIVE).getInt(null);
    protected static Method setTouchscreenBlocksFocus;
    protected static final Method setTransitionGroup = Method.of(ViewGroup.class, "setTransitionGroup", "(Z)V");

    static {
        R_styleable_ViewGroup_touchscreenBlocksFocus = 0;
        setTouchscreenBlocksFocus = null;
        try {
            R_styleable_ViewGroup_touchscreenBlocksFocus = Field.of(com_android_internal_R_styleable, "ViewGroup_touchscreenBlocksFocus", Field.INT_SIGNATURE_PRIMITIVE).getInt(null);
            setTouchscreenBlocksFocus = Method.of(ViewGroup.class, "setTouchscreenBlocksFocus", "(Z)V");
        } catch (Exception e) {
        }
    }

    protected void handle() {
        handle_init_(0, null, null, null, 0, 0);
        handleInitFromAttributes(0, null, null, null, 0, 0);
        super.handle();
    }

    protected void attachPrivateMethods() {
        attachMethod("initFromAttributes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;II)V");
    }

    protected void handleInitFromAttributes(long j, ViewGroup viewGroup, Context context, AttributeSet attributeSet, int i, int i2) {
    }

    protected void originalInitFromAttributes(long j, ViewGroup viewGroup, Context context, AttributeSet attributeSet, int i, int i2) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_View_ViewGroup_class.originalInitFromAttributes(long, ViewGroup, Context, AttributeSet, int, int)");
    }

    protected void handle_init_(long j, ViewGroup viewGroup, Context context, AttributeSet attributeSet, int i, int i2) {
        original_init_(j, viewGroup, context, attributeSet, i, i2);
        initFromAttributes(viewGroup, context, attributeSet, i, i2);
    }

    protected void original_init_(long j, ViewGroup viewGroup, Context context, AttributeSet attributeSet, int i, int i2) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet, int, int)");
    }

    protected void processAttribute(ViewGroup viewGroup, int i, TypedArray typedArray, Context context) {
        if (i == R_styleable_ViewGroup_transitionGroup) {
            setTransitionGroup.invoke(ViewGroup.class, viewGroup, Boolean.valueOf(typedArray.getBoolean(i, false)));
        }
        if (i == R_styleable_ViewGroup_touchscreenBlocksFocus) {
            setTouchscreenBlocksFocus.invoke(ViewGroup.class, viewGroup, Boolean.valueOf(typedArray.getBoolean(i, false)));
            return;
        }
        super.processAttribute(viewGroup, i, typedArray, context);
    }
}
