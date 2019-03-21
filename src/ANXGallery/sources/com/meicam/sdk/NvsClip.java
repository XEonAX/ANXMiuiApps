package com.meicam.sdk;

public class NvsClip extends NvsObject {
    public static final int CLIP_TYPE_AUDIO = 1;
    public static final int CLIP_TYPE_VIDEO = 0;

    private native void nativeChangeSpeed(long j, double d, boolean z);

    private native long nativeChangeTrimInPoint(long j, long j2, boolean z);

    private native long nativeChangeTrimOutPoint(long j, long j2, boolean z);

    private native String nativeGetFilePath(long j);

    private native int nativeGetFxCount(long j);

    private native long nativeGetInPoint(long j);

    private native int nativeGetIndex(long j);

    private native long nativeGetOutPoint(long j);

    private native double nativeGetSpeed(long j);

    private native long nativeGetTrimIn(long j);

    private native long nativeGetTrimOut(long j);

    private native int nativeGetType(long j);

    private native NvsVolume nativeGetVolumeGain(long j);

    private native void nativeSetVolumeGain(long j, float f, float f2);

    public long getTrimIn() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTrimIn(this.m_internalObject);
    }

    public long getTrimOut() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTrimOut(this.m_internalObject);
    }

    public long getInPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetInPoint(this.m_internalObject);
    }

    public long getOutPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutPoint(this.m_internalObject);
    }

    public int getType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetType(this.m_internalObject);
    }

    public int getIndex() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetIndex(this.m_internalObject);
    }

    public String getFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFilePath(this.m_internalObject);
    }

    public int getFxCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFxCount(this.m_internalObject);
    }

    public long changeTrimInPoint(long j, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeTrimInPoint(this.m_internalObject, j, z);
    }

    public long changeTrimOutPoint(long j, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeTrimOutPoint(this.m_internalObject, j, z);
    }

    public double getSpeed() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetSpeed(this.m_internalObject);
    }

    public void changeSpeed(double d) {
        NvsUtils.checkFunctionInMainThread();
        nativeChangeSpeed(this.m_internalObject, d, false);
    }

    public void changeSpeed(double d, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeChangeSpeed(this.m_internalObject, d, z);
    }

    public void setVolumeGain(float f, float f2) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetVolumeGain(this.m_internalObject, f, f2);
    }

    public NvsVolume getVolumeGain() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVolumeGain(this.m_internalObject);
    }
}
