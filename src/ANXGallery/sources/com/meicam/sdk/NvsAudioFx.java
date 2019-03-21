package com.meicam.sdk;

public class NvsAudioFx extends NvsFx {
    private native String nativeGetBuiltinAudioFxName(long j);

    private native int nativeGetIndex(long j);

    public int getIndex() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetIndex(this.m_internalObject);
    }

    public String getBuiltinAudioFxName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBuiltinAudioFxName(this.m_internalObject);
    }
}
