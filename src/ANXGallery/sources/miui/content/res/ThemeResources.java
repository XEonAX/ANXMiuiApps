package miui.content.res;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.MiuiResources;
import android.content.res.MiuiResources.ThemeFileInfoOption;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.miui.ResourcesManager;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import com.miui.internal.content.res.ThemeFallback;
import com.miui.internal.content.res.ThemeToolUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import miui.graphics.BitmapFactory;
import miui.os.C0015Build;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ThemeResources {
    private static final String ATTR_FILTER_PATH = "path";
    static boolean DBG = false;
    public static final String DISABLE_PROVISION_THEME;
    private static final String FILTER_DESCRIPTION_FILE = "filters.xml";
    public static final String FRAMEWORK_NAME = "framework-res";
    public static final String FRAMEWORK_PACKAGE = "android";
    public static final String ICONS_NAME = "icons";
    public static final String LANGUAGE_THEME_PATH = "/data/system/language/";
    public static final String LOCKSCREEN_NAME = "lockscreen";
    public static final String LOCKSCREEN_WALLPAPER_NAME = "lock_wallpaper";
    public static final String MIUI_NAME = "framework-miui-res";
    public static final String MIUI_PACKAGE = "miui";
    public static final String PROVISION_THEME_PATH = "/system/media/theme/provision/";
    public static final String SYSTEMUI_NAME = "com.android.systemui";
    public static final String SYSTEM_LANGUAGE_THEME_PATH = "/system/language/";
    public static final String SYSTEM_THEME_PATH = "/system/media/theme/default/";
    private static final String TAG_FILTER = "filter";
    private static final String TAG_PACKAGE = "package";
    public static final String THEME_DATA_CONFIG_DIR_PATH = "/data/system/theme_config/";
    public static final String THEME_MAGIC_PATH = (VERSION.SDK_INT > 22 ? "/data/system/theme_magic/" : "/data/system/");
    public static final String THEME_PATH = "/data/system/theme/";
    public static final MetaData[] THEME_PATHS = new MetaData[]{new MetaData(SYSTEM_THEME_PATH, true, true), new MetaData(PROVISION_THEME_PATH, true, true), new MetaData("/data/system/theme/", true, true)};
    public static final String THEME_RIGHTS_PATH = "/data/system/theme/rights/";
    public static final String THEME_VERSION_COMPATIBILITY_PATH = "/data/system/theme/compatibility-v10/";
    public static final String WALLPAPER_NAME = "wallpaper";
    public static final String sAppliedLockstyleConfigPath = "/data/system/theme/config.config";
    protected static int sCookieFramework = -1;
    protected static int sCookieMiuiExtFramework = -1;
    protected static int sCookieMiuiFramework = -1;
    protected static int sCookieMiuiSdk = -1;
    private static boolean sHasUpdatedAfterZygote = false;
    protected static boolean sIsZygote = false;
    private static Drawable sLockWallpaperCache;
    private static long sLockWallpaperModifiedTime;
    private static ThemeResourcesSystem sSystem;
    private ArrayList<FilterInfo> mFilterInfos = new ArrayList();
    protected boolean mIsTop = true;
    protected boolean mIsUserThemePath = false;
    private LoadThemeConfigHelper mLoadThemeValuesCallback = new LoadThemeConfigHelper();
    protected MetaData mMetaData;
    protected boolean mNightMode;
    protected String mPackageName;
    protected ThemeZipFile mPackageZipFile;
    protected MiuiResources mResources;
    protected boolean mShouldFallbackDeeper;
    protected boolean mSupportWrapper;
    protected long mUpdatedTime;
    protected ThemeResources mWrapped;

    public enum ConfigType {
        THEME_VALUES,
        THEME_FALLBACK
    }

    protected static class FilterInfo {
        public ThemeFallback mFallback;
        public boolean mNightMode;
        public HashSet<String> mPackages;
        public String mPath;
        public ThemeValues mValues;

        public FilterInfo(String path, HashSet<String> packages) {
            this(path, packages, false);
        }

        public FilterInfo(String path, HashSet<String> packages, boolean nightMode) {
            this.mValues = new ThemeValues();
            this.mFallback = new ThemeFallback();
            this.mPath = path;
            this.mPackages = packages;
            this.mNightMode = nightMode;
        }

        public boolean match(String packageName, boolean nightMode) {
            return (this.mPackages == null || this.mPackages.contains(packageName)) && this.mNightMode == nightMode;
        }
    }

    public interface LoadThemeConfigCallback {
        void load(InputStream inputStream, ConfigType configType);
    }

    private class LoadThemeConfigHelper implements LoadThemeConfigCallback {
        private FilterInfo mFilter;

        private LoadThemeConfigHelper() {
        }

        public void newTarget(FilterInfo filter) {
            this.mFilter = filter;
            ThemeResources.this.mPackageZipFile.loadThemeConfig(this, filter.mPath);
        }

        public void load(InputStream is, ConfigType type) {
            if (is == null) {
                return;
            }
            if (type == ConfigType.THEME_VALUES) {
                this.mFilter.mValues = ThemeValues.parseThemeValues(ThemeResources.this.mResources, is, ThemeResources.this.mPackageName);
            } else if (type == ConfigType.THEME_FALLBACK) {
                this.mFilter.mFallback = ThemeFallback.parseThemeFallback(ThemeResources.this.mResources, is, ThemeResources.this.mPackageName);
            }
        }
    }

    protected static final class MetaData {
        public boolean mSupportFile;
        public boolean mSupportValue;
        public String mThemePath;

        public MetaData(String themePath, boolean supportValue, boolean supportFile) {
            this.mThemePath = themePath;
            this.mSupportValue = supportValue;
            this.mSupportFile = supportFile;
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(THEME_MAGIC_PATH);
        stringBuilder.append("disable_provision_theme");
        DISABLE_PROVISION_THEME = stringBuilder.toString();
    }

    public static boolean needProvisionTheme() {
        return "scorpio".equals(C0015Build.DEVICE) && !new File(DISABLE_PROVISION_THEME).exists();
    }

    public static ThemeResourcesSystem getSystem() {
        if (!(sIsZygote || sHasUpdatedAfterZygote || sSystem == null)) {
            sSystem.checkUpdate();
            sHasUpdatedAfterZygote = true;
        }
        return sSystem;
    }

    public static ThemeResources getSystem(MiuiResources resources) {
        if (sSystem == null) {
            sSystem = ThemeResourcesSystem.getTopLevelThemeResources(resources);
        }
        return sSystem;
    }

    public static ThemeResources getTopLevelThemeResources(MiuiResources resources, String componentName) {
        ThemeResources themeResources = null;
        boolean needProvisionTheme = needProvisionTheme();
        int i = 0;
        while (i < THEME_PATHS.length) {
            if (needProvisionTheme || !PROVISION_THEME_PATH.equals(THEME_PATHS[i].mThemePath)) {
                themeResources = new ThemeResources(themeResources, resources, componentName, THEME_PATHS[i]);
            }
            i++;
        }
        return themeResources;
    }

    private static final String getPackageName(String componentName) {
        if (FRAMEWORK_NAME.equals(componentName) || "icons".equals(componentName)) {
            return FRAMEWORK_PACKAGE;
        }
        if (MIUI_NAME.equals(componentName) || "lockscreen".equals(componentName)) {
            return "miui";
        }
        return componentName;
    }

    protected ThemeResources(ThemeResources wrapped, MiuiResources resources, String componentName, MetaData metaData) {
        boolean z = true;
        initSystemCookies(resources);
        if (wrapped != null) {
            this.mWrapped = wrapped;
            wrapped.mIsTop = false;
        }
        this.mResources = resources;
        this.mPackageName = getPackageName(componentName);
        this.mMetaData = metaData;
        this.mIsUserThemePath = "/data/system/theme/".equals(metaData.mThemePath);
        this.mPackageZipFile = ThemeZipFile.getThemeZipFile(metaData, componentName);
        if ("icons".equals(componentName) || "lockscreen".equals(componentName)) {
            z = false;
        }
        this.mSupportWrapper = z;
        checkUpdate();
    }

    public long checkUpdate() {
        if (!sIsZygote) {
            long updatedTime = this.mPackageZipFile.checkUpdate();
            if (this.mUpdatedTime != updatedTime) {
                this.mUpdatedTime = updatedTime;
                initBasePaths();
                loadThemeValues();
            }
            boolean z = this.mWrapped != null && (this.mSupportWrapper || !this.mPackageZipFile.isValid());
            this.mShouldFallbackDeeper = z;
            if (this.mShouldFallbackDeeper) {
                if (PROVISION_THEME_PATH.equals(this.mWrapped.mMetaData.mThemePath) && !needProvisionTheme()) {
                    this.mWrapped = this.mWrapped.mWrapped;
                    this.mUpdatedTime = Math.max(this.mUpdatedTime, System.currentTimeMillis());
                }
                this.mUpdatedTime = Math.max(this.mUpdatedTime, this.mWrapped.checkUpdate());
            }
        }
        return this.mUpdatedTime;
    }

    public void setNightModeEnable(boolean enable) {
        this.mNightMode = enable;
        if (this.mShouldFallbackDeeper) {
            this.mWrapped.setNightModeEnable(enable);
        }
    }

    protected ArrayList<FilterInfo> getFilterInfos() {
        return this.mFilterInfos;
    }

    public InputStream getThemeStream(String name, long[] size) {
        ThemeFileInfoOption info = new ThemeFileInfoOption(-1, name, true);
        if (getThemeFile(info) && size != null) {
            size[0] = info.outSize;
        }
        return info.outInputStream;
    }

    public boolean hasThemeFile(String path) {
        return getThemeFile(new ThemeFileInfoOption(-1, path, false), this.mPackageName);
    }

    public boolean getThemeFile(ThemeFileInfoOption info) {
        return getThemeFile(info, this.mPackageName);
    }

    protected boolean getThemeFileNonFallback(ThemeFileInfoOption info) {
        return getThemeFileWithPath(info, this.mPackageName);
    }

    public boolean getThemeFile(ThemeFileInfoOption info, String filterKey) {
        return getThemeFile(info, filterKey, this.mPackageName);
    }

    protected boolean getThemeFile(ThemeFileInfoOption info, String filterKey, String fallbackPkgName) {
        if (getThemeFileWithPath(info, filterKey)) {
            return true;
        }
        return getThemeFileWithFallback(info, filterKey, fallbackPkgName);
    }

    private boolean getThemeFileWithFallback(ThemeFileInfoOption info, String filterKey, String fallbackPkgName) {
        ThemeFileInfoOption themeFileInfoOption = info;
        if (this.mIsUserThemePath && this.mPackageZipFile.isValid()) {
            List<FallbackInfo> compatiblityFallback = ThemeCompatibility.getMayFilterFallbackList(fallbackPkgName, ResourceType.DRAWABLE, themeFileInfoOption.inResourcePath);
            if (compatiblityFallback != null) {
                String backup = themeFileInfoOption.inResourcePath;
                for (FallbackInfo fallback : compatiblityFallback) {
                    if (fallback.mResType == ResourceType.DRAWABLE && fallback.mResFallbackPkgName == null) {
                        themeFileInfoOption.inResourcePath = getFallbackDrawablePath(backup, fallback.mResOriginalName, fallback.mResFallbackName);
                        if (themeFileInfoOption.inResourcePath != null) {
                            if (fallback.mResPreferredConfigs != null) {
                                String prefix = null;
                                String suffix = null;
                                for (String config : fallback.mResPreferredConfigs) {
                                    int index = themeFileInfoOption.inResourcePath.indexOf(config);
                                    if (index > 0) {
                                        prefix = themeFileInfoOption.inResourcePath.substring(0, index);
                                        suffix = themeFileInfoOption.inResourcePath.substring(config.length() + index);
                                        break;
                                    }
                                }
                                if (prefix != null) {
                                    for (String config2 : fallback.mResPreferredConfigs) {
                                        StringBuilder stringBuilder = new StringBuilder();
                                        stringBuilder.append(prefix);
                                        stringBuilder.append(config2);
                                        stringBuilder.append(suffix);
                                        themeFileInfoOption.inResourcePath = stringBuilder.toString();
                                        if (getThemeFileWithPath(info, filterKey)) {
                                            themeFileInfoOption.inResourcePath = backup;
                                            return true;
                                        }
                                    }
                                }
                            } else if (getThemeFileWithPath(info, filterKey)) {
                                themeFileInfoOption.inResourcePath = backup;
                                return true;
                            }
                        }
                    }
                }
                themeFileInfoOption.inResourcePath = backup;
            }
            return false;
        }
        String str = fallbackPkgName;
        return false;
    }

    private static String getFallbackDrawablePath(String resourcePath, String originalName, String fallbackName) {
        int resPathIndex = resourcePath.lastIndexOf(47) + 1;
        int i = 0;
        int j = 0;
        while (resPathIndex + i < resourcePath.length() && j < originalName.length()) {
            char resCh = resourcePath.charAt(resPathIndex + i);
            if (resCh != originalName.charAt(j)) {
                return null;
            }
            if (resCh == '.') {
                break;
            }
            i++;
            j++;
        }
        FixedSizeStringBuffer buffer = FixedSizeStringBuffer.getBuffer();
        buffer.assign(resourcePath, resPathIndex);
        buffer.append(fallbackName);
        String ret = buffer.toString();
        FixedSizeStringBuffer.freeBuffer(buffer);
        return ret;
    }

    private boolean getThemeFileWithPath(ThemeFileInfoOption info, String filterKey) {
        if (this.mPackageZipFile.isValid()) {
            ArrayList<FilterInfo> filterInfos = getFilterInfos();
            for (int i = filterInfos.size() - 1; i >= 0; i--) {
                FilterInfo filter = (FilterInfo) filterInfos.get(i);
                if (filter.match(filterKey, this.mNightMode)) {
                    info.outFilterPath = filter.mPath;
                    if (this.mPackageZipFile.getThemeFile(info)) {
                        return true;
                    }
                    String originName = ThemeToolUtils.getNameFromPath(info.inResourcePath);
                    FallbackInfo fallback = (FallbackInfo) filter.mFallback.mFallbackInfoMap.get(originName);
                    if (fallback != null && fallback.mResType == ResourceType.DRAWABLE && this.mPackageName.equals(fallback.mResFallbackPkgName)) {
                        String backup = info.inResourcePath;
                        info.inResourcePath = backup.replace(originName, fallback.mResFallbackName);
                        boolean result = this.mPackageZipFile.getThemeFile(info);
                        info.inResourcePath = backup;
                        if (result) {
                            return true;
                        }
                    }
                }
            }
            info.outFilterPath = null;
        }
        return this.mShouldFallbackDeeper ? this.mWrapped.getThemeFile(info, filterKey) : false;
    }

    public void mergeThemeValues(String filterKey, ThemeValues values) {
        if (this.mShouldFallbackDeeper) {
            this.mWrapped.mergeThemeValues(filterKey, values);
        }
        if (this.mMetaData.mSupportValue) {
            boolean updateValues = false;
            ArrayList<FilterInfo> filterInfos = getFilterInfos();
            for (int i = 0; i < filterInfos.size(); i++) {
                FilterInfo filter = (FilterInfo) filterInfos.get(i);
                if (filter.match(filterKey, this.mNightMode) && !filter.mValues.isEmpty()) {
                    values.putAll(filter.mValues);
                    updateValues = true;
                }
            }
            if (updateValues) {
                values.mergeNewDefaultValueIfNeed(this.mResources, this.mPackageName);
            }
        }
    }

    private void loadThemeValues() {
        ArrayList<FilterInfo> filterInfos = getFilterInfos();
        for (int i = 0; i < filterInfos.size(); i++) {
            this.mLoadThemeValuesCallback.newTarget((FilterInfo) filterInfos.get(i));
        }
    }

    private List<FilterInfo> getFilterInfos(boolean isNightMode) {
        boolean z = isNightMode;
        ArrayList<FilterInfo> filterInfos = new ArrayList();
        String basePath = z ? "nightmode/" : "";
        filterInfos.add(new FilterInfo(basePath, null, z));
        ThemeZipFile themeZipFile = this.mPackageZipFile;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(basePath);
        stringBuilder.append(FILTER_DESCRIPTION_FILE);
        InputStream input = themeZipFile.getZipInputStream(stringBuilder.toString());
        if (input == null) {
            return filterInfos;
        }
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            NodeList filters = factory.newDocumentBuilder().parse(input).getElementsByTagName(TAG_FILTER);
            int i = 0;
            while (i < filters.getLength()) {
                DocumentBuilderFactory factory2;
                Element filter = (Element) filters.item(i);
                String path = filter.getAttribute("path");
                if (TextUtils.isEmpty(path) || path.indexOf("/") != -1) {
                    factory2 = factory;
                } else if ("res".equals(path)) {
                    factory2 = factory;
                } else {
                    NodeList packages = filter.getElementsByTagName("package");
                    HashSet<String> packageSet = new HashSet();
                    for (int j = 0; j < packages.getLength(); j++) {
                        packageSet.add(packages.item(j).getFirstChild().getNodeValue());
                    }
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(basePath);
                    stringBuilder2.append(path);
                    factory2 = factory;
                    stringBuilder2.append('/');
                    filterInfos.add(new FilterInfo(stringBuilder2.toString(), packageSet, z));
                }
                i++;
                factory = factory2;
            }
            try {
                input.close();
            } catch (IOException e) {
            }
        } catch (Exception e2) {
            input.close();
        } catch (Throwable th) {
            Throwable th2 = th;
            try {
                input.close();
            } catch (IOException e3) {
            }
        }
        return filterInfos;
    }

    private void initBasePaths() {
        ArrayList<FilterInfo> filterInfos = new ArrayList();
        filterInfos.addAll(getFilterInfos(false));
        filterInfos.addAll(getFilterInfos(true));
        this.mFilterInfos = filterInfos;
    }

    private static void initSystemCookies(Resources resources) {
        if (resources != null) {
            if (VERSION.SDK_INT > 27) {
                AssetManager assetManager = resources.getAssets();
                int cookieFramework = AssetManagerUtil.findCookieForPath(assetManager, "/system/framework/framework-res.apk");
                if (cookieFramework > 0) {
                    sCookieFramework = cookieFramework;
                }
                int cookieMiuiExtFramework = AssetManagerUtil.findCookieForPath(assetManager, ResourcesManager.FRAMEWORK_EXT_RES_PATH);
                if (cookieMiuiExtFramework > 0) {
                    sCookieMiuiExtFramework = cookieMiuiExtFramework;
                }
                int miuiFrameworkCookie = AssetManagerUtil.findCookieForPath(assetManager, ResourcesManager.MIUI_FRAMEWORK_RES_PATH);
                if (miuiFrameworkCookie > 0) {
                    sCookieMiuiFramework = miuiFrameworkCookie;
                } else if (AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.system-1.apk") > 0) {
                    sCookieMiuiFramework = AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.system-1.apk");
                } else if (AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.system-2.apk") > 0) {
                    sCookieMiuiFramework = AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.system-2.apk");
                }
                int miuiSDKCookie = AssetManagerUtil.findCookieForPath(assetManager, ResourcesManager.MIUI_SDK_RES_PATH);
                if (miuiSDKCookie > 0) {
                    sCookieMiuiSdk = miuiSDKCookie;
                } else if (AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.core-1.apk") > 0) {
                    sCookieMiuiSdk = AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.core-1.apk");
                } else if (AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.core-2.apk") > 0) {
                    sCookieMiuiSdk = AssetManagerUtil.findCookieForPath(assetManager, "/data/app/com.miui.core-2.apk");
                }
            } else {
                for (int cookie = 0; cookie < 100 && (sCookieFramework < 0 || sCookieMiuiExtFramework < 0 || sCookieMiuiFramework < 0 || sCookieMiuiSdk < 0); cookie++) {
                    try {
                        String name = AssetManagerUtil.getCookieName(resources.getAssets(), cookie);
                        if ("/system/framework/framework-res.apk".equals(name)) {
                            sCookieFramework = cookie;
                        } else if (ResourcesManager.isMiuiExtFrameworkPath(name)) {
                            sCookieMiuiExtFramework = cookie;
                        } else if (ResourcesManager.isMiuiSystemSdkPath(name)) {
                            sCookieMiuiFramework = cookie;
                        } else if (ResourcesManager.isMiuiSdkPath(name)) {
                            sCookieMiuiSdk = cookie;
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    protected static boolean isMiuiResourceCookie(int cookie) {
        return cookie == sCookieMiuiSdk || cookie == sCookieMiuiFramework || cookie == sCookieMiuiExtFramework;
    }

    public static boolean isAppResourceCookie(int cookie) {
        return (sCookieFramework == cookie || isMiuiResourceCookie(cookie)) ? false : true;
    }

    public static final void clearLockWallpaperCache() {
        sLockWallpaperModifiedTime = 0;
        sLockWallpaperCache = null;
    }

    private static void getRealSize(Display display, Point outPoint) {
        try {
            Display.class.getDeclaredMethod("getRealSize", new Class[]{Point.class, Boolean.TYPE}).invoke(display, new Object[]{outPoint, Boolean.valueOf(true)});
        } catch (Exception e) {
            Log.e("LockWallpaper", "no getRealSize hack method");
            display.getRealSize(outPoint);
        }
    }

    public static final Drawable getLockWallpaperCache(Context context) {
        File file = sSystem.getLockscreenWallpaper();
        if (file == null || !file.exists()) {
            return null;
        }
        if (sLockWallpaperModifiedTime == file.lastModified()) {
            return sLockWallpaperCache;
        }
        sLockWallpaperCache = null;
        try {
            Display display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point size = new Point();
            getRealSize(display, size);
            int width = size.x;
            int height = size.y;
            if (width > height) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Wrong display metrics for width = ");
                stringBuilder.append(width);
                stringBuilder.append(" and height = ");
                stringBuilder.append(height);
                Log.e("LockWallpaper", stringBuilder.toString());
                int tmp = width;
                width = height;
                height = tmp;
            }
            Bitmap bitmap = BitmapFactory.decodeBitmap(file.getAbsolutePath(), width, height, false);
            if (bitmap != null) {
                sLockWallpaperCache = new BitmapDrawable(context.getResources(), bitmap);
                sLockWallpaperModifiedTime = file.lastModified();
            }
        } catch (Exception e) {
            Log.e("ThemeResources", e.getMessage(), e);
        } catch (OutOfMemoryError error) {
            Log.e("ThemeResources", error.getMessage(), error);
        }
        return sLockWallpaperCache;
    }
}
