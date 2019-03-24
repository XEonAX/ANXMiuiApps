package com.miui.internal.component.module;

import android.content.Context;
import com.miui.internal.util.DeviceHelper;
import java.io.File;

public class PrebuiltRepository extends LocalRepository {
    public PrebuiltRepository(Context context) {
        super(context);
    }

    protected File getRootFolder(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(DeviceHelper.HAS_CUST_PARTITION ? "/cust/prebuilts/" : "/data/miui/prebuilts/");
        stringBuilder.append(context.getPackageName());
        return new File(stringBuilder.toString());
    }

    protected File getModuleFile(File file, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        return new File(file, stringBuilder.toString());
    }
}
