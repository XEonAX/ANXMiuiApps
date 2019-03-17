package com.xiaomi.scanner.module.study.ui;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Scroller;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class WrapFeedSearchView extends RelativeLayout {
    private static final int FLING_THRESHOLD_VELOCITY = 500;
    private static final int SCROLL_TIME = 1000;
    private static final Tag TAG = new Tag("WrapFeedSearchView");
    private boolean isYDragging;
    private CustomViewAbove mAbove;
    private int mActivePointerId;
    private CustomViewBehind mBelow;
    private CheckTopDoneListener mCheckListener;
    private float mDensity;
    private float mDownMotionX;
    private float mDownMotionY;
    private int mFlingThresholdVelocity;
    private float mLastMotionYRemainder;
    private float mLastY;
    private int mMaximumVelocity;
    private OnTouchListener mOnTouchListener;
    private Scroller mScroller;
    private int mTopSpanHeight;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private final Interpolator sInterpolator;
    private Runnable scrollRunnable;

    public interface CheckTopDoneListener {
        boolean checkTopDone();
    }

    public interface OnTouchListener {
        void onTouch();
    }

    public WrapFeedSearchView(Context context) {
        this(context, null);
    }

    public WrapFeedSearchView(Activity activity, int defStyle) {
        this(activity, null, defStyle);
    }

    public WrapFeedSearchView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WrapFeedSearchView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mTopSpanHeight = Opcodes.GETFIELD;
        this.sInterpolator = new Interpolator() {
            public float getInterpolation(float t) {
                t -= 1.0f;
                return ((((t * t) * t) * t) * t) + 1.0f;
            }
        };
        this.scrollRunnable = new Runnable() {
            public void run() {
                if (!WrapFeedSearchView.this.mScroller.isFinished()) {
                    WrapFeedSearchView.this.mScroller.computeScrollOffset();
                    WrapFeedSearchView.this.mAbove.scrollTo(0, -WrapFeedSearchView.this.mScroller.getCurrY());
                    WrapFeedSearchView.this.post(this);
                }
            }
        };
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        this.mTouchSlop = configuration.getScaledTouchSlop();
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        this.mDensity = getResources().getDisplayMetrics().density;
        this.mFlingThresholdVelocity = (int) (500.0f * this.mDensity);
        this.mScroller = new Scroller(context, this.sInterpolator);
        this.mBelow = new CustomViewBehind(context);
        addView(this.mBelow, new LayoutParams(-1, -1));
        this.mAbove = new CustomViewAbove(context);
        addView(this.mAbove, new LayoutParams(-1, -1));
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.mCheckListener == null) {
            Log.v(TAG, "dispatchTouchEvent: no listener");
            return super.dispatchTouchEvent(ev);
        }
        acquireVelocityTrackerAndAddMovement(ev);
        switch (ev.getAction()) {
            case 0:
                this.mScroller.forceFinished(true);
                this.mActivePointerId = ev.getPointerId(0);
                this.mLastY = ev.getY();
                this.mDownMotionX = ev.getX();
                this.mDownMotionY = ev.getY();
                if (this.mOnTouchListener != null) {
                    this.mOnTouchListener.onTouch();
                    break;
                }
                break;
            case 1:
                boolean isYDraggingTemp = this.isYDragging;
                this.isYDragging = false;
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                int tempId = this.mActivePointerId;
                int velocityY = (int) velocityTracker.getYVelocity(tempId);
                boolean isFling = Math.abs(velocityY) > this.mFlingThresholdVelocity && Math.abs(velocityY) > Math.abs((int) velocityTracker.getXVelocity(tempId));
                int temp = this.mTopSpanHeight;
                if (this.mAbove.getScrollY() != 0) {
                    int abs = Math.abs(this.mAbove.getScrollY());
                    if (isFling) {
                        if (velocityY > 0) {
                            this.mBelow.setChildrenEnabled(true);
                            if (isYDraggingTemp) {
                                this.mScroller.forceFinished(true);
                                this.mScroller.startScroll(0, abs, 0, temp - abs, 333);
                                post(this.scrollRunnable);
                                this.mBelow.dispatchTouchEvent(ev);
                                return false;
                            }
                        }
                        this.mBelow.setChildrenEnabled(false);
                        if (abs != 0) {
                            this.mScroller.forceFinished(true);
                            this.mScroller.startScroll(0, abs, 0, -abs, 333);
                            post(this.scrollRunnable);
                            this.mBelow.dispatchTouchEvent(ev);
                            return false;
                        }
                    } else if (abs * 2 >= temp) {
                        this.mBelow.setChildrenEnabled(true);
                        if (isYDraggingTemp) {
                            this.mScroller.forceFinished(true);
                            this.mScroller.startScroll(0, abs, 0, temp - abs, 500);
                            post(this.scrollRunnable);
                            this.mBelow.dispatchTouchEvent(ev);
                            return false;
                        }
                    } else {
                        this.mBelow.setChildrenEnabled(false);
                        if (abs != 0) {
                            this.mScroller.forceFinished(true);
                            this.mScroller.startScroll(0, abs, 0, -abs, 500);
                            post(this.scrollRunnable);
                            this.mBelow.dispatchTouchEvent(ev);
                            return false;
                        }
                    }
                }
                releaseVelocityTracker();
                break;
            case 2:
                float x = ev.getX();
                float y = ev.getY();
                if (!this.isYDragging) {
                    checkIsDragging(x, y);
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                } else if (this.mAbove.getScrollY() != 0) {
                    moveAboveView(y);
                    return true;
                } else if (!this.mCheckListener.checkTopDone()) {
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                } else if (this.mAbove.getScrollY() != 0 || y >= this.mLastY) {
                    moveAboveView(y);
                    return true;
                } else {
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                }
        }
        return super.dispatchTouchEvent(ev);
    }

    private void moveAboveView(float y) {
        float deltaY = (this.mLastY + this.mLastMotionYRemainder) - y;
        int to = this.mAbove.getScrollY() + ((int) deltaY);
        if (to > 0) {
            if (this.mAbove.getScrollY() != 0) {
                this.mAbove.scrollTo(0, 0);
            }
        } else if (to < (-this.mTopSpanHeight)) {
            this.mAbove.scrollTo(0, -this.mTopSpanHeight);
        } else if (Math.abs(deltaY) >= 1.0f) {
            this.mAbove.scrollBy(0, (int) deltaY);
            this.mLastMotionYRemainder = deltaY - ((float) ((int) deltaY));
        }
        this.mLastY = y;
    }

    private void checkIsDragging(float x, float y) {
        int yDiff = (int) Math.abs(y - this.mDownMotionY);
        if (yDiff <= ((int) Math.abs(x - this.mDownMotionX)) || yDiff <= this.mTouchSlop) {
            this.isYDragging = false;
        } else {
            this.isYDragging = true;
        }
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent ev) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void setTopSpanHeight(int height, boolean showSpan) {
        this.mTopSpanHeight = height;
        if (showSpan) {
            this.mAbove.scrollTo(0, -height);
        }
    }

    public void setContent(View v) {
        this.mAbove.setContent(v);
    }

    public void setBackContent(View v) {
        this.mBelow.setContent(v);
    }

    public void setCheckListener(CheckTopDoneListener checkListener) {
        this.mCheckListener = checkListener;
    }

    public void setOnTouchListener(OnTouchListener touchListener) {
        this.mOnTouchListener = touchListener;
    }

    public void collapse() {
        int abs = Math.abs(this.mAbove.getScrollY());
        this.mScroller.forceFinished(true);
        this.mScroller.startScroll(0, abs, 0, -abs, 1000);
        post(this.scrollRunnable);
    }
}
