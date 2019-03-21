package com.miui.os;

import com.miui.core.SdkHelper;
import miui.os.Build;

public interface Rom {
    public static final boolean IS_ALPHA;
    public static final boolean IS_DEBUGGABLE;
    public static final boolean IS_DEV;
    public static final boolean IS_INTERNATIONAL = Build.IS_INTERNATIONAL_BUILD;
    public static final boolean IS_MIUI = SdkHelper.IS_MIUI;
    public static final boolean IS_STABLE;

    static {
        boolean z;
        boolean z2 = true;
        if (SdkHelper.IS_MIUI && Build.IS_ALPHA_BUILD) {
            z = true;
        } else {
            z = false;
        }
        IS_ALPHA = z;
        if (SdkHelper.IS_MIUI && Build.IS_DEVELOPMENT_VERSION) {
            z = true;
        } else {
            z = false;
        }
        IS_DEV = z;
        if (!SdkHelper.IS_MIUI || Build.IS_STABLE_VERSION) {
            z = true;
        } else {
            z = false;
        }
        IS_STABLE = z;
        if (!(SdkHelper.IS_MIUI && Build.IS_DEBUGGABLE)) {
            z2 = false;
        }
        IS_DEBUGGABLE = z2;
    }
}
