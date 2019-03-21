package com.meicam.sdk;

import com.meicam.sdk.NvsCustomVideoFx.RenderHelper;

public class NvsCustomVideoFxHelper implements RenderHelper {
    private long m_internalObject;

    private native int nativeAllocateRGBATexture(long j, int i, int i2);

    private native void nativeReclaimTexture(long j, int i);

    public int allocateRGBATexture(int i, int i2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAllocateRGBATexture(this.m_internalObject, i, i2);
    }

    public void reclaimTexture(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeReclaimTexture(this.m_internalObject, i);
    }
}
