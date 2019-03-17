package com.android.ex.camera2.portability;

import com.ali.auth.third.login.LoginConstants;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class CameraCapabilities {
    private static Tag TAG = new Tag("CamCapabs");
    protected static final float ZOOM_RATIO_UNZOOMED = 1.0f;
    protected float mExposureCompensationStep;
    protected float mHorizontalViewAngle;
    protected int mMaxExposureCompensation;
    protected int mMaxNumOfFacesSupported;
    protected int mMaxNumOfFocusAreas;
    protected int mMaxNumOfMeteringArea;
    protected float mMaxZoomRatio;
    protected int mMinExposureCompensation;
    protected Size mPreferredPreviewSizeForVideo;
    private final Stringifier mStringifier;
    protected final EnumSet<Feature> mSupportedFeatures = EnumSet.noneOf(Feature.class);
    protected final EnumSet<FlashMode> mSupportedFlashModes = EnumSet.noneOf(FlashMode.class);
    protected final EnumSet<FocusMode> mSupportedFocusModes = EnumSet.noneOf(FocusMode.class);
    protected final TreeSet<Integer> mSupportedPhotoFormats = new TreeSet();
    protected final ArrayList<Size> mSupportedPhotoSizes = new ArrayList();
    protected final TreeSet<Integer> mSupportedPreviewFormats = new TreeSet();
    protected final ArrayList<int[]> mSupportedPreviewFpsRange = new ArrayList();
    protected final ArrayList<Size> mSupportedPreviewSizes = new ArrayList();
    protected final EnumSet<SceneMode> mSupportedSceneModes = EnumSet.noneOf(SceneMode.class);
    protected final ArrayList<Size> mSupportedVideoSizes = new ArrayList();
    protected final EnumSet<WhiteBalance> mSupportedWhiteBalances = EnumSet.noneOf(WhiteBalance.class);
    protected float mVerticalViewAngle;

    public enum Feature {
        ZOOM,
        VIDEO_SNAPSHOT,
        FOCUS_AREA,
        METERING_AREA,
        AUTO_EXPOSURE_LOCK,
        AUTO_WHITE_BALANCE_LOCK,
        VIDEO_STABILIZATION
    }

    public enum FlashMode {
        NO_FLASH,
        AUTO,
        OFF,
        ON,
        TORCH,
        RED_EYE
    }

    public enum FocusMode {
        AUTO,
        CONTINUOUS_PICTURE,
        CONTINUOUS_VIDEO,
        EXTENDED_DOF,
        FIXED,
        INFINITY,
        MACRO
    }

    public enum SceneMode {
        NO_SCENE_MODE,
        AUTO,
        ACTION,
        BARCODE,
        BEACH,
        CANDLELIGHT,
        FIREWORKS,
        HDR,
        LANDSCAPE,
        NIGHT,
        NIGHT_PORTRAIT,
        PARTY,
        PORTRAIT,
        SNOW,
        SPORTS,
        STEADYPHOTO,
        SUNSET,
        THEATRE
    }

    public static class Stringifier {
        private static String toApiCase(String enumCase) {
            return enumCase.toLowerCase(Locale.US).replaceAll(LoginConstants.UNDER_LINE, "-");
        }

        private static String toEnumCase(String apiCase) {
            return apiCase.toUpperCase(Locale.US).replaceAll("-", LoginConstants.UNDER_LINE);
        }

        public String stringify(FocusMode focus) {
            return toApiCase(focus.name());
        }

        public FocusMode focusModeFromString(String val) {
            if (val == null) {
                return FocusMode.values()[0];
            }
            try {
                return FocusMode.valueOf(toEnumCase(val));
            } catch (IllegalArgumentException e) {
                return FocusMode.values()[0];
            }
        }

        public String stringify(FlashMode flash) {
            return toApiCase(flash.name());
        }

        public FlashMode flashModeFromString(String val) {
            if (val == null) {
                return FlashMode.values()[0];
            }
            try {
                return FlashMode.valueOf(toEnumCase(val));
            } catch (IllegalArgumentException e) {
                return FlashMode.values()[0];
            }
        }

        public String stringify(SceneMode scene) {
            return toApiCase(scene.name());
        }

        public SceneMode sceneModeFromString(String val) {
            if (val == null) {
                return SceneMode.values()[0];
            }
            try {
                return SceneMode.valueOf(toEnumCase(val));
            } catch (IllegalArgumentException e) {
                return SceneMode.values()[0];
            }
        }

        public String stringify(WhiteBalance wb) {
            return toApiCase(wb.name());
        }

        public WhiteBalance whiteBalanceFromString(String val) {
            if (val == null) {
                return WhiteBalance.values()[0];
            }
            try {
                return WhiteBalance.valueOf(toEnumCase(val));
            } catch (IllegalArgumentException e) {
                return WhiteBalance.values()[0];
            }
        }
    }

    public enum WhiteBalance {
        AUTO,
        CLOUDY_DAYLIGHT,
        DAYLIGHT,
        FLUORESCENT,
        INCANDESCENT,
        SHADE,
        TWILIGHT,
        WARM_FLUORESCENT
    }

    CameraCapabilities(Stringifier stringifier) {
        this.mStringifier = stringifier;
    }

    public CameraCapabilities(CameraCapabilities src) {
        this.mSupportedPreviewFpsRange.addAll(src.mSupportedPreviewFpsRange);
        this.mSupportedPreviewSizes.addAll(src.mSupportedPreviewSizes);
        this.mSupportedPreviewFormats.addAll(src.mSupportedPreviewFormats);
        this.mSupportedVideoSizes.addAll(src.mSupportedVideoSizes);
        this.mSupportedPhotoSizes.addAll(src.mSupportedPhotoSizes);
        this.mSupportedPhotoFormats.addAll(src.mSupportedPhotoFormats);
        this.mSupportedSceneModes.addAll(src.mSupportedSceneModes);
        this.mSupportedFlashModes.addAll(src.mSupportedFlashModes);
        this.mSupportedFocusModes.addAll(src.mSupportedFocusModes);
        this.mSupportedWhiteBalances.addAll(src.mSupportedWhiteBalances);
        this.mSupportedFeatures.addAll(src.mSupportedFeatures);
        this.mPreferredPreviewSizeForVideo = src.mPreferredPreviewSizeForVideo;
        this.mMaxExposureCompensation = src.mMaxExposureCompensation;
        this.mMinExposureCompensation = src.mMinExposureCompensation;
        this.mExposureCompensationStep = src.mExposureCompensationStep;
        this.mMaxNumOfFacesSupported = src.mMaxNumOfFacesSupported;
        this.mMaxNumOfFocusAreas = src.mMaxNumOfFocusAreas;
        this.mMaxNumOfMeteringArea = src.mMaxNumOfMeteringArea;
        this.mMaxZoomRatio = src.mMaxZoomRatio;
        this.mHorizontalViewAngle = src.mHorizontalViewAngle;
        this.mVerticalViewAngle = src.mVerticalViewAngle;
        this.mStringifier = src.mStringifier;
    }

    public float getHorizontalViewAngle() {
        return this.mHorizontalViewAngle;
    }

    public float getVerticalViewAngle() {
        return this.mVerticalViewAngle;
    }

    public Set<Integer> getSupportedPhotoFormats() {
        return new TreeSet(this.mSupportedPhotoFormats);
    }

    public Set<Integer> getSupportedPreviewFormats() {
        return new TreeSet(this.mSupportedPreviewFormats);
    }

    public List<Size> getSupportedPhotoSizes() {
        return new ArrayList(this.mSupportedPhotoSizes);
    }

    public final List<int[]> getSupportedPreviewFpsRange() {
        return new ArrayList(this.mSupportedPreviewFpsRange);
    }

    public final List<Size> getSupportedPreviewSizes() {
        return new ArrayList(this.mSupportedPreviewSizes);
    }

    public final Size getPreferredPreviewSizeForVideo() {
        return new Size(this.mPreferredPreviewSizeForVideo);
    }

    public final List<Size> getSupportedVideoSizes() {
        return new ArrayList(this.mSupportedVideoSizes);
    }

    public final Set<SceneMode> getSupportedSceneModes() {
        return new HashSet(this.mSupportedSceneModes);
    }

    public final boolean supports(SceneMode scene) {
        return scene != null && this.mSupportedSceneModes.contains(scene);
    }

    public boolean supports(CameraSettings settings) {
        if (zoomCheck(settings) && exposureCheck(settings) && focusCheck(settings) && flashCheck(settings) && photoSizeCheck(settings) && previewSizeCheck(settings) && videoStabilizationCheck(settings)) {
            return true;
        }
        return false;
    }

    public final Set<FlashMode> getSupportedFlashModes() {
        return new HashSet(this.mSupportedFlashModes);
    }

    public final boolean supports(FlashMode flash) {
        return flash != null && this.mSupportedFlashModes.contains(flash);
    }

    public final Set<FocusMode> getSupportedFocusModes() {
        return new HashSet(this.mSupportedFocusModes);
    }

    public final boolean supports(FocusMode focus) {
        return focus != null && this.mSupportedFocusModes.contains(focus);
    }

    public final Set<WhiteBalance> getSupportedWhiteBalance() {
        return new HashSet(this.mSupportedWhiteBalances);
    }

    public boolean supports(WhiteBalance wb) {
        return wb != null && this.mSupportedWhiteBalances.contains(wb);
    }

    public final Set<Feature> getSupportedFeature() {
        return new HashSet(this.mSupportedFeatures);
    }

    public boolean supports(Feature ft) {
        return ft != null && this.mSupportedFeatures.contains(ft);
    }

    public float getMaxZoomRatio() {
        return this.mMaxZoomRatio;
    }

    public final int getMinExposureCompensation() {
        return this.mMinExposureCompensation;
    }

    public final int getMaxExposureCompensation() {
        return this.mMaxExposureCompensation;
    }

    public final float getExposureCompensationStep() {
        return this.mExposureCompensationStep;
    }

    public final int getMaxNumOfFacesSupported() {
        return this.mMaxNumOfFacesSupported;
    }

    public Stringifier getStringifier() {
        return this.mStringifier;
    }

    private boolean zoomCheck(CameraSettings settings) {
        float ratio = settings.getCurrentZoomRatio();
        if (supports(Feature.ZOOM)) {
            if (settings.getCurrentZoomRatio() > getMaxZoomRatio()) {
                Log.v(TAG, "Zoom ratio is not supported: ratio = " + settings.getCurrentZoomRatio());
                return false;
            }
        } else if (ratio != 1.0f) {
            Log.v(TAG, "Zoom is not supported");
            return false;
        }
        return true;
    }

    private boolean exposureCheck(CameraSettings settings) {
        int index = settings.getExposureCompensationIndex();
        if (index <= getMaxExposureCompensation() && index >= getMinExposureCompensation()) {
            return true;
        }
        Log.v(TAG, "Exposure compensation index is not supported. Min = " + getMinExposureCompensation() + ", max = " + getMaxExposureCompensation() + ", setting = " + index);
        return false;
    }

    private boolean focusCheck(CameraSettings settings) {
        FocusMode focusMode = settings.getCurrentFocusMode();
        if (!supports(focusMode)) {
            if (supports(FocusMode.FIXED)) {
                Log.w(TAG, "Focus mode not supported... trying FIXED");
                settings.setFocusMode(FocusMode.FIXED);
            } else {
                Log.v(TAG, "Focus mode not supported:" + (focusMode != null ? focusMode.name() : "null"));
                return false;
            }
        }
        return true;
    }

    private boolean flashCheck(CameraSettings settings) {
        FlashMode flashMode = settings.getCurrentFlashMode();
        if (supports(flashMode)) {
            return true;
        }
        Log.v(TAG, "Flash mode not supported:" + (flashMode != null ? flashMode.name() : "null"));
        return false;
    }

    private boolean photoSizeCheck(CameraSettings settings) {
        Size photoSize = settings.getCurrentPhotoSize();
        if (this.mSupportedPhotoSizes.contains(photoSize)) {
            return true;
        }
        Log.v(TAG, "Unsupported photo size:" + photoSize);
        return false;
    }

    private boolean previewSizeCheck(CameraSettings settings) {
        Size previewSize = settings.getCurrentPreviewSize();
        if (this.mSupportedPreviewSizes.contains(previewSize)) {
            return true;
        }
        Log.v(TAG, "Unsupported preview size:" + previewSize);
        return false;
    }

    private boolean videoStabilizationCheck(CameraSettings settings) {
        if (!settings.isVideoStabilizationEnabled() || supports(Feature.VIDEO_STABILIZATION)) {
            return true;
        }
        Log.v(TAG, "Video stabilization is not supported");
        return false;
    }
}
