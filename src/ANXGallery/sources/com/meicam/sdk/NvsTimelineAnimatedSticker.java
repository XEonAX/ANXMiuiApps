package com.meicam.sdk;

import android.graphics.PointF;
import android.graphics.RectF;
import java.util.List;

public class NvsTimelineAnimatedSticker extends NvsFx {
    private native long nativeChangeInPoint(long j, long j2);

    private native long nativeChangeOutPoint(long j, long j2);

    private native String nativeGetAnimatedStickerPackageId(long j);

    private native List<PointF> nativeGetBoundingRectangleVertices(long j);

    private native float nativeGetCenterAzimuthAngle(long j);

    private native float nativeGetCenterPolarAngle(long j);

    private native boolean nativeGetClipAffinityEnabled(long j);

    private native long nativeGetDefaultDuration(long j);

    private native boolean nativeGetHorizontalFlip(long j);

    private native long nativeGetInPoint(long j);

    private native RectF nativeGetOriginalBoundingRect(long j);

    private native float nativeGetOrthoAngleRange(long j);

    private native long nativeGetOutPoint(long j);

    private native float nativeGetPolarAngleRange(long j);

    private native float nativeGetRotationZ(long j);

    private native float nativeGetScale(long j);

    private native PointF nativeGetTranslation(long j);

    private native boolean nativeGetVerticalFlip(long j);

    private native NvsVolume nativeGetVolumeGain(long j);

    private native float nativeGetZValue(long j);

    private native boolean nativeHasAudio(long j);

    private native boolean nativeIsPanoramic(long j);

    private native void nativeMovePosition(long j, long j2);

    private native void nativeRotateAnimatedSticker(long j, float f, PointF pointF);

    private native void nativeScaleAnimatedSticker(long j, float f, PointF pointF);

    private native void nativeSetCenterAzimuthAngle(long j, float f);

    private native void nativeSetCenterPolarAngle(long j, float f);

    private native void nativeSetClipAffinityEnabled(long j, boolean z);

    private native void nativeSetHorizontalFlip(long j, boolean z);

    private native void nativeSetPolarAngleRange(long j, float f);

    private native void nativeSetRotationZ(long j, float f);

    private native void nativeSetScale(long j, float f);

    private native void nativeSetTranslation(long j, PointF pointF);

    private native void nativeSetVerticalFlip(long j, boolean z);

    private native void nativeSetVolumeGain(long j, float f, float f2);

    private native void nativeSetZValue(long j, float f);

    private native void nativeTranslateAnimatedSticker(long j, PointF pointF);

    public void setClipAffinityEnabled(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetClipAffinityEnabled(this.m_internalObject, z);
    }

    public boolean getClipAffinityEnabled() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipAffinityEnabled(this.m_internalObject);
    }

    public long getInPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetInPoint(this.m_internalObject);
    }

    public long getOutPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutPoint(this.m_internalObject);
    }

    public String getAnimatedStickerPackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAnimatedStickerPackageId(this.m_internalObject);
    }

    public long changeInPoint(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeInPoint(this.m_internalObject, j);
    }

    public long changeOutPoint(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeOutPoint(this.m_internalObject, j);
    }

    public void movePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        nativeMovePosition(this.m_internalObject, j);
    }

    public void setScale(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetScale(this.m_internalObject, f);
    }

    public float getScale() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetScale(this.m_internalObject);
    }

    public void setHorizontalFlip(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetHorizontalFlip(this.m_internalObject, z);
    }

    public boolean getHorizontalFlip() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetHorizontalFlip(this.m_internalObject);
    }

    public void setVerticalFlip(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetVerticalFlip(this.m_internalObject, z);
    }

    public boolean getVerticalFlip() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVerticalFlip(this.m_internalObject);
    }

    public void setRotationZ(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetRotationZ(this.m_internalObject, f);
    }

    public float getRotationZ() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetRotationZ(this.m_internalObject);
    }

    public void setTranslation(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetTranslation(this.m_internalObject, pointF);
    }

    public PointF getTranslation() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTranslation(this.m_internalObject);
    }

    public void translateAnimatedSticker(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeTranslateAnimatedSticker(this.m_internalObject, pointF);
    }

    public void scaleAnimatedSticker(float f, PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeScaleAnimatedSticker(this.m_internalObject, f, pointF);
    }

    public void rotateAnimatedSticker(float f, PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeRotateAnimatedSticker(this.m_internalObject, f, pointF);
    }

    public void rotateAnimatedSticker(float f) {
        NvsUtils.checkFunctionInMainThread();
        List boundingRectangleVertices = getBoundingRectangleVertices();
        PointF pointF = (PointF) boundingRectangleVertices.get(0);
        float f2 = pointF.x;
        float f3 = pointF.y;
        int i = 1;
        float f4 = f3;
        float f5 = f2;
        while (i < 4) {
            float f6;
            pointF = (PointF) boundingRectangleVertices.get(i);
            if (pointF.x < f5) {
                f5 = pointF.x;
            } else if (pointF.x > f2) {
                f2 = pointF.x;
            }
            if (pointF.y < f3) {
                f6 = pointF.y;
                f3 = f4;
            } else if (pointF.y > f4) {
                float f7 = f3;
                f3 = pointF.y;
                f6 = f7;
            } else {
                f6 = f3;
                f3 = f4;
            }
            i++;
            f4 = f3;
            f3 = f6;
        }
        rotateAnimatedSticker(f, new PointF((f2 + f5) / 2.0f, (f4 + f3) / 2.0f));
    }

    public RectF getOriginalBoundingRect() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOriginalBoundingRect(this.m_internalObject);
    }

    public List<PointF> getBoundingRectangleVertices() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBoundingRectangleVertices(this.m_internalObject);
    }

    public boolean isPanoramic() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsPanoramic(this.m_internalObject);
    }

    public void setCenterPolarAngle(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCenterPolarAngle(this.m_internalObject, f);
    }

    public float getCenterPolarAngle() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCenterPolarAngle(this.m_internalObject);
    }

    public void setCenterAzimuthAngle(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCenterAzimuthAngle(this.m_internalObject, f);
    }

    public float getCenterAzimuthAngle() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCenterAzimuthAngle(this.m_internalObject);
    }

    public void setPolarAngleRange(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPolarAngleRange(this.m_internalObject, f);
    }

    public float getPolarAngleRange() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPolarAngleRange(this.m_internalObject);
    }

    public float getOrthoAngleRange() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOrthoAngleRange(this.m_internalObject);
    }

    public void setZValue(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetZValue(this.m_internalObject, f);
    }

    public float getZValue() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetZValue(this.m_internalObject);
    }

    public boolean hasAudio() {
        NvsUtils.checkFunctionInMainThread();
        return nativeHasAudio(this.m_internalObject);
    }

    public void setVolumeGain(float f, float f2) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetVolumeGain(this.m_internalObject, f, f2);
    }

    public NvsVolume getVolumeGain() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVolumeGain(this.m_internalObject);
    }

    public long getDefaultDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDefaultDuration(this.m_internalObject);
    }
}
