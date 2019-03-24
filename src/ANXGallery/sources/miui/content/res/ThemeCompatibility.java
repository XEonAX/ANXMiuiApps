package miui.content.res;

import android.util.Log;
import com.miui.internal.content.res.ThemeDefinition.CompatibilityInfo;
import com.miui.internal.content.res.ThemeDefinition.CompatibilityType;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.NewDefaultValue;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import com.miui.internal.content.res.ThemeToolUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ThemeCompatibility {
    private static final Map<String, List<NewDefaultValue>> COMPATIBILITY_DEFAULTVALUE = new HashMap();
    private static final Map<String, List<FallbackInfo>> COMPATIBILITY_FALLBACKS = new HashMap();
    private static final String DISABLE_MIUI_THEME_MECHANISM = "/data/system/theme_config/theme_disable";
    private static final Map<String, List<FallbackInfo>> MIUI_OPTIMIZATION_FALLBACK = new HashMap();
    private static final boolean sThemeEnabled = (new File(DISABLE_MIUI_THEME_MECHANISM).exists() ^ 1);

    static {
        if (sThemeEnabled) {
            FallbackInfo tmp;
            String pkgName;
            List<FallbackInfo> list;
            for (CompatibilityInfo info : ThemeCompatibilityLoader.loadConfig()) {
                if (info.mCompatibilityType == CompatibilityType.FALLBACK) {
                    tmp = (FallbackInfo) info;
                    pkgName = tmp.mResPkgName;
                    list = (List) COMPATIBILITY_FALLBACKS.get(pkgName);
                    if (list == null) {
                        list = new ArrayList();
                        COMPATIBILITY_FALLBACKS.put(pkgName, list);
                    }
                    list.add(tmp);
                } else if (info.mCompatibilityType == CompatibilityType.NEW_DEF_VALUE) {
                    NewDefaultValue tmp2 = (NewDefaultValue) info;
                    pkgName = tmp2.mResPkgName;
                    List<NewDefaultValue> list2 = (List) COMPATIBILITY_DEFAULTVALUE.get(pkgName);
                    if (list2 == null) {
                        list2 = new ArrayList();
                        COMPATIBILITY_DEFAULTVALUE.put(pkgName, list2);
                    }
                    list2.add(tmp2);
                }
            }
            List<FallbackInfo> miuiFallback = (List) COMPATIBILITY_FALLBACKS.get("miui");
            if (miuiFallback != null) {
                for (FallbackInfo tmp3 : miuiFallback) {
                    pkgName = combineFallbackInfoKey(tmp3.mResType, tmp3.mResOriginalName);
                    list = (List) MIUI_OPTIMIZATION_FALLBACK.get(pkgName);
                    if (list == null) {
                        list = new ArrayList();
                        MIUI_OPTIMIZATION_FALLBACK.put(pkgName, list);
                    }
                    list.add(tmp3);
                }
                return;
            }
            return;
        }
        Log.d("ThemeCompatibility", "theme disabled flag has been checked!!!");
    }

    public static List<FallbackInfo> getFallbackList(String pkgName) {
        return (List) COMPATIBILITY_FALLBACKS.get(pkgName);
    }

    public static List<FallbackInfo> getMayFilterFallbackList(String pkgName, ResourceType mayFilterByType, String mayFilterByOriginPath) {
        if (!"miui".equals(pkgName)) {
            return (List) COMPATIBILITY_FALLBACKS.get(pkgName);
        }
        return (List) MIUI_OPTIMIZATION_FALLBACK.get(combineFallbackInfoKey(mayFilterByType, ThemeToolUtils.getNameFromPath(mayFilterByOriginPath)));
    }

    public static List<NewDefaultValue> getNewDefaultValueList(String pkgName) {
        return (List) COMPATIBILITY_DEFAULTVALUE.get(pkgName);
    }

    private static String combineFallbackInfoKey(ResourceType type, String originName) {
        int index = originName.indexOf(".");
        if (index < 0) {
            index = originName.length();
        }
        FixedSizeStringBuffer buffer = FixedSizeStringBuffer.getBuffer();
        buffer.append(type.toString());
        buffer.append("/");
        buffer.append(originName, 0, index);
        String ret = buffer.toString();
        FixedSizeStringBuffer.freeBuffer(buffer);
        return ret;
    }

    public static boolean isThemeEnabled() {
        return sThemeEnabled;
    }

    public static boolean isCompatibleResource(String resourceThemePath) {
        if (resourceThemePath.startsWith("/data/system/theme/") && new File(resourceThemePath).exists() && !new File(ThemeResources.THEME_VERSION_COMPATIBILITY_PATH).exists()) {
            return false;
        }
        return true;
    }
}
