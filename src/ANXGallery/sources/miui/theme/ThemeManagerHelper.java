package miui.theme;

import android.content.Context;
import miui.os.C0004SystemProperties;
import miui.os.C0015Build;

public class ThemeManagerHelper {
    private ThemeManagerHelper() {
    }

    public static boolean needDisableTheme(Context context) {
        return C0015Build.IS_TABLET || ((C0015Build.IS_INTERNATIONAL_BUILD && GlobalUtils.isReligiousArea(context)) || isTelcel());
    }

    private static boolean isTelcel() {
        return "mx_telcel".equals(C0004SystemProperties.get("ro.miui.customized.region", ""));
    }
}
