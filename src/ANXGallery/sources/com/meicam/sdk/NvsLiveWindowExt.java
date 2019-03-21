package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;

public class NvsLiveWindowExt extends TextureView implements SurfaceTextureListener {
    public static final int FILLMODE_PRESERVEASPECTCROP = 0;
    public static final int FILLMODE_PRESERVEASPECTFIT = 1;
    public static final int FILLMODE_STRETCH = 2;
    protected int m_fillMode = 0;
    protected long m_internalObject = 0;
    private Surface m_surface;

    private native void nativeClearVideoFrame(long j);

    private native void nativeClose(long j);

    private native void nativeInit();

    private native PointF nativeMapCanonicalToView(long j, PointF pointF);

    private native PointF nativeMapNormalizedToView(long j, PointF pointF);

    private native PointF nativeMapViewToCanonical(long j, PointF pointF);

    private native PointF nativeMapViewToNormalized(long j, PointF pointF);

    private native void nativeOnSizeChanged(long j, int i, int i2);

    private native void nativeRepaintVideoFrame(long j);

    private native void nativeSetBackgroundColor(long j, float f, float f2, float f3);

    private native void nativeSetFillMode(long j, int i);

    private native void nativeSurfaceChanged(long j, Surface surface, int i, int i2);

    private native void nativeSurfaceDestroyed(long j);

    private native Bitmap nativeTakeScreenshot(long j);

    public NvsLiveWindowExt(Context context) {
        super(context);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindowExt(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindowExt(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindowExt(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public void setFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (!(i == 0 || i == 1 || i == 2)) {
            i = 0;
        }
        if (i != this.m_fillMode) {
            this.m_fillMode = i;
            nativeSetFillMode(this.m_internalObject, i);
        }
    }

    public int getFillMode() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_fillMode;
    }

    public PointF mapCanonicalToView(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapCanonicalToView(this.m_internalObject, pointF);
    }

    public PointF mapViewToCanonical(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapViewToCanonical(this.m_internalObject, pointF);
    }

    public PointF mapNormalizedToView(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapNormalizedToView(this.m_internalObject, pointF);
    }

    public PointF mapViewToNormalized(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapViewToNormalized(this.m_internalObject, pointF);
    }

    public void repaintVideoFrame() {
        NvsUtils.checkFunctionInMainThread();
        nativeRepaintVideoFrame(this.m_internalObject);
    }

    public void clearVideoFrame() {
        NvsUtils.checkFunctionInMainThread();
        nativeClearVideoFrame(this.m_internalObject);
    }

    public Bitmap takeScreenshot() {
        NvsUtils.checkFunctionInMainThread();
        return nativeTakeScreenshot(this.m_internalObject);
    }

    public void setBackgroundColor(float f, float f2, float f3) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetBackgroundColor(this.m_internalObject, f, f2, f3);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        init();
    }

    protected void onDetachedFromWindow() {
        if (!isInEditMode()) {
            destroyCurrentSurface();
            if (this.m_internalObject != 0) {
                nativeClose(this.m_internalObject);
                this.m_internalObject = 0;
            }
        }
        setSurfaceTextureListener(null);
        super.onDetachedFromWindow();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (!isInEditMode()) {
            nativeOnSizeChanged(this.m_internalObject, i, i2);
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        destroyCurrentSurface();
        if (!isInEditMode() && i >= 1 && i2 >= 1) {
            this.m_surface = new Surface(surfaceTexture);
            nativeSurfaceChanged(this.m_internalObject, this.m_surface, i, i2);
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        destroyCurrentSurface();
        if (!isInEditMode() && i >= 1 && i2 >= 1) {
            this.m_surface = new Surface(surfaceTexture);
            nativeSurfaceChanged(this.m_internalObject, this.m_surface, i, i2);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (!isInEditMode()) {
            destroyCurrentSurface();
        }
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    private void init() {
        setSurfaceTextureListener(this);
        if (!isInEditMode() && this.m_internalObject == 0) {
            nativeInit();
        }
    }

    private void destroyCurrentSurface() {
        if (!isInEditMode() && this.m_surface != null) {
            nativeSurfaceDestroyed(this.m_internalObject);
            this.m_surface.release();
            this.m_surface = null;
        }
    }
}
