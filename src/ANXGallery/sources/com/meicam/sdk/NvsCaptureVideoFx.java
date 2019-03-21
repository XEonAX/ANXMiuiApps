package com.meicam.sdk;

public class NvsCaptureVideoFx extends NvsFx {
    public static final int CAPTURE_VIDEOFX_TYPE_BUILTIN = 0;
    public static final int CAPTURE_VIDEOFX_TYPE_CUSTOM = 2;
    public static final int CAPTURE_VIDEOFX_TYPE_PACKAGE = 1;

    private native String nativeGetBuiltinCaptureVideoFxName(long j);

    private native String nativeGetCaptureVideoFxPackageId(long j);

    private native int nativeGetCaptureVideoFxType(long j);

    private native int nativeGetIndex(long j);

    public int getCaptureVideoFxType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureVideoFxType(this.m_internalObject);
    }

    public String getBuiltinCaptureVideoFxName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBuiltinCaptureVideoFxName(this.m_internalObject);
    }

    public String getCaptureVideoFxPackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureVideoFxPackageId(this.m_internalObject);
    }

    public int getIndex() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetIndex(this.m_internalObject);
    }
}
