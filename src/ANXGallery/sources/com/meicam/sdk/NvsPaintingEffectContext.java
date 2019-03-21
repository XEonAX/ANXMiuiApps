package com.meicam.sdk;

public class NvsPaintingEffectContext {
    public static final int STROKE_ANALOG_TYPE_COS = 3;
    public static final int STROKE_ANALOG_TYPE_INVERT_COS = 4;
    public static final int STROKE_ANALOG_TYPE_INVERT_SIN = 1;
    public static final int STROKE_ANALOG_TYPE_POSITIVE_COS = 5;
    public static final int STROKE_ANALOG_TYPE_POSITIVE_SIN = 2;
    public static final int STROKE_ANALOG_TYPE_SIN = 0;
    public static final int STROKE_CAP_STYLE_FLAT = 0;
    public static final int STROKE_CAP_STYLE_ITALIC = 3;
    public static final int STROKE_CAP_STYLE_ROUND = 2;
    public static final int STROKE_CAP_STYLE_SQUARE = 1;
    public static final int STROKE_FILL_MODE_GRADIENT = 0;
    public static final int STROKE_FILL_MODE_TEXTURE = 1;
    public static final int STROKE_JOINT_STYLE_BEVEL = 0;
    public static final int STROKE_JOINT_STYLE_MITER = 1;
    public static final int STROKE_JOINT_STYLE_ROUND = 2;
    public static final int STROKE_TEXTURE_WARP_CLAMP = 0;
    public static final int STROKE_TEXTURE_WARP_MIRRORED_REPEAT = 2;
    public static final int STROKE_TEXTURE_WARP_REPEAT = 1;
    private long m_contextInterface;

    private native void nativeAddStroke(long j, float[] fArr);

    private native void nativeAppendStroke(long j, float[] fArr);

    private native void nativeCleanup(long j);

    private native void nativeRemoveAllStroke(long j);

    private native void nativeRemoveLastStroke(long j);

    private native void nativeSetStrokeAnalogAmplitude(long j, float f);

    private native void nativeSetStrokeAnalogPeriod(long j, float f);

    private native void nativeSetStrokeAnalogType(long j, int i);

    private native void nativeSetStrokeAnimated(long j, boolean z);

    private native void nativeSetStrokeAnimationSpeed(long j, float f);

    private native void nativeSetStrokeCapStyle(long j, int i);

    private native void nativeSetStrokeFillMode(long j, int i);

    private native void nativeSetStrokeGradient(long j, NvsColor nvsColor);

    private native void nativeSetStrokeJointStyle(long j, int i);

    private native void nativeSetStrokeTextureFilePath(long j, String str);

    private native void nativeSetStrokeTextureRepeatTimes(long j, int i, int i2);

    private native void nativeSetStrokeTextureWarpType(long j, int i);

    private native void nativeSetStrokeWidth(long j, float f);

    public void SetStrokeWidth(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeWidth(this.m_contextInterface, f);
    }

    public void SetStrokeCapStyle(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeCapStyle(this.m_contextInterface, i);
    }

    public void SetStrokeJointStyle(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeJointStyle(this.m_contextInterface, i);
    }

    public void SetStrokeGradient(NvsColor nvsColor) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeGradient(this.m_contextInterface, nvsColor);
    }

    public void SetStrokeTextureFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeTextureFilePath(this.m_contextInterface, str);
    }

    public void SetStrokeTextureWarpType(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeTextureWarpType(this.m_contextInterface, i);
    }

    public void SetStrokeTextureRepeatTimes(int i, int i2) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeTextureRepeatTimes(this.m_contextInterface, i, i2);
    }

    public void SetStrokeFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeFillMode(this.m_contextInterface, i);
    }

    public void SetStrokeAnimated(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeAnimated(this.m_contextInterface, z);
    }

    public void SetStrokeAnimationSpeed(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeAnimationSpeed(this.m_contextInterface, f);
    }

    public void SetStrokeAnalogType(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeAnalogType(this.m_contextInterface, i);
    }

    public void SetStrokeAnalogAmplitude(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeAnalogAmplitude(this.m_contextInterface, f);
    }

    public void SetStrokeAnalogPeriod(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStrokeAnalogPeriod(this.m_contextInterface, f);
    }

    public void RemoveAllStroke() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveAllStroke(this.m_contextInterface);
    }

    public void RemoveLastStroke() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveLastStroke(this.m_contextInterface);
    }

    public void AddStroke(float[] fArr) {
        NvsUtils.checkFunctionInMainThread();
        nativeAddStroke(this.m_contextInterface, fArr);
    }

    public void AppendStroke(float[] fArr) {
        NvsUtils.checkFunctionInMainThread();
        nativeAppendStroke(this.m_contextInterface, fArr);
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
