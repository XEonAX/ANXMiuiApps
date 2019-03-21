package com.cdv.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;

public class NvAndroidParticleUtils {

    public static class SpriteGenerator {
        private Canvas m_canvas;
        private Paint m_paint = new Paint();
        private int m_spriteImageSize;

        SpriteGenerator(Bitmap bitmap, int i) {
            this.m_canvas = new Canvas(bitmap);
            this.m_canvas.drawColor(0, Mode.SRC);
            this.m_paint.setXfermode(new PorterDuffXfermode(Mode.SRC));
            this.m_paint.setAntiAlias(false);
            this.m_paint.setFilterBitmap(false);
            this.m_spriteImageSize = i;
        }

        void drawSpriteImage(int i, int i2, Bitmap bitmap) {
            if (bitmap != null) {
                if (bitmap.getWidth() == this.m_spriteImageSize && bitmap.getHeight() == this.m_spriteImageSize) {
                    this.m_canvas.drawBitmap(bitmap, (float) i, (float) i2, this.m_paint);
                } else {
                    this.m_canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(i, i2, this.m_spriteImageSize, this.m_spriteImageSize), this.m_paint);
                }
            }
        }
    }
}
