package com.meicam.sdk;

public class NvsAREffectContext {
    private long m_contextInterface;

    private native void nativeCleanup(long j);

    private native void nativeSetChinWarpRatio(long j, float f);

    private native void nativeSetEyeDistanceWarpRatio(long j, float f);

    private native void nativeSetEyeEnlargeRatio(long j, float f);

    private native void nativeSetEyebrowWarpRatio(long j, float f);

    private native void nativeSetForeheadWarpRatio(long j, float f);

    private native void nativeSetHairlineWarpRatio(long j, float f);

    private native void nativeSetJawWarpRatio(long j, float f);

    private native void nativeSetMalarWarpRatio(long j, float f);

    private native void nativeSetMouthWidthWarpRatio(long j, float f);

    private native void nativeSetNoseLengthWarpRatio(long j, float f);

    private native void nativeSetNoseWidthWarpRatio(long j, float f);

    private native void nativeSetShrinkFaceRatio(long j, float f);

    public void setEyeEnlargeRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEyeEnlargeRatio(this.m_contextInterface, f);
    }

    public void setShrinkFaceRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetShrinkFaceRatio(this.m_contextInterface, f);
    }

    public void setForeheadWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetForeheadWarpRatio(this.m_contextInterface, f);
    }

    public void setHairlineWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetHairlineWarpRatio(this.m_contextInterface, f);
    }

    public void setMalarWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetMalarWarpRatio(this.m_contextInterface, f);
    }

    public void setJawWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetJawWarpRatio(this.m_contextInterface, f);
    }

    public void setChinWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetChinWarpRatio(this.m_contextInterface, f);
    }

    public void setEyebrowWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEyebrowWarpRatio(this.m_contextInterface, f);
    }

    public void setEyeDistanceWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEyeDistanceWarpRatio(this.m_contextInterface, f);
    }

    public void setNoseLengthWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetNoseLengthWarpRatio(this.m_contextInterface, f);
    }

    public void setNoseWidthWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetNoseWidthWarpRatio(this.m_contextInterface, f);
    }

    public void setMouthWidthWarpRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetMouthWidthWarpRatio(this.m_contextInterface, f);
    }

    protected void setContextInterface(long j) {
        this.m_contextInterface = j;
    }

    protected void finalize() throws Throwable {
        if (this.m_contextInterface != 0) {
            nativeCleanup(this.m_contextInterface);
            this.m_contextInterface = 0;
        }
        super.finalize();
    }
}
