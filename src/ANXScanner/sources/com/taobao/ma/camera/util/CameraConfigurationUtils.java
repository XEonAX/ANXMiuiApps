package com.taobao.ma.camera.util;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera.Area;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.alibaba.fastjson.asm.Opcodes;
import com.taobao.ma.bar.common.constants.MaBarConstants;
import com.taobao.ma.common.log.MaLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

@TargetApi(15)
public final class CameraConfigurationUtils {
    private static final int AREA_PER_1000 = 400;
    private static final double MAX_ASPECT_DISTORTION = 0.15d;
    private static final float MAX_EXPOSURE_COMPENSATION = 1.5f;
    private static final int MAX_FPS = 20;
    private static final int MAX_PICTURE_PIXELS = 384000;
    private static final int MAX_PREVIEW_PIXELS = 1024000;
    private static final float MIN_EXPOSURE_COMPENSATION = 0.0f;
    private static final int MIN_FPS = 10;
    private static final int MIN_PICTURE_PIXELS = 307200;
    private static final int MIN_PREVIEW_PIXELS = 153600;
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final String TAG = "CameraConfiguration";
    private static int maxPicturePixels = -1;
    private static int minPicturePixels = -1;

    private CameraConfigurationUtils() {
    }

    public static void setFocus(Parameters parameters, boolean autoFocus, boolean disableContinuous, boolean safeMode) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String focusMode = null;
        if (autoFocus) {
            if (safeMode || disableContinuous) {
                focusMode = findSettableValue("focus mode", supportedFocusModes, "auto");
            } else {
                focusMode = findSettableValue("focus mode", supportedFocusModes, "continuous-picture", "continuous-video", "auto");
            }
        }
        if (!safeMode && focusMode == null) {
            focusMode = findSettableValue("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (focusMode == null) {
            return;
        }
        if (focusMode.equals(parameters.getFocusMode())) {
            Log.i(TAG, "Focus mode already set to " + focusMode);
        } else {
            parameters.setFocusMode(focusMode);
        }
    }

    public static void setTorch(Parameters parameters, boolean on) {
        String flashMode;
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (on) {
            flashMode = findSettableValue("flash mode", supportedFlashModes, "torch", "on");
        } else {
            flashMode = findSettableValue("flash mode", supportedFlashModes, "off");
        }
        if (flashMode == null) {
            return;
        }
        if (flashMode.equals(parameters.getFlashMode())) {
            Log.i(TAG, "Flash mode already set to " + flashMode);
            return;
        }
        Log.i(TAG, "Setting flash mode to " + flashMode);
        parameters.setFlashMode(flashMode);
    }

    public static void setBestExposure(Parameters parameters, boolean lightOn) {
        float targetCompensation = 0.0f;
        int minExposure = parameters.getMinExposureCompensation();
        int maxExposure = parameters.getMaxExposureCompensation();
        float step = parameters.getExposureCompensationStep();
        if (!(minExposure == 0 && maxExposure == 0) && step > 0.0f) {
            if (!lightOn) {
                targetCompensation = MAX_EXPOSURE_COMPENSATION;
            }
            int compensationSteps = Math.round(targetCompensation / step);
            float actualCompensation = step * ((float) compensationSteps);
            compensationSteps = Math.max(Math.min(compensationSteps, maxExposure), minExposure);
            if (parameters.getExposureCompensation() == compensationSteps) {
                Log.i(TAG, "Exposure compensation already set to " + compensationSteps + " / " + actualCompensation);
                return;
            }
            Log.i(TAG, "Setting exposure compensation to " + compensationSteps + " / " + actualCompensation);
            parameters.setExposureCompensation(compensationSteps);
            return;
        }
        Log.i(TAG, "Camera does not support exposure compensation");
    }

    public static void setBestPreviewFPS(Parameters parameters) {
        setBestPreviewFPS(parameters, 10, 20);
    }

    public static void setBestPreviewFPS(Parameters parameters, int minFPS, int maxFPS) {
        Collection<int[]> supportedPreviewFpsRanges = parameters.getSupportedPreviewFpsRange();
        Log.i(TAG, "Supported FPS ranges: " + toString((Collection) supportedPreviewFpsRanges));
        if (supportedPreviewFpsRanges != null && !supportedPreviewFpsRanges.isEmpty()) {
            int[] suitableFPSRange = null;
            for (int[] fpsRange : supportedPreviewFpsRanges) {
                int thisMin = fpsRange[0];
                int thisMax = fpsRange[1];
                if (thisMin >= minFPS * 1000 && thisMax <= maxFPS * 1000) {
                    suitableFPSRange = fpsRange;
                    break;
                }
            }
            if (suitableFPSRange == null) {
                Log.i(TAG, "No suitable FPS range?");
                return;
            }
            int[] currentFpsRange = new int[2];
            parameters.getPreviewFpsRange(currentFpsRange);
            if (Arrays.equals(currentFpsRange, suitableFPSRange)) {
                Log.i(TAG, "FPS range already set to " + Arrays.toString(suitableFPSRange));
                return;
            }
            Log.i(TAG, "Setting FPS range to " + Arrays.toString(suitableFPSRange));
            parameters.setPreviewFpsRange(suitableFPSRange[0], suitableFPSRange[1]);
        }
    }

    public static void setFocusArea(Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() > 0) {
            Log.i(TAG, "Old focus areas: " + toString(parameters.getFocusAreas()));
            Iterable middleArea = buildMiddleArea(400);
            Log.i(TAG, "Setting focus area to : " + toString(middleArea));
            parameters.setFocusAreas(middleArea);
            return;
        }
        Log.i(TAG, "Device does not support focus areas");
    }

    public static void setMetering(Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() > 0) {
            Log.i(TAG, "Old metering areas: " + parameters.getMeteringAreas());
            Iterable middleArea = buildMiddleArea(400);
            Log.i(TAG, "Setting metering area to : " + toString(middleArea));
            parameters.setMeteringAreas(middleArea);
            return;
        }
        Log.i(TAG, "Device does not support metering areas");
    }

    private static List<Area> buildMiddleArea(int areaPer1000) {
        return Collections.singletonList(new Area(new Rect(-areaPer1000, -areaPer1000, areaPer1000, areaPer1000), 1));
    }

    public static void setVideoStabilization(Parameters parameters) {
        if (!parameters.isVideoStabilizationSupported()) {
            Log.i(TAG, "This device does not support video stabilization");
        } else if (parameters.getVideoStabilization()) {
            Log.i(TAG, "Video stabilization already enabled");
        } else {
            Log.i(TAG, "Enabling video stabilization...");
            parameters.setVideoStabilization(true);
        }
    }

    public static void setBarcodeSceneMode(Parameters parameters) {
        if (MaBarConstants.UT_PARAM_KEY_BARCODE.equals(parameters.getSceneMode())) {
            Log.i(TAG, "Barcode scene mode already set");
            return;
        }
        String sceneMode = findSettableValue("scene mode", parameters.getSupportedSceneModes(), MaBarConstants.UT_PARAM_KEY_BARCODE);
        if (sceneMode != null) {
            parameters.setSceneMode(sceneMode);
        }
    }

    private static int getMaxPicturePixels() {
        return maxPicturePixels > 0 ? maxPicturePixels : MAX_PICTURE_PIXELS;
    }

    private static int getMinPicturePixels() {
        return minPicturePixels > 0 ? minPicturePixels : MIN_PICTURE_PIXELS;
    }

    public static Point findBestPictureSizeValue(Parameters parameters, int cameraDisplayOrientation) {
        int realWidth;
        int realHeight;
        List<Size> sortedSupportedSizes = new ArrayList(parameters.getSupportedPictureSizes());
        Collections.sort(sortedSupportedSizes, new Comparator<Size>() {
            public int compare(Size a, Size b) {
                int aPixels = a.height * a.width;
                int bPixels = b.height * b.width;
                if (bPixels < aPixels) {
                    return -1;
                }
                if (bPixels > aPixels) {
                    return 1;
                }
                return 0;
            }
        });
        for (Size supportedPreviewSize : sortedSupportedSizes) {
            realWidth = supportedPreviewSize.width;
            realHeight = supportedPreviewSize.height;
            if (realWidth * realHeight <= getMaxPicturePixels()) {
                return new Point(realWidth, realHeight);
            }
        }
        Size supportedPreviewSize2 = (Size) sortedSupportedSizes.get(0);
        if (cameraDisplayOrientation % Opcodes.GETFIELD == 0) {
            realWidth = supportedPreviewSize2.width;
            realHeight = supportedPreviewSize2.height;
        } else {
            realWidth = supportedPreviewSize2.height;
            realHeight = supportedPreviewSize2.width;
        }
        return new Point(realWidth, realHeight);
    }

    public static void setZoom(Parameters parameters, double targetZoomRatio) {
        if (parameters.isZoomSupported()) {
            Integer zoom = indexOfClosestZoom(parameters, targetZoomRatio);
            if (zoom != null) {
                if (parameters.getZoom() == zoom.intValue()) {
                    Log.i(TAG, "Zoom is already set to " + zoom);
                    return;
                }
                Log.i(TAG, "Setting zoom to " + zoom);
                parameters.setZoom(zoom.intValue());
                return;
            }
            return;
        }
        Log.i(TAG, "Zoom is not supported");
    }

    private static Integer indexOfClosestZoom(Parameters parameters, double targetZoomRatio) {
        List<Integer> ratios = parameters.getZoomRatios();
        Log.i(TAG, "Zoom ratios: " + ratios);
        int maxZoom = parameters.getMaxZoom();
        if (ratios == null || ratios.isEmpty() || ratios.size() != maxZoom + 1) {
            Log.w(TAG, "Invalid zoom ratios!");
            return null;
        }
        double target100 = 100.0d * targetZoomRatio;
        double smallestDiff = Double.POSITIVE_INFINITY;
        int closestIndex = 0;
        for (int i = 0; i < ratios.size(); i++) {
            double diff = Math.abs(((double) ((Integer) ratios.get(i)).intValue()) - target100);
            if (diff < smallestDiff) {
                smallestDiff = diff;
                closestIndex = i;
            }
        }
        Log.i(TAG, "Chose zoom ratio of " + (((double) ((Integer) ratios.get(closestIndex)).intValue()) / 100.0d));
        return Integer.valueOf(closestIndex);
    }

    public static void setInvertColor(Parameters parameters) {
        if ("negative".equals(parameters.getColorEffect())) {
            Log.i(TAG, "Negative effect already set");
            return;
        }
        String colorMode = findSettableValue("color effect", parameters.getSupportedColorEffects(), "negative");
        if (colorMode != null) {
            parameters.setColorEffect(colorMode);
        }
    }

    public static Point findBestPreviewSizeValue(Parameters parameters, Point screenResolution) {
        List<Size> rawSupportedSizes = parameters.getSupportedPreviewSizes();
        if (rawSupportedSizes == null) {
            Log.w(TAG, "Device returned no supported preview sizes; using default");
            Size defaultSize = parameters.getPreviewSize();
            if (defaultSize == null) {
                throw new IllegalStateException("Parameters contained no preview size!");
            }
            return new Point(defaultSize.width, defaultSize.height);
        }
        Size supportedPreviewSize;
        List<Size> arrayList = new ArrayList(rawSupportedSizes);
        Collections.sort(arrayList, new Comparator<Size>() {
            public int compare(Size a, Size b) {
                int aPixels = a.height * a.width;
                int bPixels = b.height * b.width;
                if (bPixels < aPixels) {
                    return -1;
                }
                if (bPixels > aPixels) {
                    return 1;
                }
                return 0;
            }
        });
        if (Log.isLoggable(TAG, 4)) {
            StringBuilder previewSizesString = new StringBuilder();
            for (Size supportedPreviewSize2 : arrayList) {
                previewSizesString.append(supportedPreviewSize2.width).append('x').append(supportedPreviewSize2.height).append(' ');
            }
            MaLogger.i("Supported preview sizes: " + previewSizesString);
        }
        double screenAspectRatio = ((double) screenResolution.x) / ((double) screenResolution.y);
        if (!(screenAspectRatio < 1.0d)) {
            screenAspectRatio = 1.0d / screenAspectRatio;
        }
        MaLogger.i("SQY:" + screenResolution.x + "x" + screenResolution.y);
        Point bestSize = null;
        double diff = Double.POSITIVE_INFINITY;
        Iterator<Size> it = arrayList.iterator();
        while (it.hasNext()) {
            supportedPreviewSize2 = (Size) it.next();
            int realWidth = supportedPreviewSize2.width;
            int realHeight = supportedPreviewSize2.height;
            int pixels = realWidth * realHeight;
            if (pixels < MIN_PREVIEW_PIXELS || pixels > MAX_PREVIEW_PIXELS) {
                it.remove();
            } else {
                int maybeFlippedWidth;
                int maybeFlippedHeight;
                boolean isCandidatePortrait = realWidth > realHeight;
                if (isCandidatePortrait) {
                    maybeFlippedWidth = realHeight;
                } else {
                    maybeFlippedWidth = realWidth;
                }
                if (isCandidatePortrait) {
                    maybeFlippedHeight = realWidth;
                } else {
                    maybeFlippedHeight = realHeight;
                }
                if (maybeFlippedWidth == screenResolution.x && maybeFlippedHeight == screenResolution.y) {
                    Point exactPoint = new Point(realWidth, realHeight);
                    MaLogger.i("SQY:Found preview size exactly matching screen size: " + exactPoint);
                    return exactPoint;
                }
                double distortion = Math.abs((((double) maybeFlippedWidth) / ((double) maybeFlippedHeight)) - screenAspectRatio);
                if (distortion < diff) {
                    bestSize = new Point(realWidth, realHeight);
                    MaLogger.i("SQY: new update bestSize: " + bestSize + " --- diff = " + diff + " --- newDiff= " + distortion);
                    diff = distortion;
                }
            }
        }
        if (bestSize == null) {
            Size defaultPreview = parameters.getPreviewSize();
            if (defaultPreview == null) {
                throw new IllegalStateException("Parameters contained no preview size!");
            }
            Point defaultSize2 = new Point(defaultPreview.width, defaultPreview.height);
            MaLogger.i("SQY:No suitable preview sizes, using default: " + defaultSize2);
            MaLogger.i("SQY: default previewSize: " + parameters.getPreviewSize().width + "," + parameters.getPreviewSize().height);
            return defaultSize2;
        }
        MaLogger.i("SQY: bestSize is not null: " + bestSize);
        return bestSize;
    }

    private static void printfSupportedPreviewSizes(List<Size> sizes) {
        String content = "";
        for (Size supportedPreviewSize : sizes) {
            int realWidth = supportedPreviewSize.width;
            content = content + realWidth + "x" + supportedPreviewSize.height + "\n";
        }
        MaLogger.i("SQY:" + content);
    }

    private static String findSettableValue(String name, Collection<String> supportedValues, String... desiredValues) {
        MaLogger.i("Requesting " + name + " value from among: " + Arrays.toString(desiredValues));
        MaLogger.i("Supported " + name + " values: " + supportedValues);
        if (supportedValues != null) {
            for (String desiredValue : desiredValues) {
                if (supportedValues.contains(desiredValue)) {
                    MaLogger.i("Can set " + name + " to: " + desiredValue);
                    return desiredValue;
                }
            }
        }
        MaLogger.i("No supported values match");
        return null;
    }

    private static String toString(Collection<int[]> arrays) {
        if (arrays == null || arrays.isEmpty()) {
            return "[]";
        }
        StringBuilder buffer = new StringBuilder();
        buffer.append('[');
        Iterator<int[]> it = arrays.iterator();
        while (it.hasNext()) {
            buffer.append(Arrays.toString((int[]) it.next()));
            if (it.hasNext()) {
                buffer.append(", ");
            }
        }
        buffer.append(']');
        return buffer.toString();
    }

    private static String toString(Iterable<Area> areas) {
        if (areas == null) {
            return null;
        }
        StringBuilder result = new StringBuilder();
        for (Area area : areas) {
            result.append(area.rect).append(':').append(area.weight).append(' ');
        }
        return result.toString();
    }

    public static String collectStats(Parameters parameters) {
        return collectStats(parameters.flatten());
    }

    public static String collectStats(CharSequence flattenedParams) {
        StringBuilder result = new StringBuilder(1000);
        result.append("BOARD=").append(Build.BOARD).append(10);
        result.append("BRAND=").append(Build.BRAND).append(10);
        result.append("CPU_ABI=").append(Build.CPU_ABI).append(10);
        result.append("DEVICE=").append(Build.DEVICE).append(10);
        result.append("DISPLAY=").append(Build.DISPLAY).append(10);
        result.append("FINGERPRINT=").append(Build.FINGERPRINT).append(10);
        result.append("HOST=").append(Build.HOST).append(10);
        result.append("ID=").append(Build.ID).append(10);
        result.append("MANUFACTURER=").append(Build.MANUFACTURER).append(10);
        result.append("MODEL=").append(Build.MODEL).append(10);
        result.append("PRODUCT=").append(Build.PRODUCT).append(10);
        result.append("TAGS=").append(Build.TAGS).append(10);
        result.append("TIME=").append(Build.TIME).append(10);
        result.append("TYPE=").append(Build.TYPE).append(10);
        result.append("USER=").append(Build.USER).append(10);
        result.append("VERSION.CODENAME=").append(VERSION.CODENAME).append(10);
        result.append("VERSION.INCREMENTAL=").append(VERSION.INCREMENTAL).append(10);
        result.append("VERSION.RELEASE=").append(VERSION.RELEASE).append(10);
        result.append("VERSION.SDK_INT=").append(VERSION.SDK_INT).append(10);
        if (flattenedParams != null) {
            String[] params = SEMICOLON.split(flattenedParams);
            Arrays.sort(params);
            for (String param : params) {
                result.append(param).append(10);
            }
        }
        return result.toString();
    }
}
