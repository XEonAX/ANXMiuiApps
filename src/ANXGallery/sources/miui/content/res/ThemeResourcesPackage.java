package miui.content.res;

import android.content.res.MiuiResources;
import android.content.res.MiuiResources.ThemeFileInfoOption;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import com.miui.internal.content.res.ThemeToolUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ThemeResourcesPackage extends ThemeResources {
    private static final Map<String, WeakReference<ThemeResourcesPackage>> sPackageResources = new HashMap();

    public static ThemeResourcesPackage getThemeResources(MiuiResources resources, String packageName) {
        ThreadPolicy oldPolicy = allowDiskReads();
        ThemeResourcesPackage themeResources = null;
        if (sPackageResources.containsKey(packageName)) {
            themeResources = (ThemeResourcesPackage) ((WeakReference) sPackageResources.get(packageName)).get();
        }
        if (themeResources == null) {
            themeResources = getTopLevelThemeResources(resources, packageName);
            synchronized (sPackageResources) {
                ThemeResourcesPackage currentResources = null;
                if (sPackageResources.containsKey(packageName)) {
                    currentResources = (ThemeResourcesPackage) ((WeakReference) sPackageResources.get(packageName)).get();
                }
                if (currentResources == null) {
                    sPackageResources.put(packageName, new WeakReference(themeResources));
                } else {
                    themeResources = currentResources;
                }
            }
        }
        resetOldPolicy(oldPolicy);
        return themeResources;
    }

    public static ThemeResourcesPackage getTopLevelThemeResources(MiuiResources resources, String packageName) {
        ThemeResourcesPackage themeResources = null;
        boolean needProvisionTheme = ThemeResources.needProvisionTheme();
        int i = 0;
        while (i < THEME_PATHS.length) {
            if (needProvisionTheme || !ThemeResources.PROVISION_THEME_PATH.equals(THEME_PATHS[i].mThemePath)) {
                themeResources = new ThemeResourcesPackage(themeResources, resources, packageName, THEME_PATHS[i]);
            }
            i++;
        }
        if ((resources.getConfiguration().uiMode & 32) != 0) {
            themeResources.setNightModeEnable(true);
        }
        return themeResources;
    }

    protected ThemeResourcesPackage(ThemeResourcesPackage wrapped, MiuiResources resources, String packageName, MetaData metaData) {
        super(wrapped, resources, packageName, metaData);
    }

    public boolean getThemeFile(ThemeFileInfoOption info) {
        if (!ThemeResources.isAppResourceCookie(info.inCookie)) {
            return loadFrameworkThemeFile(info);
        }
        if (super.getThemeFile(info)) {
            return true;
        }
        if (!this.mPackageZipFile.isValid()) {
            return false;
        }
        List<FallbackInfo> fList = ThemeCompatibility.getMayFilterFallbackList(this.mPackageName, ResourceType.DRAWABLE, info.inResourcePath);
        if (fList != null) {
            for (FallbackInfo fallback : fList) {
                if (loadAppThemeFileFromMiuiFramework(info, fallback)) {
                    return true;
                }
            }
        }
        Iterator it = getFilterInfos().iterator();
        while (it.hasNext()) {
            FilterInfo filter = (FilterInfo) it.next();
            if (filter.match(this.mPackageName, this.mNightMode)) {
                if (loadAppThemeFileFromMiuiFramework(info, (FallbackInfo) filter.mFallback.mFallbackInfoMap.get(ThemeToolUtils.getNameFromPath(info.inResourcePath)))) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean loadAppThemeFileFromMiuiFramework(ThemeFileInfoOption info, FallbackInfo fallback) {
        if (fallback == null || fallback.mResType != ResourceType.DRAWABLE || !"miui".equals(fallback.mResFallbackPkgName) || !info.inResourcePath.endsWith(fallback.mResOriginalName)) {
            return false;
        }
        int backupCookie = info.inCookie;
        String backupPath = info.inResourcePath;
        info.inCookie = sCookieMiuiFramework;
        info.inResourcePath = backupPath.replace(fallback.mResOriginalName, fallback.mResFallbackName);
        boolean result = loadFrameworkThemeFile(info);
        info.inResourcePath = backupPath;
        info.inCookie = backupCookie;
        return result;
    }

    private boolean loadFrameworkThemeFile(ThemeFileInfoOption info) {
        if (this.mPackageZipFile.isValid()) {
            String backup;
            if (ThemeResources.isMiuiResourceCookie(info.inCookie)) {
                List<FallbackInfo> fList = ThemeCompatibility.getMayFilterFallbackList("miui", ResourceType.DRAWABLE, info.inResourcePath);
                if (fList != null) {
                    backup = info.inResourcePath;
                    for (FallbackInfo fallback : fList) {
                        if (this.mPackageName.equals(fallback.mResFallbackPkgName) && backup.endsWith(fallback.mResOriginalName)) {
                            info.inResourcePath = backup.replace(fallback.mResOriginalName, fallback.mResFallbackName);
                            boolean result = super.getThemeFileNonFallback(info);
                            info.inResourcePath = backup;
                            if (result) {
                                return true;
                            }
                        }
                    }
                }
            }
            boolean result2 = false;
            backup = info.inResourcePath;
            StringBuilder stringBuilder;
            if (sCookieFramework == info.inCookie) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("framework-res/");
                stringBuilder.append(backup);
                info.inResourcePath = stringBuilder.toString();
                result2 = super.getThemeFile(info, this.mPackageName, ThemeResources.FRAMEWORK_PACKAGE);
            } else if (ThemeResources.isMiuiResourceCookie(info.inCookie)) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("framework-miui-res/");
                stringBuilder.append(backup);
                info.inResourcePath = stringBuilder.toString();
                result2 = super.getThemeFile(info, this.mPackageName, "miui");
            }
            info.inResourcePath = backup;
            if (result2) {
                info.outFilterPath = "package/only";
                return true;
            }
        }
        return ThemeResources.getSystem().getThemeFile(info, this.mPackageName);
    }

    public void mergeThemeValues(String filterKey, ThemeValues values) {
        ThreadPolicy oldPolicy = allowDiskReads();
        if (this.mIsTop) {
            ThemeResources.getSystem().mergeThemeValues(filterKey, values);
        }
        super.mergeThemeValues(filterKey, values);
        resetOldPolicy(oldPolicy);
    }

    private static ThreadPolicy allowDiskReads() {
        if (Process.myUid() == 0) {
            return null;
        }
        ThreadPolicy oldPolicy = StrictMode.allowThreadDiskReads();
        StrictMode.allowThreadDiskWrites();
        return oldPolicy;
    }

    private static void resetOldPolicy(ThreadPolicy oldPolicy) {
        if (Process.myUid() != 0) {
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }
}
