package com.miui.gallery.editor.photo.core.imports.doodle;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;

class DoodleEngine extends RenderEngine {
    DoodleEngine() {
    }

    public Bitmap render(Bitmap bitmap, RenderData data) {
        if (data instanceof DoodleRenderData) {
            return ((DoodleRenderData) data).mDoodleEntry.apply(bitmap);
        }
        return null;
    }
}
