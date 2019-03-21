package com.meicam.sdk;

public class NvsVideoTrack extends NvsTrack {
    private native NvsVideoClip nativeAddClip(long j, String str, long j2);

    private native NvsVideoClip nativeAddClip(long j, String str, long j2, long j3, long j4);

    private native NvsVideoClip nativeGetClipByIndex(long j, int i);

    private native NvsVideoClip nativeGetClipByTimelinePosition(long j, long j2);

    private native NvsVideoTransition nativeGetTransitionBySourceClipIndex(long j, int i);

    private native NvsVideoClip nativeInsertClip(long j, String str, int i);

    private native NvsVideoClip nativeInsertClip(long j, String str, long j2, long j3, int i);

    private native NvsVideoTransition nativeSetBuiltinTransition(long j, int i, String str);

    private native NvsVideoTransition nativeSetPackagedTransition(long j, int i, String str);

    public NvsVideoClip appendClip(String str) {
        NvsUtils.checkFunctionInMainThread();
        return insertClip(str, getClipCount());
    }

    public NvsVideoClip appendClip(String str, long j, long j2) {
        NvsUtils.checkFunctionInMainThread();
        return insertClip(str, j, j2, getClipCount());
    }

    public NvsVideoClip insertClip(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertClip(this.m_internalObject, str, i);
    }

    public NvsVideoClip insertClip(String str, long j, long j2, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertClip(this.m_internalObject, str, j, j2, i);
    }

    public NvsVideoClip addClip(String str, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddClip(this.m_internalObject, str, j);
    }

    public NvsVideoClip addClip(String str, long j, long j2, long j3) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddClip(this.m_internalObject, str, j, j2, j3);
    }

    public NvsVideoClip getClipByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipByIndex(this.m_internalObject, i);
    }

    public NvsVideoClip getClipByTimelinePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipByTimelinePosition(this.m_internalObject, j);
    }

    public NvsVideoTransition setBuiltinTransition(int i, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetBuiltinTransition(this.m_internalObject, i, str);
    }

    public NvsVideoTransition setPackagedTransition(int i, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetPackagedTransition(this.m_internalObject, i, str);
    }

    public NvsVideoTransition getTransitionBySourceClipIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTransitionBySourceClipIndex(this.m_internalObject, i);
    }
}
