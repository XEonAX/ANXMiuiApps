package com.meicam.sdk;

public class NvsTrack extends NvsObject {
    public static final int TRACK_TYPE_AUDIO = 1;
    public static final int TRACK_TYPE_VIDEO = 0;

    private native long nativeChangeInPoint(long j, int i, long j2);

    private native long nativeChangeOutPoint(long j, int i, long j2);

    private native int nativeGetClipCount(long j);

    private native long nativeGetDuration(long j);

    private native int nativeGetIndex(long j);

    private native int nativeGetType(long j);

    private native NvsVolume nativeGetVolumeGain(long j);

    private native boolean nativeMoveClip(long j, int i, int i2);

    private native boolean nativeRemoveAllClips(long j);

    private native boolean nativeRemoveClip(long j, int i, boolean z);

    private native boolean nativeRemoveRange(long j, long j2, long j3, boolean z);

    private native void nativeSetVolumeGain(long j, float f, float f2);

    private native boolean nativeSplitClip(long j, int i, long j2);

    public int getType() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetType(this.m_internalObject);
    }

    public int getIndex() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetIndex(this.m_internalObject);
    }

    public long getDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDuration(this.m_internalObject);
    }

    public int getClipCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipCount(this.m_internalObject);
    }

    public long changeInPoint(int i, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeInPoint(this.m_internalObject, i, j);
    }

    public long changeOutPoint(int i, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeOutPoint(this.m_internalObject, i, j);
    }

    public boolean splitClip(int i, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSplitClip(this.m_internalObject, i, j);
    }

    public boolean removeClip(int i, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveClip(this.m_internalObject, i, z);
    }

    public boolean removeRange(long j, long j2, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveRange(this.m_internalObject, j, j2, z);
    }

    public boolean moveClip(int i, int i2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMoveClip(this.m_internalObject, i, i2);
    }

    public boolean removeAllClips() {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveAllClips(this.m_internalObject);
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
