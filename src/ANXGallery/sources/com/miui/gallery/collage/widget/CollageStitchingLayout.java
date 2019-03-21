package com.miui.gallery.collage.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.OverScroller;
import com.miui.gallery.R;
import com.miui.gallery.collage.CollageActivity.ReplaceImageListener;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.core.stitching.StitchingModel;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.render.CollageRender.BitmapRenderData;
import com.miui.gallery.editor.photo.app.MatrixEvaluator;
import com.miui.gallery.editor.photo.core.imports.obsoletes.RectFEvaluator;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class CollageStitchingLayout extends ViewGroup {
    private final String PROPERTY_NAME_ALPHA = "property_name_alpha";
    private final String PROPERTY_NAME_MATRIX = "property_name_matrix";
    private final String PROPERTY_NAME_RECT = "property_name_rect";
    private int mActiveLineWidth;
    private int mActiveLineWidthWhite;
    private CollageImageView mActiveView = null;
    private int mBackGroundColor;
    private Paint mBackgroundPaint = new Paint(1);
    private BitmapPositionHolder mBitmapPositionHolder;
    private Bitmap[] mBitmaps;
    private RectF mCanvasRect = new RectF();
    private ControlListener mControlListener = new ControlListener() {
        public void onDismiss() {
        }

        public void onReplace() {
            if (CollageStitchingLayout.this.mReplaceImageListener != null && CollageStitchingLayout.this.mActiveView != null) {
                CollageStitchingLayout.this.mReplaceImageListener.onReplace(CollageStitchingLayout.this.mActiveView.getBitmap());
                CollageStitchingLayout.this.setActiveView(null);
            }
        }

        public void onRotate() {
        }

        public void onMirror() {
            if (CollageStitchingLayout.this.mActiveView != null) {
                CollageStitchingLayout.this.mActiveView.mirror();
            }
        }
    };
    private ControlPopupWindow mControlPopupWindow;
    private Rect mDisplayRect = new Rect();
    private GestureDetector mDragModeDetector;
    private boolean mEnableDragMode = false;
    private GestureDetector mGestureDetector;
    private Map<Bitmap, CollageImageView> mImageViewMap = new HashMap();
    private ItemDragHelper mItemDragHelper;
    private int mMaxScrollY;
    private int mMinScrollY;
    private Path mPath = new Path();
    private Paint mPathPaint = new Paint();
    private RectF mRectF = new RectF();
    private ReplaceImageListener mReplaceImageListener;
    private ValueAnimator mScrollAnimator;
    private AnimatorUpdateListener mScrollAnimatorUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            if (CollageStitchingLayout.this.mScrollSpeed != 0.0f) {
                int difference = CollageStitchingLayout.this.appendScroll(CollageStitchingLayout.this.mScrollSpeed);
                if (difference != 0) {
                    CollageStitchingLayout.this.mItemDragHelper.notifySwipe((float) difference);
                }
            }
        }
    };
    private float mScrollSpeed = 0.0f;
    private OverScroller mScroller;
    private StitchingModel mStitchingModel;
    private int mStrokeColor;

    public static class BitmapPositionHolder {
        public final int[] bitmapHeights;
        public int bitmapWidth;
        public int height;
        public int horizontalOffset;
        public int verticalOffset;

        public BitmapPositionHolder(int size) {
            this.bitmapHeights = new int[size];
        }
    }

    private class DragGestureListener implements OnGestureListener {
        private DragGestureListener() {
        }

        /* synthetic */ DragGestureListener(CollageStitchingLayout x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            return false;
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            return false;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            CollageStitchingLayout.this.computeScrollSpeed(e2.getY() - e1.getY());
            CollageStitchingLayout.this.mItemDragHelper.onScroll(distanceY);
            return true;
        }

        public void onLongPress(MotionEvent e) {
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            return false;
        }
    }

    private class GestureListener implements OnGestureListener {
        private GestureListener() {
        }

        /* synthetic */ GestureListener(CollageStitchingLayout x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            CollageStitchingLayout.this.mScroller.abortAnimation();
            CollageStitchingLayout.this.mEnableDragMode = false;
            CollageStitchingLayout.this.mScrollSpeed = 0.0f;
            return true;
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            CollageStitchingLayout.this.setActiveView(CollageStitchingLayout.this.findSingleView(e.getX(), e.getY()));
            return true;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            CollageStitchingLayout.this.setActiveView(null);
            CollageStitchingLayout.this.appendScroll(distanceY);
            return true;
        }

        public void onLongPress(MotionEvent e) {
            CollageStitchingLayout.this.performHapticFeedback(0);
            CollageStitchingLayout.this.mEnableDragMode = true;
            CollageStitchingLayout.this.notifyZoomOut(e.getY());
            CollageStitchingLayout.this.startContinueScroll();
            CollageStitchingLayout.this.mItemDragHelper.enableDragMode(CollageStitchingLayout.this.findTargetView(e.getY()), e.getY());
            CollageStitchingLayout.this.setActiveView(null);
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            CollageStitchingLayout.this.mScroller.fling(CollageStitchingLayout.this.getScrollX(), CollageStitchingLayout.this.getScrollY(), Math.round(-velocityX), Math.round(-velocityY), CollageStitchingLayout.this.getScrollX(), CollageStitchingLayout.this.getScrollX(), CollageStitchingLayout.this.mMinScrollY, CollageStitchingLayout.this.mMaxScrollY);
            CollageStitchingLayout.this.invalidate();
            return true;
        }
    }

    private class ItemDragHelper {
        private AnimatorUpdateListener mAnimatorUpdateListener;
        RectF mClipRect;
        CollageImageView mCollageImageView;
        RectF mCurrentBitmapRect;
        float mCurrentY;
        Bitmap mDragBitmap;
        RectF mDragBitmapRect;
        ValueAnimator mHideAnimator;
        private AnimatorListener mHideListener;
        boolean mInDragMode;
        Matrix mMatrix;
        Paint mPaint;
        ValueAnimator mShowAnimator;
        RectF mViewRect;

        private ItemDragHelper() {
            this.mPaint = new Paint(3);
            this.mDragBitmapRect = new RectF();
            this.mViewRect = new RectF();
            this.mClipRect = new RectF();
            this.mCurrentBitmapRect = new RectF();
            this.mMatrix = new Matrix();
            this.mShowAnimator = null;
            this.mHideAnimator = null;
            this.mInDragMode = false;
            this.mCurrentY = 0.0f;
            this.mHideListener = new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                }

                public void onAnimationEnd(Animator animation) {
                    ItemDragHelper.this.mCollageImageView.setVisibility(0);
                    ItemDragHelper.this.mDragBitmap = null;
                    ItemDragHelper.this.mCollageImageView = null;
                    CollageStitchingLayout.this.invalidate();
                }

                public void onAnimationCancel(Animator animation) {
                }

                public void onAnimationRepeat(Animator animation) {
                }
            };
            this.mAnimatorUpdateListener = new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator animation) {
                    ItemDragHelper.this.mPaint.setAlpha(((Integer) animation.getAnimatedValue("property_name_alpha")).intValue());
                    Object matrixValue = animation.getAnimatedValue("property_name_matrix");
                    if (matrixValue != null) {
                        ItemDragHelper.this.mMatrix.set((Matrix) matrixValue);
                    }
                    Object clipValue = animation.getAnimatedValue("property_name_rect");
                    if (clipValue != null) {
                        ItemDragHelper.this.mClipRect.set((RectF) clipValue);
                    }
                    CollageStitchingLayout.this.invalidate();
                }
            };
        }

        /* synthetic */ ItemDragHelper(CollageStitchingLayout x0, AnonymousClass1 x1) {
            this();
        }

        void enableDragMode(CollageImageView dragView, float currentY) {
            this.mInDragMode = false;
            if (dragView == null) {
                this.mCollageImageView = null;
                this.mDragBitmap = null;
                return;
            }
            this.mDragBitmap = dragView.getBitmap();
            if (this.mDragBitmap == null) {
                this.mCollageImageView = null;
                return;
            }
            this.mInDragMode = true;
            this.mCollageImageView = dragView;
            this.mDragBitmapRect.set(0.0f, 0.0f, (float) this.mDragBitmap.getWidth(), (float) this.mDragBitmap.getHeight());
            CollageStitchingLayout.this.getChildRect(this.mViewRect, dragView);
            CollageStitchingLayout.this.convertCoordinateToParent(this.mViewRect);
            this.mClipRect.set(this.mViewRect);
            CollageRender.initBitmapMatrix(this.mDragBitmapRect, this.mMatrix, this.mViewRect, dragView.isMirror(), dragView.getRotateDegree(), CollageStitchingLayout.this.mRectF);
            this.mCurrentY = currentY;
            this.mMatrix.mapRect(this.mCurrentBitmapRect, this.mDragBitmapRect);
            this.mCollageImageView.setVisibility(4);
            startShowAnimator();
        }

        void disableDragMode() {
            if (this.mInDragMode && this.mCollageImageView != null) {
                startHideAnimator();
            }
        }

        void onScroll(float distanceY) {
            if (this.mInDragMode) {
                this.mCurrentY -= distanceY;
                this.mMatrix.postTranslate(0.0f, -distanceY);
                this.mMatrix.mapRect(this.mCurrentBitmapRect, this.mDragBitmapRect);
                this.mClipRect.offset(0.0f, -distanceY);
                notifySwipe(-distanceY);
                CollageStitchingLayout.this.invalidate();
            }
        }

        void draw(Canvas canvas) {
            if (this.mInDragMode && this.mDragBitmap != null) {
                canvas.save();
                canvas.translate(0.0f, (float) CollageStitchingLayout.this.getScrollY());
                canvas.clipRect(this.mClipRect);
                canvas.drawBitmap(this.mDragBitmap, this.mMatrix, this.mPaint);
                canvas.restore();
            }
        }

        void notifySwipe(float distance) {
            if (this.mInDragMode && this.mCollageImageView != null) {
                Log.d("CollageStitchingLayout", "notifySwipe distance : %f", Float.valueOf(distance));
                int currentIndex;
                if (distance > 0.0f) {
                    currentIndex = CollageStitchingLayout.this.indexOfChild(this.mCollageImageView);
                    View nextChild = CollageStitchingLayout.this.getChildAt(currentIndex + 1);
                    if (nextChild != null) {
                        CollageStitchingLayout.this.getChildRect(CollageStitchingLayout.this.mRectF, nextChild);
                        CollageStitchingLayout.this.convertCoordinateToParent(CollageStitchingLayout.this.mRectF);
                        if (this.mClipRect.bottom - CollageStitchingLayout.this.mRectF.top >= CollageStitchingLayout.this.mRectF.height() * 0.3f) {
                            CollageStitchingLayout.this.swipeViewIndex(currentIndex, currentIndex + 1);
                        }
                    }
                } else if (distance < 0.0f) {
                    currentIndex = CollageStitchingLayout.this.indexOfChild(this.mCollageImageView);
                    View preChild = CollageStitchingLayout.this.getChildAt(currentIndex - 1);
                    if (preChild != null) {
                        CollageStitchingLayout.this.getChildRect(CollageStitchingLayout.this.mRectF, preChild);
                        CollageStitchingLayout.this.convertCoordinateToParent(CollageStitchingLayout.this.mRectF);
                        if (CollageStitchingLayout.this.mRectF.bottom - this.mClipRect.top >= CollageStitchingLayout.this.mRectF.height() * 0.3f) {
                            CollageStitchingLayout.this.swipeViewIndex(currentIndex, currentIndex - 1);
                        }
                    }
                }
            }
        }

        void startShowAnimator() {
            if (this.mShowAnimator != null) {
                this.mShowAnimator.cancel();
            }
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[1];
            propertyValuesHolderArr[0] = PropertyValuesHolder.ofInt("property_name_alpha", new int[]{255, Math.round(127.5f)});
            this.mShowAnimator = ValueAnimator.ofPropertyValuesHolder(propertyValuesHolderArr);
            this.mShowAnimator.setDuration(300);
            this.mShowAnimator.addUpdateListener(this.mAnimatorUpdateListener);
            this.mShowAnimator.start();
        }

        void startHideAnimator() {
            if (this.mShowAnimator != null) {
                this.mShowAnimator.cancel();
            }
            Matrix matrix = new Matrix();
            CollageStitchingLayout.this.getChildRect(CollageStitchingLayout.this.mRectF, this.mCollageImageView);
            CollageStitchingLayout.this.convertCoordinateToParent(CollageStitchingLayout.this.mRectF);
            CollageRender.initBitmapMatrix(this.mDragBitmapRect, matrix, CollageStitchingLayout.this.mRectF, this.mCollageImageView.isMirror(), this.mCollageImageView.getRotateDegree(), new RectF());
            r0 = new PropertyValuesHolder[3];
            r0[0] = PropertyValuesHolder.ofInt("property_name_alpha", new int[]{this.mPaint.getAlpha(), 255});
            r0[1] = PropertyValuesHolder.ofObject("property_name_matrix", new MatrixEvaluator(), new Object[]{new Matrix(this.mMatrix), matrix});
            r0[2] = PropertyValuesHolder.ofObject("property_name_rect", new RectFEvaluator(), new Object[]{new RectF(this.mClipRect), CollageStitchingLayout.this.mRectF});
            this.mHideAnimator = ValueAnimator.ofPropertyValuesHolder(r0);
            this.mHideAnimator.setDuration(300);
            this.mHideAnimator.addUpdateListener(this.mAnimatorUpdateListener);
            this.mHideAnimator.addListener(this.mHideListener);
            this.mHideAnimator.start();
        }
    }

    private static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public int bottom;
        public int left;
        public int right;
        public int top;

        public LayoutParams() {
            super(0, 0);
        }

        public void set(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }
    }

    public static class RenderData {
        public BitmapRenderData[] bitmapRenderDatas;
        public StitchingModel stitchingModel;
        public int viewWidth;
    }

    public CollageStitchingLayout(Context context) {
        super(context);
        init();
    }

    public CollageStitchingLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public CollageStitchingLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        setClipChildren(false);
        this.mGestureDetector = new GestureDetector(getContext(), new GestureListener(this, null));
        this.mGestureDetector.setIsLongpressEnabled(true);
        this.mDragModeDetector = new GestureDetector(getContext(), new DragGestureListener(this, null));
        this.mDragModeDetector.setIsLongpressEnabled(false);
        this.mItemDragHelper = new ItemDragHelper(this, null);
        this.mBackGroundColor = -1;
        this.mBackgroundPaint.setColor(this.mBackGroundColor);
        this.mBackgroundPaint.setStyle(Style.FILL);
        this.mScroller = new OverScroller(getContext());
        this.mStrokeColor = getResources().getColor(R.color.collage_table_text_color_checked);
        this.mActiveLineWidth = getResources().getDimensionPixelSize(R.dimen.collage_stroke_line_width);
        this.mActiveLineWidthWhite = getResources().getDimensionPixelSize(R.dimen.collage_stroke_line_width_white);
        this.mPathPaint.setStyle(Style.STROKE);
        this.mPathPaint.setStrokeWidth((float) this.mActiveLineWidth);
        if (this.mActiveLineWidth % 2 != 0) {
            this.mActiveLineWidth++;
        }
        if (this.mActiveLineWidthWhite % 2 != 0) {
            this.mActiveLineWidthWhite++;
        }
        this.mControlPopupWindow = new ControlPopupWindow(getContext(), false);
        this.mControlPopupWindow.setControlListener(this.mControlListener);
    }

    public boolean onTouchEvent(MotionEvent event) {
        boolean up = false;
        switch (event.getAction()) {
            case 0:
                this.mGestureDetector.onTouchEvent(event);
                this.mDragModeDetector.onTouchEvent(event);
                break;
            case 1:
            case 3:
                this.mGestureDetector.onTouchEvent(event);
                this.mDragModeDetector.onTouchEvent(event);
                up = true;
                break;
            default:
                this.mGestureDetector.onTouchEvent(event);
                if (this.mEnableDragMode) {
                    this.mDragModeDetector.onTouchEvent(event);
                    break;
                }
                break;
        }
        if (up && this.mEnableDragMode) {
            post(new Runnable() {
                public void run() {
                    CollageStitchingLayout.this.notifyZoomIn(0.0f);
                    CollageStitchingLayout.this.cancelContinueScroll();
                    CollageStitchingLayout.this.mItemDragHelper.disableDragMode();
                    CollageStitchingLayout.this.mEnableDragMode = false;
                }
            });
        }
        return true;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = 0;
        if (!(this.mStitchingModel == null || this.mBitmapPositionHolder == null)) {
            this.mStitchingModel.countHeight(width, this.mBitmapPositionHolder, this.mBitmaps);
            height = this.mBitmapPositionHolder.height;
        }
        this.mCanvasRect.set(0.0f, 0.0f, (float) width, (float) height);
        super.onMeasure(MeasureSpec.makeMeasureSpec(width, 1073741824), MeasureSpec.makeMeasureSpec(height, 1073741824));
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.mDisplayRect.set(0, 0, right - left, ((View) getParent()).getHeight());
        if (this.mBitmapPositionHolder != null) {
            int count = getChildCount();
            int bitmapWidth = this.mBitmapPositionHolder.bitmapWidth;
            int horizontalOffset = this.mBitmapPositionHolder.horizontalOffset;
            int verticalOffset = this.mBitmapPositionHolder.verticalOffset;
            int currentTop = 0;
            if (horizontalOffset > 0) {
                currentTop = 0 + verticalOffset;
            }
            for (int i = 0; i < count; i++) {
                View child = getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
                int childBottom = currentTop + this.mBitmapPositionHolder.bitmapHeights[i];
                child.layout(horizontalOffset, currentTop, bitmapWidth + horizontalOffset, childBottom);
                layoutParams.set(horizontalOffset, currentTop, bitmapWidth + horizontalOffset, childBottom);
                currentTop = childBottom + verticalOffset;
            }
            refreshScrollLimit();
            if (this.mItemDragHelper.mCollageImageView != null) {
                getChildRect(this.mRectF, this.mItemDragHelper.mCollageImageView);
            }
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        canvas.drawRect(this.mCanvasRect, this.mBackgroundPaint);
        super.dispatchDraw(canvas);
        if (this.mActiveView != null) {
            int scrollY = getScrollY();
            LayoutParams layoutParams = (LayoutParams) this.mActiveView.getLayoutParams();
            this.mRectF.set((float) layoutParams.left, (float) layoutParams.top, (float) layoutParams.right, (float) layoutParams.bottom);
            this.mRectF.offset(0.0f, (float) (-scrollY));
            this.mRectF.intersect((float) this.mDisplayRect.left, (float) this.mDisplayRect.top, (float) this.mDisplayRect.right, (float) this.mDisplayRect.bottom);
            this.mRectF.offset(0.0f, (float) scrollY);
            this.mPath.reset();
            this.mPath.addRect(this.mRectF, Direction.CW);
            canvas.save();
            canvas.clipRect(this.mRectF);
            int strokeWidth = this.mActiveLineWidth;
            this.mPathPaint.setStrokeWidth((float) (this.mActiveLineWidthWhite + strokeWidth));
            this.mPathPaint.setColor(-1);
            canvas.drawPath(this.mPath, this.mPathPaint);
            this.mPathPaint.setStrokeWidth((float) strokeWidth);
            this.mPathPaint.setColor(this.mStrokeColor);
            canvas.drawPath(this.mPath, this.mPathPaint);
            canvas.restore();
        }
        this.mItemDragHelper.draw(canvas);
    }

    private void swipeViewIndex(int from, int to) {
        if (this.mEnableDragMode) {
            int small = Math.min(from, to);
            int large = Math.max(from, to);
            TransitionManager.beginDelayedTransition(this);
            swipeArrays(small, large);
            View smallView = getChildAt(small);
            View largeView = getChildAt(large);
            removeView(smallView);
            removeView(largeView);
            addView(largeView, small);
            addView(smallView, large);
        }
    }

    private int appendScroll(float distanceY) {
        int scrollY = getScrollY() + Math.round(distanceY);
        if (scrollY > this.mMaxScrollY) {
            scrollY = this.mMaxScrollY;
        } else if (scrollY < this.mMinScrollY) {
            scrollY = this.mMinScrollY;
        }
        int difference = scrollY - getScrollY();
        if (difference != 0) {
            scrollTo(getScrollX(), scrollY);
            invalidate();
        }
        return difference;
    }

    private void scrollToMin() {
        scrollTo(getScrollX(), this.mMinScrollY);
        invalidate();
    }

    private void refreshScrollLimit() {
        this.mMinScrollY = getTop();
        if (getBottom() - getTop() > this.mDisplayRect.height()) {
            this.mMaxScrollY = getBottom() - this.mDisplayRect.height();
        } else {
            this.mMaxScrollY = 0;
        }
    }

    public void setBitmaps(Bitmap[] bitmaps) {
        removeAllViews();
        this.mBitmaps = bitmaps;
        for (Bitmap bitmap : bitmaps) {
            CollageImageView collageImageView = new CollageImageView(getContext());
            collageImageView.setBitmap(bitmap);
            collageImageView.setBackgroundColor(this.mBackGroundColor);
            addView(collageImageView, new LayoutParams());
            this.mImageViewMap.put(bitmap, collageImageView);
        }
        this.mBitmapPositionHolder = new BitmapPositionHolder(this.mBitmaps.length);
        requestLayout();
    }

    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
            invalidate();
        }
    }

    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        return super.drawChild(canvas, child, drawingTime);
    }

    private void swipeArrays(int from, int to) {
        Bitmap bitmap = this.mBitmaps[from];
        this.mBitmaps[from] = this.mBitmaps[to];
        this.mBitmaps[to] = bitmap;
    }

    private void notifyZoomOut(float y) {
        doZoomOutAnimator(y);
    }

    private void notifyZoomIn(float y) {
        doZoomInAnimator();
    }

    private void computeScrollSpeed(float difference) {
        boolean isNegative = difference < 0.0f;
        difference = Math.abs(difference);
        if (difference < 100.0f) {
            this.mScrollSpeed = 0.0f;
            return;
        }
        if (difference > ((float) this.mDisplayRect.height())) {
            difference = (float) this.mDisplayRect.height();
        }
        this.mScrollSpeed = 5.0f + ((65.0f * (difference - 100.0f)) / ((float) (this.mDisplayRect.height() - 100)));
        if (isNegative) {
            this.mScrollSpeed = -this.mScrollSpeed;
        }
    }

    private void startContinueScroll() {
        if (this.mScrollAnimator != null) {
            this.mScrollAnimator.cancel();
        }
        this.mScrollAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mScrollAnimator.setDuration(1000);
        this.mScrollAnimator.setRepeatCount(-1);
        this.mScrollAnimator.addUpdateListener(this.mScrollAnimatorUpdateListener);
        this.mScrollAnimator.start();
    }

    private void cancelContinueScroll() {
        if (this.mScrollAnimator != null) {
            this.mScrollAnimator.cancel();
            this.mScrollAnimator = null;
        }
    }

    private void doZoomOutAnimator(float y) {
        setPivotY(y);
        ViewPropertyAnimator viewPropertyAnimator = animate();
        viewPropertyAnimator.scaleX(0.6f);
        viewPropertyAnimator.scaleY(0.6f);
        viewPropertyAnimator.setDuration(300);
        viewPropertyAnimator.start();
    }

    private void doZoomInAnimator() {
        ViewPropertyAnimator viewPropertyAnimator = animate();
        viewPropertyAnimator.scaleX(1.0f);
        viewPropertyAnimator.scaleY(1.0f);
        viewPropertyAnimator.setDuration(300);
        viewPropertyAnimator.start();
    }

    private CollageImageView findTargetView(float y) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            CollageImageView collageImageView = (CollageImageView) getChildAt(i);
            getChildRect(this.mRectF, collageImageView);
            convertCoordinateToParent(this.mRectF);
            if (y > this.mRectF.top && y <= this.mRectF.bottom) {
                return collageImageView;
            }
        }
        return null;
    }

    private void convertCoordinateToParent(RectF dst) {
        dst.offset(0.0f, (float) (-getScrollY()));
    }

    private void getChildRect(RectF dst, View target) {
        LayoutParams layoutParams = (LayoutParams) target.getLayoutParams();
        dst.set((float) layoutParams.left, (float) layoutParams.top, (float) layoutParams.right, (float) layoutParams.bottom);
    }

    public void notifyBitmapReplace(Bitmap from, Bitmap to) {
        for (int i = 0; i < this.mBitmaps.length; i++) {
            if (this.mBitmaps[i] == from) {
                this.mBitmaps[i] = to;
                break;
            }
        }
        CollageImageView collageImageView = (CollageImageView) this.mImageViewMap.get(from);
        collageImageView.setBitmap(to);
        this.mImageViewMap.remove(from);
        this.mImageViewMap.put(to, collageImageView);
        requestLayout();
        post(new Runnable() {
            public void run() {
                CollageStitchingLayout.this.scrollToMin();
            }
        });
    }

    public RenderData generateRenderData() {
        RenderData renderData = new RenderData();
        int count = getChildCount();
        renderData.bitmapRenderDatas = new BitmapRenderData[count];
        for (int i = 0; i < count; i++) {
            renderData.bitmapRenderDatas[i] = ((CollageImageView) getChildAt(i)).generateBitmapRenderData();
        }
        renderData.stitchingModel = this.mStitchingModel;
        renderData.viewWidth = getWidth();
        return renderData;
    }

    public void setStitchingModel(StitchingModel stitchingModel) {
        this.mStitchingModel = stitchingModel;
        setChildRadius(stitchingModel.radius);
        if (TextUtils.isEmpty(stitchingModel.mask)) {
            setChildMask(null);
        } else {
            setChildMask(CollageUtils.getDrawableByAssets(getResources(), stitchingModel.relativePath + File.separator + stitchingModel.mask));
        }
        requestLayout();
        post(new Runnable() {
            public void run() {
                CollageStitchingLayout.this.scrollToMin();
            }
        });
    }

    private CollageImageView findSingleView(float x, float y) {
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            CollageImageView collageImageView = (CollageImageView) getChildAt(i);
            getChildRect(this.mRectF, collageImageView);
            convertCoordinateToParent(this.mRectF);
            if (this.mRectF.contains(x, y)) {
                return collageImageView;
            }
        }
        return null;
    }

    private void setActiveView(CollageImageView view) {
        if (view == null || view == this.mActiveView) {
            dismissControlWindow();
            this.mActiveView = null;
        } else {
            this.mActiveView = view;
            this.mControlPopupWindow.showAtLocation((View) getParent(), this.mActiveView, true);
        }
        invalidate();
    }

    public void dismissControlWindow() {
        if (this.mControlPopupWindow != null && this.mControlPopupWindow.isShowing()) {
            this.mControlPopupWindow.dismiss();
        }
        if (this.mActiveView != null) {
            this.mActiveView = null;
            invalidate();
        }
    }

    public void setReplaceImageListener(ReplaceImageListener replaceImageListener) {
        this.mReplaceImageListener = replaceImageListener;
    }

    private void setChildRadius(int radius) {
        int child = getChildCount();
        for (int i = 0; i < child; i++) {
            ((CollageImageView) getChildAt(i)).setRadius((float) radius);
        }
    }

    private void setChildMask(Drawable mask) {
        int child = getChildCount();
        for (int i = 0; i < child; i++) {
            ((CollageImageView) getChildAt(i)).setMask(mask);
        }
    }
}
