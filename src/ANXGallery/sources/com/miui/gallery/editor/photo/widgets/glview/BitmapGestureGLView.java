package com.miui.gallery.editor.photo.widgets.glview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.ViewConfiguration;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureParamsHolder;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureParamsHolder.ParamsChangeListener;

public class BitmapGestureGLView extends GLSurfaceView {
    protected BitmapGestureParamsHolder mBitmapGestureParamsHolder;
    private CustomGesListener mCustomGesListener = new CustomGesListener(this, null);
    private CustomScaleListener mCustomScaleListener = new CustomScaleListener(this, null);
    private FeatureGesListener mFeatureGestureListener;
    private GestureDetector mGestureDetector;
    protected Bitmap mOriginBitmap;
    private ParamsChangeListener mParamsChangeListener = new ParamsChangeListener() {
        public void onBitmapMatrixChanged() {
            BitmapGestureGLView.this.onBitmapMatrixChange();
        }

        public void onCanvasMatrixChange() {
            BitmapGestureGLView.this.onCanvasMatrixChange();
        }
    };
    private ScaleGestureDetector mScaleGestureDetector;
    protected State mState = State.NOT_DEFINE;
    private float mTouchMinSize;

    public interface FeatureGesListener extends OnScaleGestureListener {
        void onActionUp(float f, float f2);

        boolean onDown(MotionEvent motionEvent);

        void onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

        void onSingleTapUp(MotionEvent motionEvent);
    }

    private class CustomGesListener implements OnGestureListener {
        private CustomGesListener() {
        }

        /* synthetic */ CustomGesListener(BitmapGestureGLView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            if (BitmapGestureGLView.this.mState != State.BY_CHILD) {
                if (e.getPointerCount() > 1) {
                    BitmapGestureGLView.this.mState = State.SCALE_MOVE;
                    return true;
                } else if (BitmapGestureGLView.this.mFeatureGestureListener != null) {
                    return BitmapGestureGLView.this.mFeatureGestureListener.onDown(e);
                } else {
                    return true;
                }
            } else if (BitmapGestureGLView.this.mFeatureGestureListener != null) {
                return BitmapGestureGLView.this.mFeatureGestureListener.onDown(e);
            } else {
                return true;
            }
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            if (!(BitmapGestureGLView.this.mState == State.SCALE_MOVE || BitmapGestureGLView.this.mFeatureGestureListener == null)) {
                BitmapGestureGLView.this.mState = State.BY_CHILD;
                BitmapGestureGLView.this.mFeatureGestureListener.onSingleTapUp(e);
            }
            return true;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (BitmapGestureGLView.this.mState == State.SCALE_MOVE) {
                BitmapGestureGLView.this.mBitmapGestureParamsHolder.performTransition(-distanceX, -distanceY);
            } else if (BitmapGestureGLView.this.mState == State.BY_CHILD) {
                if (BitmapGestureGLView.this.mFeatureGestureListener != null) {
                    BitmapGestureGLView.this.mFeatureGestureListener.onScroll(e1, e2, distanceX, distanceY);
                }
            } else if (e2.getPointerCount() > 1) {
                BitmapGestureGLView.this.mState = State.SCALE_MOVE;
            } else if (((float) Math.hypot((double) (e2.getX() - e1.getX()), (double) (e2.getY() - e1.getY()))) > BitmapGestureGLView.this.mTouchMinSize) {
                BitmapGestureGLView.this.mState = State.BY_CHILD;
            } else {
                BitmapGestureGLView.this.mState = State.NOT_DEFINE;
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

        /* synthetic */ CustomScaleListener(BitmapGestureGLView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            if (BitmapGestureGLView.this.mState != State.BY_CHILD) {
                float scale = detector.getScaleFactor();
                BitmapGestureGLView.this.mState = State.SCALE_MOVE;
                if (scale > 1.0f && BitmapGestureGLView.this.mBitmapGestureParamsHolder.mBitmapDisplayRect.width() > BitmapGestureGLView.this.mBitmapGestureParamsHolder.mMaxWidthScale) {
                    return false;
                }
                BitmapGestureGLView.this.mBitmapGestureParamsHolder.performScale(scale, detector.getFocusX(), detector.getFocusY());
            } else if (BitmapGestureGLView.this.mFeatureGestureListener != null) {
                BitmapGestureGLView.this.mFeatureGestureListener.onScale(detector);
            }
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            if (BitmapGestureGLView.this.mState != State.BY_CHILD) {
                BitmapGestureGLView.this.mState = State.SCALE_MOVE;
            } else if (BitmapGestureGLView.this.mFeatureGestureListener != null) {
                BitmapGestureGLView.this.mFeatureGestureListener.onScaleBegin(detector);
            }
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
            if (BitmapGestureGLView.this.mState == State.BY_CHILD && BitmapGestureGLView.this.mFeatureGestureListener != null) {
                BitmapGestureGLView.this.mFeatureGestureListener.onScaleEnd(detector);
            }
        }
    }

    protected enum State {
        NOT_DEFINE,
        SCALE_MOVE,
        BY_CHILD
    }

    public BitmapGestureGLView(Context context) {
        super(context);
        init();
    }

    private void init() {
        this.mTouchMinSize = (float) ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mGestureDetector = new GestureDetector(getContext(), this.mCustomGesListener);
        this.mScaleGestureDetector = new ScaleGestureDetector(getContext(), this.mCustomScaleListener);
        this.mGestureDetector.setIsLongpressEnabled(false);
        this.mBitmapGestureParamsHolder = new BitmapGestureParamsHolder(this, this.mParamsChangeListener);
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setZOrderOnTop(true);
        getHolder().setFormat(-2);
    }

    public void setBitmap(Bitmap bitmap) {
        this.mOriginBitmap = bitmap;
        this.mBitmapGestureParamsHolder.setBitmap(bitmap);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mBitmapGestureParamsHolder.onSizeChanged(w, h, oldw, oldh);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 0) {
            this.mState = State.NOT_DEFINE;
        }
        if (event.getPointerCount() > 1) {
            this.mState = State.SCALE_MOVE;
        }
        this.mScaleGestureDetector.onTouchEvent(event);
        this.mGestureDetector.onTouchEvent(event);
        switch (event.getAction()) {
            case 1:
            case 3:
                onActionUp(event.getX(), event.getY());
                break;
        }
        return true;
    }

    private void onActionUp(float x, float y) {
        this.mBitmapGestureParamsHolder.resetMatrixWithAnim();
        if (this.mFeatureGestureListener != null) {
            this.mFeatureGestureListener.onActionUp(x, y);
        }
    }

    protected void convertPoint(float[] points) {
        for (int i = 0; i < points.length; i += 2) {
            points[i] = convertX(points[i]);
            points[i + 1] = convertY(points[i + 1]);
        }
    }

    public static void convertPointToBitmap(float[] points, float width, float height) {
        for (int i = 0; i < points.length; i += 2) {
            points[i] = convertBitmapX(points[i], width);
            points[i + 1] = convertBitmapY(points[i + 1], height);
        }
    }

    protected static final float convertBitmapX(float x, float width) {
        return ((x - (width / 2.0f)) * 2.0f) / width;
    }

    protected static final float convertBitmapY(float y, float height) {
        return ((-(y - (height / 2.0f))) * 2.0f) / height;
    }

    protected final float convertX(float x) {
        return (2.0f * (x - this.mBitmapGestureParamsHolder.mDisplayRect.centerX())) / this.mBitmapGestureParamsHolder.mDisplayRect.width();
    }

    protected final float convertY(float y) {
        return ((-(y - this.mBitmapGestureParamsHolder.mDisplayRect.centerY())) * 2.0f) / this.mBitmapGestureParamsHolder.mDisplayRect.height();
    }

    public static void generateVertexPositionToBitmap(RectF target, float[] dst, float width, float height) {
        dst[0] = target.left;
        dst[1] = target.bottom;
        dst[2] = target.right;
        dst[3] = target.bottom;
        dst[4] = target.left;
        dst[5] = target.top;
        dst[6] = target.right;
        dst[7] = target.top;
        convertPointToBitmap(dst, width, height);
    }

    protected void generateVertexPosition(RectF target, float[] dst) {
        dst[0] = target.left;
        dst[1] = target.bottom;
        dst[2] = target.right;
        dst[3] = target.bottom;
        dst[4] = target.left;
        dst[5] = target.top;
        dst[6] = target.right;
        dst[7] = target.top;
        convertPoint(dst);
    }

    protected void generateVertexPositionReverse(RectF target, float[] dst) {
        dst[0] = target.left;
        dst[1] = target.top;
        dst[2] = target.right;
        dst[3] = target.top;
        dst[4] = target.left;
        dst[5] = target.bottom;
        dst[6] = target.right;
        dst[7] = target.bottom;
        convertPoint(dst);
    }

    public void setFeatureGestureListener(FeatureGesListener featureGestureListener) {
        this.mFeatureGestureListener = featureGestureListener;
    }

    protected void onBitmapMatrixChange() {
    }

    protected void onCanvasMatrixChange() {
    }
}
