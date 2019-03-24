package miui.theme;

import android.content.Context;
import com.miui.system.internal.R;
import miui.os.C0015Build;

public class GlobalUtils {
    private GlobalUtils() {
    }

    public static boolean isReligiousArea(Context context) {
        if (context != null) {
            String[] regions = context.getResources().getStringArray(R.array.religious_regions);
            if (regions != null) {
                String currentRegion = C0015Build.getRegion();
                for (String reg : regions) {
                    if (reg.equals(currentRegion)) {
                        return true;
                    }
                }
            }
            String[] languages = context.getResources().getStringArray(R.array.religious_languages);
            if (languages != null) {
                String currentLanguage = context.getResources().getConfiguration().locale.getLanguage();
                for (String lan : languages) {
                    if (lan.equals(currentLanguage)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
