package com.miui.internal.component.module;

import android.content.Context;
import java.io.File;

public class BuiltinRepository extends LocalRepository {
    public BuiltinRepository(Context context) {
        super(context);
    }

    protected File getRootFolder(Context context) {
        return new File(context.getApplicationInfo().nativeLibraryDir);
    }

    protected File getModuleFile(File file, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("libmodule_");
        stringBuilder.append(str);
        stringBuilder.append(".so");
        return new File(file, stringBuilder.toString());
    }
}
