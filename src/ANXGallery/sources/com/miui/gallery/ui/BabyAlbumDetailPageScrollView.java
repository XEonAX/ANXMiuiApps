package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.OverScroller;
import com.miui.gallery.R;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;

public class BabyAlbumDetailPageScrollView extends LinearLayout {
    private boolean isTopHidden = false;
    private int mActionBarHeight;
    Rect mActionbarMask;
    private boolean mDragging;
    private InnerScollerStateChangedMessager mInnerScollerStateChangedMessager;
    private float mLastY;
    private int mMaskColor;
    Paint mMaskPaint;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private OverScroller mScroller;
    private int mTopViewHeight;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    interface InnerScollerStateChangedMessager {
        boolean disappearFloatingView();

        View getRecommendFaceButton();

        boolean isScoll2Top();

        void setNormalActionBarBackground();

        void setNullActionBarBackground();
    }

    public BabyAlbumDetailPageScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setOrientation(1);
        this.mScroller = new OverScroller(context);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMaximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.mMinimumVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mMaskColor = context.getResources().getColor(R.color.baby_album_action_bar_mask);
    }

    public void setInnerScollerMessager(InnerScollerStateChangedMessager messager) {
        this.mInnerScollerStateChangedMessager = messager;
    }

    public void setTopViewHeight(int actionbarHeight) {
        this.mActionBarHeight = actionbarHeight;
        this.mTopViewHeight = getContext().getResources().getDimensionPixelSize(R.dimen.baby_album_page_header_height) - actionbarHeight;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (getChildCount() > 0) {
            View child = null;
            for (int i = 0; i < getChildCount(); i++) {
                child = getChildAt(i);
                if (child instanceof StickyGridHeadersGridView) {
                    break;
                }
            }
            if (child != null) {
                int height = getMeasuredHeight();
                if (child.getMeasuredHeight() < height) {
                    int recommendButtonHeight;
                    int childWidthMeasureSpec = getChildMeasureSpec(widthMeasureSpec, getPaddingLeft() + getPaddingRight(), ((LayoutParams) child.getLayoutParams()).width);
                    height = (height - getPaddingTop()) - getPaddingBottom();
                    View recommendButton = this.mInnerScollerStateChangedMessager.getRecommendFaceButton();
                    if (recommendButton == null || recommendButton.getVisibility() != 0) {
                        recommendButtonHeight = 0;
                    } else {
                        recommendButtonHeight = recommendButton.getMeasuredHeight();
                    }
                    child.measure(childWidthMeasureSpec, MeasureSpec.makeMeasureSpec((height - (this.mActionBarHeight * 2)) - recommendButtonHeight, 1073741824));
                }
            }
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mTopViewHeight != 0 && canvas.getWidth() != 0) {
            if (this.mActionbarMask == null) {
                this.mActionbarMask = new Rect(0, 0, canvas.getWidth(), this.mActionBarHeight);
            }
            if (this.mMaskPaint == null) {
                this.mMaskPaint = new Paint();
                this.mMaskPaint.setColor(this.mMaskColor);
            }
            canvas.saveLayerAlpha(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), (getScrollY() * 255) / this.mTopViewHeight, 31);
            canvas.translate(0.0f, (float) getScrollY());
            canvas.drawRect(this.mActionbarMask, this.mMaskPaint);
            canvas.restore();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        float y = ev.getY();
        switch (action) {
            case 0:
                if (!this.mInnerScollerStateChangedMessager.disappearFloatingView()) {
                    this.mLastY = y;
                    break;
                }
                return true;
            case 2:
                float dy = y - this.mLastY;
                if (Math.abs(dy) > ((float) this.mTouchSlop)) {
                    this.mDragging = true;
                    if (!this.isTopHidden) {
                        return true;
                    }
                    if (this.mInnerScollerStateChangedMessager.isScoll2Top() && this.isTopHidden && dy > 0.0f) {
                        return true;
                    }
                }
                break;
        }
        return super.onInterceptTouchEvent(ev);
    }

    public boolean onTouchEvent(MotionEvent event) {
        this.mVelocityTracker.addMovement(event);
        int action = event.getAction();
        float y = event.getY();
        switch (action) {
            case 0:
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                this.mVelocityTracker.clear();
                this.mVelocityTracker.addMovement(event);
                this.mLastY = y;
                return true;
            case 1:
                this.mDragging = false;
                this.mVelocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                int velocityY = (int) this.mVelocityTracker.getYVelocity();
                if (Math.abs(velocityY) > this.mMinimumVelocity) {
                    fling(-velocityY);
                }
                this.mVelocityTracker.clear();
                break;
            case 2:
                float dy = y - this.mLastY;
                if (!this.mDragging && Math.abs(dy) > ((float) this.mTouchSlop)) {
                    this.mDragging = true;
                }
                if (this.mDragging) {
                    scrollBy(0, (int) (-dy));
                    this.mLastY = y;
                    break;
                }
                break;
            case 3:
                this.mDragging = false;
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                    break;
                }
                break;
        }
        return super.onTouchEvent(event);
    }

    public void fling(int velocityY) {
        this.mScroller.fling(0, getScrollY(), 0, velocityY, 0, 0, 0, this.mTopViewHeight);
        invalidate();
    }

    public void scrollTo(int x, int y) {
        if (y < 0) {
            y = 0;
        }
        if (y > this.mTopViewHeight) {
            y = this.mTopViewHeight;
        }
        if (y != getScrollY()) {
            super.scrollTo(x, y);
        }
        boolean temp = getScrollY() == this.mTopViewHeight;
        if (temp != this.isTopHidden) {
            if (this.isTopHidden) {
                this.mInnerScollerStateChangedMessager.setNullActionBarBackground();
            } else {
                this.mInnerScollerStateChangedMessager.setNormalActionBarBackground();
            }
            this.isTopHidden = temp;
        }
    }

    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            scrollTo(0, this.mScroller.getCurrY());
            invalidate();
        }
    }
}
