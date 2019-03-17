package miui.util;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.MiuiSettings.Global;
import android.view.Display;
import android.view.IWindowManager.Stub;
import android.view.WindowManager;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.SoftReference;
import miui.graphics.BitmapFactory;
import miui.os.Build;
import miui.system.R;

public class ScreenshotUtils {
    private static final File ACTIVITY_SCREENSHOT_FOLDER = new File(ACTIVITY_SCREENSHOT_FOLDER_PATH);
    private static final String ACTIVITY_SCREENSHOT_FOLDER_PATH = "/data/system/app_screenshot";
    public static final float BLUR_SCALE_RATIO = 0.33333334f;
    public static final int DEFAULT_SCREENSHOT_COLOR = -1426063361;
    public static final int DEFAULT_SCREEN_BLUR_RADIUS = Resources.getSystem().getDimensionPixelSize(285933586);
    public static final float REAL_BLUR_BLACK = (((float) SystemProperties.getInt("persist.sys.real_blur_black", 0)) / 100.0f);
    public static final int REAL_BLUR_MINIFY = SystemProperties.getInt("persist.sys.real_blur_minify", 4);
    public static final int REAL_BLUR_RADIUS = SystemProperties.getInt("persist.sys.real_blur_radius", 8);
    private static final String TAG = "ScreenshotUtils";
    private static SoftReference<Bitmap> sCacheBitmap;
    private static SoftReference<Bitmap> sCacheBitmapWithNavigationBarHide;
    private static SoftReference<Bitmap> sCacheBitmapWithNavigationBarShow;
    private static Display sDisplay;
    private static Handler sHandler;
    private static HandlerThread sHandlerThread;
    private static KeyguardManager sKeyguardManager;
    private static Paint sPaint;
    private static int sScreenHeight;
    private static int sScreenWidth;
    private static Point sSizeBuf = new Point();

    private static void initializeIfNeed(Context context) {
        if (!ACTIVITY_SCREENSHOT_FOLDER.exists() && ACTIVITY_SCREENSHOT_FOLDER.mkdir()) {
            FileUtils.setPermissions(ACTIVITY_SCREENSHOT_FOLDER.getAbsolutePath(), 509, -1, -1);
        }
        if (sDisplay == null) {
            sDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        }
        if (sKeyguardManager == null) {
            sKeyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        }
        if (sDisplay != null) {
            int degree = sDisplay.getRotation();
            boolean isPortrait = degree == 0 || degree == 2;
            CustomizeUtil.getRealSize(sDisplay, sSizeBuf);
            sScreenWidth = isPortrait ? sSizeBuf.x : sSizeBuf.y;
            sScreenHeight = isPortrait ? sSizeBuf.y : sSizeBuf.x;
        }
    }

    public static void getActivityScreenshotSize(Context context, Point size) {
        initializeIfNeed(context);
        sDisplay.getRealSize(size);
        float scale = Resources.getSystem().getFloat(285933587);
        size.x = (int) ((((float) size.x) * scale) + 0.5f);
        size.y = (int) ((((float) size.y) * scale) + 0.5f);
    }

    public static boolean disallowTaskManagerScreenshotMode(Context context) {
        if (MiuiFeatureUtils.isLiteMode()) {
            return FeatureParser.getBoolean("enable_miui_lite", false);
        }
        return false;
    }

    public static void captureActivityScreenshot(Context context, String shortComponentName) {
        captureActivityScreenshot(context, shortComponentName, Boolean.valueOf(true));
    }

    public static void captureActivityScreenshot(Context context, final String shortComponentName, Boolean isAsync) {
        initializeIfNeed(context);
        if (!sKeyguardManager.isKeyguardLocked()) {
            boolean isPort = true;
            if ((!disallowTaskManagerScreenshotMode(context) && SystemProperties.getBoolean("persist.sys.screenshot_mode", false)) || (!getActivityScreenshotFile(shortComponentName, true).exists() && !getActivityScreenshotFile(shortComponentName, false).exists())) {
                final int rotation = sDisplay.getRotation();
                if (!(rotation == 0 || rotation == 2)) {
                    isPort = false;
                }
                if (sHandler == null) {
                    synchronized (ScreenshotUtils.class) {
                        if (sHandler == null) {
                            sHandlerThread = new HandlerThread(TAG);
                            sHandlerThread.start();
                            sHandler = new Handler(sHandlerThread.getLooper());
                        }
                    }
                }
                boolean hasNavigationBar = false;
                try {
                    hasNavigationBar = Stub.asInterface(ServiceManager.getService("window")).hasNavigationBar();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                if (isAsync.booleanValue()) {
                    final boolean finalHasNavigationBar = hasNavigationBar;
                    sHandler.post(new Runnable() {
                        public void run() {
                            ScreenshotUtils.screenShotAndSave(shortComponentName, rotation, isPort, finalHasNavigationBar);
                        }
                    });
                } else {
                    screenShotAndSave(shortComponentName, rotation, isPort, hasNavigationBar);
                }
            }
        }
    }

    private static void screenShotAndSave(String shortComponentName, int rotation, boolean isPort, boolean hasNavigationBar) {
        String str = shortComponentName;
        int i = rotation;
        boolean z = isPort;
        boolean z2 = hasNavigationBar;
        try {
            Rect src;
            Bitmap screenshot = CompatibilityHelper.screenshot(sScreenWidth, sScreenHeight, 0, 30000);
            Point displaySize = new Point();
            sDisplay.getSize(displaySize);
            int displayWidth = z ? displaySize.x : displaySize.y;
            int displayHeight = z ? displaySize.y : displaySize.x;
            float scale = Resources.getSystem().getFloat(285933587);
            if (!z2) {
                src = new Rect(0, 0, sScreenWidth, sScreenHeight);
            } else if (i == 3 || i == 2) {
                src = new Rect(0, sScreenHeight - displayHeight, displayWidth, sScreenHeight);
            } else {
                src = new Rect(0, 0, displayWidth, displayHeight);
            }
            Bitmap saveBitmap = getCacheBitmap(hasNavigationBar) == null ? null : (Bitmap) getCacheBitmap(hasNavigationBar).get();
            if (saveBitmap == null) {
                saveBitmap = Bitmap.createBitmap((int) ((((float) (z2 ? displayWidth : sScreenWidth)) * scale) + 0.5f), (int) ((((float) (z2 ? displayHeight : sScreenHeight)) * scale) + 0.5f), Config.ARGB_8888);
                setCacheBitmap(new SoftReference(saveBitmap), z2);
            }
            if (sPaint == null) {
                sPaint = new Paint(3);
            }
            Canvas canvas = new Canvas(saveBitmap);
            if (i == 1 || i == 2) {
                canvas.rotate(180.0f, ((float) saveBitmap.getWidth()) / 2.0f, ((float) saveBitmap.getHeight()) / 2.0f);
            }
            canvas.scale(scale, scale);
            int maxLayer;
            if (screenshot != null) {
                maxLayer = 30000;
                canvas.drawBitmap(screenshot, src, new Rect(0, 0, z2 ? displayWidth : sScreenWidth, z2 ? displayHeight : sScreenHeight), sPaint);
                screenshot.recycle();
            } else {
                maxLayer = 30000;
                canvas.drawColor(DEFAULT_SCREENSHOT_COLOR, Mode.SRC);
            }
            FileOutputStream outStream = new FileOutputStream(getActivityScreenshotFile(str, z));
            saveBitmap.compress(CompressFormat.JPEG, 90, outStream);
            outStream.close();
            File anotherFile = getActivityScreenshotFile(str, z ^ 1);
            if (anotherFile.exists() && anotherFile.delete()) {
                String str2 = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(anotherFile.getAbsolutePath());
                stringBuilder.append("delete failed");
                Log.d(str2, stringBuilder.toString());
            }
        } catch (Exception ex) {
            Log.d(TAG, "screenShotAndSave", ex);
        }
    }

    public static File getActivityScreenshotFile(String shortComponentName, boolean isPort) {
        File file = ACTIVITY_SCREENSHOT_FOLDER;
        String str = "%s--%s";
        Object[] objArr = new Object[2];
        objArr[0] = shortComponentName.replace('/', '-');
        objArr[1] = isPort ? "p" : "l";
        return new File(file, String.format(str, objArr));
    }

    public static Bitmap getScreenshot(Context context) {
        return getScreenshot(context, 1.0f, 0, 0, true);
    }

    public static Bitmap getScreenshot(Context context, float scale, int minLayer, int maxLayer, boolean includeNavigationBar) {
        Bitmap screenshot;
        int i = minLayer;
        int i2 = maxLayer;
        initializeIfNeed(context);
        int screenshotWidth = (int) ((((float) sScreenWidth) * scale) + 0.5f);
        int screenshotHeight = (int) ((((float) sScreenHeight) * scale) + 0.5f);
        if (i == 0 && i2 == 0) {
            screenshot = CompatibilityHelper.screenshot(screenshotWidth, screenshotHeight);
        } else {
            screenshot = CompatibilityHelper.screenshot(screenshotWidth, screenshotHeight, i, i2);
        }
        Bitmap screenshot2 = screenshot;
        if (screenshot2 == null) {
            return screenshot2;
        }
        int resourceId;
        int degree = sDisplay.getRotation();
        boolean isPortrait = degree == 0 || degree == 2;
        if (includeNavigationBar) {
            sDisplay.getRealSize(sSizeBuf);
        } else {
            int navigationBarHeight = 0;
            try {
                boolean hasNavigationBar = Stub.asInterface(ServiceManager.getService("window")).hasNavigationBar();
                if (hasNavigationBar && Global.getBoolean(context.getContentResolver(), "force_fsg_nav_bar")) {
                    hasNavigationBar = false;
                }
                if (hasNavigationBar) {
                    resourceId = context.getResources().getIdentifier("navigation_bar_size", "dimen", "android");
                    if (resourceId > 0) {
                        navigationBarHeight = context.getResources().getDimensionPixelSize(resourceId);
                    }
                }
            } catch (RemoteException e) {
            }
            sDisplay.getRealSize(sSizeBuf);
            Point point;
            if (Build.IS_TABLET) {
                point = sSizeBuf;
                point.y -= navigationBarHeight;
            } else if (isPortrait) {
                point = sSizeBuf;
                point.y -= navigationBarHeight;
            } else {
                point = sSizeBuf;
                point.x -= navigationBarHeight;
            }
        }
        int targetWidth = (int) ((((float) sSizeBuf.x) * scale) + 1056964608);
        resourceId = (int) ((((float) sSizeBuf.y) * scale) + 0.5f);
        if (screenshotWidth == targetWidth && screenshotHeight == resourceId && degree == 0) {
            return screenshot2;
        }
        Matrix matrix = new Matrix();
        if (degree != 0) {
            matrix.postTranslate(((float) (-screenshotWidth)) / 2.0f, ((float) (-screenshotHeight)) / 2.0f);
            matrix.postRotate((float) (360 - (degree * 90)));
            matrix.postTranslate((isPortrait ? (float) screenshotWidth : (float) screenshotHeight) / 2.0f, (isPortrait ? (float) screenshotHeight : (float) screenshotWidth) / 2.0f);
        }
        Bitmap temp = Bitmap.createBitmap(targetWidth, resourceId, Config.ARGB_8888);
        new Canvas(temp).drawBitmap(screenshot2, matrix, new Paint());
        screenshot2.recycle();
        return temp;
    }

    public static Bitmap getBlurBackground(Context context, Bitmap cache) {
        Bitmap screenshot = getScreenshot(context, 0.33333334f, 0, 0, false);
        Bitmap bluredBitmap = getBlurBackground(screenshot, cache);
        screenshot.recycle();
        return bluredBitmap;
    }

    public static Bitmap getBlurBackground(Bitmap screenshot, Bitmap cache) {
        if (screenshot != null) {
            cache = BitmapFactory.fastBlur(screenshot, cache, Resources.getSystem().getDimensionPixelSize(285933586));
        }
        if (cache != null) {
            new Canvas(cache).drawColor(Resources.getSystem().getColor(R.color.blur_background_mask));
        }
        return cache;
    }

    private static SoftReference<Bitmap> getCacheBitmap(boolean hasNavigationBar) {
        if (!hasNavigationBar) {
            return sCacheBitmap;
        }
        Point displaySize = new Point();
        sDisplay.getSize(displaySize);
        int rotation = sDisplay.getRotation();
        boolean isPort = rotation == 0 || rotation == 2;
        return (isPort ? displaySize.y : displaySize.x) == sScreenHeight ? sCacheBitmapWithNavigationBarHide : sCacheBitmapWithNavigationBarShow;
    }

    private static void setCacheBitmap(SoftReference<Bitmap> cacheBitmap, boolean hasNavigationBar) {
        if (hasNavigationBar) {
            Point displaySize = new Point();
            sDisplay.getSize(displaySize);
            int rotation = sDisplay.getRotation();
            boolean isPort = rotation == 0 || rotation == 2;
            if ((isPort ? displaySize.y : displaySize.x) == sScreenHeight) {
                sCacheBitmapWithNavigationBarHide = cacheBitmap;
            } else {
                sCacheBitmapWithNavigationBarShow = cacheBitmap;
            }
            return;
        }
        sCacheBitmap = cacheBitmap;
    }
}
