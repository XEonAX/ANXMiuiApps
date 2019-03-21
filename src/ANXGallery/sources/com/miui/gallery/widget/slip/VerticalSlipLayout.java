package com.miui.gallery.widget.slip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Scroller;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import miui.view.animation.CubicEaseOutInterpolator;

public class VerticalSlipLayout extends FrameLayout {
    private int mActivePointerId;
    private View mBottomView;
    private boolean mDragEnable;
    private int mFixedSideSlipDis;
    private boolean mFlingToSlipped;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsBeingDragged;
    private boolean mIsSlipped;
    private boolean mIsSlippedWhenEnter;
    private float mLastMotionX;
    private float mLastMotionY;
    private int mMaxSlipY;
    private int mMaximumVelocity;
    private int mMinSlipY;
    private int mMinimumVelocity;
    private Drawable mNonSlippedDrawable;
    private OnSlipListener mSlipListener;
    private int mSlipMode;
    private SlipRunnable mSlipRunnable;
    private int mSlipState;
    private boolean mSlipViewInitialized;
    private Drawable mSlippedDrawable;
    private int mTopVInitMarginBottom;
    private int mTopVInitMarginTop;
    private View mTopView;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public interface OnSlipListener {
        void onSlipEnd(boolean z);

        void onSlipStart();

        void onSlipStateChanged(int i);

        void onSlipping(float f);
    }

    private class SlipRunnable implements Runnable {
        private boolean isAbort;
        private final Interpolator mInterpolator = new CubicEaseOutInterpolator();
        private Scroller mScroller;
        private int mTargetY;

        SlipRunnable(Context context) {
            this.mScroller = new Scroller(context, this.mInterpolator);
        }

        public void slipTo(int y, int velocity) {
            abort();
            this.isAbort = false;
            int sy = VerticalSlipLayout.this.getSlipY();
            int dy = y - sy;
            this.mTargetY = y;
            if (dy == 0) {
                completeSlip();
                return;
            }
            boolean z;
            VerticalSlipLayout verticalSlipLayout = VerticalSlipLayout.this;
            if (VerticalSlipLayout.this.getSlippedY() == y) {
                z = true;
            } else {
                z = false;
            }
            verticalSlipLayout.mFlingToSlipped = z;
            VerticalSlipLayout.this.setSlipState(2);
            this.mScroller.startScroll(0, sy, 0, dy, 250);
            VerticalSlipLayout.this.postOnAnimation(this);
        }

        private void completeSlip() {
            VerticalSlipLayout.this.mFlingToSlipped = false;
            this.mScroller.abortAnimation();
            VerticalSlipLayout.this.refreshSlipStatusByTarget(this.mTargetY);
            VerticalSlipLayout.this.setSlipState(0);
            VerticalSlipLayout.this.onSlipEnd();
        }

        public void run() {
            if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
                VerticalSlipLayout.this.performSlipTo((float) this.mScroller.getCurrY());
                VerticalSlipLayout.this.postOnAnimation(this);
            } else if (!this.isAbort) {
                completeSlip();
            }
        }

        public void abort() {
            VerticalSlipLayout.this.mFlingToSlipped = false;
            this.isAbort = true;
            this.mScroller.abortAnimation();
            VerticalSlipLayout.this.removeCallbacks(this);
        }
    }

    public VerticalSlipLayout(Context context) {
        this(context, null);
    }

    public VerticalSlipLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public VerticalSlipLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDragEnable = true;
        this.mInitialMotionX = 0.0f;
        this.mInitialMotionY = 0.0f;
        this.mLastMotionY = 0.0f;
        this.mLastMotionX = 0.0f;
        this.mActivePointerId = -1;
        this.mSlipMode = 0;
        this.mSlipState = 0;
        this.mIsSlippedWhenEnter = false;
        this.mMinSlipY = -1;
        this.mMaxSlipY = -1;
        this.mFixedSideSlipDis = 0;
        this.mIsSlipped = false;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.VerticalSlipLayout, defStyleAttr, 0);
        this.mSlipMode = a.getInt(0, 0);
        this.mIsSlippedWhenEnter = a.getBoolean(2, false);
        this.mFixedSideSlipDis = a.getDimensionPixelSize(3, 0);
        Drawable slippedDrawable = a.getDrawable(1);
        if (slippedDrawable != null) {
            this.mSlippedDrawable = slippedDrawable;
        }
        a.recycle();
        initViewPager();
    }

    private void initViewPager() {
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        this.mTouchSlop = configuration.getScaledTouchSlop();
        this.mMinimumVelocity = configuration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        setBackground(this.mNonSlippedDrawable);
    }

    public void setSlippedWhenEnter(boolean slippedWhenEnter) {
        if (this.mMinSlipY != -1) {
            setSlipped(true);
        } else {
            this.mIsSlippedWhenEnter = slippedWhenEnter;
        }
    }

    public void setFixedSideSlipDistance(int fixedSideSlipDis) {
        this.mFixedSideSlipDis = fixedSideSlipDis;
        if (isSlipped()) {
            setSlippedInternal(false);
        }
    }

    private void initSlipView() {
        int count = getChildCount();
        if (count >= 2) {
            this.mTopView = getChildAt(count - 1);
            this.mBottomView = getChildAt(count - 2);
            this.mTopVInitMarginTop = getLayoutParams(this.mTopView).topMargin;
            this.mTopVInitMarginBottom = getLayoutParams(this.mTopView).bottomMargin;
            setBottomViewVisible(this.mIsSlippedWhenEnter);
            this.mSlipViewInitialized = true;
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (!this.mSlipViewInitialized) {
            initSlipView();
        }
    }

    public void setDraggable(boolean dragEnable) {
        this.mDragEnable = dragEnable;
    }

    public void setOnSlipListener(OnSlipListener listener) {
        this.mSlipListener = listener;
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.mSlipState == 2) {
            return false;
        }
        return super.dispatchTouchEvent(ev);
    }

    private boolean canSlip() {
        if (this.mSlipMode != 0 && this.mDragEnable && this.mSlipViewInitialized && getMinSlipY() < getMaxSlipY()) {
            return true;
        }
        return false;
    }

    private boolean needIntercept(float dx, float dy) {
        if (Math.abs(dx) > Math.abs(dy)) {
            return false;
        }
        if (this.mSlipMode == 2) {
            if (isSlipped()) {
                if (dy <= 0.0f) {
                    return false;
                }
                return true;
            } else if (dy >= 0.0f || ((double) Math.abs(dy)) * Math.tan(0.3141592653589793d) <= ((double) Math.abs(dx))) {
                return false;
            } else {
                return true;
            }
        } else if (this.mSlipMode != 1) {
            return false;
        } else {
            if (isSlipped()) {
                if (dy >= 0.0f) {
                    return false;
                }
                return true;
            } else if (dy <= 0.0f || ((double) Math.abs(dy)) * Math.tan(0.3141592653589793d) <= ((double) Math.abs(dx))) {
                return false;
            } else {
                return true;
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (!canSlip() || ev.getPointerCount() > 1) {
            return false;
        }
        switch (ev.getAction() & 255) {
            case 0:
                this.mIsBeingDragged = false;
                float x = ev.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                x = ev.getY();
                this.mInitialMotionY = x;
                this.mLastMotionY = x;
                this.mActivePointerId = ev.getPointerId(0);
                break;
            case 1:
            case 3:
                endDrag();
                return false;
            case 2:
                if (this.mActivePointerId != -1) {
                    int pointerIndex = ev.findPointerIndex(this.mActivePointerId);
                    if (pointerIndex >= 0) {
                        float x2 = ev.getX(pointerIndex);
                        float y = ev.getY(pointerIndex);
                        if (!this.mIsBeingDragged && Math.abs(y - this.mInitialMotionY) > ((float) (this.mTouchSlop * 2))) {
                            if (needIntercept(x2 - this.mInitialMotionX, y - this.mInitialMotionY)) {
                                this.mInitialMotionX = this.mLastMotionX;
                                this.mInitialMotionY = this.mLastMotionY;
                                startDrag();
                                Log.d("VerticalSlipLayout", "onSlipStart");
                            } else {
                                this.mActivePointerId = -1;
                            }
                        }
                        if (this.mIsBeingDragged) {
                            performSlipBy(translateTouchDistance(y - this.mLastMotionY));
                        }
                        this.mLastMotionX = x2;
                        this.mLastMotionY = y;
                        break;
                    }
                }
                break;
        }
        if (this.mIsBeingDragged) {
            ensureVelocityTracker();
            this.mVelocityTracker.addMovement(ev);
        }
        return this.mIsBeingDragged;
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void startDrag() {
        this.mIsBeingDragged = true;
        setSlipState(1);
        onSlipStart();
    }

    private void onSlipStart() {
        setBackground(this.mSlippedDrawable);
        setBottomViewVisible(true);
        if (this.mSlipListener != null) {
            this.mSlipListener.onSlipStart();
        }
    }

    private void onSlipEnd() {
        post(new Runnable() {
            public void run() {
                if (VerticalSlipLayout.this.mIsSlipped) {
                    VerticalSlipLayout.this.setBackground(VerticalSlipLayout.this.mSlippedDrawable);
                } else {
                    VerticalSlipLayout.this.setBackground(VerticalSlipLayout.this.mNonSlippedDrawable);
                    VerticalSlipLayout.this.setBottomViewVisible(false);
                }
                VerticalSlipLayout.this.notifySlipAnimChildren(VerticalSlipLayout.this, VerticalSlipLayout.this.mIsSlipped ? 1.0f : 0.0f);
                VerticalSlipLayout.this.requestLayout();
                if (VerticalSlipLayout.this.mSlipListener != null) {
                    VerticalSlipLayout.this.mSlipListener.onSlipEnd(VerticalSlipLayout.this.mIsSlipped);
                }
                Log.d("VerticalSlipLayout", "onSlipEnd %s", Boolean.valueOf(VerticalSlipLayout.this.mIsSlipped));
            }
        });
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mActivePointerId = -1;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public boolean onTouchEvent(MotionEvent ev) {
        int newPointerIndex = 0;
        if (!canSlip()) {
            return false;
        }
        int action = ev.getAction() & 255;
        if (action != 0 || ev.getEdgeFlags() == 0) {
            int pointerIndex;
            float x;
            float y;
            switch (action) {
                case 0:
                    this.mIsBeingDragged = false;
                    float x2 = ev.getX();
                    this.mInitialMotionX = x2;
                    this.mLastMotionX = x2;
                    x2 = ev.getY();
                    this.mInitialMotionY = x2;
                    this.mLastMotionY = x2;
                    this.mActivePointerId = ev.getPointerId(0);
                    break;
                case 1:
                    if (this.mIsBeingDragged) {
                        if (this.mActivePointerId != -1) {
                            pointerIndex = ev.findPointerIndex(this.mActivePointerId);
                            if (pointerIndex >= 0) {
                                this.mVelocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                                int initialVelocity = (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                                slipTo(calculateSlipTo(translateTouchDistance(ev.getY(pointerIndex) - this.mInitialMotionY), initialVelocity), initialVelocity, true);
                            }
                        } else {
                            setUnSlipped(true);
                        }
                    }
                    endDrag();
                    break;
                case 2:
                    if (this.mActivePointerId != -1) {
                        pointerIndex = ev.findPointerIndex(this.mActivePointerId);
                        if (pointerIndex >= 0) {
                            x = ev.getX(pointerIndex);
                            y = ev.getY(pointerIndex);
                            if (!this.mIsBeingDragged && Math.abs(y - this.mInitialMotionY) > ((float) (this.mTouchSlop * 2))) {
                                if (needIntercept(x - this.mInitialMotionX, y - this.mInitialMotionY)) {
                                    this.mInitialMotionX = this.mLastMotionX;
                                    this.mInitialMotionY = this.mLastMotionY;
                                    startDrag();
                                    Log.d("VerticalSlipLayout", "onSlipStart");
                                } else {
                                    this.mActivePointerId = -1;
                                }
                            }
                            if (this.mIsBeingDragged) {
                                performSlipBy(translateTouchDistance(y - this.mLastMotionY));
                            }
                            this.mLastMotionX = x;
                            this.mLastMotionY = y;
                            break;
                        }
                    }
                    break;
                case 3:
                    if (this.mIsBeingDragged) {
                        if (this.mActivePointerId != -1) {
                            pointerIndex = ev.findPointerIndex(this.mActivePointerId);
                            if (pointerIndex >= 0) {
                                slipTo(calculateSlipTo(translateTouchDistance(ev.getY(pointerIndex) - this.mInitialMotionY), 0), 0, true);
                            }
                        } else {
                            setUnSlipped(true);
                        }
                    }
                    endDrag();
                    break;
                case 5:
                    int index = ev.getActionIndex();
                    x = ev.getX(index);
                    y = ev.getY(index);
                    this.mLastMotionX = x;
                    this.mLastMotionY = y;
                    this.mActivePointerId = ev.getPointerId(index);
                    if (!this.mIsBeingDragged) {
                        this.mInitialMotionX = x;
                        this.mInitialMotionY = y;
                        break;
                    }
                    break;
                case 6:
                    int pointIndex = ev.getActionIndex();
                    if (this.mActivePointerId == ev.getPointerId(pointIndex)) {
                        if (pointIndex == 0) {
                            newPointerIndex = 1;
                        }
                        x = ev.getX(newPointerIndex);
                        y = ev.getY(newPointerIndex);
                        this.mLastMotionX = x;
                        this.mLastMotionY = y;
                        this.mActivePointerId = ev.getPointerId(newPointerIndex);
                        if (!this.mIsBeingDragged) {
                            this.mInitialMotionX = x;
                            this.mInitialMotionY = y;
                            break;
                        }
                    }
                    break;
            }
            if (this.mIsBeingDragged) {
                ensureVelocityTracker();
                this.mVelocityTracker.addMovement(ev);
            }
            return true;
        }
        endDrag();
        return false;
    }

    private int calculateSlipTo(float deltaY, int velocity) {
        float deltaRatio = Math.abs(deltaY) / ((float) (getMaxSlipY() - getMinSlipY()));
        float reverseVelocity = (float) Math.max(this.mMinimumVelocity * 10, this.mMaximumVelocity / 10);
        if (deltaY > 0.0f) {
            if (deltaRatio > 0.2f) {
                if (((float) velocity) < (-reverseVelocity)) {
                    return getMinSlipY();
                }
                return getMaxSlipY();
            } else if (deltaRatio > 0.05f) {
                return velocity > this.mMinimumVelocity ? getMaxSlipY() : getMinSlipY();
            } else {
                return getMinSlipY();
            }
        } else if (deltaRatio > 0.2f) {
            return ((float) velocity) > reverseVelocity ? getMaxSlipY() : getMinSlipY();
        } else {
            if (deltaRatio > 0.05f) {
                return velocity < (-this.mMinimumVelocity) ? getMinSlipY() : getMaxSlipY();
            } else {
                return getMaxSlipY();
            }
        }
    }

    private int getMinSlipY() {
        return this.mMinSlipY;
    }

    private int getMaxSlipY() {
        return this.mMaxSlipY;
    }

    private int getSlippedY() {
        switch (this.mSlipMode) {
            case 1:
                return getMaxSlipY();
            case 2:
                return getMinSlipY();
            default:
                return 0;
        }
    }

    private float translateTouchDistance(float touchDistance) {
        return 0.6f * touchDistance;
    }

    private void performSlipBy(float dy) {
        performSlipTo(Math.min(Math.max(((float) getSlipY()) + dy, (float) getMinSlipY()), (float) getMaxSlipY()));
    }

    private void performSlipTo(float y) {
        LayoutParams tlp = getLayoutParams(this.mTopView);
        float ratio = ((y - ((float) getMinSlipY())) * 1.0f) / ((float) (getMaxSlipY() - getMinSlipY()));
        if (this.mSlipMode == 1) {
            tlp.topMargin = (int) (((float) getHeight()) - y);
            if (((double) this.mFixedSideSlipDis) > 18.0d) {
                tlp.bottomMargin = (int) (((float) this.mFixedSideSlipDis) * ratio);
            }
        } else if (this.mSlipMode == 2) {
            ratio = 1.0f - ratio;
            tlp.bottomMargin = (int) (((float) getHeight()) - y);
            if (((double) this.mFixedSideSlipDis) > 18.0d) {
                tlp.topMargin = (int) (((float) this.mFixedSideSlipDis) * ratio);
            }
        }
        notifySlipAnimChildren(this, ratio);
        this.mTopView.setLayoutParams(tlp);
    }

    private void slipTo(final int y, final int velocity, final boolean smooth) {
        post(new Runnable() {
            public void run() {
                if (VerticalSlipLayout.this.mSlipState == 0) {
                    VerticalSlipLayout.this.setSlipState(2);
                    VerticalSlipLayout.this.onSlipStart();
                }
                if (smooth) {
                    if (VerticalSlipLayout.this.mSlipRunnable == null) {
                        VerticalSlipLayout.this.mSlipRunnable = new SlipRunnable(VerticalSlipLayout.this.getContext());
                    }
                    VerticalSlipLayout.this.mSlipRunnable.slipTo(y, velocity);
                    return;
                }
                if (VerticalSlipLayout.this.mSlipRunnable != null) {
                    VerticalSlipLayout.this.mSlipRunnable.abort();
                }
                VerticalSlipLayout.this.performSlipTo((float) y);
                VerticalSlipLayout.this.refreshSlipStatusByTarget(y);
                VerticalSlipLayout.this.setSlipState(0);
                VerticalSlipLayout.this.onSlipEnd();
            }
        });
    }

    private int getSlipY() {
        if (this.mSlipMode == 1) {
            return this.mTopView.getTop();
        }
        if (this.mSlipMode == 2) {
            return this.mTopView.getBottom();
        }
        return -1;
    }

    public boolean isSlipped() {
        return this.mIsSlipped;
    }

    private void refreshSlipStatusByTarget(int target) {
        boolean z = true;
        if (this.mSlipMode == 1) {
            if (target <= getMinSlipY()) {
                z = false;
            }
            this.mIsSlipped = z;
        } else if (this.mSlipMode == 2) {
            if (target >= getMaxSlipY()) {
                z = false;
            }
            this.mIsSlipped = z;
        }
    }

    public boolean isFlingToSlipped() {
        return this.mFlingToSlipped;
    }

    public void setUnSlipped(boolean smooth) {
        if (canSlip() && isSlipped()) {
            setUnSlippedInternal(smooth);
        }
    }

    private void setUnSlippedInternal(boolean smooth) {
        if (this.mSlipMode == 1) {
            slipTo(getMinSlipY(), 0, smooth);
        } else if (this.mSlipMode == 2) {
            slipTo(getMaxSlipY(), 0, smooth);
        }
    }

    public void setSlipped(boolean smooth) {
        if (canSlip() && !isSlipped()) {
            setSlippedInternal(smooth);
        }
    }

    private void setSlippedInternal(boolean smooth) {
        if (this.mSlipMode == 1) {
            slipTo(getMaxSlipY(), 0, smooth);
        } else if (this.mSlipMode == 2) {
            slipTo(getMinSlipY(), 0, smooth);
        }
    }

    private boolean needInitSlipParams() {
        return this.mMinSlipY == -1;
    }

    private LayoutParams getLayoutParams(View child) {
        return (LayoutParams) child.getLayoutParams();
    }

    private void resetSlipParams() {
        this.mMinSlipY = -1;
        this.mMaxSlipY = -1;
    }

    private void initSlipParams() {
        switch (this.mSlipMode) {
            case 1:
                this.mMinSlipY = this.mTopVInitMarginTop;
                this.mMaxSlipY = this.mBottomView.getBottom();
                return;
            case 2:
                this.mMinSlipY = this.mBottomView.getTop();
                this.mMaxSlipY = ((getLayoutParams(this.mTopView).topMargin + this.mTopView.getHeight()) + getLayoutParams(this.mTopView).bottomMargin) - this.mTopVInitMarginBottom;
                return;
            default:
                return;
        }
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        resetSlipParams();
        super.onSizeChanged(w, h, oldw, oldh);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mSlipViewInitialized) {
            if (needInitSlipParams()) {
                initSlipParams();
            }
            if (this.mIsSlippedWhenEnter) {
                this.mIsSlippedWhenEnter = false;
                setSlippedInternal(false);
            }
        }
    }

    protected void onDetachedFromWindow() {
        if (this.mSlipRunnable != null) {
            this.mSlipRunnable.abort();
        }
        this.mSlipListener = null;
        super.onDetachedFromWindow();
    }

    private void setSlipState(int state) {
        if (this.mSlipState != state) {
            this.mSlipState = state;
            if (this.mSlipListener != null) {
                this.mSlipListener.onSlipStateChanged(state);
            }
        }
    }

    private void setBottomViewVisible(boolean visible) {
        this.mBottomView.setVisibility(visible ? 0 : 4);
    }

    private void notifySlipAnimChildren(View view, float progress) {
        if (this.mSlipListener != null) {
            this.mSlipListener.onSlipping(progress);
        }
        if (view instanceof ISlipAnimView) {
            ((ISlipAnimView) view).onSlipping(progress);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int count = viewGroup.getChildCount();
            for (int i = 0; i < count; i++) {
                notifySlipAnimChildren(viewGroup.getChildAt(i), progress);
            }
        }
    }
}
