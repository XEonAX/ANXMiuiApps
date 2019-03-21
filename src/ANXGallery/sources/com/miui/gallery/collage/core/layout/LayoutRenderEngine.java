package com.miui.gallery.collage.core.layout;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.core.RenderEngine;
import com.miui.gallery.collage.render.CollageRender;

class LayoutRenderEngine extends RenderEngine {
    LayoutRenderEngine(Context context, BitmapManager bitmapManager) {
        super(context, bitmapManager);
    }

    public Bitmap render(RenderData renderData) {
        if (!(renderData instanceof LayoutRenderData)) {
            return null;
        }
        CollageRender.RenderData collageRenderData = ((LayoutRenderData) renderData).mRenderData;
        Bitmap bitmap = Bitmap.createBitmap(collageRenderData.imageWidth, collageRenderData.imageHeight, Config.ARGB_8888);
        CollageRender.doRender(new Canvas(bitmap), collageRenderData, this.mBitmapManager);
        return bitmap;
    }
}
