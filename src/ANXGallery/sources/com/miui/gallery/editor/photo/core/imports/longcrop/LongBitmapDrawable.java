package com.miui.gallery.editor.photo.core.imports.longcrop;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Canvas.EdgeType;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

public class LongBitmapDrawable extends Drawable {
    private Bitmap[] mBitmaps = new Bitmap[0];
    private Paint mPaint = new Paint(3);

    public LongBitmapDrawable(Bitmap longBitmap) {
        if (longBitmap != null) {
            ArrayList<Bitmap> list = new ArrayList();
            int width = longBitmap.getWidth();
            int restHeight = longBitmap.getHeight();
            Paint paint = new Paint(4);
            while (restHeight > 0) {
                int currY = longBitmap.getHeight() - restHeight;
                int currBmpHeight = Math.min(restHeight, 1024);
                Bitmap currBmp = Bitmap.createBitmap(width, currBmpHeight, longBitmap.getConfig());
                new Canvas(currBmp).drawBitmap(longBitmap, 0.0f, (float) (-currY), paint);
                list.add(currBmp);
                restHeight -= currBmpHeight;
            }
            this.mBitmaps = (Bitmap[]) list.toArray(new Bitmap[list.size()]);
        }
    }

    public void draw(Canvas canvas) {
        canvas.save();
        Rect bounds = getBounds();
        if (bounds != null) {
            canvas.translate((float) (-bounds.left), (float) (-bounds.top));
        }
        for (Bitmap bmp : this.mBitmaps) {
            if (!canvas.quickReject(0.0f, 0.0f, (float) bmp.getWidth(), (float) bmp.getHeight(), EdgeType.BW)) {
                canvas.drawBitmap(bmp, 0.0f, 0.0f, this.mPaint);
            }
            canvas.translate(0.0f, (float) bmp.getHeight());
        }
        canvas.restore();
    }

    public int getIntrinsicWidth() {
        if (this.mBitmaps == null || this.mBitmaps.length == 0) {
            return 0;
        }
        return this.mBitmaps[0].getWidth();
    }

    public int getIntrinsicHeight() {
        if (this.mBitmaps == null || this.mBitmaps.length == 0) {
            return 0;
        }
        int totalHeight = 0;
        for (Bitmap height : this.mBitmaps) {
            totalHeight += height.getHeight();
        }
        return totalHeight;
    }

    public void setAlpha(int alpha) {
        this.mPaint.setAlpha(alpha);
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return 0;
    }
}
