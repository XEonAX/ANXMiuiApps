package com.meicam.sdk;

import android.graphics.PointF;

public class NvsTimelineVideoFx extends NvsFx {
    public static final int TIMELINE_VIDEOFX_TYPE_BUILTIN = 0;
    public static final int TIMELINE_VIDEOFX_TYPE_CUSTOM = 2;
    public static final int TIMELINE_VIDEOFX_TYPE_PACKAGE = 1;

    private native long nativeChangeInPoint(long j, long j2);

    private native long nativeChangeOutPoint(long j, long j2);

    private native String nativeGetBuiltinTimelineVideoFxName(long j);

    private native long nativeGetInPoint(long j);

    private native long nativeGetOutPoint(long j);

    private native String nativeGetTimelineVideoFxPackageId(long j);

    private native int nativeGetTimelineVideoFxType(long j);

    private native PointF nativeMapPointFromCanonicalToParticleSystem(long j, PointF pointF);

    private native void nativeMovePosition(long j, long j2);

    public int getTimelineVideoFxType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTimelineVideoFxType(this.m_internalObject);
    }

    public String getBuiltinTimelineVideoFxName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBuiltinTimelineVideoFxName(this.m_internalObject);
    }

    public String getTimelineVideoFxPackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTimelineVideoFxPackageId(this.m_internalObject);
    }

    public long getInPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetInPoint(this.m_internalObject);
    }

    public long getOutPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutPoint(this.m_internalObject);
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

    public PointF mapPointFromCanonicalToParticleSystem(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapPointFromCanonicalToParticleSystem(this.m_internalObject, pointF);
    }
}
