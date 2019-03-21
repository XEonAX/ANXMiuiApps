package com.miui.xspace;

import android.content.Context;
import com.miui.core.SdkHelper;
import java.io.File;

public class XSpaceHelper {
    private static final IXSpaceWrapper IMPL = (SdkHelper.IS_MIUI ? new MiuiXSpace() : new XmsXSpace());

    public static boolean isXSpaceEnable(Context context) {
        return IMPL.isXSpaceEnable(context);
    }

    public static File getXSpacePath() {
        return IMPL.getXSpacePath();
    }
}
