package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import com.miui.internal.widget.ActionBarMovableLayout;
import miui.util.AttributeResolver;

public class ScrollableViewDrawer extends FrameLayout {
    private int mActionPointerId;
    private DrawerAnimEndListener mAnimEndListener;
    private View mContentView;
    private int mContentViewId;
    private boolean mDetermineHorizontal;
    private boolean mDetermineVertical;
    private boolean mDetermineVerticalDrag;
    private int mDividerHeight;
    private float mDownX;
    private float mDownY;
    private boolean mDragEnabled;
    private DrawerListener mDrawerListener;
    private float mLastMotionY;
    private OnLayoutChangeListener mOnContentViewLayoutChangeListener;
    private DrawerAnimEndListener mPendingOpenDrawerAnimEndListener;
    private boolean mPendingOpenDrawerBeforeLaidOut;
    private OnLayoutChangeListener mPendingOpenDrawerLayoutChangeListener;
    private boolean mPendingOpenDrawerWithAnimation;
    private boolean mPendingTranslate;
    private Drawable mScrollDivider;
    private int mScrollableViewId;
    private IScrollableView mScrollableViewWrapper;
    private Scroller mScroller;
    private int mState;
    private View mTargetView;
    private int mTargetViewId;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private int mVerticalRange;
    private int mYOffset;

    public interface IScrollableView {
        boolean canScroll();
    }

    private static class AdapterViewWrapper implements IScrollableView {
        private AdapterView<?> iAdapterView;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.iAdapterView = adapterView;
        }

        public boolean canScroll() {
            int firstVisiblePosition = this.iAdapterView.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                Log.d("ScrollableViewDrawer", "canScrollDown true first visible %s", Integer.valueOf(firstVisiblePosition));
                return true;
            }
            int paddingTop = this.iAdapterView.getPaddingTop();
            int count = this.iAdapterView.getChildCount();
            for (int i = 0; i < count; i++) {
                if (this.iAdapterView.getChildAt(i).getTop() < paddingTop) {
                    Log.d("ScrollableViewDrawer", "canScrollDown true %s", Integer.valueOf(i));
                    return true;
                }
            }
            return false;
        }
    }

    public interface DrawerAnimEndListener {
        void onDrawerAnimEnd(boolean z);
    }

    public interface DrawerListener {
        void onDrawerClosed(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerOpened(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerSlide(ScrollableViewDrawer scrollableViewDrawer, float f);
    }

    private static class ScrollViewWrapper implements IScrollableView {
        private ScrollView iScrollView;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.iScrollView = scrollView;
        }

        public boolean canScroll() {
            return this.iScrollView.getScrollY() > 0;
        }
    }

    public ScrollableViewDrawer(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ScrollableViewDrawer(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mActionPointerId = -1;
        this.mPendingTranslate = false;
        this.mPendingOpenDrawerBeforeLaidOut = false;
        this.mPendingOpenDrawerWithAnimation = false;
        this.mPendingOpenDrawerAnimEndListener = null;
        this.mPendingOpenDrawerLayoutChangeListener = null;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mScroller = new Scroller(context);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mOnContentViewLayoutChangeListener = new OnLayoutChangeListener() {
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                Log.d("ScrollableViewDrawer", "ContentView layout change, newBottom: %d, oldBottom: %d", Integer.valueOf(bottom), Integer.valueOf(oldBottom));
                if (bottom == ScrollableViewDrawer.this.mVerticalRange) {
                    return;
                }
                if (!ScrollableViewDrawer.this.mScroller.isFinished() || ScrollableViewDrawer.this.mState == 1) {
                    ScrollableViewDrawer.this.mPendingTranslate = true;
                    return;
                }
                ScrollableViewDrawer.this.mVerticalRange = bottom;
                if (ScrollableViewDrawer.this.mState == 2) {
                    ScrollableViewDrawer.this.mYOffset = bottom;
                    ScrollableViewDrawer.this.onTranslationYChange();
                }
            }
        };
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ScrollableViewDrawer, defStyle, 0);
        this.mContentViewId = a.getResourceId(0, 0);
        if (this.mContentViewId == 0) {
            throw new IllegalArgumentException("The contentView attribute is required and must refer to a valid child.");
        }
        this.mTargetViewId = a.getResourceId(1, 0);
        if (this.mTargetViewId == 0) {
            throw new IllegalArgumentException("The targetView attribute is required and must refer to a valid child.");
        }
        this.mScrollableViewId = a.getResourceId(2, 0);
        if (this.mScrollableViewId == 0) {
            throw new IllegalArgumentException("The scrollableView attribute is required and must refer to a valid child.");
        }
        this.mScrollDivider = a.getDrawable(3);
        if (this.mScrollDivider == null) {
            this.mScrollDivider = AttributeResolver.resolveDrawable(context, R.attr.scrollDivider);
        }
        if (this.mScrollDivider != null) {
            this.mDividerHeight = this.mScrollDivider.getIntrinsicHeight();
        }
        this.mDragEnabled = a.getBoolean(4, true);
        a.recycle();
    }

    protected void onFinishInflate() {
        this.mContentView = findViewById(this.mContentViewId);
        if (this.mContentView == null) {
            throw new IllegalArgumentException("The contentView attribute is must refer to an existing child.");
        } else if (this.mContentView.getParent() != this) {
            throw new IllegalArgumentException("The contentView attribute is must be a direct child of ScrollableViewDrawer.");
        } else {
            this.mContentView.addOnLayoutChangeListener(this.mOnContentViewLayoutChangeListener);
            this.mTargetView = findViewById(this.mTargetViewId);
            if (this.mTargetView == null) {
                throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
            }
            View scrollableView = this.mTargetView.findViewById(this.mScrollableViewId);
            if (scrollableView == null) {
                throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
            } else if (scrollableView instanceof IScrollableView) {
                this.mScrollableViewWrapper = (IScrollableView) scrollableView;
            } else if (scrollableView instanceof ScrollView) {
                this.mScrollableViewWrapper = new ScrollViewWrapper((ScrollView) scrollableView);
            } else if (scrollableView instanceof AdapterView) {
                this.mScrollableViewWrapper = new AdapterViewWrapper((AdapterView) scrollableView);
            } else {
                throw new IllegalArgumentException("The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper.");
            }
        }
    }

    private int getVerticalRange() {
        if (this.mVerticalRange == 0) {
            this.mVerticalRange = this.mContentView.getMeasuredHeight();
        }
        return this.mVerticalRange;
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (!this.mDragEnabled) {
            return super.dispatchTouchEvent(ev);
        }
        float y;
        int pointerIndex;
        switch (ev.getActionMasked()) {
            case 0:
                this.mActionPointerId = ev.getPointerId(0);
                this.mDetermineVerticalDrag = false;
                this.mVelocityTracker.clear();
                this.mVelocityTracker.addMovement(ev);
                this.mDownX = ev.getX(0);
                y = ev.getY(0);
                this.mDownY = y;
                this.mLastMotionY = y;
                this.mYOffset = (int) this.mTargetView.getTranslationY();
                break;
            case 1:
            case 3:
                if (!this.mDetermineVerticalDrag) {
                    this.mVelocityTracker.clear();
                }
                this.mDetermineVerticalDrag = false;
                this.mDetermineHorizontal = false;
                this.mDetermineVertical = false;
                break;
            case 2:
                pointerIndex = ev.findPointerIndex(this.mActionPointerId);
                if (pointerIndex == -1) {
                    pointerIndex = 0;
                    this.mActionPointerId = ev.getPointerId(0);
                }
                float x = ev.getX(pointerIndex) - this.mDownX;
                float y2 = ev.getY(pointerIndex) - this.mDownY;
                if (!(this.mDetermineVerticalDrag || this.mDetermineHorizontal)) {
                    if (this.mYOffset == getVerticalRange() && y2 < ((float) (-this.mTouchSlop))) {
                        this.mDetermineVerticalDrag = true;
                        Log.d("ScrollableViewDrawer", "determine vertical up dragging");
                    } else if (y2 > ((float) this.mTouchSlop)) {
                        this.mDetermineVerticalDrag = shouldInterceptDown();
                        Log.d("ScrollableViewDrawer", "determine vertical down dragging %s", Boolean.valueOf(this.mDetermineVerticalDrag));
                    }
                    if (this.mDetermineVerticalDrag) {
                        Log.d("ScrollableViewDrawer", "determine vertical drag");
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (Math.abs(y2) > ((float) this.mTouchSlop) && !this.mDetermineHorizontal) {
                        this.mDetermineVertical = true;
                    }
                    if (Math.abs(x) > ((float) this.mTouchSlop) && !this.mDetermineVertical) {
                        this.mDetermineHorizontal = true;
                    }
                }
                if (!this.mDetermineVerticalDrag) {
                    this.mVelocityTracker.addMovement(ev);
                    this.mLastMotionY = ev.getY(pointerIndex);
                    break;
                }
                break;
            case 6:
                pointerIndex = ev.getActionIndex();
                if (ev.getPointerId(pointerIndex) == this.mActionPointerId) {
                    int newIndex;
                    if (pointerIndex == 0) {
                        newIndex = 1;
                    } else {
                        newIndex = 0;
                    }
                    this.mActionPointerId = ev.getPointerId(newIndex);
                    this.mDownX = ev.getX(newIndex);
                    y = ev.getY(newIndex);
                    this.mDownY = y;
                    this.mLastMotionY = y;
                    break;
                }
                break;
        }
        Log.d("ScrollableViewDrawer", "dispatchTouchEvent:action=%s, mYOffset=%s", Integer.valueOf(ev.getActionMasked()), Integer.valueOf(this.mYOffset));
        if (super.dispatchTouchEvent(ev) || this.mDetermineVerticalDrag) {
            return true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        switch (ev.getActionMasked()) {
            case 1:
                this.mVelocityTracker.addMovement(ev);
                this.mVelocityTracker.computeCurrentVelocity(1000);
                if (this.mYOffset == 0 || this.mYOffset == getVerticalRange()) {
                    computeStateChanged();
                } else {
                    if (this.mVelocityTracker.getYVelocity() > 5.0f) {
                        this.mScroller.startScroll(0, this.mYOffset, 0, getVerticalRange() - this.mYOffset);
                    } else {
                        this.mScroller.startScroll(0, this.mYOffset, 0, -this.mYOffset);
                    }
                    invalidate();
                }
                this.mVelocityTracker.clear();
                break;
            case 2:
                this.mVelocityTracker.addMovement(ev);
                int pointerIndex = ev.findPointerIndex(this.mActionPointerId);
                if (pointerIndex == -1) {
                    pointerIndex = 0;
                    this.mActionPointerId = ev.getPointerId(0);
                }
                float y = ev.getY(pointerIndex);
                this.mYOffset = Math.max(0, Math.min(((int) (y - this.mLastMotionY)) + this.mYOffset, getVerticalRange()));
                this.mLastMotionY = y;
                onTranslationYChange();
                invalidate();
                break;
            case 3:
                if (this.mYOffset == 0 || this.mYOffset == getVerticalRange()) {
                    computeStateChanged();
                } else {
                    this.mScroller.startScroll(0, this.mYOffset, 0, -this.mYOffset);
                    invalidate();
                }
                this.mVelocityTracker.clear();
                break;
        }
        Log.w("ScrollableViewDrawer", "onTouchEvent:action=%s, mYOffset=%s", Integer.valueOf(ev.getActionMasked()), Integer.valueOf(this.mYOffset));
        return super.onTouchEvent(ev);
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.mDragEnabled && this.mDetermineVerticalDrag;
    }

    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        if (child == this.mContentView) {
            int left = getPaddingLeft();
            int right = getWidth() - getPaddingRight();
            int top = child.getTop();
            int bottom = top + this.mYOffset;
            if (this.mDividerHeight > 0) {
                this.mScrollDivider.setBounds(left, bottom - this.mDividerHeight, right, bottom);
                this.mScrollDivider.draw(canvas);
                bottom -= this.mDividerHeight;
            }
            canvas.save();
            canvas.clipRect(left, top, right, bottom);
        }
        boolean result = super.drawChild(canvas, child, drawingTime);
        if (child == this.mContentView) {
            canvas.restore();
        }
        return result;
    }

    private boolean shouldInterceptDown() {
        return (this.mTargetView == null || this.mYOffset != 0 || this.mScrollableViewWrapper.canScroll()) ? false : true;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.mTargetView == null) {
            return;
        }
        if (this.mScroller.computeScrollOffset()) {
            this.mYOffset = this.mScroller.getCurrY();
            onTranslationYChange();
            postInvalidateOnAnimation();
        } else if (this.mAnimEndListener != null) {
            this.mAnimEndListener.onDrawerAnimEnd(isDrawerOpen());
            this.mAnimEndListener = null;
        }
    }

    public void setDragEnabled(boolean enabled) {
        this.mDragEnabled = enabled;
    }

    public void setDrawerListener(DrawerListener l) {
        this.mDrawerListener = l;
    }

    private void computeStateChanged() {
        int newState = 1;
        if (this.mYOffset == 0) {
            if (!this.mDetermineVerticalDrag) {
                newState = 0;
            }
        } else if (this.mYOffset == getVerticalRange() && !this.mDetermineVerticalDrag) {
            newState = 2;
        }
        if (this.mState != newState) {
            this.mState = newState;
            notifyStateChanged();
        } else if (this.mState == 1) {
            notifyStateChanged();
        }
    }

    private void notifyStateChanged() {
        if (this.mDrawerListener != null) {
            switch (this.mState) {
                case 0:
                    this.mDrawerListener.onDrawerClosed(this);
                    if (this.mPendingTranslate) {
                        this.mVerticalRange = this.mContentView.getMeasuredHeight();
                        this.mPendingTranslate = false;
                        return;
                    }
                    return;
                case 1:
                    this.mDrawerListener.onDrawerSlide(this, ((float) this.mYOffset) / ((float) getVerticalRange()));
                    return;
                case 2:
                    this.mDrawerListener.onDrawerOpened(this);
                    if (this.mPendingTranslate) {
                        this.mVerticalRange = this.mContentView.getMeasuredHeight();
                        this.mYOffset = this.mVerticalRange;
                        onTranslationYChange();
                        this.mPendingTranslate = false;
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public boolean isDrawerOpen() {
        return this.mYOffset > 0;
    }

    public void openDrawer() {
        openDrawer(false, null);
    }

    public void openDrawer(boolean withAnimation, DrawerAnimEndListener listener) {
        if (isLaidOut()) {
            clearPendingOpenDrawerInfo();
            internalOpenDrawer(withAnimation, listener);
            return;
        }
        this.mPendingOpenDrawerBeforeLaidOut = true;
        this.mPendingOpenDrawerWithAnimation = withAnimation;
        this.mPendingOpenDrawerAnimEndListener = listener;
        this.mPendingOpenDrawerLayoutChangeListener = new OnLayoutChangeListener() {
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                final boolean withAnimation = ScrollableViewDrawer.this.mPendingOpenDrawerWithAnimation;
                final DrawerAnimEndListener animEndListener = ScrollableViewDrawer.this.mPendingOpenDrawerAnimEndListener;
                ScrollableViewDrawer.this.clearPendingOpenDrawerInfo();
                ScrollableViewDrawer.this.post(new Runnable() {
                    public void run() {
                        ScrollableViewDrawer.this.openDrawer(withAnimation, animEndListener);
                    }
                });
            }
        };
        addOnLayoutChangeListener(this.mPendingOpenDrawerLayoutChangeListener);
    }

    private void internalOpenDrawer(boolean withAnimation, DrawerAnimEndListener listener) {
        this.mAnimEndListener = listener;
        if (withAnimation) {
            this.mScroller.startScroll(0, this.mYOffset, 0, getVerticalRange() - this.mYOffset, ActionBarMovableLayout.DEFAULT_SPRING_BACK_DURATION);
        } else {
            this.mScroller.forceFinished(true);
            this.mYOffset = getVerticalRange();
            onTranslationYChange();
        }
        invalidate();
    }

    private void clearPendingOpenDrawerInfo() {
        if (this.mPendingOpenDrawerBeforeLaidOut) {
            this.mPendingOpenDrawerBeforeLaidOut = false;
            this.mPendingOpenDrawerWithAnimation = false;
            this.mPendingOpenDrawerAnimEndListener = null;
            if (this.mPendingOpenDrawerLayoutChangeListener != null) {
                removeOnLayoutChangeListener(this.mPendingOpenDrawerLayoutChangeListener);
                this.mPendingOpenDrawerLayoutChangeListener = null;
            }
        }
    }

    private void onTranslationYChange() {
        if (this.mDragEnabled && this.mTargetView != null) {
            this.mTargetView.setTranslationY((float) this.mYOffset);
            computeStateChanged();
        }
    }
}
