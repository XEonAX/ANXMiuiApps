package com.xiaomi.scanner.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.location.Country;
import android.location.CountryDetector;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.asm.Opcodes;
import com.android.ex.camera2.portability.CameraCapabilities;
import com.android.ex.camera2.portability.Size;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.camera.CameraDisabledException;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

public class CameraUtil {
    private static HashSet<String> ANTI_BANDING_60_COUNTRY = new HashSet(Arrays.asList(new String[]{"TW", "KR", "SA", "US", "CA", "BR", "CO", "MX", "PH"}));
    private static final double ASPECT_RATIO_TOLERANCE = 0.05d;
    private static final int LIMIT_SURFACE_WIDTH = 720;
    private static final int MAX_PREVIEW_FPS_TIMES_1000 = 400000;
    private static final int MAX_SURFACE_WIDTH = 1080;
    private static final int PREFERRED_PREVIEW_FPS_TIMES_1000 = 30000;
    private static final Tag TAG = new Tag("CameraUtil");
    private static String sCountryIso = null;
    private static Point sDisplaySize = null;
    private final ImageFileNamer mImageFileNamer;

    private static class ImageFileNamer {
        private final SimpleDateFormat mFormat;
        private long mLastDate;
        private int mSameSecondCount;

        public ImageFileNamer(String format) {
            this.mFormat = new SimpleDateFormat(format);
        }

        public String generateName(long dateTaken) {
            String result = this.mFormat.format(new Date(dateTaken));
            if (dateTaken / 1000 == this.mLastDate / 1000) {
                this.mSameSecondCount++;
                return result + LoginConstants.UNDER_LINE + this.mSameSecondCount;
            }
            this.mLastDate = dateTaken;
            this.mSameSecondCount = 0;
            return result;
        }
    }

    private static class Singleton {
        private static final CameraUtil INSTANCE = new CameraUtil(ScannerApp.getAndroidContext());

        private Singleton() {
        }
    }

    private CameraUtil(Context context) {
        this.mImageFileNamer = new ImageFileNamer(context.getString(R.string.image_file_name_format));
    }

    public static CameraUtil instance() {
        return Singleton.INSTANCE;
    }

    public static void throwIfCameraDisabled() throws CameraDisabledException {
        if (AndroidServices.instance().provideDevicePolicyManager().getCameraDisabled(null)) {
            throw new CameraDisabledException();
        }
    }

    public static Rect rectFToRect(RectF rectF) {
        Rect rect = new Rect();
        inlineRectToRectF(rectF, rect);
        return rect;
    }

    private static void inlineRectToRectF(RectF rectF, Rect rect) {
        rect.left = Math.round(rectF.left);
        rect.top = Math.round(rectF.top);
        rect.right = Math.round(rectF.right);
        rect.bottom = Math.round(rectF.bottom);
    }

    public static RectF rectToRectF(Rect r) {
        return new RectF((float) r.left, (float) r.top, (float) r.right, (float) r.bottom);
    }

    public static int clamp(int x, int min, int max) {
        if (x > max) {
            return max;
        }
        if (x < min) {
            return min;
        }
        return x;
    }

    public static int getDisplayRotation() {
        switch (AndroidServices.instance().provideWindowManager().getDefaultDisplay().getRotation()) {
            case 1:
                return 90;
            case 2:
                return Opcodes.GETFIELD;
            case 3:
                return 270;
            default:
                return 0;
        }
    }

    public static int[] getPhotoPreviewFpsRange(CameraCapabilities capabilities) {
        return getPhotoPreviewFpsRange(capabilities.getSupportedPreviewFpsRange());
    }

    public static int[] getPhotoPreviewFpsRange(List<int[]> frameRates) {
        if (frameRates == null || frameRates.isEmpty()) {
            Log.e(TAG, "No supported frame rates returned!");
            return null;
        }
        int minFps;
        int[] rate;
        int lowestMinRate = MAX_PREVIEW_FPS_TIMES_1000;
        for (int[] rate2 : frameRates) {
            minFps = rate2[0];
            if (rate2[1] >= PREFERRED_PREVIEW_FPS_TIMES_1000 && minFps <= PREFERRED_PREVIEW_FPS_TIMES_1000 && minFps < lowestMinRate) {
                lowestMinRate = minFps;
            }
        }
        int resultIndex = -1;
        int highestMaxRate = 0;
        for (int i = 0; i < frameRates.size(); i++) {
            rate2 = (int[]) frameRates.get(i);
            minFps = rate2[0];
            int maxFps = rate2[1];
            if (minFps == lowestMinRate && highestMaxRate < maxFps) {
                highestMaxRate = maxFps;
                resultIndex = i;
            }
        }
        if (resultIndex >= 0) {
            return (int[]) frameRates.get(resultIndex);
        }
        Log.e(TAG, "Can't find an appropriate frame rate range!");
        return null;
    }

    public static Size getLargestPictureSize(float desiredAspectRatio, List<Size> sizes, int limit) {
        int pixelNum;
        int maxPixelNumNoAspect = 0;
        Size maxSize = new Size(0, 0);
        for (Size size : sizes) {
            pixelNum = size.width() * size.height();
            if (pixelNum > maxPixelNumNoAspect) {
                maxPixelNumNoAspect = pixelNum;
                maxSize = size;
            }
        }
        Size maxSizeWithAspect = new Size(0, 0);
        int maxPixelNumWithAspect = 0;
        Size minSizeExceedLimit = new Size(0, 0);
        int minPixelNumExceedLimit = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (Size size2 : sizes) {
            if (Math.abs(getAspectRatio(size2) - ((double) desiredAspectRatio)) <= ASPECT_RATIO_TOLERANCE) {
                pixelNum = size2.width() * size2.height();
                if (pixelNum > maxPixelNumWithAspect) {
                    maxPixelNumWithAspect = pixelNum;
                    maxSize = size2;
                    if (pixelNum < limit || limit == 0) {
                        maxSizeWithAspect = size2;
                    }
                }
                if (limit != 0 && pixelNum > limit && pixelNum < minPixelNumExceedLimit) {
                    minPixelNumExceedLimit = pixelNum;
                    minSizeExceedLimit = size2;
                }
            }
        }
        if (maxSizeWithAspect.width() != 0) {
            return maxSizeWithAspect;
        }
        if (minSizeExceedLimit.width() != 0) {
            return minSizeExceedLimit;
        }
        return maxSize;
    }

    public static double getAspectRatio(Size size) {
        int width = size.width();
        int height = size.height();
        if (width == 0 || height == 0) {
            return 0.0d;
        }
        if (width > height) {
            return ((double) width) / ((double) height);
        }
        return ((double) height) / ((double) width);
    }

    public static Size getOptimalPreviewSize(List<Size> sizes, double targetRatio) {
        int optimalPickIndex = getOptimalPreviewSizeIndex(sizes, targetRatio);
        if (optimalPickIndex == -1) {
            return null;
        }
        return (Size) sizes.get(optimalPickIndex);
    }

    public static int getOptimalPreviewSizeIndex(List<Size> sizes, double targetRatio) {
        return getOptimalPreviewSizeIndex(sizes, targetRatio, Double.valueOf(ASPECT_RATIO_TOLERANCE));
    }

    public static int getOptimalPreviewSizeIndex(List<Size> previewSizes, double targetRatio, Double aspectRatioTolerance) {
        if (previewSizes == null) {
            return -1;
        }
        if (aspectRatioTolerance == null) {
            return getOptimalPreviewSizeIndex(previewSizes, targetRatio);
        }
        Point point;
        int i;
        Size size;
        int diff;
        int optimalSizeIndex = -1;
        int optimalSizeIndexLargger = -1;
        int minDiff = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int minDiffSmaller = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (DeviceUtil.isMi2()) {
            point = new Point(960, 1280);
        } else {
            point = getDefaultDisplaySize();
        }
        int limitWidth = DeviceUtil.isSurfaceSizeLimited() ? LIMIT_SURFACE_WIDTH : MAX_SURFACE_WIDTH;
        if (point.x > limitWidth) {
            point.y = (point.y * limitWidth) / point.x;
            point.x = limitWidth;
        }
        for (i = 0; i < previewSizes.size(); i++) {
            size = (Size) previewSizes.get(i);
            if (Math.abs((((double) size.width()) / ((double) size.height())) - targetRatio) <= aspectRatioTolerance.doubleValue()) {
                diff = Math.abs(size.height() - point.x) + Math.abs(size.width() - point.y);
                if (diff == 0) {
                    optimalSizeIndex = i;
                    optimalSizeIndexLargger = i;
                    break;
                }
                if (size.height() >= point.x && size.width() >= point.y && diff < minDiffSmaller) {
                    optimalSizeIndexLargger = i;
                    minDiffSmaller = diff;
                }
                if (diff < minDiff) {
                    optimalSizeIndex = i;
                    minDiff = diff;
                }
            }
        }
        if (optimalSizeIndexLargger != -1) {
            optimalSizeIndex = optimalSizeIndexLargger;
        }
        if (optimalSizeIndex != -1) {
            return optimalSizeIndex;
        }
        Log.w(TAG, "No preview size match the aspect ratio. available sizes: " + previewSizes);
        minDiff = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (i = 0; i < previewSizes.size(); i++) {
            size = (Size) previewSizes.get(i);
            diff = Math.abs(size.height() - point.x) + Math.abs(size.width() - point.y);
            if (diff < minDiff) {
                optimalSizeIndex = i;
                minDiff = diff;
            }
        }
        return optimalSizeIndex;
    }

    public static Point getDefaultDisplaySize() {
        if (sDisplaySize == null) {
            sDisplaySize = new Point();
            AndroidServices.instance().provideWindowManager().getDefaultDisplay().getRealSize(sDisplaySize);
            if (sDisplaySize.x > sDisplaySize.y) {
                int x = sDisplaySize.x;
                sDisplaySize.x = sDisplaySize.y;
                sDisplaySize.y = x;
            }
            if (Util.isNotchPhone) {
                Point point = sDisplaySize;
                point.y -= Utils.getStatusBarHeight();
            }
        }
        Log.i(TAG, "default display size =" + sDisplaySize);
        return new Point(sDisplaySize.x, sDisplaySize.y);
    }

    public static int getImageRotation(int sensorOrientation, int deviceOrientation, boolean isFrontCamera) {
        if (isFrontCamera) {
            deviceOrientation = (360 - deviceOrientation) % 360;
        }
        return (sensorOrientation + deviceOrientation) % 360;
    }

    public static boolean isAntibanding60() {
        return ANTI_BANDING_60_COUNTRY.contains(sCountryIso);
    }

    public static void updateCountryIso(Context context) {
        try {
            CountryDetector detector = (CountryDetector) context.getSystemService(Class.forName("android.content.Context").getDeclaredField("COUNTRY_DETECTOR").get("COUNTRY_DETECTOR").toString());
            if (detector != null) {
                Country country = detector.detectCountry();
                if (country != null) {
                    sCountryIso = country.getCountryIso();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "reflect method error", e);
        }
        Log.v(TAG, "countryIso=" + sCountryIso);
    }

    public String createJpegName(long dateTaken) {
        String generateName;
        synchronized (this.mImageFileNamer) {
            generateName = this.mImageFileNamer.generateName(dateTaken);
        }
        return generateName;
    }
}
