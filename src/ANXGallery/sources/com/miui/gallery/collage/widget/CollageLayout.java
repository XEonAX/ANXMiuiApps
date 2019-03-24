package com.miui.gallery.collage.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.Keep;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.collage.ClipType;
import com.miui.gallery.collage.CollageActivity.ReplaceImageListener;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.render.CollageRender.ImageLocation;
import com.miui.gallery.collage.render.CollageRender.ImageLocationProcessor;
import com.miui.gallery.editor.photo.app.MatrixEvaluator;
import com.miui.gallery.editor.photo.core.imports.obsoletes.RectFEvaluator;
import com.miui.gallery.util.Log;
import miui.hybrid.Response;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class CollageLayout extends ViewGroup {
    private boolean mActivating = false;
    private int mActiveIndex = -1;
    private int mActiveLineWidth;
    private int mActiveLineWidthWhite;
    private BitmapExchangeListener mBitmapExchangeListener;
    private Context mContext;
    private ControlPopupWindow mControlPopupWindow;
    private float mDensity;
    private DragImageHolder mDragImageHolder = new DragImageHolder();
    private GestureDetector mGestureDetector;
    private CustomGestureListener mGestureListener = new CustomGestureListener();
    private boolean mIgnoreEdgeMargin = false;
    private ImageLocationProcessor mImageLocationProcessor = new ImageLocationProcessor();
    private float mMargin = 0.0f;
    private Paint mPathPaint = new Paint();
    private PopupListener mPopupListener = new PopupListener();
    private ReplaceImageListener mReplaceImageListener;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mStrokeColor;

    public interface BitmapExchangeListener {
        void onBitmapExchange(Bitmap bitmap, Bitmap bitmap2);
    }

    private class CustomGestureListener implements OnGestureListener, OnScaleGestureListener {
        private CollageImageView mDownView;
        private CollageImageView mDragTargetView;
        private boolean mIsLongPressMode;
        private float mLastX;
        private float mLastY;

        private CustomGestureListener() {
        }

        public boolean onDown(MotionEvent e) {
            this.mDownView = CollageLayout.this.findSingleView(e.getX(), e.getY());
            this.mLastX = e.getX();
            this.mLastY = e.getY();
            this.mIsLongPressMode = false;
            CollageLayout.this.mActivating = true;
            return true;
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            if (this.mDownView == null) {
                CollageLayout.this.mActiveIndex = -1;
                CollageLayout.this.dismissControlWindow();
            } else if (CollageLayout.this.mActiveIndex == CollageLayout.this.indexOfChild(this.mDownView)) {
                CollageLayout.this.mActiveIndex = -1;
                CollageLayout.this.dismissControlWindow();
            } else {
                CollageLayout.this.setActive(this.mDownView);
                CollageLayout.this.getLocationInWindow(new int[2]);
                CollageLayout.this.mControlPopupWindow.showAtLocation(CollageLayout.this, this.mDownView);
                CollageLayout.this.mPopupListener.setCollageSingleView(this.mDownView);
            }
            CollageLayout.this.invalidate();
            return true;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (!(this.mDownView == null || this.mIsLongPressMode)) {
                this.mDownView.transition(-distanceX, -distanceY);
            }
            return false;
        }

        public void onLongPress(MotionEvent e) {
            Log.d("CollageLayout", "onLongPress");
            if (this.mDownView != null) {
                CollageLayout.this.dismissControlWindow();
                this.mIsLongPressMode = true;
                float x = e.getX();
                float y = e.getY();
                CollageLayout.this.mDragImageHolder.enableDragMode(this.mDownView);
                CollageLayout.this.mActiveIndex = -1;
                this.mDownView.setDrawBitmap(false);
                CollageLayout.this.doVibrator();
                CollageLayout.this.invalidate();
            }
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            return false;
        }

        void onUp() {
            if (this.mIsLongPressMode) {
                this.mIsLongPressMode = false;
                if (this.mDragTargetView == null || this.mDragTargetView == this.mDownView) {
                    CollageLayout.this.mDragImageHolder.resetBitmapWithAnim();
                } else {
                    CollageLayout.this.mActiveIndex = -1;
                    CollageLayout.this.mDragImageHolder.exchangeBitmapWithAnim(this.mDragTargetView);
                }
            } else if (this.mDownView != null) {
                this.mDownView.resetBitmapLocation();
                CollageLayout.this.mActivating = false;
            }
            CollageLayout.this.invalidate();
        }

        void onActionMove(MotionEvent e) {
            float currentX = e.getX();
            float currentY = e.getY();
            float distanceX = currentX - this.mLastX;
            float distanceY = currentY - this.mLastY;
            if (this.mDownView != null && this.mIsLongPressMode) {
                CollageLayout.this.mDragImageHolder.receiveScrollEvent(distanceX, distanceY);
                this.mDragTargetView = CollageLayout.this.findSingleView(currentX, currentY);
                if (this.mDragTargetView == null || this.mDragTargetView == this.mDownView) {
                    CollageLayout.this.mActiveIndex = -1;
                } else {
                    CollageLayout.this.setActive(this.mDragTargetView);
                }
            }
            this.mLastX = currentX;
            this.mLastY = currentY;
            CollageLayout.this.invalidate();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            if (this.mDownView != null) {
                this.mDownView.appendScale(detector.getScaleFactor(), detector.getFocusX(), detector.getFocusY());
            }
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
        }
    }

    private static class DragBitmapItem {
        private Bitmap mBitmap;
        private Matrix mBitmapMatrix;
        private Paint mBitmapPaint;
        private RectF mBitmapRect;
        private RectF mDisplayOriginRect;
        private RectF mDisplayRect;
        private boolean mMirror;
        private RectF mRectTemp;
        private int mRotateDegree;
        private float mScale;
        private ObjectAnimator mShowAnimator;
        private ObjectAnimator mTransitionAnimator;
        private Matrix mUserMatrix;

        private DragBitmapItem() {
            this.mBitmapRect = new RectF();
            this.mDisplayOriginRect = new RectF();
            this.mDisplayRect = new RectF();
            this.mRectTemp = new RectF();
            this.mBitmapMatrix = new Matrix();
            this.mUserMatrix = new Matrix();
            this.mBitmapPaint = new Paint(3);
            this.mScale = 1.0f;
            this.mRotateDegree = 0;
            this.mMirror = false;
        }

        void setCollageImageView(CollageImageView collageImageView) {
            this.mBitmap = collageImageView.getBitmap();
            this.mRotateDegree = collageImageView.getRotateDegree();
            this.mMirror = collageImageView.isMirror();
            this.mBitmapRect.set(0.0f, 0.0f, (float) this.mBitmap.getWidth(), (float) this.mBitmap.getHeight());
            CollageLayout.getCollageImageViewRect(this.mDisplayOriginRect, collageImageView);
            this.mDisplayRect.set(this.mDisplayOriginRect);
            refreshBitmapMatrix();
            collageImageView.getCanvasMatrix(this.mUserMatrix);
            this.mScale = 1.0f;
            this.mBitmapPaint.setAlpha(255);
        }

        void receiveScrollEvent(float distanceX, float distanceY) {
            this.mDisplayRect.offset(distanceX, distanceY);
            refreshBitmapMatrix();
        }

        void refreshBitmapMatrix() {
            CollageRender.initBitmapMatrix(this.mBitmapRect, this.mBitmapMatrix, this.mDisplayRect, this.mMirror, this.mRotateDegree, this.mRectTemp);
        }

        void show(AnimatorUpdateListener animatorUpdateListener) {
            r0 = new PropertyValuesHolder[2];
            r0[0] = PropertyValuesHolder.ofFloat("scale", new float[]{this.mScale, 1.1f});
            r0[1] = PropertyValuesHolder.ofInt("alpha", new int[]{this.mBitmapPaint.getAlpha(), Response.CODE_GENERIC_ERROR});
            this.mShowAnimator = ObjectAnimator.ofPropertyValuesHolder(this, r0);
            this.mShowAnimator.setDuration(380);
            this.mShowAnimator.setInterpolator(new CubicEaseInOutInterpolator());
            this.mShowAnimator.addUpdateListener(animatorUpdateListener);
            this.mShowAnimator.start();
        }

        void reset(AnimatorUpdateListener animatorUpdateListener, AnimatorListener animatorListener) {
            if (this.mShowAnimator != null) {
                this.mShowAnimator.cancel();
            }
            this.mTransitionAnimator = getTransitionAnimator(this.mDisplayOriginRect, false, animatorUpdateListener);
            this.mTransitionAnimator.setDuration(220);
            this.mTransitionAnimator.setInterpolator(new CubicEaseOutInterpolator());
            this.mTransitionAnimator.addListener(animatorListener);
            this.mTransitionAnimator.start();
        }

        ObjectAnimator getTransitionAnimator(RectF target, AnimatorUpdateListener animatorUpdateListener) {
            return getTransitionAnimator(target, true, animatorUpdateListener);
        }

        ObjectAnimator getTransitionAnimator(RectF target, boolean resetUserMatrix, AnimatorUpdateListener animatorUpdateListener) {
            ObjectAnimator objectAnimator;
            PropertyValuesHolder[] propertyValuesHolderArr;
            if (resetUserMatrix) {
                propertyValuesHolderArr = new PropertyValuesHolder[4];
                propertyValuesHolderArr[0] = PropertyValuesHolder.ofFloat("scale", new float[]{this.mScale, 1.0f});
                propertyValuesHolderArr[1] = PropertyValuesHolder.ofInt("alpha", new int[]{this.mBitmapPaint.getAlpha(), 255});
                propertyValuesHolderArr[2] = PropertyValuesHolder.ofObject("displayRect", new RectFEvaluator(), new Object[]{new RectF(this.mDisplayRect), target});
                propertyValuesHolderArr[3] = PropertyValuesHolder.ofObject("userMatrix", new MatrixEvaluator(), new Object[]{new Matrix(this.mUserMatrix), new Matrix()});
                objectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, propertyValuesHolderArr);
            } else {
                propertyValuesHolderArr = new PropertyValuesHolder[3];
                propertyValuesHolderArr[0] = PropertyValuesHolder.ofFloat("scale", new float[]{this.mScale, 1.0f});
                propertyValuesHolderArr[1] = PropertyValuesHolder.ofInt("alpha", new int[]{this.mBitmapPaint.getAlpha(), 255});
                propertyValuesHolderArr[2] = PropertyValuesHolder.ofObject("displayRect", new RectFEvaluator(), new Object[]{new RectF(this.mDisplayRect), target});
                objectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, propertyValuesHolderArr);
            }
            objectAnimator.addUpdateListener(animatorUpdateListener);
            return objectAnimator;
        }

        void draw(Canvas canvas) {
            canvas.save();
            canvas.scale(this.mScale, this.mScale, this.mDisplayRect.centerX(), this.mDisplayRect.centerY());
            canvas.clipRect(this.mDisplayRect);
            canvas.translate(this.mDisplayRect.left, this.mDisplayRect.top);
            canvas.concat(this.mUserMatrix);
            canvas.translate(-this.mDisplayRect.left, -this.mDisplayRect.top);
            canvas.drawBitmap(this.mBitmap, this.mBitmapMatrix, this.mBitmapPaint);
            canvas.restore();
        }

        void release() {
            this.mBitmap = null;
        }

        @Keep
        public void setScale(float scale) {
            this.mScale = scale;
        }

        @Keep
        public void setAlpha(int alpha) {
            this.mBitmapPaint.setAlpha(alpha);
        }

        @Keep
        public void setDisplayRect(RectF displayRect) {
            this.mDisplayRect.set(displayRect);
            refreshBitmapMatrix();
        }

        @Keep
        public void setUserMatrix(Matrix userMatrix) {
            this.mUserMatrix.set(userMatrix);
        }
    }

    private class DragImageHolder {
        private CollageImageView mDownView;
        private DragBitmapItem mDragBitmapItem;
        private boolean mDragEnable;
        private boolean mExchangeEnable;
        private DragBitmapItem mTargetBitmapItem;
        private AnimatorUpdateListener mUpdateListener;

        private DragImageHolder() {
            this.mDragEnable = false;
            this.mExchangeEnable = false;
            this.mDragBitmapItem = new DragBitmapItem();
            this.mTargetBitmapItem = new DragBitmapItem();
            this.mUpdateListener = new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator animation) {
                    CollageLayout.this.invalidate();
                }
            };
        }

        void enableDragMode(CollageImageView collageImageView) {
            this.mDownView = collageImageView;
            this.mDragBitmapItem.setCollageImageView(collageImageView);
            this.mDragEnable = true;
            this.mExchangeEnable = false;
            this.mDragBitmapItem.show(this.mUpdateListener);
        }

        void disableDragMode() {
            this.mDragEnable = false;
            this.mExchangeEnable = false;
            CollageLayout.this.mActivating = false;
            CollageLayout.this.invalidate();
        }

        void receiveScrollEvent(float distanceX, float distanceY) {
            this.mDragBitmapItem.receiveScrollEvent(distanceX, distanceY);
            CollageLayout.this.invalidate();
        }

        void draw(Canvas canvas) {
            if (this.mDragEnable) {
                if (this.mExchangeEnable) {
                    this.mTargetBitmapItem.draw(canvas);
                }
                this.mDragBitmapItem.draw(canvas);
            }
        }

        void resetBitmapWithAnim() {
            this.mDragBitmapItem.reset(this.mUpdateListener, new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                    if (DragImageHolder.this.mDragBitmapItem.mShowAnimator != null) {
                        DragImageHolder.this.mDragBitmapItem.mShowAnimator.cancel();
                    }
                }

                public void onAnimationEnd(Animator animation) {
                    DragImageHolder.this.mDownView.setDrawBitmap(true);
                    DragImageHolder.this.mDragBitmapItem.release();
                    DragImageHolder.this.disableDragMode();
                }

                public void onAnimationCancel(Animator animation) {
                    onAnimationEnd(animation);
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
        }

        void exchangeBitmapWithAnim(final CollageImageView dragTargetView) {
            this.mTargetBitmapItem.setCollageImageView(dragTargetView);
            RectF mDownViewRect = new RectF();
            CollageLayout.getCollageImageViewRect(mDownViewRect, this.mDownView);
            ObjectAnimator targetToDown = this.mTargetBitmapItem.getTransitionAnimator(mDownViewRect, this.mUpdateListener);
            RectF targetViewRect = new RectF();
            CollageLayout.getCollageImageViewRect(targetViewRect, dragTargetView);
            ObjectAnimator downToTarget = this.mDragBitmapItem.getTransitionAnimator(targetViewRect, this.mUpdateListener);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(350);
            animatorSet.setInterpolator(new CubicEaseInOutInterpolator());
            animatorSet.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                    dragTargetView.setDrawBitmap(false);
                    DragImageHolder.this.mExchangeEnable = true;
                }

                public void onAnimationEnd(Animator animation) {
                    DragImageHolder.this.mDownView.resetDrawData(DragImageHolder.this.mTargetBitmapItem.mBitmap, DragImageHolder.this.mTargetBitmapItem.mRotateDegree, DragImageHolder.this.mTargetBitmapItem.mMirror);
                    dragTargetView.resetDrawData(DragImageHolder.this.mDragBitmapItem.mBitmap, DragImageHolder.this.mDragBitmapItem.mRotateDegree, DragImageHolder.this.mDragBitmapItem.mMirror);
                    if (CollageLayout.this.mBitmapExchangeListener != null) {
                        CollageLayout.this.mBitmapExchangeListener.onBitmapExchange(DragImageHolder.this.mDragBitmapItem.mBitmap, DragImageHolder.this.mTargetBitmapItem.mBitmap);
                    }
                    DragImageHolder.this.mTargetBitmapItem.release();
                    DragImageHolder.this.mDragBitmapItem.release();
                    DragImageHolder.this.disableDragMode();
                }

                public void onAnimationCancel(Animator animation) {
                    onAnimationEnd(animation);
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
            animatorSet.playTogether(new Animator[]{downToTarget, targetToDown});
            animatorSet.start();
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        ImageLocation mImageLocation;

        public LayoutParams(ClipType clipType, float[] clipArray) {
            super(0, 0);
            this.mImageLocation = new ImageLocation(clipType, clipArray);
        }

        boolean contains(float x, float y) {
            return this.mImageLocation.getPathRegion().contains(Math.round(x), Math.round(y));
        }
    }

    private class PopupListener implements ControlListener {
        private CollageImageView mCollageImageView;

        private PopupListener() {
        }

        public void onDismiss() {
            CollageLayout.this.mActiveIndex = -1;
            this.mCollageImageView = null;
            CollageLayout.this.invalidate();
        }

        public void onReplace() {
            if (CollageLayout.this.mReplaceImageListener != null) {
                CollageLayout.this.mReplaceImageListener.onReplace(this.mCollageImageView.getBitmap());
            }
        }

        public void onRotate() {
            if (this.mCollageImageView != null) {
                this.mCollageImageView.rotate();
            }
        }

        public void onMirror() {
            if (this.mCollageImageView != null) {
                this.mCollageImageView.mirror();
            }
        }

        void setCollageSingleView(CollageImageView collageImageView) {
            this.mCollageImageView = collageImageView;
        }
    }

    public CollageLayout(Context context) {
        super(context);
        init(context);
    }

    public CollageLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public CollageLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        this.mGestureDetector = new GestureDetector(this.mContext, this.mGestureListener);
        this.mScaleGestureDetector = new ScaleGestureDetector(this.mContext, this.mGestureListener);
        setWillNotDraw(false);
        this.mControlPopupWindow = new ControlPopupWindow(context);
        this.mControlPopupWindow.setControlListener(this.mPopupListener);
        this.mStrokeColor = context.getResources().getColor(R.color.collage_table_text_color_checked);
        this.mActiveLineWidth = context.getResources().getDimensionPixelSize(R.dimen.collage_stroke_line_width);
        this.mActiveLineWidthWhite = context.getResources().getDimensionPixelSize(R.dimen.collage_stroke_line_width_white);
        if (this.mActiveLineWidth % 2 != 0) {
            this.mActiveLineWidth++;
        }
        if (this.mActiveLineWidthWhite % 2 != 0) {
            this.mActiveLineWidthWhite++;
        }
        this.mPathPaint.setStyle(Style.STROKE);
        this.mPathPaint.setStrokeWidth(10.0f);
        this.mDensity = context.getResources().getDisplayMetrics().density;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        measureChildren(widthMeasureSpec, heightMeasureSpec);
    }

    protected void onDraw(Canvas canvas) {
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mActiveIndex != -1) {
            LayoutParams layoutParams = (LayoutParams) ((CollageImageView) getChildAt(this.mActiveIndex)).getLayoutParams();
            canvas.save();
            canvas.clipPath(layoutParams.mImageLocation.getPathForClip());
            int strokeWidth = this.mActiveLineWidth;
            this.mPathPaint.setStrokeWidth((float) (this.mActiveLineWidthWhite + strokeWidth));
            this.mPathPaint.setColor(-1);
            canvas.drawPath(layoutParams.mImageLocation.getPathForClip(), this.mPathPaint);
            this.mPathPaint.setStrokeWidth((float) strokeWidth);
            this.mPathPaint.setColor(this.mStrokeColor);
            canvas.drawPath(layoutParams.mImageLocation.getPathForClip(), this.mPathPaint);
            canvas.restore();
        }
        this.mDragImageHolder.draw(canvas);
    }

    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        canvas.save();
        canvas.clipPath(((LayoutParams) child.getLayoutParams()).mImageLocation.getPathForClip());
        boolean result = super.drawChild(canvas, child, drawingTime);
        canvas.restore();
        return result;
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int paddingLeft = getLeftPadding();
        int paddingRight = getRightPadding();
        int paddingTop = getPaddingTop();
        int width = (getWidth() - paddingLeft) - paddingRight;
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                this.mImageLocationProcessor.processorImageLocation(lp.mImageLocation, (float) width, (float) height, this.mMargin, this.mIgnoreEdgeMargin);
                child.layout(Math.round((float) (lp.mImageLocation.getLeft() + paddingLeft)), Math.round((float) (lp.mImageLocation.getTop() + paddingTop)), Math.round((float) (lp.mImageLocation.getRight() + paddingLeft)), Math.round((float) (lp.mImageLocation.getBottom() + paddingTop)));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        this.mScaleGestureDetector.onTouchEvent(event);
        this.mGestureDetector.onTouchEvent(event);
        switch (event.getAction()) {
            case 1:
            case 3:
                this.mGestureListener.onUp();
                break;
            case 2:
                this.mGestureListener.onActionMove(event);
                break;
        }
        return true;
    }

    private CollageImageView findSingleView(float x, float y) {
        for (int i = 0; i < getChildCount(); i++) {
            CollageImageView collageImageView = (CollageImageView) getChildAt(i);
            if (((LayoutParams) collageImageView.getLayoutParams()).contains(x, y)) {
                return collageImageView;
            }
        }
        return null;
    }

    private void setActive(View child) {
        this.mActiveIndex = indexOfChild(child);
    }

    public void dismissControlWindow() {
        if (this.mControlPopupWindow != null && this.mControlPopupWindow.isShowing()) {
            this.mControlPopupWindow.dismiss();
        }
    }

    private static void getCollageImageViewRect(RectF dst, CollageImageView collageImageView) {
        collageImageView.getDisplayRect(dst);
        dst.offset((float) collageImageView.getLeft(), (float) collageImageView.getTop());
    }

    private void doVibrator() {
        performHapticFeedback(0);
    }

    private int getLeftPadding() {
        return Math.max(getPaddingLeft(), getPaddingStart());
    }

    private int getRightPadding() {
        return Math.max(getPaddingRight(), getPaddingEnd());
    }

    public void setCollageMargin(float margin, boolean ignoreEdgeMargin) {
        this.mIgnoreEdgeMargin = ignoreEdgeMargin;
        this.mMargin = this.mDensity * margin;
        requestLayout();
    }

    public void setMasks(Drawable[] masks) {
        int childCount = getChildCount();
        boolean hasMask = masks != null && masks.length > 0;
        int i = 0;
        while (i < childCount) {
            CollageImageView collageImageView = (CollageImageView) getChildAt(i);
            if (!hasMask || i >= masks.length) {
                collageImageView.setMask(null);
            } else {
                collageImageView.setMask(masks[i]);
            }
            i++;
        }
    }

    public void setRadius(float[] radius) {
        int childCount = getChildCount();
        boolean hasRadius = radius != null && radius.length > 0;
        int i = 0;
        while (i < childCount) {
            CollageImageView collageImageView = (CollageImageView) getChildAt(i);
            if (!hasRadius || i >= radius.length) {
                collageImageView.setRadius(0.0f);
            } else {
                collageImageView.setRadius(radius[i]);
            }
            i++;
        }
    }

    public void setReplaceImageListener(ReplaceImageListener replaceImageListener) {
        this.mReplaceImageListener = replaceImageListener;
    }

    public void setBitmapExchangeListener(BitmapExchangeListener bitmapExchangeListener) {
        this.mBitmapExchangeListener = bitmapExchangeListener;
    }

    public float getMargin() {
        return this.mMargin;
    }

    public boolean isIgnoreEdgeMargin() {
        return this.mIgnoreEdgeMargin;
    }

    public boolean isActivating() {
        return this.mActivating || isChildActivating();
    }

    private boolean isChildActivating() {
        for (int i = 0; i < getChildCount(); i++) {
            if (((CollageImageView) getChildAt(i)).isActivating()) {
                return true;
            }
        }
        return false;
    }
}
