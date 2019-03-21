package com.nexstreaming.nexeditorsdk;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import java.security.InvalidParameterException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

public class WrapperForSurfaceTextureListener implements OnFrameAvailableListener {
    private static final String LOG_TAG = "WrapperForSTL";
    private static Handler sHandler = null;
    private static HandlerThread sHandlerThread = null;
    private static int sIntanceNum = 0;
    private SurfaceTexture mConnectedSurfaceTexture = null;
    private Semaphore mFrameAvailableSemaphore = new Semaphore(0);
    private final int mInstanceNum;

    public static SurfaceTexture makeSurfaceTexture(final int i) {
        final SynchronousQueue synchronousQueue = new SynchronousQueue();
        if (sHandler == null || sHandlerThread == null) {
            sHandlerThread = new HandlerThread("surfaceTextureFactory", -2);
            sHandlerThread.start();
            sHandler = new Handler(sHandlerThread.getLooper());
        }
        sHandler.post(new Runnable() {
            public void run() {
                SurfaceTexture surfaceTexture = new SurfaceTexture(i);
                while (true) {
                    try {
                        break;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                if (!synchronousQueue.offer(surfaceTexture, 1000, TimeUnit.MILLISECONDS)) {
                    surfaceTexture.release();
                    Log.w(WrapperForSurfaceTextureListener.LOG_TAG, "Surface texture abandoned");
                }
            }
        });
        SurfaceTexture surfaceTexture = null;
        while (surfaceTexture == null) {
            try {
                surfaceTexture = (SurfaceTexture) synchronousQueue.take();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        return surfaceTexture;
    }

    public WrapperForSurfaceTextureListener(int i) {
        int i2 = sIntanceNum + 1;
        sIntanceNum = i2;
        this.mInstanceNum = i2;
        Log.d(LOG_TAG, "[W:" + this.mInstanceNum + "] WrapperForSurfaceTextureListener Constructor. a=" + i);
    }

    public void connectListener(final SurfaceTexture surfaceTexture) {
        if (this.mConnectedSurfaceTexture != null) {
            throw new IllegalStateException();
        }
        Log.d(LOG_TAG, "[W:" + this.mInstanceNum + "] WrapperForSurfaceTextureListener connectListener.");
        this.mFrameAvailableSemaphore.drainPermits();
        if (VERSION.SDK_INT >= 21) {
            surfaceTexture.setOnFrameAvailableListener(this, sHandler);
        } else {
            sHandler.post(new Runnable() {
                public void run() {
                    surfaceTexture.setOnFrameAvailableListener(WrapperForSurfaceTextureListener.this);
                }
            });
        }
        this.mConnectedSurfaceTexture = surfaceTexture;
    }

    public void disconnectListener(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != this.mConnectedSurfaceTexture) {
            throw new InvalidParameterException();
        }
        Log.d(LOG_TAG, "[W:" + this.mInstanceNum + "] WrapperForSurfaceTextureListener disconnectListener.");
        surfaceTexture.setOnFrameAvailableListener(null);
        this.mConnectedSurfaceTexture = null;
    }

    public int waitFrameAvailable(int i) {
        boolean z = true;
        int i2 = 0;
        if (this.mConnectedSurfaceTexture == null) {
            throw new IllegalStateException();
        }
        int i3;
        if (i < 0) {
            i = 2500;
        }
        long nanoTime = System.nanoTime();
        boolean z2 = false;
        while (true) {
            try {
                break;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                z2 = true;
            }
        }
        if (this.mFrameAvailableSemaphore.tryAcquire((long) i, TimeUnit.MILLISECONDS)) {
            z = false;
        }
        nanoTime = System.nanoTime() - nanoTime;
        if (z) {
            Log.w(LOG_TAG, "[W:" + this.mInstanceNum + "] waitFrameAvailable : (elapsed=" + nanoTime + ") timeout=" + z + " interrupted=" + z2);
        }
        if (z) {
            i3 = 4;
        } else {
            i3 = 0;
        }
        if (z2) {
            i2 = 8;
        }
        return i3 | i2;
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != this.mConnectedSurfaceTexture) {
            Log.w(LOG_TAG, "[W:" + this.mInstanceNum + "] WARNING - Frame available to wrong listener : " + surfaceTexture + " != " + String.valueOf(this.mConnectedSurfaceTexture));
        } else {
            this.mFrameAvailableSemaphore.release();
        }
    }
}
