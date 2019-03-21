package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import com.miui.filtersdk.filter.base.GPUImageFilter;
import com.miui.filtersdk.utils.Rotation;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class GPUImage {
    private Bitmap mCurrentBitmap;
    private GPUImageFilter mFilter;
    private GLSurfaceView mGlSurfaceView;
    private final GPUImageRenderer mRenderer;
    private ScaleType mScaleType = ScaleType.CENTER_INSIDE;

    public enum ScaleType {
        CENTER_INSIDE,
        CENTER_CROP
    }

    public GPUImage(Context context) {
        if (supportsOpenGLES2(context)) {
            this.mFilter = new GPUImageFilter();
            this.mRenderer = new GPUImageRenderer(this.mFilter);
            this.mRenderer.setDrawBoundLines(false);
            return;
        }
        throw new IllegalStateException("OpenGL ES 2.0 is not supported on this phone.");
    }

    private boolean supportsOpenGLES2(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= nexEngine.ExportHEVCHighTierLevel51;
    }

    public void setGLSurfaceView(GLSurfaceView view) {
        this.mGlSurfaceView = view;
        this.mGlSurfaceView.setEGLContextClientVersion(2);
        this.mGlSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        this.mGlSurfaceView.setZOrderOnTop(true);
        this.mGlSurfaceView.getHolder().setFormat(-2);
        this.mGlSurfaceView.setRenderer(this.mRenderer);
        this.mGlSurfaceView.setRenderMode(0);
        this.mGlSurfaceView.requestRender();
    }

    public void setBackgroundColor(float red, float green, float blue) {
        this.mRenderer.setBackgroundColor(red, green, blue);
    }

    public void requestRender() {
        if (this.mGlSurfaceView != null) {
            this.mGlSurfaceView.requestRender();
        }
    }

    public void setFilter(GPUImageFilter filter) {
        this.mFilter = filter;
        this.mRenderer.setFilter(this.mFilter);
    }

    public void setImage(Bitmap bitmap) {
        if (this.mCurrentBitmap != bitmap) {
            this.mCurrentBitmap = bitmap;
            this.mRenderer.setImageBitmap(bitmap, false);
        }
    }

    public void deleteImage() {
        this.mRenderer.deleteImage();
        this.mCurrentBitmap = null;
        requestRender();
    }

    public Bitmap getBitmapWithFilterApplied(boolean recycle) {
        return getBitmapWithFilterApplied(this.mCurrentBitmap, recycle);
    }

    public Bitmap getBitmapWithFilterApplied(Bitmap bitmap, boolean recycle) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        boolean z;
        GPUImageRenderer renderer = new GPUImageRenderer(this.mFilter);
        Rotation rotation = Rotation.NORMAL;
        boolean isFlippedHorizontally = this.mRenderer.isFlippedHorizontally();
        if (this.mRenderer.isFlippedVertically()) {
            z = false;
        } else {
            z = true;
        }
        renderer.setRotation(rotation, isFlippedHorizontally, z);
        renderer.setScaleType(this.mScaleType);
        PixelBuffer buffer = new PixelBuffer(bitmap.getWidth(), bitmap.getHeight());
        renderer.setImageBitmap(bitmap, false);
        buffer.setRenderer(renderer);
        renderer.setDrawBoundLines(false);
        if (!recycle) {
            bitmap = null;
        }
        Bitmap result = buffer.getBitmap(bitmap);
        this.mFilter.destroy();
        renderer.deleteImage();
        buffer.destroy();
        this.mRenderer.setFilter(this.mFilter);
        return result;
    }
}
