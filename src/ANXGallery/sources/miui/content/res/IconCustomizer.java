package miui.content.res;

import android.app.MiuiThemeHelper;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Build.VERSION;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.MiuiDisplayMetrics;
import android.util.TypedValue;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.system.internal.R;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import javax.xml.parsers.DocumentBuilderFactory;
import miui.graphics.BitmapFactory;
import miui.graphics.BitmapUtil;
import miui.imagefilters.IImageFilter;
import miui.imagefilters.IImageFilter.ImageFilterGroup;
import miui.imagefilters.ImageData;
import miui.imagefilters.ImageFilterBuilder;
import miui.imagefilters.ImageFilterBuilder.NoSupportException;
import miui.io.FileStat;
import miui.os.C0015Build;
import miui.theme.ThemeFileUtils;
import miui.util.AppConstants;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class IconCustomizer {
    private static final String ANIMATING_ICONS_INNER_PATH = "animating_icons/";
    public static final String CUSTOMIZED_ICON_PATH = FINAL_MOD_ICONS;
    private static final String FANCY_ICONS_INNER_PATH = "fancy_icons/";
    private static final String FINAL_MOD_ICONS;
    private static final String FINAL_MOD_ICONS_MIUI_VERSION;
    private static final String ICON_NAME_SUFFIX = ".png";
    private static final String ICON_TRANSFORM_CONFIG = "transform_config.xml";
    private static final String LOG_TAG = "IconCustomizer";
    private static final String MIUI_MOD_BUILT_IN_ICONS = "/system/media/theme/miui_mod_icons/";
    private static final int sAlphaShift = 24;
    private static final int sAlphaThreshold = 50;
    private static final Canvas sCanvas = new Canvas();
    private static final int sColorByteSize = 4;
    private static final int sColorShift = 8;
    private static int sCustomizedIconContentHeight = -1;
    private static int sCustomizedIconContentWidth = -1;
    private static int sCustomizedIconHeight = -1;
    private static int sCustomizedIconWidth = -1;
    private static int sCustomizedIrregularContentHeight = -1;
    private static int sCustomizedIrregularContentWidth = -1;
    private static volatile Paint sCutPaint = null;
    private static Map<String, WeakReference<Bitmap>> sIconCache = new HashMap();
    private static volatile IconConfig sIconConfig = null;
    private static Map<String, String> sIconMapping = new HashMap();
    private static Matrix sIconTransformMatrix = null;
    private static boolean sIconTransformNeeded = false;
    private static final float sMaxContentRatio = 2.0f;
    private static Paint sPaintForTransformBitmap = new Paint(3);
    private static final int sRGBMask = 16777215;
    private static Map<String, SoftReference<Bitmap>> sRawIconCache = new HashMap();
    private static volatile ThemeRuntimeManager sThemeRuntimeManager;

    public interface CustomizedIconsListener {
        void beforePrepareIcon(int i);

        void finishAllIcons();

        void finishPrepareIcon(int i);
    }

    private static class IconConfig {
        float mCameraX;
        float mCameraY;
        ImageFilterGroup mIconFilters;
        int mOverridedIrregularContentHeight;
        int mOverridedIrregularContentWidth;
        float[] mPointsMappingFrom;
        float[] mPointsMappingTo;
        float mRotateX;
        float mRotateY;
        float mRotateZ;
        float mScaleX;
        float mScaleY;
        float mSkewX;
        float mSkewY;
        float mTransX;
        float mTransY;
        boolean mUseModIcon;

        private IconConfig() {
            this.mScaleX = 1.0f;
            this.mScaleY = 1.0f;
            this.mUseModIcon = true;
        }

        /* synthetic */ IconConfig(AnonymousClass1 x0) {
            this();
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ThemeResources.THEME_MAGIC_PATH);
        stringBuilder.append("customized_icons/");
        FINAL_MOD_ICONS = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(FINAL_MOD_ICONS);
        stringBuilder.append("miui_version");
        FINAL_MOD_ICONS_MIUI_VERSION = stringBuilder.toString();
        sCanvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        sIconMapping.put("com.android.contacts.activities.TwelveKeyDialer.png", "com.android.contacts.TwelveKeyDialer.png");
        sIconMapping.put("com.miui.weather2.png", "com.miui.weather.png");
        sIconMapping.put("com.miui.gallery.png", "com.android.gallery.png");
        sIconMapping.put("com.android.gallery3d.png", "com.cooliris.media.png");
        sIconMapping.put("com.xiaomi.market.png", "com.miui.supermarket.png");
        sIconMapping.put("com.wali.miui.networkassistant.png", "com.android.monitor.png");
        sIconMapping.put("com.xiaomi.scanner.png", "com.miui.barcodescanner.png");
        sIconMapping.put("com.miui.calculator.png", "com.android.calculator2.png");
        sIconMapping.put("com.android.camera.CameraEntry.png", "com.android.camera.png");
        sIconMapping.put("com.htc.album.png", "com.miui.gallery.png");
        sIconMapping.put("com.htc.fm.activity.FMRadioMain.png", "com.miui.fmradio.png");
        sIconMapping.put("com.htc.fm.FMRadio.png", "com.miui.fmradio.png");
        sIconMapping.put("com.htc.fm.png", "com.miui.fmradio.png");
        sIconMapping.put("com.sec.android.app.camera.Camera.png", "com.android.camera.png");
        sIconMapping.put("com.sec.android.app.fm.png", "com.miui.fmradio.png");
        sIconMapping.put("com.android.gallery3d#com.android.camera.CameraLauncher.png", "com.android.camera.png");
        sIconMapping.put("com.android.hwcamera.png", "com.android.camera.png");
        sIconMapping.put("com.huawei.android.FMRadio.png", "com.miui.fmradio.png");
        sIconMapping.put("com.sonyericsson.android.camera.png", "com.android.camera.png");
        sIconMapping.put("com.sonyericsson.fmradio.png", "com.miui.fmradio.png");
        sIconMapping.put("com.motorola.Camera.Camera.png", "com.android.camera.png");
        sIconMapping.put("com.lge.camera.png", "com.android.camera.png");
        sIconMapping.put("com.oppo.camera.OppoCamera.png", "com.android.camera.png");
        sIconMapping.put("com.lenovo.scg#com.android.camera.CameraLauncher.png", "com.android.camera.png");
        sIconMapping.put("com.lenovo.fm.png", "com.miui.fmradio.png");
        sIconMapping.put("com.android.camera2#com.android.camera.CameraLauncher.png", "com.android.camera.png");
    }

    public static BitmapDrawable getRawIconDrawable(String filename) {
        BitmapDrawable drawable = getDrawableFromMemoryCache(filename);
        if (drawable == null) {
            drawable = getDrawble(getRawIcon(filename));
            if (drawable != null) {
                synchronized (sIconCache) {
                    sIconCache.put(filename, new WeakReference(drawable.getBitmap()));
                }
            }
        }
        return drawable;
    }

    public static Bitmap getRawIcon(String filename) {
        if (TextUtils.isEmpty(filename)) {
            return null;
        }
        Bitmap icon = getIconFromMemoryCache(filename);
        if (icon == null) {
            icon = getIconFromTheme(filename);
            if (icon == null) {
                icon = getMiuiModIcon(filename);
            }
            if (icon != null) {
                synchronized (sRawIconCache) {
                    sRawIconCache.put(filename, new SoftReference(icon));
                }
            }
        }
        return icon;
    }

    private static Bitmap getIconFromTheme(String filename) {
        if (ThemeResources.getSystem() == null) {
            return null;
        }
        return scaleBitmap(ThemeResources.getSystem().getIconBitmap(filename));
    }

    private static int getCustomizedIrregularContentWidth() {
        int ret = sCustomizedIrregularContentWidth;
        if (ret != -1) {
            return ret;
        }
        int i;
        if (sIconConfig.mOverridedIrregularContentWidth > 0) {
            i = sIconConfig.mOverridedIrregularContentWidth;
        } else {
            i = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_irregular_content_size);
        }
        ret = i;
        sCustomizedIrregularContentWidth = ret;
        return ret;
    }

    private static int getCustomizedIrregularContentHeight() {
        int ret = sCustomizedIrregularContentHeight;
        if (ret != -1) {
            return ret;
        }
        int i;
        if (sIconConfig.mOverridedIrregularContentHeight > 0) {
            i = sIconConfig.mOverridedIrregularContentHeight;
        } else {
            i = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_irregular_content_size);
        }
        ret = i;
        sCustomizedIrregularContentHeight = ret;
        return ret;
    }

    private static int getCustomizedIconContentWidth() {
        int ret = sCustomizedIconContentWidth;
        if (ret != -1) {
            return ret;
        }
        ret = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_icon_content_size);
        sCustomizedIconContentWidth = ret;
        return ret;
    }

    private static int getCustomizedIconContentHeight() {
        int ret = sCustomizedIconContentHeight;
        if (ret != -1) {
            return ret;
        }
        ret = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_icon_content_size);
        sCustomizedIconContentHeight = ret;
        return ret;
    }

    public static int getCustomizedIconWidth() {
        int ret = sCustomizedIconWidth;
        if (ret != -1) {
            return ret;
        }
        ret = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_icon_size);
        sCustomizedIconWidth = ret;
        return ret;
    }

    public static int getCustomizedIconHeight() {
        int ret = sCustomizedIconHeight;
        if (ret != -1) {
            return ret;
        }
        ret = AppConstants.getCurrentApplication().getResources().getDimensionPixelSize(R.dimen.customizer_icon_size);
        sCustomizedIconHeight = ret;
        return ret;
    }

    private static Bitmap scaleBitmap(Bitmap icon) {
        if (icon == null) {
            return null;
        }
        int density = Resources.getSystem().getConfiguration().densityDpi;
        icon.setDensity(density);
        if (icon.getWidth() == getCustomizedIconWidth() && icon.getHeight() == getCustomizedIconHeight()) {
            return icon;
        }
        float scaleReverse = Math.min(((float) icon.getWidth()) / ((float) getCustomizedIconWidth()), ((float) icon.getHeight()) / ((float) getCustomizedIconWidth())) + 0.1f;
        if (scaleReverse >= sMaxContentRatio && icon.getConfig() == Config.ARGB_8888) {
            icon = BitmapFactory.fastBlur(icon, (int) (scaleReverse - 1065353216));
        }
        Bitmap bitmap = Bitmap.createScaledBitmap(icon, getCustomizedIconWidth(), getCustomizedIconHeight(), true);
        bitmap.setDensity(density);
        return bitmap;
    }

    private static String getFileName(String packageName, String className) {
        StringBuilder stringBuilder;
        if (className == null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(packageName);
            stringBuilder.append(ICON_NAME_SUFFIX);
            return stringBuilder.toString();
        } else if (className.startsWith(packageName)) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(className);
            stringBuilder.append(ICON_NAME_SUFFIX);
            return stringBuilder.toString();
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append(packageName);
            stringBuilder.append('#');
            stringBuilder.append(className);
            stringBuilder.append(ICON_NAME_SUFFIX);
            return stringBuilder.toString();
        }
    }

    public static void clearCache() {
        clearCache(null);
    }

    public static void clearCache(String packageName) {
        if (packageName == null) {
            synchronized (sRawIconCache) {
                sRawIconCache.clear();
            }
            synchronized (sIconCache) {
                sIconCache.clear();
            }
            sIconConfig = null;
            sIconTransformNeeded = false;
            sCustomizedIrregularContentWidth = -1;
            sCustomizedIrregularContentHeight = -1;
            sCustomizedIconContentWidth = -1;
            sCustomizedIconContentHeight = -1;
            sCustomizedIconWidth = -1;
            sCustomizedIconHeight = -1;
            return;
        }
        synchronized (sIconCache) {
            Iterator<Entry<String, WeakReference<Bitmap>>> i = sIconCache.entrySet().iterator();
            while (i.hasNext()) {
                if (((String) ((Entry) i.next()).getKey()).startsWith(packageName)) {
                    i.remove();
                }
            }
        }
    }

    public static void checkModIconsTimestamp() {
        File file = new File(FINAL_MOD_ICONS);
        if (file.exists()) {
            String clearReason = null;
            try {
                if (new File(getMiuiModDownloadIconDir()).lastModified() <= FileStat.getCreatedTime(FINAL_MOD_ICONS)) {
                    File lastVersionFile = new File(FINAL_MOD_ICONS_MIUI_VERSION);
                    if (lastVersionFile.exists()) {
                        BufferedReader reader = new BufferedReader(new FileReader(lastVersionFile));
                        if (!getCustomizedIconVersionContent().equals(reader.readLine())) {
                            clearReason = "miui version update";
                        }
                        reader.close();
                    } else {
                        clearReason = "miui version flag miss";
                    }
                } else {
                    clearReason = "mod download icon update";
                }
            } catch (Exception e) {
                clearReason = "miui version read exception";
                e.printStackTrace();
            }
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("check time stamp: ");
            stringBuilder.append(clearReason);
            Log.d(str, stringBuilder.toString());
            if (clearReason != null) {
                ThemeNativeUtils.deleteContents(file.getPath());
                clearCache();
            }
        }
        if (!file.exists()) {
            ThemeFileUtils.mkdirs(file.getPath());
        }
    }

    public static void ensureMiuiVersionFlagExist(Context context) {
        if (!new File(FINAL_MOD_ICONS_MIUI_VERSION).exists()) {
            String tmpPath = FINAL_MOD_ICONS_MIUI_VERSION;
            if (!(context == null || ThemeResources.FRAMEWORK_PACKAGE.equals(context.getPackageName()))) {
                tmpPath = context.getFileStreamPath("customized_icons_version").getAbsolutePath();
            }
            try {
                BufferedWriter out = new BufferedWriter(new FileWriter(tmpPath));
                out.write(getCustomizedIconVersionContent());
                out.close();
            } catch (Exception e) {
            }
            if (!FINAL_MOD_ICONS_MIUI_VERSION.equals(tmpPath)) {
                ThemeNativeUtils.copy(tmpPath, FINAL_MOD_ICONS_MIUI_VERSION);
                ThemeNativeUtils.remove(tmpPath);
                ThemeNativeUtils.updateFilePermissionWithThemeContext(FINAL_MOD_ICONS_MIUI_VERSION);
            }
        }
    }

    public static void clearCustomizedIcons(String packageName) {
        if (C0015Build.IS_MIUI) {
            if (TextUtils.isEmpty(packageName)) {
                ThemeNativeUtils.deleteContents(FINAL_MOD_ICONS);
                clearCache();
            } else {
                String[] fileNames = new File(FINAL_MOD_ICONS).list();
                if (fileNames != null) {
                    for (String fileName : fileNames) {
                        if (fileName.startsWith(packageName)) {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append(FINAL_MOD_ICONS);
                            stringBuilder.append(fileName);
                            ThemeNativeUtils.remove(stringBuilder.toString());
                        }
                    }
                }
                clearCache(packageName);
            }
        }
    }

    public static void prepareCustomizedIcons(Context context, CustomizedIconsListener l) {
        CustomizedIconsListener customizedIconsListener = l;
        Bitmap mask = getRawIcon("icon_mask.png");
        Bitmap background = getRawIcon("icon_background.png");
        Bitmap pattern = getRawIcon("icon_pattern.png");
        Bitmap cover = getRawIcon("icon_border.png");
        Intent launcherIntent = new Intent("android.intent.action.MAIN", null);
        launcherIntent.addCategory("android.intent.category.LAUNCHER");
        final PackageManager pm = context.getPackageManager();
        List<ResolveInfo> list = pm.queryIntentActivities(launcherIntent, 0);
        if (customizedIconsListener != null) {
            customizedIconsListener.beforePrepareIcon(list.size() + 1);
        }
        ExecutorService execService = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
        long time = System.currentTimeMillis();
        Log.d(LOG_TAG, "prepareCustomizedIcons start");
        List<Future<?>> futures = new ArrayList();
        for (final ResolveInfo info : list) {
            futures.add(execService.submit(new Runnable() {
                public void run() {
                    info.activityInfo.loadIcon(pm);
                }
            }));
        }
        int taskCnt = 1;
        for (Future<?> future : futures) {
            try {
                future.get();
            } catch (InterruptedException e) {
                InterruptedException interruptedException = e;
                e.printStackTrace();
            } catch (ExecutionException e2) {
                ExecutionException executionException = e2;
                e2.printStackTrace();
            }
            if (customizedIconsListener != null) {
                int taskCnt2 = taskCnt + 1;
                customizedIconsListener.finishPrepareIcon(taskCnt);
                taskCnt = taskCnt2;
            }
        }
        execService.shutdown();
        String str = LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("prepareCustomizedIcons end ");
        stringBuilder.append(System.currentTimeMillis() - time);
        Log.d(str, stringBuilder.toString());
        if (customizedIconsListener != null) {
            l.finishAllIcons();
        }
    }

    public static void saveCustomizedIconBitmap(String packageName, String className, Drawable dr, Context context) {
        if (dr instanceof BitmapDrawable) {
            saveCustomizedIconBitmap(getFileName(packageName, className), ((BitmapDrawable) dr).getBitmap(), context);
        }
    }

    private static String getCustomizedIconVersionContent() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(VERSION.INCREMENTAL);
        stringBuilder.append("_");
        stringBuilder.append(MiuiDisplayMetrics.DENSITY_DEVICE);
        return stringBuilder.toString();
    }

    private static void saveCustomizedIconBitmap(String fileName, Bitmap icon, Context context) {
        getServiceManager(context).saveIcon(fileName, icon);
    }

    private static ThemeRuntimeManager getServiceManager(Context context) {
        if (sThemeRuntimeManager == null) {
            synchronized (IconCustomizer.class) {
                if (sThemeRuntimeManager == null) {
                    Context saveContext = context.getApplicationContext();
                    if (saveContext == null) {
                        saveContext = context;
                    }
                    sThemeRuntimeManager = new ThemeRuntimeManager(saveContext);
                }
            }
        }
        return sThemeRuntimeManager;
    }

    public static String getAnimatingIconRelativePath(PackageItemInfo info, String packageName, String className) {
        return getIconRelativePath(info, packageName, className, ANIMATING_ICONS_INNER_PATH, "fancy/manifest.xml");
    }

    public static String getFancyIconRelativePath(PackageItemInfo info, String packageName, String className) {
        return getIconRelativePath(info, packageName, className, FANCY_ICONS_INNER_PATH, "manifest.xml");
    }

    private static String getIconRelativePath(PackageItemInfo info, String packageName, String className, String innerPath, String checkFilePath) {
        List<String> names = getIconNames(packageName, className);
        if (!(className == null || info == null || info.icon != 0)) {
            names.add(packageName);
        }
        for (int i = 0; i < names.size(); i++) {
            String name = (String) names.get(i);
            if (name.endsWith(ICON_NAME_SUFFIX)) {
                name = name.substring(0, name.length() - ICON_NAME_SUFFIX.length());
            }
            String relativePath = new StringBuilder();
            relativePath.append(innerPath);
            relativePath.append(name);
            relativePath.append("/");
            relativePath = relativePath.toString();
            if (ThemeResources.getSystem() != null) {
                ThemeResourcesSystem system = ThemeResources.getSystem();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(relativePath);
                stringBuilder.append(checkFilePath);
                if (system.hasIcon(stringBuilder.toString())) {
                    return relativePath;
                }
            }
        }
        return null;
    }

    private static BitmapDrawable getDrawableFromStaticCache(String filename) {
        Bitmap icon = null;
        String pathName = new StringBuilder();
        pathName.append(FINAL_MOD_ICONS);
        pathName.append(filename);
        pathName = pathName.toString();
        File iconFile = new File(pathName);
        if (iconFile.exists()) {
            icon = BitmapFactory.decodeFile(pathName);
            if (icon == null) {
                iconFile.delete();
            }
        }
        return getDrawble(icon);
    }

    private static BitmapDrawable getDrawableFromMemoryCache(String name) {
        WeakReference<Bitmap> ref;
        synchronized (sIconCache) {
            ref = (WeakReference) sIconCache.get(name);
        }
        return ref != null ? getDrawble((Bitmap) ref.get()) : null;
    }

    private static Bitmap getIconFromMemoryCache(String name) {
        SoftReference<Bitmap> ref;
        synchronized (sRawIconCache) {
            ref = (SoftReference) sRawIconCache.get(name);
        }
        return ref != null ? (Bitmap) ref.get() : null;
    }

    public static BitmapDrawable generateShortcutIconDrawable(Drawable base) {
        Bitmap icon = drawableToBitmap(base, getScaleRatio(base, false));
        if (C0015Build.IS_MIUI) {
            icon = composeIconWithTransform(icon, "icon_mask.png", null, "icon_shortcut.png", "icon_shortcut_arrow.png");
        }
        return getDrawble(icon);
    }

    public static BitmapDrawable generateIconStyleDrawable(Drawable base) {
        return generateIconStyleDrawable(base, false);
    }

    public static BitmapDrawable generateIconStyleDrawable(Drawable base, boolean cropOutside) {
        Bitmap icon = drawableToBitmap(base, getScaleRatio(base, cropOutside));
        if (C0015Build.IS_MIUI) {
            icon = composeIconWithTransform(icon, "icon_mask.png", "icon_background.png", "icon_pattern.png", "icon_border.png");
        }
        return getDrawble(icon);
    }

    public static BitmapDrawable generateIconStyleDrawable(Drawable base, Bitmap mask, Bitmap background, Bitmap pattern, Bitmap cover, boolean cropOutside) {
        return getDrawble(composeIcon(drawableToBitmap(base, getScaleRatio(base, cropOutside)), mask, background, pattern, cover));
    }

    public static BitmapDrawable getCustomizedIconFromCache(String packageName, String className) {
        return getDrawableFromMemoryCache(getFileName(packageName, className));
    }

    public static BitmapDrawable getCustomizedIcon(Context context, String packageName, String className, Drawable original) {
        ensureIconConfigLoaded();
        return getCustomizedIconInner(context, getIconNames(packageName, className), original, sIconConfig.mUseModIcon);
    }

    public static BitmapDrawable getCustomizedIcon(Context context, String filename) {
        List<String> names = new ArrayList();
        names.add(filename);
        return getCustomizedIconInner(context, names, null, true);
    }

    public static BitmapDrawable getCustomizedIcon(Context context, String packageName, String className, int resid, ApplicationInfo appInfo, boolean isPackageIcon) {
        ensureIconConfigLoaded();
        List<String> names = getIconNames(packageName, className);
        PackageManager pm = context.getPackageManager();
        String filename = (String) names.get(0);
        BitmapDrawable dr = getCustomizedIconInner(context, names, null, sIconConfig.mUseModIcon);
        if (dr != null) {
            return dr;
        }
        Drawable original = null;
        if (appInfo == null) {
            try {
                appInfo = pm.getApplicationInfo(packageName, 0);
            } catch (NameNotFoundException e) {
            }
        }
        if (resid != 0 && (!(appInfo == null || resid == appInfo.icon) || isPackageIcon)) {
            original = pm.getDrawable(packageName, resid, appInfo);
        }
        BitmapDrawable dr2 = transToMiuiModIcon(context, null, original, filename);
        if (dr2 != null) {
            synchronized (sIconCache) {
                sIconCache.put(filename, new WeakReference(dr2.getBitmap()));
            }
        }
        return dr2;
    }

    private static BitmapDrawable transToMiuiModIcon(Context context, Bitmap icon, Drawable original, String filename) {
        boolean isAdaptiveIconDrawale = isAdaptiveIconDrawale(original);
        if (icon == null && original != null) {
            icon = drawableToBitmap(original, getScaleRatio(original, false), isAdaptiveIconDrawale);
        }
        if (icon != null) {
            Log.d(LOG_TAG, String.format("Generate customized icon for %s", new Object[]{filename}));
            icon = composeIconWithTransform(icon, "icon_mask.png", "icon_background.png", "icon_pattern.png", "icon_border.png");
            if (!isAdaptiveIconDrawale) {
                saveCustomizedIconBitmap(filename, icon, context);
            }
        }
        return getDrawble(icon);
    }

    private static BitmapDrawable getCustomizedIconInner(Context context, List<String> names, Drawable original, boolean tryModIcon) {
        int i = 0;
        String filename = (String) names.get(0);
        BitmapDrawable drawable = getDrawableFromMemoryCache(filename);
        if (drawable != null) {
            return drawable;
        }
        BitmapDrawable drawable2 = getDrawableFromStaticCache(filename);
        int i2 = 0;
        while (drawable2 == null && i2 < names.size()) {
            drawable2 = getDrawble(getIconFromTheme((String) names.get(i2)));
            i2++;
        }
        if (drawable2 == null) {
            Bitmap icon = null;
            if (tryModIcon) {
                while (icon == null && i < names.size()) {
                    icon = getMiuiModIcon((String) names.get(i));
                    i++;
                }
            }
            drawable2 = transToMiuiModIcon(context, icon, original, filename);
        }
        if (drawable2 != null) {
            synchronized (sIconCache) {
                sIconCache.put(filename, new WeakReference(drawable2.getBitmap()));
            }
        }
        return drawable2;
    }

    private static String getMiuiModDownloadIconDir() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/data/user/");
        stringBuilder.append(UserHandle.myUserId());
        stringBuilder.append("/com.xiaomi.market/files/miui_mod_icons/");
        return stringBuilder.toString();
    }

    private static Bitmap getMiuiModIcon(String fileName) {
        if (C0015Build.IS_CU_CUSTOMIZATION_TEST) {
            if ("com.android.stk.png".equals(fileName)) {
                fileName = "com.android.stk.cu.png";
            } else if ("com.android.stk.StkLauncherActivity2.png".equals(fileName)) {
                fileName = "com.android.stk.cu.2.png";
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(MIUI_MOD_BUILT_IN_ICONS);
        stringBuilder.append(fileName);
        File iconFile = new File(stringBuilder.toString());
        if (iconFile.exists()) {
            return scaleBitmap(BitmapFactory.decodeFile(iconFile.getAbsolutePath()));
        }
        return null;
    }

    private static List<String> getIconNames(String packageName, String className) {
        ArrayList<String> paths = new ArrayList();
        String fileName = getFileName(packageName, className);
        String mappingName = (String) sIconMapping.get(fileName);
        if (mappingName != null) {
            paths.add(mappingName);
        }
        paths.add(fileName);
        if (!(className == null || className.startsWith(packageName))) {
            paths.add(String.format("%s.png", new Object[]{className}));
        }
        return paths;
    }

    private static BitmapDrawable getDrawble(Bitmap bitmap) {
        return bitmap == null ? null : new BitmapDrawable(Resources.getSystem(), bitmap);
    }

    private static float getScaleRatio(Drawable icon, boolean cropOutside) {
        if (icon instanceof PaintDrawable) {
            return 1.0f;
        }
        int sourceWidth = icon.getIntrinsicWidth();
        int sourceHeight = icon.getIntrinsicHeight();
        if (sourceWidth <= 0 || sourceWidth <= 0) {
            return 1.0f;
        }
        float ratioW = ((float) getCustomizedIconContentWidth()) / ((float) sourceWidth);
        float ratioH = ((float) getCustomizedIconContentHeight()) / ((float) sourceHeight);
        if (cropOutside) {
            return Math.max(((float) getCustomizedIconWidth()) / ((float) sourceWidth), ((float) getCustomizedIconHeight()) / ((float) sourceHeight));
        }
        float contentRatio = getContentRatio(icon);
        String str = LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Content Ratio = ");
        stringBuilder.append(contentRatio);
        Log.d(str, stringBuilder.toString());
        if (contentRatio <= 0.0f || contentRatio > sMaxContentRatio) {
            return Math.min(1.0f, Math.min(ratioW, ratioH));
        }
        return contentRatio;
    }

    private static float getContentRatio(Drawable icon) {
        ensureIconConfigLoaded();
        if (!(icon instanceof BitmapDrawable)) {
            return -1.0f;
        }
        Bitmap bitmap = ((BitmapDrawable) icon).getBitmap();
        if (bitmap.getConfig() != Config.ARGB_8888) {
            return -1.0f;
        }
        boolean isRegularShape = true;
        int top = getEdgePosition(bitmap, true, false);
        int bottom = getEdgePosition(bitmap, true, true);
        int left = getEdgePosition(bitmap, false, false);
        int right = getEdgePosition(bitmap, false, true);
        int contentWidth = getCustomizedIconContentWidth();
        int contentHeight = getCustomizedIconContentHeight();
        float iconContentWidth = (float) Math.min(icon.getIntrinsicWidth(), (right - left) + 1);
        float iconContentHeight = (float) Math.min(icon.getIntrinsicHeight(), (bottom - top) + 1);
        if (iconContentWidth < iconContentHeight * 0.8f || iconContentHeight < 0.8f * iconContentWidth) {
            isRegularShape = false;
        } else if (!isRegularShape(bitmap, left, top, right, bottom)) {
            isRegularShape = false;
        }
        if (isRegularShape) {
            return Math.min(((float) contentWidth) / iconContentWidth, ((float) contentHeight) / iconContentHeight);
        }
        return Math.min(((float) getCustomizedIrregularContentWidth()) / iconContentWidth, ((float) getCustomizedIrregularContentHeight()) / iconContentHeight);
    }

    private static boolean isRegularShape(Bitmap b, int left, int top, int right, int bottom) {
        int rowBytes = b.getRowBytes();
        byte[] pixels = BitmapUtil.getBuffer(b);
        if (pixels == null) {
            return true;
        }
        int x = ((right - left) / 4) + left;
        while (x < (((right - left) * 3) / 4) + left) {
            if ((pixels[((top * rowBytes) + (x << 2)) + 3] & 255) < 50 || (pixels[((bottom * rowBytes) + (x << 2)) + 3] & 255) < 50) {
                return false;
            }
            x++;
        }
        x = ((bottom - top) / 4) + top;
        while (x < (((bottom - top) * 3) / 4) + top) {
            if ((pixels[((x * rowBytes) + (left << 2)) + 3] & 255) < 50 || (pixels[((x * rowBytes) + (right << 2)) + 3] & 255) < 50) {
                return false;
            }
            x++;
        }
        return true;
    }

    private static int getEdgePosition(Bitmap bitmap, boolean isHorizontal, boolean isInvert) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int rowBytes = bitmap.getRowBytes();
        byte[] pixels = BitmapUtil.getBuffer(bitmap);
        int dy = -1;
        int x = !isInvert ? -1 : width;
        int y = !isInvert ? -1 : height;
        int dx = isInvert ? -1 : 1;
        if (!isInvert) {
            dy = 1;
        }
        if (pixels != null) {
            int length = 0;
            while (length == 0) {
                if (!isHorizontal) {
                    x += dx;
                    if (x < 0 || x >= width) {
                        break;
                    }
                    y = 0;
                    while (y < height) {
                        if ((pixels[((y * rowBytes) + (x << 2)) + 3] & 255) > 50) {
                            length++;
                        }
                        y++;
                    }
                } else {
                    y += dy;
                    if (y < 0 || y >= height) {
                        break;
                    }
                    x = 0;
                    while (x < width) {
                        if ((pixels[((y * rowBytes) + (x << 2)) + 3] & 255) > 50) {
                            length++;
                        }
                        x++;
                    }
                }
            }
        }
        return isHorizontal ? y : x;
    }

    private static Bitmap drawableToBitmap(Drawable icon, float ratio) {
        return drawableToBitmap(icon, ratio, false);
    }

    private static Bitmap drawableToBitmap(Drawable icon, float ratio, boolean isAdaptiveIconDrawable) {
        Bitmap bitmap;
        synchronized (sCanvas) {
            int targetWidth = getCustomizedIconWidth();
            int targetHeight = getCustomizedIconHeight();
            if (icon instanceof PaintDrawable) {
                PaintDrawable painter = (PaintDrawable) icon;
                painter.setIntrinsicWidth(targetWidth);
                painter.setIntrinsicHeight(targetHeight);
            } else if (icon instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) icon;
                int bitmapDensity = bitmapDrawable.getBitmap().getDensity();
                DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
                if (VERSION.SDK_INT >= 28) {
                    if (bitmapDensity != displayMetrics.densityDpi) {
                        bitmapDrawable.setTargetDensity(bitmapDensity);
                    }
                } else if (bitmapDensity == 0) {
                    bitmapDrawable.setTargetDensity(displayMetrics);
                }
            }
            int sourceWidth = icon.getIntrinsicWidth();
            int sourceHeight = icon.getIntrinsicHeight();
            if (isAdaptiveIconDrawable) {
                sourceWidth = targetWidth;
                sourceHeight = targetHeight;
                ratio = 1.0f;
            }
            icon.setBounds(0, 0, sourceWidth, sourceHeight);
            bitmap = Bitmap.createBitmap(targetWidth, targetHeight, Config.ARGB_8888);
            Canvas canvas = sCanvas;
            canvas.setBitmap(bitmap);
            canvas.save();
            canvas.translate((((float) targetWidth) - (((float) sourceWidth) * ratio)) / sMaxContentRatio, (((float) targetHeight) - (((float) sourceHeight) * ratio)) / sMaxContentRatio);
            canvas.scale(ratio, ratio);
            icon.draw(canvas);
            canvas.restore();
            canvas.setBitmap(null);
        }
        return bitmap;
    }

    private static boolean isAdaptiveIconDrawale(Drawable dr) {
        if (VERSION.SDK_INT < 26 || dr == null) {
            return false;
        }
        try {
            return Class.forName("android.graphics.drawable.AdaptiveIconDrawable").isInstance(dr);
        } catch (Exception e) {
            Log.i(LOG_TAG, "check adaptive icon fail");
            return false;
        }
    }

    private static Bitmap transformBitmap(Bitmap base, Matrix matrix) {
        Bitmap outBitmap = Bitmap.createBitmap(base.getWidth(), base.getHeight(), Config.ARGB_8888);
        outBitmap.setDensity(base.getDensity());
        new Canvas(outBitmap).drawBitmap(base, matrix, sPaintForTransformBitmap);
        return outBitmap;
    }

    private static Bitmap composeIconWithTransform(Bitmap base, String modMask, String modBackground, String modPattern, String modCover) {
        ensureIconConfigLoaded();
        if (sIconConfig.mIconFilters != null) {
            base = ImageData.imageDataToBitmap(sIconConfig.mIconFilters.processAll(base));
        }
        if (sIconTransformNeeded) {
            base = transformBitmap(base, sIconTransformMatrix);
        }
        return composeIcon(base, getRawIcon(modMask), getRawIcon(modBackground), getRawIcon(modPattern), getRawIcon(modCover));
    }

    private static void ensureIconConfigLoaded() {
        if (sIconConfig == null) {
            synchronized (IconCustomizer.class) {
                if (sIconConfig == null) {
                    IconConfig iconConfig = loadIconConfig();
                    sIconTransformMatrix = makeIconMatrix(iconConfig);
                    sIconConfig = iconConfig;
                }
            }
        }
    }

    private static Bitmap composeIcon(Bitmap base, Bitmap modMask, Bitmap modBackground, Bitmap modPattern, Bitmap modCover) {
        Paint paint;
        Canvas canvas;
        int[] basePixels;
        int strideSize;
        Bitmap bitmap = modMask;
        Bitmap bitmap2 = modBackground;
        Bitmap bitmap3 = modPattern;
        Bitmap bitmap4 = modCover;
        int baseWidth = base.getWidth();
        int baseHeight = base.getHeight();
        int pixelSize = base.getByteCount() / 4;
        int strideSize2 = base.getRowBytes() / 4;
        int[] basePixels2 = new int[pixelSize];
        int i = strideSize2;
        int[] basePixels3 = basePixels2;
        base.getPixels(basePixels2, 0, i, 0, 0, baseWidth, baseHeight);
        base.recycle();
        Bitmap result = Bitmap.createBitmap(getCustomizedIconWidth(), getCustomizedIconHeight(), Config.ARGB_8888);
        Canvas canvas2 = new Canvas(result);
        Canvas canvas3 = canvas2;
        Bitmap result2 = result;
        int strideSize3 = strideSize2;
        int pixelSize2 = pixelSize;
        canvas2.drawBitmap(basePixels3, 0, i, 0, 0, baseWidth, baseHeight, true, null);
        if (bitmap != null) {
            if (sCutPaint == null) {
                synchronized (IconCustomizer.class) {
                    if (sCutPaint == null) {
                        paint = new Paint();
                        paint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
                        sCutPaint = paint;
                    }
                }
            }
            canvas = canvas3;
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, sCutPaint);
            result2.getPixels(basePixels3, 0, strideSize3, 0, 0, baseWidth, baseHeight);
            canvas.drawColor(0, Mode.CLEAR);
        } else {
            canvas = canvas3;
        }
        float[] bgColor = null;
        if (bitmap2 == null || modBackground.getByteCount() / 4 != pixelSize2) {
            basePixels = basePixels3;
            strideSize = strideSize3;
        } else {
            basePixels = basePixels3;
            strideSize = strideSize3;
            bgColor = calcBackgroundColor(pixelSize2, baseWidth, strideSize, basePixels, bitmap2);
        }
        float[] bgColor2 = bgColor;
        if (!(bgColor2 == null || bgColor2[3] == 0.0f)) {
            paint = new Paint();
            ColorMatrix cm = new ColorMatrix();
            cm.set(new float[]{bgColor2[0], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, bgColor2[1], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, bgColor2[2], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            paint.setColorFilter(new ColorMatrixColorFilter(cm));
            canvas.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
        }
        if ((!(bgColor2 == null || bgColor2[3] == 0.0f) || bgColor2 == null) && bitmap3 != null) {
            canvas.drawBitmap(bitmap3, 0.0f, 0.0f, null);
        }
        strideSize3 = strideSize;
        Canvas canvas4 = canvas;
        float f = 0.0f;
        canvas.drawBitmap(basePixels, 0, strideSize, 0, 0, baseWidth, baseHeight, true, null);
        bitmap4 = modCover;
        if (bitmap4 != null) {
            canvas4.drawBitmap(bitmap4, f, f, null);
        }
        return result2;
    }

    private static Matrix makeIconMatrix(IconConfig iconConfig) {
        Matrix matrix = new Matrix();
        if (iconConfig.mPointsMappingFrom != null) {
            matrix.setPolyToPoly(iconConfig.mPointsMappingFrom, 0, iconConfig.mPointsMappingTo, 0, iconConfig.mPointsMappingFrom.length / 2);
        } else {
            Camera camera = new Camera();
            camera.rotateX(iconConfig.mRotateX);
            camera.rotateY(iconConfig.mRotateY);
            camera.rotateZ(iconConfig.mRotateZ);
            camera.getMatrix(matrix);
            matrix.preTranslate((((float) (-getCustomizedIconWidth())) / sMaxContentRatio) - iconConfig.mCameraX, (((float) (-getCustomizedIconHeight())) / sMaxContentRatio) - iconConfig.mCameraY);
            matrix.postTranslate((((float) getCustomizedIconWidth()) / sMaxContentRatio) + iconConfig.mCameraX, (((float) getCustomizedIconHeight()) / sMaxContentRatio) + iconConfig.mCameraY);
            matrix.postScale(iconConfig.mScaleX, iconConfig.mScaleY);
            matrix.postSkew(iconConfig.mSkewX, iconConfig.mSkewY);
        }
        return matrix;
    }

    private static ImageFilterGroup loadIconFilters(NodeList configs) {
        NodeList nodeList = configs;
        String IGNORE_WHEN_NOT_SUPPORT = "ignoreWhenNotSupported";
        ArrayList list = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= configs.getLength()) {
                break;
            }
            short s = (short) 1;
            if (nodeList.item(i2).getNodeType() == (short) 1) {
                ImageFilterBuilder builder = new ImageFilterBuilder();
                Element ele = (Element) nodeList.item(i2);
                if ("Filter".equals(ele.getTagName())) {
                    String attribute;
                    boolean z;
                    NodeList filterChildren = ele.getChildNodes();
                    i = 0;
                    while (i < filterChildren.getLength()) {
                        if (filterChildren.item(i).getNodeType() == s) {
                            Element paramEle = (Element) filterChildren.item(i);
                            if ("Param".equals(paramEle.getNodeName())) {
                                ArrayList<Object> paramValues = new ArrayList();
                                String strParamIgnoreWhenNotSupported = paramEle.getAttribute("ignoreWhenNotSupported");
                                if (paramEle.hasChildNodes()) {
                                    NodeList paramChildNodes = paramEle.getChildNodes();
                                    int k = 0;
                                    while (k < paramChildNodes.getLength()) {
                                        if (paramChildNodes.item(k).getNodeType() == s) {
                                            Element paramChildEle = (Element) paramChildNodes.item(k);
                                            if ("IconFilters".equals(paramChildEle.getTagName())) {
                                                paramValues.add(loadIconFilters(paramChildEle.getChildNodes()));
                                            }
                                        }
                                        k++;
                                        nodeList = configs;
                                        s = (short) 1;
                                    }
                                }
                                if (paramValues.size() == 0) {
                                    for (String str : paramEle.getAttribute("value").split("\\|")) {
                                        if (!TextUtils.isEmpty(str)) {
                                            paramValues.add(str);
                                        }
                                    }
                                }
                                attribute = paramEle.getAttribute("name");
                                if (TextUtils.isEmpty(strParamIgnoreWhenNotSupported)) {
                                    z = false;
                                } else {
                                    z = Boolean.TRUE.toString().equalsIgnoreCase(strParamIgnoreWhenNotSupported);
                                }
                                builder.addParam(attribute, paramValues, z);
                            }
                        }
                        i++;
                        nodeList = configs;
                        s = (short) 1;
                    }
                    builder.setFilterName(ele.getAttribute("name"));
                    attribute = ele.getAttribute("ignoreWhenNotSupported");
                    if (TextUtils.isEmpty(attribute)) {
                        z = false;
                    } else {
                        z = Boolean.TRUE.toString().equalsIgnoreCase(attribute);
                    }
                    builder.setIgnoreWhenNotSupported(z);
                    try {
                        IImageFilter filter = builder.createImageFilter();
                        if (filter != null) {
                            list.add(filter);
                        }
                    } catch (NoSupportException e) {
                        e.printStackTrace();
                        list.clear();
                    }
                }
            }
            i = i2 + 1;
            nodeList = configs;
        }
        return new ImageFilterGroup((IImageFilter[]) list.toArray(new IImageFilter[0]));
    }

    public static float hdpiIconSizeToCurrent(float pixelSize) {
        return (((float) getCustomizedIconWidth()) * pixelSize) / 90.0f;
    }

    public static int hdpiIconSizeToCurrent(int pixelSize) {
        return (int) ((((float) (getCustomizedIconWidth() * pixelSize)) / 90.0f) + 0.5f);
    }

    public static double hdpiIconSizeToCurrent(double pixelSize) {
        return (((double) getCustomizedIconWidth()) * pixelSize) / 90.0d;
    }

    private static IconConfig loadIconConfig() {
        IconConfig iconConfig = new IconConfig();
        if (!C0015Build.IS_MIUI || ThemeResources.getSystem() == null) {
            Log.w(LOG_TAG, "can't load ThemeResources");
            return iconConfig;
        }
        InputStream input = ThemeResources.getSystem().getIconStream(ICON_TRANSFORM_CONFIG, null);
        if (input == null) {
            Log.w(LOG_TAG, "can't load transform_config.xml");
            return iconConfig;
        }
        try {
            Element root = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(input).getDocumentElement();
            try {
                input.close();
                if (root != null) {
                    NodeList configs = root.getChildNodes();
                    int i = 0;
                    while (i < configs.getLength()) {
                        try {
                            if (configs.item(i).getNodeType() == (short) 1) {
                                Element config = (Element) configs.item(i);
                                String name = config.getTagName();
                                if ("IconFilters".equals(name)) {
                                    iconConfig.mIconFilters = loadIconFilters(config.getChildNodes());
                                } else if ("PointsMapping".equals(name)) {
                                    NodeList points = config.getChildNodes();
                                    List<Float> pointsMappingFrom = new ArrayList();
                                    List<Float> pointsMappingTo = new ArrayList();
                                    for (int j = 0; j < points.getLength(); j++) {
                                        if (points.item(j).getNodeType() == (short) 1) {
                                            Element point = (Element) points.item(j);
                                            if ("Point".equals(point.getNodeName())) {
                                                pointsMappingFrom.add(Float.valueOf(hdpiIconSizeToCurrent(Float.parseFloat(point.getAttribute("fromX")))));
                                                pointsMappingFrom.add(Float.valueOf(hdpiIconSizeToCurrent(Float.parseFloat(point.getAttribute("fromY")))));
                                                pointsMappingTo.add(Float.valueOf(hdpiIconSizeToCurrent(Float.parseFloat(point.getAttribute("toX")))));
                                                pointsMappingTo.add(Float.valueOf(hdpiIconSizeToCurrent(Float.parseFloat(point.getAttribute("toY")))));
                                            }
                                        }
                                    }
                                    int size = pointsMappingFrom.size();
                                    if (size > 0 && size <= 8) {
                                        iconConfig.mPointsMappingFrom = new float[size];
                                        iconConfig.mPointsMappingTo = new float[size];
                                        for (int j2 = 0; j2 < size; j2++) {
                                            iconConfig.mPointsMappingFrom[j2] = ((Float) pointsMappingFrom.get(j2)).floatValue();
                                            iconConfig.mPointsMappingTo[j2] = ((Float) pointsMappingTo.get(j2)).floatValue();
                                        }
                                    }
                                } else if ("Config".equals(name)) {
                                    String configName = config.getAttribute("name");
                                    String configValue = config.getAttribute("value");
                                    if ("UseModIcon".equalsIgnoreCase(configName)) {
                                        iconConfig.mUseModIcon = Boolean.parseBoolean(configValue);
                                    }
                                } else if ("ScaleX".equals(name)) {
                                    iconConfig.mScaleX = Float.parseFloat(config.getAttribute("value"));
                                } else if ("ScaleY".equals(name)) {
                                    iconConfig.mScaleY = Float.parseFloat(config.getAttribute("value"));
                                } else if ("SkewX".equals(name)) {
                                    iconConfig.mSkewX = Float.parseFloat(config.getAttribute("value"));
                                } else if ("SkewY".equals(name)) {
                                    iconConfig.mSkewY = Float.parseFloat(config.getAttribute("value"));
                                } else if ("TransX".equals(name)) {
                                    iconConfig.mTransX = hdpiIconSizeToCurrent(Float.parseFloat(config.getAttribute("value")));
                                } else if ("TransY".equals(name)) {
                                    iconConfig.mTransY = hdpiIconSizeToCurrent(Float.parseFloat(config.getAttribute("value")));
                                } else if ("RotateX".equals(name)) {
                                    iconConfig.mRotateX = Float.parseFloat(config.getAttribute("value"));
                                } else if ("RotateY".equals(name)) {
                                    iconConfig.mRotateY = Float.parseFloat(config.getAttribute("value"));
                                } else if ("RotateZ".equals(name)) {
                                    iconConfig.mRotateZ = Float.parseFloat(config.getAttribute("value"));
                                } else if ("CameraX".equals(name)) {
                                    iconConfig.mCameraX = hdpiIconSizeToCurrent(Float.parseFloat(config.getAttribute("value")));
                                } else if ("CameraY".equals(name)) {
                                    iconConfig.mCameraY = hdpiIconSizeToCurrent(Float.parseFloat(config.getAttribute("value")));
                                } else if ("OverridedIrregularContentWidth".equals(name)) {
                                    iconConfig.mOverridedIrregularContentWidth = getDimension(config.getAttribute("value"));
                                } else if ("OverridedIrregularContentHeight".equals(name)) {
                                    iconConfig.mOverridedIrregularContentHeight = getDimension(config.getAttribute("value"));
                                }
                            }
                            i++;
                        } catch (Exception e) {
                            Log.w(LOG_TAG, "transform_config.xml parse failed.", e);
                        }
                    }
                    sIconTransformNeeded = true;
                }
                return iconConfig;
            } catch (IOException e2) {
                IOException iOException = e2;
                e2.printStackTrace();
                return iconConfig;
            }
        } catch (Exception e3) {
            Log.w(LOG_TAG, "load icon config failed.", e3);
            return iconConfig;
        }
    }

    private static int getDimension(String value) {
        return TypedValue.complexToDimensionPixelSize(MiuiThemeHelper.parseDimension(value).intValue(), Resources.getSystem().getDisplayMetrics());
    }

    private static float[] calcBackgroundColor(int pixelSize, int width, int strideSize, int[] basePixels, Bitmap bg) {
        int sum;
        int color;
        int color2;
        int sum2 = 0;
        int[] sumRGBA = new int[]{0, 0, 0, 0};
        int[] RGB = new int[]{0, 0, 0};
        int i = 0;
        byte[] bgPixels = BitmapUtil.getBuffer(bg);
        while (i < pixelSize) {
            sum = sum2;
            for (sum2 = 0; sum2 < width; sum2++) {
                color = basePixels[i + sum2];
                if ((sRGBMask & color) > 0) {
                    sumRGBA[0] = sumRGBA[0] + ((16711680 & color) >> 16);
                    sumRGBA[1] = sumRGBA[1] + ((65280 & color) >> 8);
                    sumRGBA[2] = sumRGBA[2] + (color & 255);
                    sum++;
                }
                if (sumRGBA[3] == 0 && bgPixels != null) {
                    sumRGBA[3] = sumRGBA[3] + ((color >> 24) - bgPixels[((i + sum2) << 2) + 3]);
                }
            }
            i += strideSize;
            sum2 = sum;
        }
        int i2 = width;
        if (sum2 > 0) {
            sumRGBA[0] = sumRGBA[0] / sum2;
            sumRGBA[1] = sumRGBA[1] / sum2;
            sumRGBA[2] = sumRGBA[2] / sum2;
        }
        sum = RGBToColor(sumRGBA);
        int[] RGB2 = RGB;
        int i3;
        if (((double) getSaturation(sum, RGB)) < 0.02d) {
            color2 = 0;
            i3 = i;
            i = RGB2;
        } else {
            int[][] mappingSections = new int[][]{new int[]{100, BaiduSceneResult.CASTLE}, new int[]{190, 275}};
            sum2 = 0;
            for (i3 = 0; i3 < mappingSections.length; i3++) {
                sum2 += mappingSections[i3][1] - mappingSections[i3][0];
            }
            int[] RGB3 = RGB2;
            float hue = (((float) sum2) * getHue(sum, RGB3)) / 360.0f;
            for (i3 = 0; i3 < mappingSections.length; i3++) {
                color = mappingSections[i3][1] - mappingSections[i3][0];
                if (hue <= ((float) color)) {
                    hue += (float) mappingSections[i3][0];
                    break;
                }
                hue -= (float) color;
            }
            color2 = setSaturation(setValue(setHue(sum, hue, RGB3), 0.6f, RGB3), 0.4f, RGB3);
        }
        colorToRGB(color2, sumRGBA);
        return new float[]{((float) sumRGBA[0]) / 255.0f, ((float) sumRGBA[1]) / 255.0f, ((float) sumRGBA[2]) / 255.0f, ((float) sumRGBA[3]) / 255.0f};
    }

    private static void colorToRGB(int color, int[] rgb) {
        rgb[0] = (16711680 & color) >> 16;
        rgb[1] = (65280 & color) >> 8;
        rgb[2] = color & 255;
    }

    private static int RGBToColor(int[] RGB) {
        return (((RGB[0] << 8) + RGB[1]) << 8) + RGB[2];
    }

    private static float getValue(int color, int[] RGB) {
        colorToRGB(color, RGB);
        return (1.0f * ((float) Math.max(RGB[0], Math.max(RGB[1], RGB[2])))) / 255.0f;
    }

    private static int setValue(int color, float value, int[] RGB) {
        colorToRGB(color, RGB);
        int max = Math.max(RGB[0], Math.max(RGB[1], RGB[2]));
        if (max == 0) {
            return color;
        }
        float currentValue = (1.0f * ((float) max)) / 255.0f;
        RGB[0] = (int) ((((float) RGB[0]) * value) / currentValue);
        RGB[1] = (int) ((((float) RGB[1]) * value) / currentValue);
        RGB[2] = (int) ((((float) RGB[2]) * value) / currentValue);
        return RGBToColor(RGB);
    }

    private static float getSaturation(int color, int[] RGB) {
        colorToRGB(color, RGB);
        int min = Math.min(RGB[0], Math.min(RGB[1], RGB[2]));
        int max = Math.max(RGB[0], Math.max(RGB[1], RGB[2]));
        if (max == 0 || max == min) {
            return (float) color;
        }
        return (1.0f * ((float) (max - min))) / ((float) max);
    }

    private static int setSaturation(int color, float saturation, int[] RGB) {
        colorToRGB(color, RGB);
        int min = Math.min(RGB[0], Math.min(RGB[1], RGB[2]));
        int max = Math.max(RGB[0], Math.max(RGB[1], RGB[2]));
        if (max == 0 || max == min) {
            return color;
        }
        float currentSaturation = (1.0f * ((float) (max - min))) / ((float) max);
        RGB[0] = (int) (((float) max) - ((((float) (max - RGB[0])) * saturation) / currentSaturation));
        RGB[1] = (int) (((float) max) - ((((float) (max - RGB[1])) * saturation) / currentSaturation));
        RGB[2] = (int) (((float) max) - ((((float) (max - RGB[2])) * saturation) / currentSaturation));
        return RGBToColor(RGB);
    }

    private static float getHue(int color, int[] RGB) {
        colorToRGB(color, RGB);
        int index = 0;
        int min = Math.min(RGB[0], Math.min(RGB[1], RGB[2]));
        int max = Math.max(RGB[0], Math.max(RGB[1], RGB[2]));
        int range = max - min;
        if (range == 0) {
            return 0.0f;
        }
        while (index < 2 && min != RGB[index]) {
            index++;
        }
        return (((float) (BaiduSceneResult.MOTORCYCLE * ((index + 1) % 3))) + ((((float) (RGB[(index + 2) % 3] - min)) * 60.0f) / ((float) range))) + ((60.0f * ((float) (max - RGB[(index + 1) % 3]))) / ((float) range));
    }

    private static int setHue(int color, float hue, int[] RGB) {
        colorToRGB(color, RGB);
        int min = Math.min(RGB[0], Math.min(RGB[1], RGB[2]));
        int max = Math.max(RGB[0], Math.max(RGB[1], RGB[2]));
        int range = max - min;
        if (range == 0) {
            return color;
        }
        while (hue < 0.0f) {
            hue += 360.0f;
        }
        while (hue > 360.0f) {
            hue -= 360.0f;
        }
        int index = (int) Math.floor((double) (hue / 120.0f));
        hue -= (float) (index * BaiduSceneResult.MOTORCYCLE);
        int index2 = (index + 2) % 3;
        RGB[index2] = min;
        RGB[(index2 + 2) % 3] = (int) (((float) min) + ((((float) range) * Math.min(hue, 60.0f)) / 60.0f));
        RGB[(index2 + 1) % 3] = (int) (((float) max) - ((((float) range) * Math.max(0.0f, hue - 60.0f)) / 60.0f));
        return RGBToColor(RGB);
    }
}
