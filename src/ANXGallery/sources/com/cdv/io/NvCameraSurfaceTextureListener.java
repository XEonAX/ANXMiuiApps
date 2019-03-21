package com.cdv.io;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;

public class NvCameraSurfaceTextureListener implements OnFrameAvailableListener {
    private final int m_texId;

    private static native void notifyCameraFrameAvailable(int i);

    public NvCameraSurfaceTextureListener(int i) {
        this.m_texId = i;
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        notifyCameraFrameAvailable(this.m_texId);
    }
}
