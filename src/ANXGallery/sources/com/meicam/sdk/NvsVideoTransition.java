package com.meicam.sdk;

public class NvsVideoTransition extends NvsFx {
    public static final int VIDEO_TRANSITION_TYPE_BUILTIN = 0;
    public static final int VIDEO_TRANSITION_TYPE_PACKAGE = 1;

    private native String nativeGetBuiltinVideoTransitionName(long j);

    private native float nativeGetVideoTransitionDurationScaleFactor(long j);

    private native String nativeGetVideoTransitionPackageId(long j);

    private native int nativeGetVideoTransitionType(long j);

    private native void nativeSetVideoTransitionDurationScaleFactor(long j, float f);

    public int getVideoTransitionType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoTransitionType(this.m_internalObject);
    }

    public String getBuiltinVideoTransitionName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBuiltinVideoTransitionName(this.m_internalObject);
    }

    public String getVideoTransitionPackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoTransitionPackageId(this.m_internalObject);
    }

    public void setVideoTransitionDurationScaleFactor(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetVideoTransitionDurationScaleFactor(this.m_internalObject, f);
    }

    public float getVideoTransitionDurationScaleFactor() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoTransitionDurationScaleFactor(this.m_internalObject);
    }
}
