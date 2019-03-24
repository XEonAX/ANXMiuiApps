package miui.content.res;

import android.content.res.MiuiResources;
import android.content.res.MiuiResources.ThemeFileInfoOption;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.miui.internal.content.res.ThemeDensityFallbackUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class ThemeResourcesSystem extends ThemeResources {
    private static final String ADVANCE_LOCKSCREEN_NAME = "advance/";
    private static ThemeResources sIcons;
    private static ThemeResources sLockscreen;
    private static ThemeResources sMiui;
    private static long sUpdatedTimeIcon;
    private static long sUpdatedTimeLockscreen;
    private String mThemePath;

    static ThemeResourcesSystem getTopLevelThemeResources(MiuiResources resources) {
        ThemeResourcesSystem frameworkResource;
        sIsZygote = true;
        if (ThemeCompatibility.isThemeEnabled()) {
            sIcons = ThemeResources.getTopLevelThemeResources(resources, "icons");
            sLockscreen = ThemeResources.getTopLevelThemeResources(resources, "lockscreen");
            sMiui = ThemeResources.getTopLevelThemeResources(resources, ThemeResources.MIUI_NAME);
            boolean needProvisionTheme = ThemeResources.needProvisionTheme();
            frameworkResource = null;
            ThemeResourcesSystem frameworkResource2 = null;
            while (frameworkResource2 < THEME_PATHS.length) {
                if (needProvisionTheme || !ThemeResources.PROVISION_THEME_PATH.equals(THEME_PATHS[frameworkResource2].mThemePath)) {
                    frameworkResource = new ThemeResourcesSystem(frameworkResource, resources, ThemeResources.FRAMEWORK_NAME, THEME_PATHS[frameworkResource2]);
                }
                frameworkResource2++;
            }
        } else {
            sIcons = ThemeResourcesEmpty.sInstance;
            sLockscreen = ThemeResourcesEmpty.sInstance;
            sMiui = ThemeResourcesEmpty.sInstance;
            frameworkResource = new ThemeResourcesSystem(null, resources, "FakeForEmpty", THEME_PATHS[0]);
        }
        sIsZygote = false;
        if ((resources.getConfiguration().uiMode & 32) != 0) {
            frameworkResource.setNightModeEnable(true);
        }
        return frameworkResource;
    }

    public void setNightModeEnable(boolean enable) {
        super.setNightModeEnable(enable);
        sMiui.setNightModeEnable(enable);
    }

    protected ThemeResourcesSystem(ThemeResourcesSystem wrapped, MiuiResources resources, String componentName, MetaData metaData) {
        super(wrapped, resources, componentName, metaData);
        this.mThemePath = metaData.mThemePath;
    }

    public long checkUpdate() {
        if (!sIsZygote) {
            super.checkUpdate();
            if (this.mIsTop) {
                long updatedTime = sIcons.checkUpdate();
                if (sUpdatedTimeIcon < updatedTime) {
                    sUpdatedTimeIcon = updatedTime;
                    IconCustomizer.clearCache();
                }
                updatedTime = sLockscreen.checkUpdate();
                if (sUpdatedTimeLockscreen < updatedTime) {
                    sUpdatedTimeLockscreen = updatedTime;
                    if (!hasAwesomeLockscreen()) {
                        new File("/data/system/theme/lockscreen").delete();
                        sUpdatedTimeLockscreen = sLockscreen.checkUpdate();
                    }
                }
                this.mUpdatedTime = Math.max(this.mUpdatedTime, sUpdatedTimeLockscreen);
                this.mUpdatedTime = Math.max(this.mUpdatedTime, sMiui.checkUpdate());
            }
        }
        return this.mUpdatedTime;
    }

    public boolean getThemeFile(ThemeFileInfoOption info, String filterKey) {
        if (ThemeResources.isMiuiResourceCookie(info.inCookie)) {
            return sMiui.getThemeFile(info, filterKey);
        }
        return getThemeFileStreamSystem(info, filterKey);
    }

    private boolean getThemeFileStreamSystem(ThemeFileInfoOption info, String filterKey) {
        if (!ThemeCompatibility.isThemeEnabled()) {
            return false;
        }
        if (info.inResourcePath.endsWith("sym_def_app_icon.png")) {
            return getIcon(info, "sym_def_app_icon.png");
        }
        if (info.inResourcePath.endsWith("default_wallpaper.jpg")) {
            return false;
        }
        return super.getThemeFile(info, filterKey);
    }

    public void mergeThemeValues(String filterKey, ThemeValues values) {
        super.mergeThemeValues(filterKey, values);
        if (this.mIsTop) {
            sMiui.mergeThemeValues(filterKey, values);
            sLockscreen.mergeThemeValues(filterKey, values);
        }
    }

    public void resetIcons() {
        sIcons.checkUpdate();
    }

    public void resetLockscreen() {
        sLockscreen.checkUpdate();
    }

    public boolean hasIcon(String name) {
        return sIcons.hasThemeFile(name);
    }

    public InputStream getIconStream(String name, long[] size) {
        return sIcons.getThemeStream(name, size);
    }

    public Bitmap getIconBitmap(String name) {
        ThemeFileInfoOption info = new ThemeFileInfoOption(true);
        if (!getIcon(info, name)) {
            return null;
        }
        Bitmap icon = null;
        try {
            icon = BitmapFactory.decodeStream(info.outInputStream);
            if (icon != null) {
                icon.setDensity(info.outDensity);
            }
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        try {
            info.outInputStream.close();
        } catch (IOException e2) {
        }
        return icon;
    }

    private boolean getIcon(ThemeFileInfoOption info, String name) {
        if (!ThemeCompatibility.isThemeEnabled()) {
            return false;
        }
        int density = Resources.getSystem().getConfiguration().densityDpi;
        int screenWidthDp = Resources.getSystem().getConfiguration().smallestScreenWidthDp;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("res/drawable");
        stringBuilder.append(ThemeDensityFallbackUtils.getScreenWidthSuffix(Resources.getSystem().getConfiguration()));
        stringBuilder.append(ThemeDensityFallbackUtils.getDensitySuffix(density));
        stringBuilder.append("/");
        stringBuilder.append(name);
        info.inResourcePath = stringBuilder.toString();
        info.inDensity = density;
        if (sIcons.getThemeFile(info)) {
            return true;
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append("res/drawable");
        stringBuilder.append(ThemeDensityFallbackUtils.getDensitySuffix(density));
        stringBuilder.append("/");
        stringBuilder.append(name);
        info.inResourcePath = stringBuilder.toString();
        if (sIcons.getThemeFile(info)) {
            return true;
        }
        info.inResourcePath = name;
        info.inDensity = 240;
        return sIcons.getThemeFile(info);
    }

    public File getLockscreenWallpaper() {
        String path = this.mThemePath;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(path);
        stringBuilder.append(ThemeResources.LOCKSCREEN_WALLPAPER_NAME);
        File ret = new File(stringBuilder.toString());
        if (ret.exists() || this.mWrapped == null) {
            return ret;
        }
        return ((ThemeResourcesSystem) this.mWrapped).getLockscreenWallpaper();
    }

    private boolean hasAwesomeLockscreen() {
        return sLockscreen.hasThemeFile("advance/manifest.xml");
    }

    public boolean containsAwesomeLockscreenEntry(String entry) {
        ThemeResources themeResources = sLockscreen;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ADVANCE_LOCKSCREEN_NAME);
        stringBuilder.append(entry);
        return themeResources.hasThemeFile(stringBuilder.toString());
    }

    public InputStream getAwesomeLockscreenFileStream(String name, long[] size) {
        ThemeResources themeResources = sLockscreen;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ADVANCE_LOCKSCREEN_NAME);
        stringBuilder.append(name);
        return themeResources.getThemeStream(stringBuilder.toString(), size);
    }
}
