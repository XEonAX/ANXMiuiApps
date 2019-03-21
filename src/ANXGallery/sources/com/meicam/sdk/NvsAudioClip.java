package com.meicam.sdk;

public class NvsAudioClip extends NvsClip {
    private native NvsAudioFx nativeAppendFx(long j, String str);

    private native long nativeGetFadeInDuration(long j);

    private native long nativeGetFadeOutDuration(long j);

    private native NvsAudioFx nativeGetFxByIndex(long j, int i);

    private native NvsAudioFx nativeInsertFx(long j, String str, int i);

    private native boolean nativeRemoveFx(long j, int i);

    private native void nativeSetFadeInDuration(long j, long j2);

    private native void nativeSetFadeOutDuration(long j, long j2);

    public NvsAudioFx appendFx(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAppendFx(this.m_internalObject, str);
    }

    public NvsAudioFx insertFx(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertFx(this.m_internalObject, str, i);
    }

    public boolean removeFx(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveFx(this.m_internalObject, i);
    }

    public NvsAudioFx getFxByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFxByIndex(this.m_internalObject, i);
    }

    public void setFadeInDuration(long j) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetFadeInDuration(this.m_internalObject, j);
    }

    public long getFadeInDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFadeInDuration(this.m_internalObject);
    }

    public void setFadeOutDuration(long j) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetFadeOutDuration(this.m_internalObject, j);
    }

    public long getFadeOutDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFadeOutDuration(this.m_internalObject);
    }
}
