package com.android.ex.camera2.portability;

import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.android.ex.camera2.portability.CameraCapabilities.Feature;
import com.android.ex.camera2.portability.CameraCapabilities.FlashMode;
import com.android.ex.camera2.portability.CameraCapabilities.FocusMode;
import com.android.ex.camera2.portability.CameraCapabilities.SceneMode;
import com.android.ex.camera2.portability.CameraCapabilities.Stringifier;
import com.android.ex.camera2.portability.CameraCapabilities.WhiteBalance;
import com.android.ex.camera2.portability.debug.Log.Tag;
import com.taobao.ma.bar.common.constants.MaBarConstants;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class AndroidCameraCapabilities extends CameraCapabilities {
    private static Tag TAG = new Tag("AndCamCapabs");
    public static final float ZOOM_MULTIPLIER = 100.0f;
    private FpsComparator mFpsComparator = new FpsComparator();
    private SizeComparator mSizeComparator = new SizeComparator();

    private static class FpsComparator implements Comparator<int[]> {
        private FpsComparator() {
        }

        public int compare(int[] fps1, int[] fps2) {
            return fps1[0] == fps2[0] ? fps1[1] - fps2[1] : fps1[0] - fps2[0];
        }
    }

    private static class SizeComparator implements Comparator<Size> {
        private SizeComparator() {
        }

        public int compare(Size size1, Size size2) {
            if (size1.width() == size2.width()) {
                return size1.height() - size2.height();
            }
            return size1.width() - size2.width();
        }
    }

    AndroidCameraCapabilities(Parameters p) {
        super(new Stringifier());
        this.mMaxExposureCompensation = p.getMaxExposureCompensation();
        this.mMinExposureCompensation = p.getMinExposureCompensation();
        this.mExposureCompensationStep = p.getExposureCompensationStep();
        this.mMaxNumOfFacesSupported = p.getMaxNumDetectedFaces();
        this.mMaxNumOfMeteringArea = p.getMaxNumMeteringAreas();
        this.mPreferredPreviewSizeForVideo = new Size(p.getPreferredPreviewSizeForVideo());
        this.mSupportedPreviewFormats.addAll(p.getSupportedPreviewFormats());
        this.mSupportedPhotoFormats.addAll(p.getSupportedPictureFormats());
        this.mHorizontalViewAngle = p.getHorizontalViewAngle();
        this.mVerticalViewAngle = p.getVerticalViewAngle();
        buildPreviewFpsRange(p);
        buildPreviewSizes(p);
        buildVideoSizes(p);
        buildPictureSizes(p);
        buildSceneModes(p);
        buildFlashModes(p);
        buildFocusModes(p);
        buildWhiteBalances(p);
        if (p.isZoomSupported()) {
            this.mMaxZoomRatio = ((float) ((Integer) p.getZoomRatios().get(p.getMaxZoom())).intValue()) / 100.0f;
            this.mSupportedFeatures.add(Feature.ZOOM);
        }
        if (p.isVideoSnapshotSupported()) {
            this.mSupportedFeatures.add(Feature.VIDEO_SNAPSHOT);
        }
        if (p.isAutoExposureLockSupported()) {
            this.mSupportedFeatures.add(Feature.AUTO_EXPOSURE_LOCK);
        }
        if (p.isAutoWhiteBalanceLockSupported()) {
            this.mSupportedFeatures.add(Feature.AUTO_WHITE_BALANCE_LOCK);
        }
        if (supports(FocusMode.AUTO)) {
            this.mMaxNumOfFocusAreas = p.getMaxNumFocusAreas();
            if (this.mMaxNumOfFocusAreas > 0) {
                this.mSupportedFeatures.add(Feature.FOCUS_AREA);
            }
        }
        if (this.mMaxNumOfMeteringArea > 0) {
            this.mSupportedFeatures.add(Feature.METERING_AREA);
        }
    }

    AndroidCameraCapabilities(AndroidCameraCapabilities src) {
        super((CameraCapabilities) src);
    }

    private void buildPreviewFpsRange(Parameters p) {
        List<int[]> supportedPreviewFpsRange = p.getSupportedPreviewFpsRange();
        if (supportedPreviewFpsRange != null) {
            this.mSupportedPreviewFpsRange.addAll(supportedPreviewFpsRange);
        }
        Collections.sort(this.mSupportedPreviewFpsRange, this.mFpsComparator);
    }

    private void buildPreviewSizes(Parameters p) {
        List<Size> supportedPreviewSizes = p.getSupportedPreviewSizes();
        if (supportedPreviewSizes != null) {
            for (Size s : supportedPreviewSizes) {
                this.mSupportedPreviewSizes.add(new Size(s.width, s.height));
            }
        }
        Collections.sort(this.mSupportedPreviewSizes, this.mSizeComparator);
    }

    private void buildVideoSizes(Parameters p) {
        List<Size> supportedVideoSizes = p.getSupportedVideoSizes();
        if (supportedVideoSizes != null) {
            for (Size s : supportedVideoSizes) {
                this.mSupportedVideoSizes.add(new Size(s.width, s.height));
            }
        }
        Collections.sort(this.mSupportedVideoSizes, this.mSizeComparator);
    }

    private void buildPictureSizes(Parameters p) {
        List<Size> supportedPictureSizes = p.getSupportedPictureSizes();
        if (supportedPictureSizes != null) {
            for (Size s : supportedPictureSizes) {
                this.mSupportedPhotoSizes.add(new Size(s.width, s.height));
            }
        }
        Collections.sort(this.mSupportedPhotoSizes, this.mSizeComparator);
    }

    private void buildSceneModes(Parameters p) {
        List<String> supportedSceneModes = p.getSupportedSceneModes();
        if (supportedSceneModes != null) {
            for (String scene : supportedSceneModes) {
                if ("auto".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.AUTO);
                } else if ("action".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.ACTION);
                } else if (MaBarConstants.UT_PARAM_KEY_BARCODE.equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.BARCODE);
                } else if ("beach".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.BEACH);
                } else if ("candlelight".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.CANDLELIGHT);
                } else if ("fireworks".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.FIREWORKS);
                } else if ("hdr".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.HDR);
                } else if ("landscape".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.LANDSCAPE);
                } else if ("night".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.NIGHT);
                } else if ("night-portrait".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.NIGHT_PORTRAIT);
                } else if ("party".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.PARTY);
                } else if ("portrait".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.PORTRAIT);
                } else if ("snow".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.SNOW);
                } else if ("sports".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.SPORTS);
                } else if ("steadyphoto".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.STEADYPHOTO);
                } else if ("sunset".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.SUNSET);
                } else if ("theatre".equals(scene)) {
                    this.mSupportedSceneModes.add(SceneMode.THEATRE);
                }
            }
        }
    }

    private void buildFlashModes(Parameters p) {
        List<String> supportedFlashModes = p.getSupportedFlashModes();
        if (supportedFlashModes == null) {
            this.mSupportedFlashModes.add(FlashMode.NO_FLASH);
            return;
        }
        for (String flash : supportedFlashModes) {
            if ("auto".equals(flash)) {
                this.mSupportedFlashModes.add(FlashMode.AUTO);
            } else if ("off".equals(flash)) {
                this.mSupportedFlashModes.add(FlashMode.OFF);
            } else if ("on".equals(flash)) {
                this.mSupportedFlashModes.add(FlashMode.ON);
            } else if ("red-eye".equals(flash)) {
                this.mSupportedFlashModes.add(FlashMode.RED_EYE);
            } else if ("torch".equals(flash)) {
                this.mSupportedFlashModes.add(FlashMode.TORCH);
            }
        }
    }

    private void buildFocusModes(Parameters p) {
        List<String> supportedFocusModes = p.getSupportedFocusModes();
        if (supportedFocusModes != null) {
            for (String focus : supportedFocusModes) {
                if ("auto".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.AUTO);
                } else if ("continuous-picture".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.CONTINUOUS_PICTURE);
                } else if ("continuous-video".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.CONTINUOUS_VIDEO);
                } else if ("edof".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.EXTENDED_DOF);
                } else if ("fixed".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.FIXED);
                } else if ("infinity".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.INFINITY);
                } else if ("macro".equals(focus)) {
                    this.mSupportedFocusModes.add(FocusMode.MACRO);
                }
            }
        }
    }

    private void buildWhiteBalances(Parameters p) {
        List<String> supportedWhiteBalances = p.getSupportedWhiteBalance();
        if (supportedWhiteBalances != null) {
            for (String wb : supportedWhiteBalances) {
                if ("auto".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.AUTO);
                } else if ("cloudy-daylight".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.CLOUDY_DAYLIGHT);
                } else if ("daylight".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.DAYLIGHT);
                } else if ("fluorescent".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.FLUORESCENT);
                } else if ("incandescent".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.INCANDESCENT);
                } else if ("shade".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.SHADE);
                } else if ("twilight".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.TWILIGHT);
                } else if ("warm-fluorescent".equals(wb)) {
                    this.mSupportedWhiteBalances.add(WhiteBalance.WARM_FLUORESCENT);
                }
            }
        }
    }
}
