package com.miui.app;

import android.content.Context;
import com.miui.utils.LazyConst;
import miui.util.AppConstants;

public final class ModuleLevel extends LazyConst<Context, Integer> {
    private String mModuleName;

    public ModuleLevel(String moduleName) {
        this.mModuleName = moduleName;
    }

    protected Integer onInit(Context context) {
        return Integer.valueOf(AppConstants.getSdkLevel(context, this.mModuleName));
    }
}
