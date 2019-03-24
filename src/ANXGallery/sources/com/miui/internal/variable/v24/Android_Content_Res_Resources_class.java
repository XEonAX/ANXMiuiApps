package com.miui.internal.variable.v24;

import android.content.res.AssetManager;
import android.content.res.Resources;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;

public class Android_Content_Res_Resources_class extends com.miui.internal.variable.v21.Android_Content_Res_Resources_class {
    protected static Field mResourcesImpl = null;

    public void buildProxy() {
    }

    protected void handle() {
    }

    public void setAssetManager(Resources resources, AssetManager assetManager) {
        try {
            if (mResourcesImpl == null) {
                mResourcesImpl = Field.of(Resources.class, "mResourcesImpl", "Landroid/content/res/ResourcesImpl;");
                mAssets = Field.of(Class.forName("android/content/res/ResourcesImpl"), "mAssets", "Landroid/content/res/AssetManager;");
            }
            mAssets.set(mResourcesImpl.get(resources), (Object) assetManager);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("mAssets", e);
        } catch (Throwable e2) {
            VariableExceptionHandler.getInstance().onThrow("mAssets", e2);
        }
    }
}
