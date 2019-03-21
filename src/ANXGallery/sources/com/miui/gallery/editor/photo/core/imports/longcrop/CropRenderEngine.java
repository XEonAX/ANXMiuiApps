package com.miui.gallery.editor.photo.core.imports.longcrop;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;

class CropRenderEngine extends RenderEngine {
    CropRenderEngine() {
    }

    public Bitmap render(Bitmap bitmap, RenderData renderData) {
        return ((CropRenderData) renderData).mEntry.apply(bitmap);
    }
}
