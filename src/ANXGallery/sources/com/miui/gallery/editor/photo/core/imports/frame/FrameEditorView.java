package com.miui.gallery.editor.photo.core.imports.frame;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;

public class FrameEditorView extends View {
    private int mBackgroundColor;
    private Paint mBackgroundPaint = new Paint(1);
    private RectF mBackgroundRect = new RectF();
    private Bitmap mBitmap;
    private RectF mBitmapDisplayRect = new RectF();
    private Matrix mBitmapMatrix = new Matrix();
    private Paint mBitmapPaint = new Paint(3);
    private float mBitmapRatio = 1.0f;
    private RectF mBitmapRect = new RectF();
    private float mRatio = 1.0f;
    private float mScaleProgress = 1.0f;
    private RectF mViewRect = new RectF();

    public static class FrameEntry implements Parcelable {
        public static final Creator<FrameEntry> CREATOR = new Creator<FrameEntry>() {
            public FrameEntry createFromParcel(Parcel source) {
                return new FrameEntry(source);
            }

            public FrameEntry[] newArray(int size) {
                return new FrameEntry[size];
            }
        };
        private RectF mBackgroundRect = new RectF();
        private Matrix mBitmapMatrix = new Matrix();
        private Paint mBitmapPaint = new Paint(3);
        private RectF mBitmapRect = new RectF();
        private float mRatio;
        private float mScaleProgress;

        FrameEntry(float ratio, float scaleProgress) {
            this.mRatio = ratio;
            this.mScaleProgress = scaleProgress;
        }

        protected Bitmap apply(Bitmap bitmap) {
            int width;
            int height;
            int bitmapWidth = bitmap.getWidth();
            int bitmapHeight = bitmap.getHeight();
            this.mBitmapRect.set(0.0f, 0.0f, (float) bitmapWidth, (float) bitmapHeight);
            int maxLength = Math.max(bitmapWidth, bitmapHeight);
            if (this.mRatio > 1.0f) {
                width = maxLength;
                height = Math.round(((float) width) / this.mRatio);
            } else {
                height = maxLength;
                width = Math.round(((float) height) * this.mRatio);
            }
            Bitmap target = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            this.mBackgroundRect.set(0.0f, 0.0f, (float) width, (float) height);
            this.mBitmapMatrix.setRectToRect(this.mBitmapRect, this.mBackgroundRect, ScaleToFit.CENTER);
            this.mBitmapMatrix.postScale(this.mScaleProgress, this.mScaleProgress, this.mBackgroundRect.centerX(), this.mBackgroundRect.centerY());
            Canvas canvas = new Canvas(target);
            canvas.drawColor(-1);
            canvas.drawBitmap(bitmap, this.mBitmapMatrix, this.mBitmapPaint);
            return target;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeFloat(this.mRatio);
            dest.writeFloat(this.mScaleProgress);
        }

        FrameEntry(Parcel in) {
            this.mRatio = in.readFloat();
            this.mScaleProgress = in.readFloat();
        }
    }

    public FrameEditorView(Context context) {
        super(context);
        init();
    }

    public FrameEditorView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public FrameEditorView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mBackgroundColor = getResources().getColor(R.color.frame_editor_view_background);
        this.mBackgroundPaint.setStyle(Style.FILL);
        this.mBackgroundPaint.setColor(-1);
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.mBitmapRect.set(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
        this.mBitmapRatio = ((float) bitmap.getWidth()) / ((float) bitmap.getHeight());
        refreshSize();
    }

    public void setRatio(float ratio) {
        this.mRatio = ratio;
        refreshSize();
    }

    public void setScaleProgress(float scaleProgress) {
        this.mScaleProgress = 1.0f - (0.4f * (1.0f - scaleProgress));
        refreshBitmapRect();
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawColor(this.mBackgroundColor);
        canvas.drawRect(this.mBackgroundRect, this.mBackgroundPaint);
        canvas.drawBitmap(this.mBitmap, this.mBitmapMatrix, this.mBitmapPaint);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.mViewRect.set(0.0f, 0.0f, (float) w, (float) h);
        refreshSize();
    }

    private void refreshSize() {
        if (!this.mBitmapRect.isEmpty() && !this.mViewRect.isEmpty()) {
            refreshBackgroundRect();
            refreshBitmapRect();
            invalidate();
        }
    }

    private void refreshBitmapRect() {
        this.mBitmapMatrix.reset();
        this.mBitmapMatrix.setRectToRect(this.mBitmapRect, this.mBackgroundRect, ScaleToFit.CENTER);
        this.mBitmapMatrix.mapRect(this.mBitmapDisplayRect, this.mBitmapRect);
        this.mBitmapMatrix.postScale(this.mScaleProgress, this.mScaleProgress, this.mBitmapDisplayRect.centerX(), this.mBitmapDisplayRect.centerY());
    }

    private void refreshBackgroundRect() {
        if (this.mRatio >= this.mViewRect.width() / this.mViewRect.height()) {
            this.mBackgroundRect.left = this.mViewRect.left;
            this.mBackgroundRect.right = this.mViewRect.right;
            float height = (this.mViewRect.width() / this.mRatio) / 2.0f;
            this.mBackgroundRect.top = this.mViewRect.centerY() - height;
            this.mBackgroundRect.bottom = this.mViewRect.centerY() + height;
            return;
        }
        this.mBackgroundRect.top = this.mViewRect.top;
        this.mBackgroundRect.bottom = this.mViewRect.bottom;
        float width = (this.mViewRect.height() * this.mRatio) / 2.0f;
        this.mBackgroundRect.left = this.mViewRect.centerX() - width;
        this.mBackgroundRect.right = this.mViewRect.centerX() + width;
    }

    public FrameEntry export() {
        return new FrameEntry(this.mRatio, this.mScaleProgress);
    }

    public boolean isEmpty() {
        return Float.compare(this.mRatio, this.mBitmapRatio) == 0 && Float.compare(this.mScaleProgress, 1.0f) == 0;
    }
}
