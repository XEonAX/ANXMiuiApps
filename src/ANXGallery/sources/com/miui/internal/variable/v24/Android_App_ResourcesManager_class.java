package com.miui.internal.variable.v24;

import android.content.res.AssetManager;
import android.content.res.ResourcesImpl;
import android.content.res.ResourcesKey;
import com.miui.internal.variable.Android_Content_Res_AssetManager_class;
import com.miui.internal.variable.Android_Content_Res_AssetManager_class.Factory;
import com.miui.internal.variable.Android_Content_Res_ResourcesImpl_class;

public class Android_App_ResourcesManager_class extends com.miui.internal.variable.Android_App_ResourcesManager_class {
    private static final Android_Content_Res_AssetManager_class mm = Factory.getInstance().get();
    private static final Android_Content_Res_ResourcesImpl_class mn = Android_Content_Res_ResourcesImpl_class.Factory.getInstance().get();

    public void buildProxy() {
        attachMethod("createResourcesImpl", "(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;");
    }

    protected void handle() {
        handleCreateResourcesImpl(0, null, null);
    }

    protected ResourcesImpl handleCreateResourcesImpl(long j, Object obj, ResourcesKey resourcesKey) {
        ResourcesImpl originalCreateResourcesImpl = originalCreateResourcesImpl(j, obj, resourcesKey);
        if (originalCreateResourcesImpl == null || mAppendedAssetPaths == null) {
            return originalCreateResourcesImpl;
        }
        AssetManager assets = mn.getAssets(originalCreateResourcesImpl);
        for (String addAssetPath : mAppendedAssetPaths) {
            mm.addAssetPath(assets, addAssetPath);
        }
        return originalCreateResourcesImpl;
    }

    protected ResourcesImpl originalCreateResourcesImpl(long j, Object obj, ResourcesKey resourcesKey) {
        throw new IllegalStateException("com.miui.internal.variable.v24.Android_App_ResourcesManager_class.originalCreateResourcesImpl(long, Object, ResourcesKey)");
    }
}
