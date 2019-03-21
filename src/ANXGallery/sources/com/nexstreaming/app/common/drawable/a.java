package com.nexstreaming.app.common.drawable;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.PictureDrawable;
import android.util.SparseArray;
import java.lang.ref.WeakReference;

/* compiled from: ScalablePictureDrawable */
public class a extends PictureDrawable {
    public static SparseArray<WeakReference<a>> a = new SparseArray();

    public a(Picture picture) {
        super(picture);
    }

    public void draw(Canvas canvas) {
        Picture picture = getPicture();
        if (picture != null) {
            Rect bounds = getBounds();
            canvas.save();
            canvas.clipRect(bounds);
            canvas.translate((float) bounds.left, (float) bounds.top);
            canvas.scale(((float) bounds.width()) / ((float) getIntrinsicWidth()), ((float) bounds.height()) / ((float) getIntrinsicHeight()));
            canvas.drawPicture(picture);
            canvas.restore();
        }
    }
}
