package com.meicam.sdk;

import android.graphics.PointF;

public class NvsVideoFx extends NvsFx {
    public static final int VIDEOFX_TYPE_BUILTIN = 0;
    public static final int VIDEOFX_TYPE_CUSTOM = 2;
    public static final int VIDEOFX_TYPE_PACKAGE = 1;

    private native String nativeGetBuiltinVideoFxName(long j);

    private native int nativeGetIndex(long j);

    private native String nativeGetVideoFxPackageId(long j);

    private native int nativeGetVideoFxType(long j);

    private native PointF nativeMapPointFromCanonicalToParticleSystem(long j, PointF pointF);

    public int getVideoFxType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoFxType(this.m_internalObject);
    }

    public int getIndex() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetIndex(this.m_internalObject);
    }

    public String getBuiltinVideoFxName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBuiltinVideoFxName(this.m_internalObject);
    }

    public String getVideoFxPackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoFxPackageId(this.m_internalObject);
    }

    public PointF mapPointFromCanonicalToParticleSystem(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapPointFromCanonicalToParticleSystem(this.m_internalObject, pointF);
    }
}
