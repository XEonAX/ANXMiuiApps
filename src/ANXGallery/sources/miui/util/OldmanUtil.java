package miui.util;

import miui.os.C0004SystemProperties;

public class OldmanUtil {
    public static final boolean IS_ELDER_MODE;

    static {
        boolean z = false;
        if (C0004SystemProperties.getInt("persist.sys.user_mode", 0) == 1) {
            z = true;
        }
        IS_ELDER_MODE = z;
    }
}
