package com.miui.gallery.editor.photo.core.imports.remover;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import com.miui.gallery.editor.photo.app.remover.Inpaint;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import java.util.List;

public class RemoverEngine extends RenderEngine {
    public Bitmap render(Bitmap bitmap, RenderData data) {
        if (!(data instanceof RemoverRenderData)) {
            return null;
        }
        List<RemoverPaintData> paintDataList = ((RemoverRenderData) data).mPaintData;
        if (paintDataList == null || paintDataList.isEmpty()) {
            return bitmap;
        }
        Inpaint.initialize();
        Bitmap maskBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ALPHA_8);
        for (RemoverPaintData paintData : paintDataList) {
            RemoverGestureView.export(maskBitmap, paintData, paintData.mCurves);
            RectF rect = new RectF();
            RemoverGestureView.getMaskBounds(rect, maskBitmap.getWidth(), maskBitmap.getHeight(), paintData, paintData.mCurves);
            if (!rect.isEmpty()) {
                Inpaint.upsampleBmpData(bitmap, maskBitmap, bitmap.getWidth(), bitmap.getHeight(), (int) rect.left, (int) rect.top, (int) rect.right, (int) rect.bottom, paintData.mRemoverNNFData);
            }
        }
        return bitmap;
    }

    public void release() {
        Inpaint.release();
    }
}
