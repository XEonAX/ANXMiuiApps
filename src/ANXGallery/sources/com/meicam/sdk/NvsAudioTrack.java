package com.meicam.sdk;

public class NvsAudioTrack extends NvsTrack {
    private native NvsAudioClip nativeAddClip(long j, String str, long j2);

    private native NvsAudioClip nativeAddClip(long j, String str, long j2, long j3, long j4);

    private native NvsAudioClip nativeGetClipByIndex(long j, int i);

    private native NvsAudioClip nativeGetClipByTimelinePosition(long j, long j2);

    private native NvsAudioTransition nativeGetTransitionWithSourceClipIndex(long j, int i);

    private native NvsAudioClip nativeInsertClip(long j, String str, int i);

    private native NvsAudioClip nativeInsertClip(long j, String str, long j2, long j3, int i);

    private native NvsAudioTransition nativeSetBuiltinTransition(long j, int i, String str);

    public NvsAudioClip appendClip(String str) {
        NvsUtils.checkFunctionInMainThread();
        return insertClip(str, getClipCount());
    }

    public NvsAudioClip appendClip(String str, long j, long j2) {
        NvsUtils.checkFunctionInMainThread();
        return insertClip(str, j, j2, getClipCount());
    }

    public NvsAudioClip insertClip(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertClip(this.m_internalObject, str, i);
    }

    public NvsAudioClip insertClip(String str, long j, long j2, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertClip(this.m_internalObject, str, j, j2, i);
    }

    public NvsAudioClip addClip(String str, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddClip(this.m_internalObject, str, j);
    }

    public NvsAudioClip addClip(String str, long j, long j2, long j3) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddClip(this.m_internalObject, str, j, j2, j3);
    }

    public NvsAudioClip getClipByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipByIndex(this.m_internalObject, i);
    }

    public NvsAudioClip getClipByTimelinePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipByTimelinePosition(this.m_internalObject, j);
    }

    public NvsAudioTransition setBuiltinTransition(int i, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetBuiltinTransition(this.m_internalObject, i, str);
    }

    public NvsAudioTransition getTransitionWithSourceClipIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTransitionWithSourceClipIndex(this.m_internalObject, i);
    }
}
