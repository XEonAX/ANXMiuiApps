package com.meicam.sdk;

public class NvsParticleSystemContext {
    private long m_contextInterface;

    private native void nativeAppendPositionToEmitterPositionCurve(long j, String str, float f, float f2, float f3);

    private native void nativeCleanup(long j);

    private native void nativeSetEmitterEnabled(long j, String str, boolean z);

    private native void nativeSetEmitterParticleSizeGain(long j, String str, float f);

    private native void nativeSetEmitterPosition(long j, String str, float f, float f2);

    private native void nativeSetEmitterRateGain(long j, String str, float f);

    public void setEmitterEnabled(String str, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEmitterEnabled(this.m_contextInterface, str, z);
    }

    public void setEmitterPosition(String str, float f, float f2) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEmitterPosition(this.m_contextInterface, str, f, f2);
    }

    public void appendPositionToEmitterPositionCurve(String str, float f, float f2, float f3) {
        NvsUtils.checkFunctionInMainThread();
        nativeAppendPositionToEmitterPositionCurve(this.m_contextInterface, str, f, f2, f3);
    }

    public void setEmitterRateGain(String str, float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEmitterRateGain(this.m_contextInterface, str, f);
    }

    public void setEmitterParticleSizeGain(String str, float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetEmitterParticleSizeGain(this.m_contextInterface, str, f);
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
