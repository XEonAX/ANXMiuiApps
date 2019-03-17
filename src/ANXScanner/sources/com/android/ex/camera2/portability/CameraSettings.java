package com.android.ex.camera2.portability;

import android.hardware.Camera.Area;
import com.android.ex.camera2.portability.CameraCapabilities.FlashMode;
import com.android.ex.camera2.portability.CameraCapabilities.FocusMode;
import com.android.ex.camera2.portability.CameraCapabilities.SceneMode;
import com.android.ex.camera2.portability.CameraCapabilities.WhiteBalance;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class CameraSettings {
    private static final int MAX_JPEG_COMPRESSION_QUALITY = 100;
    private static final int MIN_JPEG_COMPRESSION_QUALITY = 1;
    private static final Tag TAG = new Tag("CamSet");
    protected boolean mAutoExposureLocked;
    protected boolean mAutoWhiteBalanceLocked;
    protected FlashMode mCurrentFlashMode;
    protected FocusMode mCurrentFocusMode;
    protected int mCurrentPhotoFormat;
    protected Size mCurrentPhotoSize;
    private int mCurrentPreviewFormat;
    protected Size mCurrentPreviewSize;
    protected SceneMode mCurrentSceneMode;
    protected float mCurrentZoomRatio;
    protected Size mExifThumbnailSize;
    protected int mExposureCompensationIndex;
    protected final List<Area> mFocusAreas = new ArrayList();
    protected final Map<String, String> mGeneralSetting = new TreeMap();
    protected GpsData mGpsData;
    protected byte mJpegCompressQuality;
    protected final List<Area> mMeteringAreas = new ArrayList();
    protected int mPreviewFpsRangeMax;
    protected int mPreviewFpsRangeMin;
    protected int mPreviewFrameRate;
    protected boolean mRecordingHintEnabled;
    protected boolean mSizesLocked;
    protected boolean mVideoStabilizationEnabled;
    protected WhiteBalance mWhiteBalance;

    public static class GpsData {
        public final double altitude;
        public final double latitude;
        public final double longitude;
        public final String processingMethod;
        public final long timeStamp;

        public GpsData(double latitude, double longitude, double altitude, long timeStamp, String processingMethod) {
            if (processingMethod == null && !(latitude == 0.0d && longitude == 0.0d && altitude == 0.0d)) {
                Log.w(CameraSettings.TAG, "GpsData's nonzero data will be ignored due to null processingMethod");
            }
            this.latitude = latitude;
            this.longitude = longitude;
            this.altitude = altitude;
            this.timeStamp = timeStamp;
            this.processingMethod = processingMethod;
        }

        public GpsData(GpsData src) {
            this.latitude = src.latitude;
            this.longitude = src.longitude;
            this.altitude = src.altitude;
            this.timeStamp = src.timeStamp;
            this.processingMethod = src.processingMethod;
        }
    }

    public abstract CameraSettings copy();

    protected CameraSettings() {
    }

    protected CameraSettings(CameraSettings src) {
        Size size = null;
        this.mGeneralSetting.putAll(src.mGeneralSetting);
        this.mMeteringAreas.addAll(src.mMeteringAreas);
        this.mFocusAreas.addAll(src.mFocusAreas);
        this.mSizesLocked = src.mSizesLocked;
        this.mPreviewFpsRangeMin = src.mPreviewFpsRangeMin;
        this.mPreviewFpsRangeMax = src.mPreviewFpsRangeMax;
        this.mPreviewFrameRate = src.mPreviewFrameRate;
        this.mCurrentPreviewSize = src.mCurrentPreviewSize == null ? null : new Size(src.mCurrentPreviewSize);
        this.mCurrentPreviewFormat = src.mCurrentPreviewFormat;
        if (src.mCurrentPhotoSize != null) {
            size = new Size(src.mCurrentPhotoSize);
        }
        this.mCurrentPhotoSize = size;
        this.mJpegCompressQuality = src.mJpegCompressQuality;
        this.mCurrentPhotoFormat = src.mCurrentPhotoFormat;
        this.mCurrentZoomRatio = src.mCurrentZoomRatio;
        this.mExposureCompensationIndex = src.mExposureCompensationIndex;
        this.mCurrentFlashMode = src.mCurrentFlashMode;
        this.mCurrentFocusMode = src.mCurrentFocusMode;
        this.mCurrentSceneMode = src.mCurrentSceneMode;
        this.mWhiteBalance = src.mWhiteBalance;
        this.mVideoStabilizationEnabled = src.mVideoStabilizationEnabled;
        this.mAutoExposureLocked = src.mAutoExposureLocked;
        this.mAutoWhiteBalanceLocked = src.mAutoWhiteBalanceLocked;
        this.mRecordingHintEnabled = src.mRecordingHintEnabled;
        this.mGpsData = src.mGpsData;
        this.mExifThumbnailSize = src.mExifThumbnailSize;
    }

    @Deprecated
    public void setSetting(String key, String value) {
        this.mGeneralSetting.put(key, value);
    }

    void setSizesLocked(boolean locked) {
        this.mSizesLocked = locked;
    }

    public void setPreviewFpsRange(int min, int max) {
        if (min > max) {
            int temp = max;
            max = min;
            min = temp;
        }
        this.mPreviewFpsRangeMax = max;
        this.mPreviewFpsRangeMin = min;
        this.mPreviewFrameRate = -1;
    }

    public int getPreviewFpsRangeMin() {
        return this.mPreviewFpsRangeMin;
    }

    public int getPreviewFpsRangeMax() {
        return this.mPreviewFpsRangeMax;
    }

    public void setPreviewFrameRate(int frameRate) {
        if (frameRate > 0) {
            this.mPreviewFrameRate = frameRate;
            this.mPreviewFpsRangeMax = frameRate;
            this.mPreviewFpsRangeMin = frameRate;
        }
    }

    public int getPreviewFrameRate() {
        return this.mPreviewFrameRate;
    }

    public Size getCurrentPreviewSize() {
        return new Size(this.mCurrentPreviewSize);
    }

    public boolean setPreviewSize(Size previewSize) {
        if (this.mSizesLocked) {
            Log.w(TAG, "Attempt to change preview size while locked");
            return false;
        }
        this.mCurrentPreviewSize = new Size(previewSize);
        return true;
    }

    public void setPreviewFormat(int format) {
        this.mCurrentPreviewFormat = format;
    }

    public int getCurrentPreviewFormat() {
        return this.mCurrentPreviewFormat;
    }

    public Size getCurrentPhotoSize() {
        return new Size(this.mCurrentPhotoSize);
    }

    public boolean setPhotoSize(Size photoSize) {
        if (this.mSizesLocked) {
            Log.w(TAG, "Attempt to change photo size while locked");
            return false;
        }
        this.mCurrentPhotoSize = new Size(photoSize);
        return true;
    }

    public void setPhotoFormat(int format) {
        this.mCurrentPhotoFormat = format;
    }

    public int getCurrentPhotoFormat() {
        return this.mCurrentPhotoFormat;
    }

    public void setPhotoJpegCompressionQuality(int quality) {
        if (quality < 1 || quality > 100) {
            Log.w(TAG, "Ignoring JPEG quality that falls outside the expected range");
        } else {
            this.mJpegCompressQuality = (byte) quality;
        }
    }

    public int getPhotoJpegCompressionQuality() {
        return this.mJpegCompressQuality;
    }

    public float getCurrentZoomRatio() {
        return this.mCurrentZoomRatio;
    }

    public void setZoomRatio(float ratio) {
        this.mCurrentZoomRatio = ratio;
    }

    public void setExposureCompensationIndex(int index) {
        this.mExposureCompensationIndex = index;
    }

    public int getExposureCompensationIndex() {
        return this.mExposureCompensationIndex;
    }

    public void setAutoExposureLock(boolean locked) {
        this.mAutoExposureLocked = locked;
    }

    public boolean isAutoExposureLocked() {
        return this.mAutoExposureLocked;
    }

    public void setMeteringAreas(List<Area> areas) {
        this.mMeteringAreas.clear();
        if (areas != null) {
            this.mMeteringAreas.addAll(areas);
        }
    }

    public List<Area> getMeteringAreas() {
        return new ArrayList(this.mMeteringAreas);
    }

    public FlashMode getCurrentFlashMode() {
        return this.mCurrentFlashMode;
    }

    public void setFlashMode(FlashMode flashMode) {
        this.mCurrentFlashMode = flashMode;
    }

    public void setFocusMode(FocusMode focusMode) {
        this.mCurrentFocusMode = focusMode;
    }

    public FocusMode getCurrentFocusMode() {
        return this.mCurrentFocusMode;
    }

    public void setFocusAreas(List<Area> areas) {
        this.mFocusAreas.clear();
        if (areas != null) {
            this.mFocusAreas.addAll(areas);
        }
    }

    public List<Area> getFocusAreas() {
        return new ArrayList(this.mFocusAreas);
    }

    public void setWhiteBalance(WhiteBalance whiteBalance) {
        this.mWhiteBalance = whiteBalance;
    }

    public WhiteBalance getWhiteBalance() {
        return this.mWhiteBalance;
    }

    public void setAutoWhiteBalanceLock(boolean locked) {
        this.mAutoWhiteBalanceLocked = locked;
    }

    public boolean isAutoWhiteBalanceLocked() {
        return this.mAutoWhiteBalanceLocked;
    }

    public SceneMode getCurrentSceneMode() {
        return this.mCurrentSceneMode;
    }

    public void setSceneMode(SceneMode sceneMode) {
        this.mCurrentSceneMode = sceneMode;
    }

    public void setVideoStabilization(boolean enabled) {
        this.mVideoStabilizationEnabled = enabled;
    }

    public boolean isVideoStabilizationEnabled() {
        return this.mVideoStabilizationEnabled;
    }

    public void setRecordingHintEnabled(boolean hintEnabled) {
        this.mRecordingHintEnabled = hintEnabled;
    }

    public boolean isRecordingHintEnabled() {
        return this.mRecordingHintEnabled;
    }

    public void setGpsData(GpsData data) {
        this.mGpsData = new GpsData(data);
    }

    public GpsData getGpsData() {
        return this.mGpsData == null ? null : new GpsData(this.mGpsData);
    }

    public void clearGpsData() {
        this.mGpsData = null;
    }

    public void setExifThumbnailSize(Size s) {
        this.mExifThumbnailSize = s;
    }

    public Size getExifThumbnailSize() {
        return this.mExifThumbnailSize == null ? null : new Size(this.mExifThumbnailSize);
    }
}
