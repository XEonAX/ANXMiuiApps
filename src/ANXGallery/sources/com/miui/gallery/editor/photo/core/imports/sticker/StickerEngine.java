package com.miui.gallery.editor.photo.core.imports.sticker;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.util.Log;

class StickerEngine extends RenderEngine {
    StickerEngine() {
    }

    public Bitmap render(Bitmap bitmap, RenderData data) {
        Log.d("StickerEngine", "rendering sticker data");
        if (data instanceof StickerRenderData) {
            return ((StickerRenderData) data).mEntry.apply(bitmap);
        }
        return null;
    }
}
