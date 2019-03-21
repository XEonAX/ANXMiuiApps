package com.miui.gallery.editor.photo.widgets.imageview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.ViewConfiguration;
import com.miui.gallery.editor.photo.widgets.StrokeImageHelper;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureParamsHolder.ParamsChangeListener;

public class BitmapGestureView extends View {
    protected BitmapGestureParamsHolder mBitmapGestureParamsHolder;
    private Paint mBitmapPaint = new Paint(3);
    private CustomGesListener mCustomGesListener = new CustomGesListener(this, null);
    private CustomScaleListener mCustomScaleListener = new CustomScaleListener(this, null);
    protected Bitmap mDisplayBitmap;
    protected Canvas mDisplayCanvas;
    private boolean mDrawOrigin = false;
    private FeatureGesListener mFeatureGestureListener;
    private boolean mForceHandleEventByChild = false;
    private GestureDetector mGestureDetector;
    protected Bitmap mOriginBitmap;
    private ParamsChangeListener mParamsChangeListener = new ParamsChangeListener() {
        public void onBitmapMatrixChanged() {
            BitmapGestureView.this.onBitmapMatrixChanged();
            BitmapGestureView.this.invalidate();
        }

        public void onCanvasMatrixChange() {
            BitmapGestureView.this.onCanvasMatrixChange();
            BitmapGestureView.this.invalidate();
        }
    };
    private ScaleGestureDetector mScaleGestureDetector;
    protected State mState = State.NOT_DEFINE;
    private StrokeImageHelper mStrokeImageHelper;
    private float mTouchMinSize;

    protected interface FeatureGesListener extends OnScaleGestureListener {
        void onActionUp(float f, float f2);

        boolean onDown(MotionEvent motionEvent);

        void onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

        void onSingleTapUp(MotionEvent motionEvent);
    }

    private class CustomGesListener implements OnGestureListener {
        private CustomGesListener() {
        }

        /* synthetic */ CustomGesListener(BitmapGestureView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            if (BitmapGestureView.this.mState != State.BY_CHILD) {
                if (e.getPointerCount() > 1) {
                    BitmapGestureView.this.mState = State.SCALE_MOVE;
                    return true;
                } else if (BitmapGestureView.this.mFeatureGestureListener != null) {
                    return BitmapGestureView.this.mFeatureGestureListener.onDown(e);
                } else {
                    return true;
                }
            } else if (BitmapGestureView.this.mFeatureGestureListener != null) {
                return BitmapGestureView.this.mFeatureGestureListener.onDown(e);
            } else {
                return true;
            }
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            if (!(BitmapGestureView.this.mState == State.SCALE_MOVE || BitmapGestureView.this.mFeatureGestureListener == null)) {
                BitmapGestureView.this.mState = State.BY_CHILD;
                BitmapGestureView.this.mFeatureGestureListener.onSingleTapUp(e);
            }
            return true;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (BitmapGestureView.this.mState == State.SCALE_MOVE) {
                BitmapGestureView.this.mBitmapGestureParamsHolder.performTransition(-distanceX, -distanceY);
            } else if (BitmapGestureView.this.mState == State.BY_CHILD) {
                if (BitmapGestureView.this.mFeatureGestureListener != null) {
                    BitmapGestureView.this.mFeatureGestureListener.onScroll(e1, e2, distanceX, distanceY);
                }
            } else if (e2.getPointerCount() > 1) {
                BitmapGestureView.this.mState = State.SCALE_MOVE;
            } else if (((float) Math.hypot((double) (e2.getX() - e1.getX()), (double) (e2.getY() - e1.getY()))) > BitmapGestureView.this.mTouchMinSize) {
                BitmapGestureView.this.mState = State.BY_CHILD;
            } else {
                BitmapGestureView.this.mState = State.NOT_DEFINE;
            }
            return true;
        }

        public void onLongPress(MotionEvent e) {
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            return false;
        }
    }

    private class CustomScaleListener implements OnScaleGestureListener {
        private CustomScaleListener() {
        }

        /* synthetic */ CustomScaleListener(BitmapGestureView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            if (BitmapGestureView.this.mState != State.BY_CHILD) {
                float scale = detector.getScaleFactor();
                BitmapGestureView.this.mState = State.SCALE_MOVE;
                if (scale > 1.0f && BitmapGestureView.this.mBitmapGestureParamsHolder.mBitmapDisplayRect.width() > BitmapGestureView.this.mBitmapGestureParamsHolder.mMaxWidthScale) {
                    return false;
                }
                BitmapGestureView.this.mBitmapGestureParamsHolder.performScale(scale, detector.getFocusX(), detector.getFocusY());
            } else if (BitmapGestureView.this.mFeatureGestureListener != null) {
                BitmapGestureView.this.mFeatureGestureListener.onScale(detector);
            }
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            if (BitmapGestureView.this.mState != State.BY_CHILD) {
                BitmapGestureView.this.mState = State.SCALE_MOVE;
            } else if (BitmapGestureView.this.mFeatureGestureListener != null) {
                BitmapGestureView.this.mFeatureGestureListener.onScaleBegin(detector);
            }
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
            if (BitmapGestureView.this.mState == State.BY_CHILD && BitmapGestureView.this.mFeatureGestureListener != null) {
                BitmapGestureView.this.mFeatureGestureListener.onScaleEnd(detector);
            }
        }
    }

    protected enum State {
        NOT_DEFINE,
        SCALE_MOVE,
        BY_CHILD
    }

    public BitmapGestureView(Context context) {
        super(context);
        init();
    }

    public BitmapGestureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public BitmapGestureView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mBitmapGestureParamsHolder = new BitmapGestureParamsHolder(this, this.mParamsChangeListener);
        this.mGestureDetector = new GestureDetector(getContext(), this.mCustomGesListener);
        this.mScaleGestureDetector = new ScaleGestureDetector(getContext(), this.mCustomScaleListener);
        this.mGestureDetector.setIsLongpressEnabled(false);
        this.mTouchMinSize = (float) ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mStrokeImageHelper = new StrokeImageHelper(getContext());
    }

    public void setBitmap(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        this.mOriginBitmap = bitmap;
        this.mDisplayBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        this.mDisplayCanvas = new Canvas(this.mDisplayBitmap);
        refreshDisplayCanvas();
        this.mBitmapGestureParamsHolder.setBitmap(bitmap);
    }

    protected void refreshDisplayCanvas() {
        this.mDisplayCanvas.drawBitmap(this.mOriginBitmap, 0.0f, 0.0f, this.mBitmapPaint);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mBitmapGestureParamsHolder.onSizeChanged(w, h, oldw, oldh);
    }

    protected final void onDraw(Canvas canvas) {
        if (this.mDisplayBitmap != null && !this.mDisplayBitmap.isRecycled()) {
            canvas.save();
            canvas.concat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
            canvas.drawBitmap(this.mDrawOrigin ? this.mOriginBitmap : this.mDisplayBitmap, this.mBitmapGestureParamsHolder.mBitmapToDisplayMatrix, this.mBitmapPaint);
            canvas.restore();
            drawChild(canvas);
            this.mStrokeImageHelper.draw(canvas, this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
        }
    }

    protected void drawChild(Canvas canvas) {
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mDisplayBitmap == null) {
            return false;
        }
        if (event.getAction() == 0) {
            this.mState = State.NOT_DEFINE;
        }
        if (event.getPointerCount() > 1) {
            this.mState = State.SCALE_MOVE;
        }
        if (this.mForceHandleEventByChild) {
            this.mState = State.BY_CHILD;
        }
        this.mScaleGestureDetector.onTouchEvent(event);
        this.mGestureDetector.onTouchEvent(event);
        switch (event.getAction()) {
            case 1:
            case 3:
                onActionUp(event.getX(), event.getY());
                return true;
            default:
                return true;
        }
    }

    private void onActionUp(float x, float y) {
        this.mBitmapGestureParamsHolder.resetMatrixWithAnim();
        if (this.mFeatureGestureListener != null) {
            this.mFeatureGestureListener.onActionUp(x, y);
        }
        invalidate();
    }

    protected void convertPointToViewPortCoordinate(MotionEvent e, float[] points) {
        points[0] = e.getX();
        points[1] = e.getY();
        convertPointToViewPortCoordinate(points);
    }

    protected void convertPointToViewPortCoordinate(float[] points) {
        this.mBitmapGestureParamsHolder.convertPointToViewPortCoordinate(points);
    }

    protected float convertDistanceX(float distanceX) {
        return this.mBitmapGestureParamsHolder.convertDistanceX(distanceX);
    }

    protected float convertDistanceY(float distanceY) {
        return this.mBitmapGestureParamsHolder.convertDistanceY(distanceY);
    }

    protected int getRectOverScrollStatus(RectF rectF) {
        return getRectOverScrollStatus(rectF, 0.5f);
    }

    protected int getRectOverScrollStatus(RectF rectF, float overScrollRate) {
        RectF bitmapDisplayRect = this.mBitmapGestureParamsHolder.mBitmapDisplayRect;
        RectF displayRect = this.mBitmapGestureParamsHolder.mDisplayRect;
        float widthHalf = rectF.width() * overScrollRate;
        float heightHalf = rectF.height() * overScrollRate;
        float left = Math.max(bitmapDisplayRect.left, displayRect.left);
        float top = Math.max(bitmapDisplayRect.top, displayRect.top);
        float right = Math.min(bitmapDisplayRect.right, displayRect.right);
        float bottom = Math.min(bitmapDisplayRect.bottom, displayRect.bottom);
        int flag = 0;
        if (rectF.left - left < (-widthHalf)) {
            flag = 0 | 8;
        } else if (rectF.right > right + widthHalf) {
            flag = 0 | 4;
        }
        if (rectF.top - top < (-heightHalf)) {
            return flag | 2;
        }
        if (rectF.bottom > bottom + heightHalf) {
            return flag | 1;
        }
        return flag;
    }

    protected void enableChildHandleMode() {
        this.mForceHandleEventByChild = true;
    }

    protected void disableChildHandleMode() {
        this.mForceHandleEventByChild = false;
    }

    public void setFeatureGestureListener(FeatureGesListener featureGestureListener) {
        this.mFeatureGestureListener = featureGestureListener;
    }

    protected void onCanvasMatrixChange() {
    }

    protected void onBitmapMatrixChanged() {
    }

    public void drawOrigin(boolean drawOrigin) {
        this.mDrawOrigin = drawOrigin;
        invalidate();
    }

    public void onClear() {
    }
}
