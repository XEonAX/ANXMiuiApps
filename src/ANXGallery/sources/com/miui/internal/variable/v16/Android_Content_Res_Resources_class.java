package com.miui.internal.variable.v16;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;

public class Android_Content_Res_Resources_class extends com.miui.internal.variable.Android_Content_Res_Resources_class {
    public void buildProxy() {
        attachMethod("loadDrawable", "(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;");
    }

    protected void handle() {
        handleLoadDrawable(0, null, null, 0);
    }

    protected Drawable handleLoadDrawable(long j, Resources resources, TypedValue typedValue, int i) {
        Drawable originalLoadDrawable = originalLoadDrawable(j, resources, typedValue, i);
        if (originalLoadDrawable != null && originalLoadDrawable.isStateful()) {
            DrawableClass.setId(originalLoadDrawable, i);
        }
        return originalLoadDrawable;
    }

    protected Drawable originalLoadDrawable(long j, Resources resources, TypedValue typedValue, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Content_Res_Resources_class.originalLoadDrawable(long, Resources, TypedValue, int)");
    }

    public void setAssetManager(Resources resources, AssetManager assetManager) {
        try {
            if (mAssets == null) {
                mAssets = Field.of(Resources.class, "mAssets", "Landroid/content/res/AssetManager;");
            }
            mAssets.set((Object) resources, (Object) assetManager);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("mAssets", e);
        }
    }
}
