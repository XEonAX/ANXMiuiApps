package com.edmodo.cropper;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.edmodo.cropper.cropwindow.edge.Edge;
import com.edmodo.cropper.cropwindow.handle.Handle;
import com.edmodo.cropper.util.AspectRatioUtil;
import com.edmodo.cropper.util.HandleUtil;
import com.edmodo.cropper.util.PaintUtil;
import com.miui.gallery.R;

public class CropImageView extends ImageView {
    private static final String TAG = CropImageView.class.getName();
    private int mAspectRatioX = 1;
    private int mAspectRatioY = 1;
    private RectF mBitmapRect = new RectF();
    private Paint mBorderPaint;
    private float mBorderThickness;
    private float mCornerLength;
    private Paint mCornerPaint;
    private float mCornerThickness;
    private boolean mFixAspectRatio;
    private Paint mGuidelinePaint;
    private int mGuidelinesMode = 1;
    private float mHandleRadius;
    private Handle mPressedHandle;
    private float mSnapRadius;
    private Paint mSurroundingAreaOverlayPaint;
    private PointF mTouchOffset = new PointF();

    public CropImageView(Context context) {
        super(context);
        init(context, null);
    }

    public CropImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public CropImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.CropImageView, 0, 0);
        this.mGuidelinesMode = typedArray.getInteger(0, 1);
        this.mFixAspectRatio = typedArray.getBoolean(1, false);
        this.mAspectRatioX = typedArray.getInteger(2, 1);
        this.mAspectRatioY = typedArray.getInteger(3, 1);
        typedArray.recycle();
        Resources resources = context.getResources();
        this.mBorderPaint = PaintUtil.newBorderPaint(resources);
        this.mGuidelinePaint = PaintUtil.newGuidelinePaint(resources);
        this.mSurroundingAreaOverlayPaint = PaintUtil.newSurroundingAreaOverlayPaint(resources);
        this.mCornerPaint = PaintUtil.newCornerPaint(resources);
        this.mHandleRadius = resources.getDimension(R.dimen.target_radius);
        this.mSnapRadius = resources.getDimension(R.dimen.snap_radius);
        this.mBorderThickness = resources.getDimension(R.dimen.border_thickness);
        this.mCornerThickness = resources.getDimension(R.dimen.corner_thickness);
        this.mCornerLength = resources.getDimension(R.dimen.corner_length);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mBitmapRect = getBitmapRect();
        initCropWindow(this.mBitmapRect);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawDarkenedSurroundingArea(canvas);
        drawGuidelines(canvas);
        drawBorder(canvas);
        drawCorners(canvas);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                onActionDown(event.getX(), event.getY());
                return true;
            case 1:
            case 3:
                getParent().requestDisallowInterceptTouchEvent(false);
                onActionUp();
                return true;
            case 2:
                onActionMove(event.getX(), event.getY());
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            default:
                return false;
        }
    }

    public void setGuidelines(int guidelinesMode) {
        this.mGuidelinesMode = guidelinesMode;
        invalidate();
    }

    public void setFixedAspectRatio(boolean fixAspectRatio) {
        this.mFixAspectRatio = fixAspectRatio;
        requestLayout();
    }

    public void setAspectRatio(int aspectRatioX, int aspectRatioY) {
        if (aspectRatioX <= 0 || aspectRatioY <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        this.mAspectRatioX = aspectRatioX;
        this.mAspectRatioY = aspectRatioY;
        if (this.mFixAspectRatio) {
            requestLayout();
        }
    }

    public Bitmap getCroppedImage() {
        Drawable drawable = getDrawable();
        if (drawable == null || !(drawable instanceof BitmapDrawable)) {
            return null;
        }
        float[] matrixValues = new float[9];
        getImageMatrix().getValues(matrixValues);
        float scaleX = matrixValues[0];
        float scaleY = matrixValues[4];
        float bitmapLeft = matrixValues[2];
        float bitmapTop = matrixValues[5];
        Bitmap originalBitmap = ((BitmapDrawable) drawable).getBitmap();
        float cropX = (Edge.LEFT.getCoordinate() - bitmapLeft) / scaleX;
        float cropY = (Edge.TOP.getCoordinate() - bitmapTop) / scaleY;
        float cropWidth = Math.min(Edge.getWidth() / scaleX, ((float) originalBitmap.getWidth()) - cropX);
        int x = (int) cropX;
        int y = (int) cropY;
        int width = (int) Math.floor((double) cropWidth);
        int height = (int) Math.floor((double) Math.min(Edge.getHeight() / scaleY, ((float) originalBitmap.getHeight()) - cropY));
        if (width == 0) {
            width = 1;
        }
        if (height == 0) {
            height = 1;
        }
        if (x + width > originalBitmap.getWidth()) {
            x -= (x + width) - originalBitmap.getWidth();
        }
        if (y + height > originalBitmap.getHeight()) {
            y -= (y + height) - originalBitmap.getHeight();
        }
        return Bitmap.createBitmap(originalBitmap, x, y, width, height);
    }

    private RectF getBitmapRect() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return new RectF();
        }
        float[] matrixValues = new float[9];
        getImageMatrix().getValues(matrixValues);
        float scaleX = matrixValues[0];
        float scaleY = matrixValues[4];
        float transX = matrixValues[2];
        float transY = matrixValues[5];
        int drawableIntrinsicWidth = drawable.getIntrinsicWidth();
        int drawableIntrinsicHeight = drawable.getIntrinsicHeight();
        int drawableDisplayWidth = Math.round(((float) drawableIntrinsicWidth) * scaleX);
        int drawableDisplayHeight = Math.round(((float) drawableIntrinsicHeight) * scaleY);
        float left = Math.max(transX, 0.0f);
        float top = Math.max(transY, 0.0f);
        return new RectF(left, top, Math.min(((float) drawableDisplayWidth) + left, (float) getWidth()), Math.min(((float) drawableDisplayHeight) + top, (float) getHeight()));
    }

    private void initCropWindow(RectF bitmapRect) {
        if (this.mFixAspectRatio) {
            initCropWindowWithFixedAspectRatio(bitmapRect);
            return;
        }
        float horizontalPadding = 0.1f * bitmapRect.width();
        float verticalPadding = 0.1f * bitmapRect.height();
        Edge.LEFT.setCoordinate(bitmapRect.left + horizontalPadding);
        Edge.TOP.setCoordinate(bitmapRect.top + verticalPadding);
        Edge.RIGHT.setCoordinate(bitmapRect.right - horizontalPadding);
        Edge.BOTTOM.setCoordinate(bitmapRect.bottom - verticalPadding);
    }

    private void initCropWindowWithFixedAspectRatio(RectF bitmapRect) {
        if (AspectRatioUtil.calculateAspectRatio(bitmapRect) > getTargetAspectRatio()) {
            float cropWidth = AspectRatioUtil.calculateWidth(bitmapRect.height(), getTargetAspectRatio());
            Edge.LEFT.setCoordinate(bitmapRect.centerX() - (cropWidth / 2.0f));
            Edge.TOP.setCoordinate(bitmapRect.top);
            Edge.RIGHT.setCoordinate(bitmapRect.centerX() + (cropWidth / 2.0f));
            Edge.BOTTOM.setCoordinate(bitmapRect.bottom);
            return;
        }
        float cropHeight = AspectRatioUtil.calculateHeight(bitmapRect.width(), getTargetAspectRatio());
        Edge.LEFT.setCoordinate(bitmapRect.left);
        Edge.TOP.setCoordinate(bitmapRect.centerY() - (cropHeight / 2.0f));
        Edge.RIGHT.setCoordinate(bitmapRect.right);
        Edge.BOTTOM.setCoordinate(bitmapRect.centerY() + (cropHeight / 2.0f));
    }

    private void drawDarkenedSurroundingArea(Canvas canvas) {
        RectF bitmapRect = this.mBitmapRect;
        float left = Edge.LEFT.getCoordinate();
        float top = Edge.TOP.getCoordinate();
        float right = Edge.RIGHT.getCoordinate();
        float bottom = Edge.BOTTOM.getCoordinate();
        canvas.drawRect(bitmapRect.left, bitmapRect.top, bitmapRect.right, top, this.mSurroundingAreaOverlayPaint);
        canvas.drawRect(bitmapRect.left, bottom, bitmapRect.right, bitmapRect.bottom, this.mSurroundingAreaOverlayPaint);
        canvas.drawRect(bitmapRect.left, top, left, bottom, this.mSurroundingAreaOverlayPaint);
        canvas.drawRect(right, top, bitmapRect.right, bottom, this.mSurroundingAreaOverlayPaint);
    }

    private void drawGuidelines(Canvas canvas) {
        if (shouldGuidelinesBeShown()) {
            float left = Edge.LEFT.getCoordinate();
            float top = Edge.TOP.getCoordinate();
            float right = Edge.RIGHT.getCoordinate();
            float bottom = Edge.BOTTOM.getCoordinate();
            float oneThirdCropWidth = Edge.getWidth() / 3.0f;
            float x1 = left + oneThirdCropWidth;
            canvas.drawLine(x1, top, x1, bottom, this.mGuidelinePaint);
            float x2 = right - oneThirdCropWidth;
            canvas.drawLine(x2, top, x2, bottom, this.mGuidelinePaint);
            float oneThirdCropHeight = Edge.getHeight() / 3.0f;
            float y1 = top + oneThirdCropHeight;
            canvas.drawLine(left, y1, right, y1, this.mGuidelinePaint);
            float y2 = bottom - oneThirdCropHeight;
            canvas.drawLine(left, y2, right, y2, this.mGuidelinePaint);
        }
    }

    private void drawBorder(Canvas canvas) {
        canvas.drawRect(Edge.LEFT.getCoordinate(), Edge.TOP.getCoordinate(), Edge.RIGHT.getCoordinate(), Edge.BOTTOM.getCoordinate(), this.mBorderPaint);
    }

    private void drawCorners(Canvas canvas) {
        float left = Edge.LEFT.getCoordinate();
        float top = Edge.TOP.getCoordinate();
        float right = Edge.RIGHT.getCoordinate();
        float bottom = Edge.BOTTOM.getCoordinate();
        float lateralOffset = (this.mCornerThickness - this.mBorderThickness) / 2.0f;
        float startOffset = this.mCornerThickness - (this.mBorderThickness / 2.0f);
        canvas.drawLine(left - lateralOffset, top - startOffset, left - lateralOffset, top + this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(left - startOffset, top - lateralOffset, left + this.mCornerLength, top - lateralOffset, this.mCornerPaint);
        canvas.drawLine(right + lateralOffset, top - startOffset, right + lateralOffset, top + this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(right + startOffset, top - lateralOffset, right - this.mCornerLength, top - lateralOffset, this.mCornerPaint);
        canvas.drawLine(left - lateralOffset, bottom + startOffset, left - lateralOffset, bottom - this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(left - startOffset, bottom + lateralOffset, left + this.mCornerLength, bottom + lateralOffset, this.mCornerPaint);
        canvas.drawLine(right + lateralOffset, bottom + startOffset, right + lateralOffset, bottom - this.mCornerLength, this.mCornerPaint);
        canvas.drawLine(right + startOffset, bottom + lateralOffset, right - this.mCornerLength, bottom + lateralOffset, this.mCornerPaint);
    }

    private boolean shouldGuidelinesBeShown() {
        if (this.mGuidelinesMode != 2) {
            return this.mGuidelinesMode == 1 && this.mPressedHandle != null;
        } else {
            return true;
        }
    }

    private float getTargetAspectRatio() {
        return ((float) this.mAspectRatioX) / ((float) this.mAspectRatioY);
    }

    private void onActionDown(float x, float y) {
        float left = Edge.LEFT.getCoordinate();
        float top = Edge.TOP.getCoordinate();
        float right = Edge.RIGHT.getCoordinate();
        float bottom = Edge.BOTTOM.getCoordinate();
        this.mPressedHandle = HandleUtil.getPressedHandle(x, y, left, top, right, bottom, this.mHandleRadius);
        if (this.mPressedHandle != null) {
            HandleUtil.getOffset(this.mPressedHandle, x, y, left, top, right, bottom, this.mTouchOffset);
            invalidate();
        }
    }

    private void onActionUp() {
        if (this.mPressedHandle != null) {
            this.mPressedHandle = null;
            invalidate();
        }
    }

    private void onActionMove(float x, float y) {
        if (this.mPressedHandle != null) {
            x += this.mTouchOffset.x;
            y += this.mTouchOffset.y;
            if (this.mFixAspectRatio) {
                this.mPressedHandle.updateCropWindow(x, y, getTargetAspectRatio(), this.mBitmapRect, this.mSnapRadius);
            } else {
                this.mPressedHandle.updateCropWindow(x, y, this.mBitmapRect, this.mSnapRadius);
            }
            invalidate();
        }
    }
}
