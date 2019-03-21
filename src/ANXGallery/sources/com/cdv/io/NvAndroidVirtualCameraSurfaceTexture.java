package com.cdv.io;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;

public class NvAndroidVirtualCameraSurfaceTexture implements OnFrameAvailableListener {
    private static final String TAG = "Virtual Camera";
    private SurfaceTexture m_surfaceTexture;
    private int m_texId = 0;

    private static native void notifyCameraFrameAvailable(int i);

    public NvAndroidVirtualCameraSurfaceTexture(SurfaceTexture surfaceTexture) {
        this.m_surfaceTexture = surfaceTexture;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.m_surfaceTexture;
    }

    public void setupOnFrameAvailableListener(Handler handler) {
        if (handler == null || VERSION.SDK_INT < 21) {
            this.m_surfaceTexture.setOnFrameAvailableListener(this);
        } else {
            this.m_surfaceTexture.setOnFrameAvailableListener(this, handler);
        }
    }

    public void attachToGLContext(int i) {
        try {
            this.m_surfaceTexture.attachToGLContext(i);
            this.m_texId = i;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
        }
    }

    public void expendCacheTexImage() {
        int i = 0;
        while (i < 10) {
            try {
                this.m_surfaceTexture.updateTexImage();
                i++;
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                return;
            }
        }
    }

    public void detachFromGLContext() {
        try {
            this.m_surfaceTexture.detachFromGLContext();
            this.m_texId = 0;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
        }
    }

    public void release() {
        this.m_surfaceTexture.setOnFrameAvailableListener(null);
        this.m_surfaceTexture = null;
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        notifyCameraFrameAvailable(this.m_texId);
    }
}
