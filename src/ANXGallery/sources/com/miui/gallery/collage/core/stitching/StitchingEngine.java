package com.miui.gallery.collage.core.stitching;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.RectF;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.core.RenderEngine;
import com.miui.gallery.collage.render.BitmapItemRender;
import com.miui.gallery.collage.render.CollageRender.BitmapRenderData;
import com.miui.gallery.collage.widget.CollageStitchingLayout.BitmapPositionHolder;

class StitchingEngine extends RenderEngine {
    StitchingEngine(Context context, BitmapManager bitmapManager) {
        super(context, bitmapManager);
    }

    public Bitmap render(RenderData renderData) {
        if (!(renderData instanceof StitchingRenderData)) {
            return null;
        }
        StitchingRenderData stitchingRenderData = (StitchingRenderData) renderData;
        BitmapRenderData[] bitmapRenderDatas = stitchingRenderData.mRenderData.bitmapRenderDatas;
        StitchingModel stitchingModel = stitchingRenderData.mRenderData.stitchingModel;
        int width = stitchingRenderData.mWidth;
        float scale = ((float) width) / ((float) stitchingRenderData.mRenderData.viewWidth);
        BitmapPositionHolder bitmapPositionHolder = new BitmapPositionHolder(bitmapRenderDatas.length);
        stitchingModel.countHeight(width, bitmapPositionHolder, bitmapRenderDatas);
        int height = bitmapPositionHolder.height;
        int verticalOffset = bitmapPositionHolder.verticalOffset;
        int horizontalOffset = bitmapPositionHolder.horizontalOffset;
        BitmapItemRender bitmapItemRender = new BitmapItemRender();
        RectF dst = new RectF();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        int currentTop = 0;
        if (horizontalOffset > 0) {
            currentTop = 0 + verticalOffset;
        }
        for (int i = 0; i < bitmapRenderDatas.length; i++) {
            BitmapRenderData bitmapRenderData = bitmapRenderDatas[i];
            Bitmap smallBitmap = bitmapRenderData.bitmap;
            if (this.mBitmapManager != null) {
                bitmapRenderData.bitmap = this.mBitmapManager.loadSuitableBitmapBySize(width, height, this.mBitmapManager.getOriginUriByBitmap(bitmapRenderData.bitmap));
            }
            int bottom = currentTop + bitmapPositionHolder.bitmapHeights[i];
            dst.set((float) horizontalOffset, (float) currentTop, (float) (bitmapPositionHolder.bitmapWidth + horizontalOffset), (float) bottom);
            canvas.save();
            canvas.clipRect(dst);
            bitmapItemRender.drawBitmapItem(bitmapRenderData, dst, canvas, scale);
            canvas.restore();
            currentTop = bottom + verticalOffset;
            bitmapRenderData.bitmap = smallBitmap;
        }
        return createBitmap;
    }
}
