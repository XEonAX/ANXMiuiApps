package com.android.ex.camera2.portability;

import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.android.ex.camera2.portability.CameraCapabilities.Feature;
import com.android.ex.camera2.portability.CameraCapabilities.Stringifier;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;

public class AndroidCameraSettings extends CameraSettings {
    private static final String RECORDING_HINT = "recording-hint";
    private static final Tag TAG = new Tag("AndCamSet");
    private static final String TRUE = "true";

    public AndroidCameraSettings(CameraCapabilities capabilities, Parameters params) {
        if (params == null) {
            Log.w(TAG, "Settings ctor requires a non-null Camera.Parameters.");
            return;
        }
        Stringifier stringifier = capabilities.getStringifier();
        setSizesLocked(false);
        Size paramPreviewSize = params.getPreviewSize();
        setPreviewSize(new Size(paramPreviewSize.width, paramPreviewSize.height));
        setPreviewFrameRate(params.getPreviewFrameRate());
        int[] previewFpsRange = new int[2];
        params.getPreviewFpsRange(previewFpsRange);
        setPreviewFpsRange(previewFpsRange[0], previewFpsRange[1]);
        setPreviewFormat(params.getPreviewFormat());
        if (capabilities.supports(Feature.ZOOM)) {
            setZoomRatio(((float) ((Integer) params.getZoomRatios().get(params.getZoom())).intValue()) / 100.0f);
        } else {
            setZoomRatio(1.0f);
        }
        setExposureCompensationIndex(params.getExposureCompensation());
        setFlashMode(stringifier.flashModeFromString(params.getFlashMode()));
        setFocusMode(stringifier.focusModeFromString(params.getFocusMode()));
        setSceneMode(stringifier.sceneModeFromString(params.getSceneMode()));
        if (capabilities.supports(Feature.VIDEO_STABILIZATION)) {
            setVideoStabilization(isVideoStabilizationEnabled());
        }
        setRecordingHintEnabled("true".equals(params.get(RECORDING_HINT)));
        setPhotoJpegCompressionQuality(params.getJpegQuality());
        Size paramPictureSize = params.getPictureSize();
        setPhotoSize(new Size(paramPictureSize.width, paramPictureSize.height));
        setPhotoFormat(params.getPictureFormat());
    }

    public AndroidCameraSettings(AndroidCameraSettings other) {
        super(other);
    }

    public CameraSettings copy() {
        return new AndroidCameraSettings(this);
    }
}
