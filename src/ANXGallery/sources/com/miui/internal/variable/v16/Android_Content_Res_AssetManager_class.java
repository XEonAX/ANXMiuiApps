package com.miui.internal.variable.v16;

import android.content.res.AssetManager;
import com.miui.internal.util.ClassProxy;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Constructor;
import miui.reflect.Method;

public class Android_Content_Res_AssetManager_class extends ClassProxy<AssetManager> implements com.miui.internal.variable.Android_Content_Res_AssetManager_class {
    private static final Method ln = Method.of(AssetManager.class, "addAssetPath", "(Ljava/lang/String;)I");

    public Android_Content_Res_AssetManager_class() {
        super(AssetManager.class);
    }

    protected void handle() {
        handleAddAssetPath(0, null, null);
    }

    protected int handleAddAssetPath(long j, AssetManager assetManager, String str) {
        if (!PackageConstants.RESOURCE_PATH.equals(str)) {
            originalAddAssetPath(j, assetManager, PackageConstants.RESOURCE_PATH);
        }
        return originalAddAssetPath(j, assetManager, str);
    }

    protected int originalAddAssetPath(long j, AssetManager assetManager, String str) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Content_Res_AssetManager_class.originalAddAssetPath(long, AssetManager, String)");
    }

    public void buildProxy() {
        try {
            attachMethod("addAssetPath", "(Ljava/lang/String;)I");
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.res.AssetManager.addAssetPath", e);
        }
    }

    public AssetManager newInstance() {
        return (AssetManager) Constructor.of(AssetManager.class, "()V").newInstance(new Object[0]);
    }

    public int addAssetPath(AssetManager assetManager, String str) {
        try {
            return ln.invokeInt(null, assetManager, str);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.res.AssetManager.addAssetPath", e);
            return 0;
        }
    }
}
