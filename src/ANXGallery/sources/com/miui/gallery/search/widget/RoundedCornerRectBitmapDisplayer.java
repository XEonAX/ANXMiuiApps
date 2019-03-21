package com.miui.gallery.search.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class RoundedCornerRectBitmapDisplayer implements BitmapDisplayer {
    protected final int[] cornerRadius;

    public static class RoundedDrawable extends Drawable {
        protected final BitmapShader bitmapShader;
        protected final int[] cornerRadius;
        protected final RectF mBitmapRect;
        protected final RectF mRect = new RectF();
        protected final Paint paint;
        protected Path path;

        public RoundedDrawable(Bitmap bitmap, int[] cornerRadius) {
            this.cornerRadius = cornerRadius;
            this.bitmapShader = new BitmapShader(bitmap, TileMode.CLAMP, TileMode.CLAMP);
            this.mBitmapRect = new RectF(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
            this.paint = new Paint();
            this.paint.setAntiAlias(true);
            this.paint.setShader(this.bitmapShader);
            this.paint.setFilterBitmap(true);
            this.paint.setDither(true);
            this.path = createPath();
        }

        private Path createPath() {
            Path path = new Path();
            int currentRadius = this.cornerRadius[0];
            path.moveTo(this.mRect.left, this.mRect.top + ((float) currentRadius));
            if (currentRadius != 0) {
                path.arcTo(new RectF(this.mRect.left, this.mRect.top, this.mRect.left + ((float) (currentRadius * 2)), this.mRect.top + ((float) (currentRadius * 2))), 180.0f, 90.0f, false);
            }
            currentRadius = this.cornerRadius[1];
            path.lineTo(this.mRect.right - ((float) currentRadius), this.mRect.top);
            if (currentRadius != 0) {
                path.arcTo(new RectF(this.mRect.right - ((float) (currentRadius * 2)), this.mRect.top, this.mRect.right, this.mRect.top + ((float) (currentRadius * 2))), 270.0f, 90.0f, false);
            }
            currentRadius = this.cornerRadius[2];
            path.lineTo(this.mRect.right, this.mRect.bottom - ((float) currentRadius));
            if (currentRadius != 0) {
                path.arcTo(new RectF(this.mRect.right - ((float) (currentRadius * 2)), this.mRect.bottom - ((float) (currentRadius * 2)), this.mRect.right, this.mRect.bottom), 0.0f, 90.0f, false);
            }
            currentRadius = this.cornerRadius[3];
            path.lineTo(this.mRect.left + ((float) currentRadius), this.mRect.bottom);
            if (currentRadius != 0) {
                path.arcTo(new RectF(this.mRect.left, this.mRect.bottom - ((float) (currentRadius * 2)), this.mRect.left + ((float) (currentRadius * 2)), this.mRect.bottom), 90.0f, 90.0f, false);
            }
            path.lineTo(this.mRect.left, this.mRect.top + ((float) this.cornerRadius[0]));
            return path;
        }

        protected void onBoundsChange(Rect bounds) {
            super.onBoundsChange(bounds);
            this.mRect.set(0.0f, 0.0f, (float) bounds.width(), (float) bounds.height());
            this.path = createPath();
            Matrix shaderMatrix = new Matrix();
            float widthScale = this.mRect.width() / this.mBitmapRect.width();
            float heightScale = this.mRect.height() / this.mBitmapRect.height();
            float scale = Math.max(widthScale, heightScale);
            shaderMatrix.setScale(scale, scale);
            if (widthScale > heightScale) {
                shaderMatrix.postTranslate(0.0f, (this.mRect.height() - (this.mBitmapRect.height() * scale)) / 2.0f);
            } else if (heightScale > widthScale) {
                shaderMatrix.postTranslate((this.mRect.width() - (this.mBitmapRect.width() * scale)) / 2.0f, 0.0f);
            }
            this.bitmapShader.setLocalMatrix(shaderMatrix);
        }

        public void draw(Canvas canvas) {
            canvas.drawPath(this.path, this.paint);
        }

        public int getOpacity() {
            return -3;
        }

        public void setAlpha(int alpha) {
            this.paint.setAlpha(alpha);
        }

        public void setColorFilter(ColorFilter cf) {
            this.paint.setColorFilter(cf);
        }
    }

    public RoundedCornerRectBitmapDisplayer(int cornerRadiusPixels) {
        this.cornerRadius = new int[4];
        for (int i = 0; i < 4; i++) {
            this.cornerRadius[i] = cornerRadiusPixels;
        }
    }

    public RoundedCornerRectBitmapDisplayer(int[] cornerRadiusPixels) {
        if (cornerRadiusPixels.length != 4) {
            throw new IllegalArgumentException("The corner radius array must contains 4 elements");
        }
        this.cornerRadius = cornerRadiusPixels;
    }

    public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
        if (imageAware instanceof ImageViewAware) {
            imageAware.setImageDrawable(new RoundedDrawable(bitmap, this.cornerRadius));
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
