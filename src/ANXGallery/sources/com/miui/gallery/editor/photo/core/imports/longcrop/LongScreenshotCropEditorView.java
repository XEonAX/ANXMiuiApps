package com.miui.gallery.editor.photo.core.imports.longcrop;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.miui.gallery.R;

public class LongScreenshotCropEditorView extends View implements AnimatorUpdateListener {
    private Rect mBmpRect;
    private Drawable mBorder;
    private RectF mBounds;
    private Bitmap mCornor;
    private int mCornorBarWidth;
    private RectF mCropRect;
    private float mCropYFirst;
    private int mDragLineEdge;
    private int mDragState;
    private int mMinHeight;
    private Drawable mOriginalBmp;
    private Paint mPaint;
    private Bitmap mPreviewBmp;
    private Bitmap mScissor;
    private Drawable mShadow;
    private ValueAnimator mShowOriginalAnimator;
    private float mShowOriginalBmp;
    private Rect mShowRect;
    private float mTouchDownY;

    static class Entry {
        float mBottomRatio;
        float mTopRatio;

        Entry(float topRatio, float bottomRatio) {
            this.mTopRatio = topRatio;
            this.mBottomRatio = bottomRatio;
        }

        public Bitmap apply(Bitmap bitmap) {
            int topPixel = (int) ((((float) bitmap.getHeight()) * this.mTopRatio) + 0.5f);
            Bitmap newBmp = Bitmap.createBitmap(bitmap.getWidth(), ((int) ((((float) bitmap.getHeight()) * this.mBottomRatio) + 0.5f)) - topPixel, Config.ARGB_8888);
            new Canvas(newBmp).drawBitmap(bitmap, 0.0f, (float) (-topPixel), null);
            return newBmp;
        }
    }

    public LongScreenshotCropEditorView(Context context) {
        this(context, null);
    }

    public LongScreenshotCropEditorView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mBounds = new RectF();
        this.mPaint = new Paint();
        this.mDragLineEdge = getResources().getDimensionPixelSize(R.dimen.longscreenshot_crop_drag_edge);
        this.mCornorBarWidth = getResources().getDimensionPixelSize(R.dimen.longscreenshot_crop_cornor_bar_width);
        this.mMinHeight = getResources().getDimensionPixelSize(R.dimen.longscreenshot_crop_min_height);
        this.mPaint.setStrokeWidth(getResources().getDisplayMetrics().density * 0.7f);
        this.mShowOriginalAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mShowOriginalAnimator.addUpdateListener(this);
        this.mBorder = getResources().getDrawable(R.drawable.long_screenshot_cut_photo_border);
        this.mShadow = getResources().getDrawable(R.drawable.long_screenshot_cut_photo_shadow);
        this.mCornor = BitmapFactory.decodeResource(getResources(), R.drawable.long_screenshot_cut_corner);
        this.mScissor = BitmapFactory.decodeResource(getResources(), R.drawable.long_screenshot_cut_scissor);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mBounds.set((float) getPaddingLeft(), (float) getPaddingTop(), (float) (w - getPaddingRight()), (float) (h - getPaddingBottom()));
        this.mBounds.inset((float) this.mCornorBarWidth, (float) this.mCornorBarWidth);
        refreshBounds();
    }

    protected void onDraw(Canvas canvas) {
        if (this.mPreviewBmp != null) {
            this.mPaint.setColor(-1);
            int bgAlpha = (int) (this.mShowOriginalBmp * 153.0f);
            if (bgAlpha > 0) {
                float offsetY = 0.0f;
                if (this.mDragState == 1) {
                    offsetY = (((float) this.mOriginalBmp.getBounds().height()) * ((this.mCropRect.bottom - ((float) this.mShowRect.top)) / ((float) this.mShowRect.height()))) - this.mCropRect.bottom;
                } else if (this.mDragState == 2) {
                    offsetY = (((float) this.mOriginalBmp.getBounds().height()) * ((this.mCropRect.top - ((float) this.mShowRect.top)) / ((float) this.mShowRect.height()))) - this.mCropRect.top;
                }
                canvas.translate(0.0f, -offsetY);
                this.mOriginalBmp.setAlpha(bgAlpha);
                this.mOriginalBmp.draw(canvas);
                canvas.translate(0.0f, offsetY);
            }
            this.mBorder.draw(canvas);
            this.mShadow.draw(canvas);
            this.mPaint.setAlpha((int) (this.mShowOriginalBmp * 178.0f));
            switch (this.mDragState) {
                case 1:
                    canvas.drawRect(0.0f, this.mCropRect.bottom, (float) getWidth(), (float) getHeight(), this.mPaint);
                    break;
                case 2:
                    canvas.drawRect(0.0f, 0.0f, (float) getWidth(), this.mCropRect.top, this.mPaint);
                    break;
            }
            canvas.drawBitmap(this.mPreviewBmp, this.mBmpRect, this.mShowRect, null);
            this.mPaint.setAlpha((int) (((1.0f - this.mShowOriginalBmp) * 77.0f) + 127.0f));
            canvas.drawRect((float) this.mShowRect.left, (float) this.mShowRect.top, (float) this.mShowRect.right, this.mCropRect.top, this.mPaint);
            canvas.drawRect((float) this.mShowRect.left, this.mCropRect.bottom, (float) this.mShowRect.right, (float) this.mShowRect.bottom, this.mPaint);
            if (bgAlpha > 0) {
                this.mPaint.setColor(-1996488705);
                this.mPaint.setAlpha(bgAlpha);
                float dividerY = 0.0f;
                switch (this.mDragState) {
                    case 1:
                        dividerY = this.mCropRect.bottom;
                        break;
                    case 2:
                        dividerY = this.mCropRect.top;
                        break;
                }
                canvas.drawLine(0.0f, dividerY, (float) getWidth(), dividerY, this.mPaint);
                canvas.drawBitmap(this.mScissor, 0.0f, dividerY - ((float) (this.mScissor.getHeight() / 2)), this.mPaint);
            }
            canvas.translate((float) (this.mShowRect.left - this.mCornorBarWidth), this.mCropRect.top - ((float) this.mCornorBarWidth));
            canvas.drawBitmap(this.mCornor, 0.0f, 0.0f, null);
            canvas.translate((float) (this.mShowRect.width() + (this.mCornorBarWidth * 2)), 0.0f);
            canvas.scale(-1.0f, 1.0f);
            canvas.drawBitmap(this.mCornor, 0.0f, 0.0f, null);
            canvas.translate(0.0f, this.mCropRect.height() + ((float) (this.mCornorBarWidth * 2)));
            canvas.scale(1.0f, -1.0f);
            canvas.drawBitmap(this.mCornor, 0.0f, 0.0f, null);
            canvas.translate((float) (this.mShowRect.width() + (this.mCornorBarWidth * 2)), 0.0f);
            canvas.scale(-1.0f, 1.0f);
            canvas.drawBitmap(this.mCornor, 0.0f, 0.0f, null);
        }
    }

    private static void calcFixCenter(int boxWidth, int boxHeight, int[] inOutSize) {
        float xRatio = ((float) inOutSize[0]) / ((float) boxWidth);
        float yRatio = ((float) inOutSize[1]) / ((float) boxHeight);
        if (xRatio > yRatio) {
            inOutSize[0] = boxWidth;
            inOutSize[1] = (int) ((((float) inOutSize[1]) / xRatio) + 0.5f);
            return;
        }
        inOutSize[0] = (int) ((((float) inOutSize[0]) / yRatio) + 0.5f);
        inOutSize[1] = boxHeight;
    }

    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.mDragState = detectBeginDragState(event.getY());
                this.mTouchDownY = event.getY();
                if (this.mDragState == 1) {
                    this.mCropYFirst = this.mCropRect.bottom;
                } else if (this.mDragState == 2) {
                    this.mCropYFirst = this.mCropRect.top;
                }
                if (this.mDragState != 0) {
                    this.mShowOriginalAnimator.start();
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.mDragState != 0) {
                    this.mShowOriginalAnimator.reverse();
                    break;
                }
                break;
            case 2:
                float newCropY = this.mCropYFirst + ((event.getY() - this.mTouchDownY) + 0.5f);
                switch (this.mDragState) {
                    case 1:
                        this.mCropRect.set(this.mCropRect.left, this.mCropRect.top, this.mCropRect.right, Math.max(Math.min(newCropY, (float) this.mShowRect.bottom), this.mCropRect.top + ((float) this.mMinHeight)));
                        break;
                    case 2:
                        this.mCropRect.set(this.mCropRect.left, Math.min(Math.max(newCropY, (float) this.mShowRect.top), this.mCropRect.bottom - ((float) this.mMinHeight)), this.mCropRect.right, this.mCropRect.bottom);
                        break;
                }
                invalidate();
                break;
        }
        return true;
    }

    private int detectBeginDragState(float touchY) {
        if (Math.abs(touchY - this.mCropRect.top) <= ((float) this.mDragLineEdge)) {
            return 2;
        }
        if (Math.abs(touchY - this.mCropRect.bottom) <= ((float) this.mDragLineEdge)) {
            return 1;
        }
        return 0;
    }

    public void setBitmap(Bitmap preview) {
        this.mPreviewBmp = preview;
        refreshBounds();
    }

    public void setOriginalBitmap(Bitmap originalBmp, float topRatio, float bottomRatio) {
        this.mOriginalBmp = new LongBitmapDrawable(originalBmp);
        Rect bounds = new Rect();
        bounds.left = 0;
        bounds.right = originalBmp.getWidth();
        bounds.top = Math.round(((float) originalBmp.getHeight()) * topRatio);
        bounds.bottom = Math.round(((float) originalBmp.getHeight()) * bottomRatio);
        this.mOriginalBmp.setBounds(bounds);
    }

    public void setBounds(RectF bounds) {
        this.mBounds = bounds;
        refreshBounds();
    }

    public void refreshBounds() {
        if (this.mPreviewBmp != null && this.mBounds != null) {
            this.mBmpRect = new Rect(0, 0, this.mPreviewBmp.getWidth(), this.mPreviewBmp.getHeight());
            int[] size = new int[]{this.mBmpRect.width(), this.mBmpRect.height()};
            calcFixCenter((int) this.mBounds.width(), (int) this.mBounds.height(), size);
            int x = ((int) this.mBounds.left) + ((((int) this.mBounds.width()) - size[0]) / 2);
            int y = ((int) this.mBounds.top) + ((((int) this.mBounds.height()) - size[1]) / 2);
            this.mShowRect = new Rect(x, y, size[0] + x, size[1] + y);
            this.mCropRect = new RectF(this.mShowRect);
            Rect padding = new Rect();
            this.mBorder.getPadding(padding);
            this.mBorder.setBounds(this.mShowRect.left - padding.left, this.mShowRect.top - padding.top, this.mShowRect.right + padding.right, this.mShowRect.bottom + padding.bottom);
            this.mShadow.getPadding(padding);
            this.mShadow.setBounds(this.mShowRect.left - padding.left, this.mShowRect.top - padding.top, this.mShowRect.right + padding.right, this.mShowRect.bottom + padding.bottom);
            invalidate();
        }
    }

    public boolean isEmpty() {
        return this.mCropRect.contains(new RectF(this.mShowRect));
    }

    public Entry export() {
        return new Entry((this.mCropRect.top - ((float) this.mShowRect.top)) / ((float) this.mShowRect.height()), (this.mCropRect.bottom - ((float) this.mShowRect.top)) / ((float) this.mShowRect.height()));
    }

    public void onAnimationUpdate(ValueAnimator animation) {
        this.mShowOriginalBmp = ((Float) animation.getAnimatedValue()).floatValue();
        invalidate();
    }
}
