package com.xiaomi.scanner.module.study.ui;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Scroller;
import com.alibaba.wireless.security.SecExceptionCode;

public class WrapWebView extends RelativeLayout {
    private static final Interpolator sInterpolator = new Interpolator() {
        public float getInterpolation(float t) {
            t -= 1.0f;
            return ((((t * t) * t) * t) * t) + 1.0f;
        }
    };
    private FrameLayout above;
    private FrameLayout below;
    private CheckBottomDoneListener checkListener;
    private float mDownMotionY;
    private boolean mIsDragging;
    private float mLastMotionXRemainder;
    private float mLastY;
    private Scroller mScroller;
    private int mTitleTop;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private Runnable scrollRunnable;

    public interface CheckBottomDoneListener {
        boolean checkBottomDone();
    }

    public void setCheckListener(CheckBottomDoneListener checkListener) {
        this.checkListener = checkListener;
    }

    public WrapWebView(Context context) {
        this(context, null);
    }

    public WrapWebView(Activity activity, int slideStyle) {
        this((Context) activity, null);
    }

    public WrapWebView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WrapWebView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mTitleTop = 90;
        this.scrollRunnable = new Runnable() {
            public void run() {
                if (!WrapWebView.this.mScroller.isFinished()) {
                    WrapWebView.this.mScroller.computeScrollOffset();
                    WrapWebView.this.above.scrollTo(0, WrapWebView.this.mScroller.getCurrY());
                    WrapWebView.this.post(this);
                }
            }
        };
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        this.mScroller = new Scroller(context, sInterpolator);
        this.mTouchSlop = configuration.getScaledTouchSlop();
        this.below = new FrameLayout(context);
        this.below.setVisibility(4);
        addView(this.below, new LayoutParams(-1, -1));
        this.above = new FrameLayout(context);
        addView(this.above, new LayoutParams(-1, -1));
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.checkListener == null) {
            return super.dispatchTouchEvent(ev);
        }
        acquireVelocityTrackerAndAddMovement(ev);
        switch (ev.getAction()) {
            case 0:
                this.mLastY = ev.getY();
                this.mDownMotionY = ev.getY();
                break;
            case 1:
                this.mIsDragging = false;
                this.mLastY = 0.0f;
                this.mDownMotionY = 0.0f;
                this.mLastMotionXRemainder = 0.0f;
                if (this.above.getScrollY() != 0) {
                    this.mScroller.forceFinished(true);
                    this.mScroller.startScroll(0, this.above.getScrollY(), 0, -this.above.getScrollY(), SecExceptionCode.SEC_ERROR_STA_ENC);
                    post(this.scrollRunnable);
                }
                releaseVelocityTracker();
                break;
            case 2:
                if (this.below.getVisibility() != 0) {
                    this.below.setVisibility(0);
                }
                float y = ev.getY();
                if (!this.mIsDragging) {
                    checkIsDragging(y);
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                } else if (this.above.getScrollY() != 0) {
                    moveAboveView(y);
                    return true;
                } else if (!this.checkListener.checkBottomDone()) {
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                } else if (this.above.getScrollY() != 0 || y <= this.mLastY) {
                    moveAboveView(y);
                    return true;
                } else {
                    this.mLastY = y;
                    return super.dispatchTouchEvent(ev);
                }
        }
        return super.dispatchTouchEvent(ev);
    }

    private void checkIsDragging(float y) {
        this.mIsDragging = ((int) Math.abs(y - this.mDownMotionY)) > this.mTouchSlop;
    }

    private void moveAboveView(float y) {
        float deltaY = (this.mLastY + this.mLastMotionXRemainder) - y;
        int to = this.above.getScrollY() + ((int) deltaY);
        if (to < 0) {
            if (this.above.getScrollY() != 0) {
                this.above.scrollTo(0, 0);
            }
        } else if (to > this.mTitleTop) {
            this.above.scrollTo(0, this.mTitleTop);
        } else if (Math.abs(deltaY) >= 1.0f) {
            this.above.scrollBy(0, (int) deltaY);
            this.mLastMotionXRemainder = deltaY - ((float) ((int) deltaY));
        }
        this.mLastY = y;
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

    public void setBottomHeight(int height) {
        this.mTitleTop = height;
    }

    public void setContent(View v) {
        if (this.above.getChildCount() > 0) {
            this.above.removeAllViews();
        }
        this.above.addView(v, new FrameLayout.LayoutParams(-1, -1));
    }

    public void setBackContent(View v) {
        if (this.below.getChildCount() > 0) {
            this.below.removeAllViews();
        }
        this.below.addView(v, new FrameLayout.LayoutParams(-1, -2, 80));
    }

    public boolean checkAboveViewMove() {
        return this.above.getScrollY() == 0;
    }
}
