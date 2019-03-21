package com.miui.gallery.editor.photo.core.imports.crop;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;

public class CropEngine extends RenderEngine {
    public Bitmap render(Bitmap bitmap, RenderData renderData) {
        return ((CropStateData) renderData).mEntry.apply(bitmap);
    }
}
