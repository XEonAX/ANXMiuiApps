package com.miui.internal.variable.v26;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.ResourcesImpl;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.Factory;

public class Android_Content_Res_ResourcesImpl_class extends com.miui.internal.variable.v24.Android_Content_Res_ResourcesImpl_class {
    private static final Android_Graphics_Drawable_Drawable_class DrawableClass = Factory.getInstance().get();

    public void buildProxy() {
        attachMethod("loadDrawable", "(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;");
    }

    protected void handle() {
        handleLoadDrawable(0, null, null, null, 0, 0, null);
    }

    protected Drawable handleLoadDrawable(long j, ResourcesImpl resourcesImpl, Resources resources, TypedValue typedValue, int i, int i2, Theme theme) {
        Drawable originalLoadDrawable = originalLoadDrawable(j, resourcesImpl, resources, typedValue, i, i2, theme);
        if (originalLoadDrawable != null && originalLoadDrawable.isStateful()) {
            DrawableClass.setId(originalLoadDrawable, i);
        }
        return originalLoadDrawable;
    }

    protected Drawable originalLoadDrawable(long j, ResourcesImpl resourcesImpl, Resources resources, TypedValue typedValue, int i, int i2, Theme theme) {
        throw new IllegalStateException("com.miui.internal.variable.v26.Android_Content_Res_ResourcesImpl_class.originalLoadDrawable(long, ResourcesImpl, Resources, TypedValue, int, int, Resources.Theme)");
    }
}
