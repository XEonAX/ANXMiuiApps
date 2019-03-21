package com.miui.gallery.editor.photo.core.imports.filter;

import android.content.Context;
import android.graphics.Bitmap;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.imports.filter.render.GPUImage;
import com.miui.gallery.editor.photo.core.imports.filter.render.OpenGlUtils;

public class FilterEngine extends RenderEngine {
    private GPUImage mGPUImage;

    public FilterEngine(Context context) {
        this.mGPUImage = new GPUImage(context);
    }

    public Bitmap render(Bitmap bitmap, RenderData renderData) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        synchronized (this.mGPUImage) {
            if (renderData instanceof FilterRenderData) {
                FilterRenderData filterRenderData = (FilterRenderData) renderData;
                if (filterRenderData.isEmpty()) {
                    return bitmap;
                }
                bitmap = OpenGlUtils.ensureBitmapSize(bitmap);
                if (filterRenderData.isPortraitBeauty()) {
                    smartBeauty(bitmap);
                }
                this.mGPUImage.setFilter(filterRenderData.instantiate());
                this.mGPUImage.setImage(bitmap);
                Bitmap bitmapWithFilterApplied = this.mGPUImage.getBitmapWithFilterApplied(true);
                return bitmapWithFilterApplied;
            }
            throw new IllegalArgumentException("expect to be FilterRenderData,your type: " + renderData.getClass().getSimpleName());
        }
    }

    public Bitmap render(Bitmap bitmap, Metadata data, Object value) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        Bitmap bitmapWithFilterApplied;
        synchronized (this.mGPUImage) {
            if (data instanceof Renderable) {
                this.mGPUImage.setFilter(((Renderable) data).instantiate());
                this.mGPUImage.setImage(OpenGlUtils.ensureBitmapSize(bitmap));
                bitmapWithFilterApplied = this.mGPUImage.getBitmapWithFilterApplied(true);
            } else {
                throw new IllegalArgumentException("expect to be Renderable,your type: " + data.getClass().getSimpleName());
            }
        }
        return bitmapWithFilterApplied;
    }

    private void smartBeauty(Bitmap bitmap) {
        if (ArcsoftBeautyJni.idBeautyAvailable()) {
            ArcsoftBeautyJni.smartBeauty(bitmap);
        }
    }

    public void release() {
        super.release();
        synchronized (this.mGPUImage) {
            this.mGPUImage.deleteImage();
        }
    }
}
