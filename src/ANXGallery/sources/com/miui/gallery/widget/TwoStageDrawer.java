package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.AdapterView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;

public class TwoStageDrawer extends RelativeLayout {
    private int mActionPointerId;
    private boolean mAlwaysShowTargetViewDivider;
    private DrawerAnimEndListener mAnimEndListener;
    private boolean mAutoClose;
    private boolean mCanScrollDown;
    private Drawable mContentViewBackground;
    private int mDetectMode;
    private int mDividerHeight;
    private float mDownTranslationY;
    private View mDownView;
    private float mDownX;
    private float mDownY;
    private boolean mDragEnabled;
    private boolean mDrawDividerWhenContentEmpty;
    private DrawerListener mDrawerListener;
    private int mInitialDrawerState;
    private boolean mIsFirstLayoutChanged;
    private float mLastY;
    private int mMinimumFlingVelocity;
    private OnGlobalLayoutListener mOnGlobalLayoutListener;
    private boolean mPendingScroll;
    private boolean mPendingTranslate;
    private int mPrimaryContentHeight;
    private boolean mPrimaryContentHeightChanged;
    private View mPrimaryContentView;
    private int mPrimaryContentViewId;
    private Drawable mScrollDivider;
    private int mScrollableViewId;
    private ScrollableView mScrollableViewWrapper;
    private Scroller mScroller;
    private boolean mScrolling;
    private int mSecondaryContentHeight;
    private boolean mSecondaryContentHeightChanged;
    private View mSecondaryContentView;
    private int mSecondaryContentViewId;
    private View mTargetView;
    private View mTargetViewAncestor;
    private int mTargetViewId;
    private int mTouchMode;
    private int mTouchSlop;
    private TriggerListener mTriggerListener;
    private boolean mTriggerOn;
    private View mTriggerView;
    private int mTriggerViewHeight;
    private int mTriggerViewId;
    private VelocityTracker mVelocityTracker;

    public interface TriggerListener {
        void onTriggerOpen(TwoStageDrawer twoStageDrawer);

        void onTriggerSlide(TwoStageDrawer twoStageDrawer, float f);
    }

    public interface DrawerAnimEndListener {
        void onDrawerAnimEnd(boolean z);
    }

    public interface DrawerListener {
        void onDrawerClose(TwoStageDrawer twoStageDrawer);

        void onDrawerHalfOpen(TwoStageDrawer twoStageDrawer);

        void onDrawerOpen(TwoStageDrawer twoStageDrawer);

        void onDrawerSlide(TwoStageDrawer twoStageDrawer, float f);
    }

    public interface ScrollableView {
        boolean canScrollDown();
    }

    private static class AdapterViewWrapper implements ScrollableView {
        private AdapterView<?> mAdapterView;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.mAdapterView = adapterView;
        }

        public boolean canScrollDown() {
            if (this.mAdapterView.getFirstVisiblePosition() > 0) {
                return true;
            }
            int paddingTop = this.mAdapterView.getPaddingTop();
            int count = this.mAdapterView.getChildCount();
            for (int i = 0; i < count; i++) {
                if (this.mAdapterView.getChildAt(i).getTop() < paddingTop) {
                    return true;
                }
            }
            return false;
        }
    }

    private static class FixedViewWrapper implements ScrollableView {
        public boolean canScrollDown() {
            return false;
        }
    }

    private class MyOnScrollChangeListener implements OnScrollChangedListener {
        private MyOnScrollChangeListener() {
        }

        /* synthetic */ MyOnScrollChangeListener(TwoStageDrawer x0, AnonymousClass1 x1) {
            this();
        }

        public void onScrollChanged() {
            boolean canScrollDown = TwoStageDrawer.this.mScrollableViewWrapper != null && TwoStageDrawer.this.mScrollableViewWrapper.canScrollDown();
            if (TwoStageDrawer.this.mCanScrollDown != canScrollDown) {
                TwoStageDrawer.this.mCanScrollDown = canScrollDown;
                TwoStageDrawer.this.invalidate();
            }
        }
    }

    private static class RecyclerViewWrapper implements ScrollableView {
        private RecyclerView mRecycler;

        public RecyclerViewWrapper(RecyclerView recycler) {
            this.mRecycler = recycler;
        }

        public boolean canScrollDown() {
            return this.mRecycler.canScrollVertically(-1);
        }
    }

    private static class ScrollViewWrapper implements ScrollableView {
        private ScrollView mScrollView;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.mScrollView = scrollView;
        }

        public boolean canScrollDown() {
            return this.mScrollView.getScrollY() > 0;
        }
    }

    public TwoStageDrawer(Context context) {
        this(context, null);
    }

    public TwoStageDrawer(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TwoStageDrawer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mActionPointerId = -1;
        this.mIsFirstLayoutChanged = true;
        this.mInitialDrawerState = 0;
        this.mOnGlobalLayoutListener = new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                TwoStageDrawer twoStageDrawer;
                boolean z;
                boolean layoutHeightChanged = false;
                int primaryContentHeight = TwoStageDrawer.this.getViewHeight(TwoStageDrawer.this.mPrimaryContentView);
                if (primaryContentHeight != TwoStageDrawer.this.mPrimaryContentHeight) {
                    twoStageDrawer = TwoStageDrawer.this;
                    if (TwoStageDrawer.this.mPrimaryContentHeight == 0 || primaryContentHeight == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    twoStageDrawer.mPrimaryContentHeightChanged = z;
                    TwoStageDrawer.this.mPrimaryContentHeight = primaryContentHeight;
                    layoutHeightChanged = true;
                }
                int secondaryContentHeight = TwoStageDrawer.this.getViewHeight(TwoStageDrawer.this.mSecondaryContentView);
                if (secondaryContentHeight != TwoStageDrawer.this.mSecondaryContentHeight) {
                    twoStageDrawer = TwoStageDrawer.this;
                    if (TwoStageDrawer.this.mSecondaryContentHeight == 0 || secondaryContentHeight == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    twoStageDrawer.mSecondaryContentHeightChanged = z;
                    TwoStageDrawer.this.mSecondaryContentHeight = secondaryContentHeight;
                    layoutHeightChanged = true;
                }
                int triggerViewHeight = TwoStageDrawer.this.getViewHeight(TwoStageDrawer.this.mTriggerView);
                if (triggerViewHeight != TwoStageDrawer.this.mTriggerViewHeight) {
                    TwoStageDrawer.this.mTriggerViewHeight = triggerViewHeight;
                    layoutHeightChanged = true;
                }
                if (!layoutHeightChanged) {
                    return;
                }
                if (TwoStageDrawer.this.mIsFirstLayoutChanged) {
                    TwoStageDrawer.this.mIsFirstLayoutChanged = false;
                    TwoStageDrawer.this.onFirstLayoutChanged();
                } else if (TwoStageDrawer.this.mScrolling) {
                    TwoStageDrawer.this.mPendingTranslate = true;
                } else {
                    TwoStageDrawer.this.adaptiveTranslate();
                }
            }
        };
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMinimumFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mScroller = new Scroller(context);
        this.mVelocityTracker = VelocityTracker.obtain();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.TwoStageDrawer, defStyleAttr, 0);
        this.mPrimaryContentViewId = a.getResourceId(0, 0);
        this.mSecondaryContentViewId = a.getResourceId(1, 0);
        this.mTargetViewId = a.getResourceId(2, 0);
        this.mScrollableViewId = a.getResourceId(3, 0);
        this.mScrollDivider = a.getDrawable(4);
        if (this.mScrollDivider != null) {
            this.mDividerHeight = this.mScrollDivider.getIntrinsicHeight();
        }
        this.mTriggerViewId = a.getResourceId(8, 0);
        this.mContentViewBackground = a.getDrawable(6);
        this.mDragEnabled = a.getBoolean(5, false);
        this.mAlwaysShowTargetViewDivider = a.getBoolean(7, true);
        this.mDrawDividerWhenContentEmpty = a.getBoolean(10, true);
        a.recycle();
        getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    }

    private void onFirstLayoutChanged() {
        int translation = 0;
        switch (this.mInitialDrawerState) {
            case 0:
                translation = this.mPrimaryContentHeight + this.mSecondaryContentHeight;
                break;
            case 1:
                translation = this.mPrimaryContentHeight;
                break;
            case 2:
                translation = 0;
                break;
        }
        updateTranslationAnimation(translation);
    }

    public void setAlwaysShowTargetViewDivider(boolean alwaysShowTargetViewDivider) {
        this.mAlwaysShowTargetViewDivider = alwaysShowTargetViewDivider;
    }

    public void setContentViewBackground(Drawable backgroundDrawable) {
        this.mContentViewBackground = backgroundDrawable;
    }

    public void setScrollDivider(Drawable divider) {
        this.mScrollDivider = divider;
        if (this.mScrollDivider != null) {
            this.mDividerHeight = this.mScrollDivider.getIntrinsicHeight();
        } else {
            this.mDividerHeight = 0;
        }
    }

    public void setScrollableView(View scrollableView) {
        if (scrollableView == null) {
            throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
        }
        if (scrollableView instanceof ScrollableView) {
            this.mScrollableViewWrapper = (ScrollableView) scrollableView;
        } else if (scrollableView instanceof ScrollView) {
            this.mScrollableViewWrapper = new ScrollViewWrapper((ScrollView) scrollableView);
        } else if (scrollableView instanceof AdapterView) {
            this.mScrollableViewWrapper = new AdapterViewWrapper((AdapterView) scrollableView);
        } else if (scrollableView instanceof RecyclerView) {
            this.mScrollableViewWrapper = new RecyclerViewWrapper((RecyclerView) scrollableView);
        } else {
            Log.w("TwoStageDrawer", "The scrollableView is a fixed view that can't scroll all the time");
            this.mScrollableViewWrapper = new FixedViewWrapper();
        }
        scrollableView.getViewTreeObserver().addOnScrollChangedListener(new MyOnScrollChangeListener(this, null));
    }

    public void setPrimaryContentView(View view) {
        this.mPrimaryContentView = view;
    }

    public void setSecondaryContentView(View view) {
        this.mSecondaryContentView = view;
    }

    public void setTargetView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
        }
        this.mTargetView = view;
        this.mTargetViewAncestor = this.mTargetView;
        while (this.mTargetViewAncestor != null && this.mTargetViewAncestor.getParent() != this) {
            this.mTargetViewAncestor = (View) this.mTargetViewAncestor.getParent();
        }
    }

    public void setInitialDrawerState(int state) {
        this.mInitialDrawerState = state;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.mPrimaryContentViewId > 0) {
            this.mPrimaryContentView = findViewById(this.mPrimaryContentViewId);
            if (this.mPrimaryContentView == null) {
                throw new IllegalArgumentException("The primaryContentView attribute is must refer to an existing child.");
            } else if (this.mPrimaryContentView.getParent() != this) {
                throw new IllegalArgumentException("The primaryContentView attribute is must be a direct child of TwoStageDrawer.");
            }
        }
        if (this.mSecondaryContentViewId > 0) {
            this.mSecondaryContentView = findViewById(this.mSecondaryContentViewId);
            if (this.mSecondaryContentView == null) {
                throw new IllegalArgumentException("The secondaryContentView attribute is must refer to an existing child.");
            } else if (this.mSecondaryContentView.getParent() != this) {
                throw new IllegalArgumentException("The secondaryContentView attribute is must be a direct child of TwoStageDrawer.");
            }
        }
        if (this.mTargetViewId > 0) {
            setTargetView(findViewById(this.mTargetViewId));
        }
        if (this.mScrollableViewId > 0) {
            setScrollableView(this.mTargetView.findViewById(this.mScrollableViewId));
        }
        if (this.mTriggerViewId > 0) {
            this.mTriggerView = findViewById(this.mTriggerViewId);
            if (this.mTriggerView == null) {
                throw new IllegalArgumentException("The triggerView attribute is must refer to an existing child.");
            } else if (this.mTriggerView.getParent() != this) {
                throw new IllegalArgumentException("The triggerView attribute is must be a direct child of TwoStageDrawer.");
            }
        }
    }

    private int getViewHeight(View view) {
        if (view == null || view.getVisibility() == 8) {
            return 0;
        }
        int height = view.getMeasuredHeight();
        if (!(view instanceof ViewGroup)) {
            return height;
        }
        MarginLayoutParams layoutParams = (MarginLayoutParams) view.getLayoutParams();
        return height + (layoutParams.topMargin + layoutParams.bottomMargin);
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if ((!this.mDragEnabled && this.mTriggerView == null) || ((this.mPrimaryContentHeight <= 0 && this.mSecondaryContentHeight <= 0 && this.mTriggerViewHeight <= 0) || (ev.getActionMasked() != 0 && this.mDetectMode == 0))) {
            return super.dispatchTouchEvent(ev);
        }
        float y;
        int translationY;
        int pointerIndex;
        switch (ev.getActionMasked()) {
            case 0:
            case 5:
                int index = ev.getActionIndex();
                this.mActionPointerId = ev.getPointerId(index);
                this.mVelocityTracker.clear();
                this.mVelocityTracker.addMovement(ev);
                this.mDownX = ev.getX(index);
                y = ev.getY(index);
                this.mLastY = y;
                this.mDownY = y;
                this.mDownTranslationY = this.mTargetView.getTranslationY();
                this.mDownView = getTouchDownView((int) this.mDownX, (int) this.mDownY);
                this.mDetectMode = 1;
                this.mTouchMode = 0;
                this.mPendingScroll = false;
                break;
            case 1:
                translationY = (int) this.mTargetView.getTranslationY();
                this.mVelocityTracker.addMovement(ev);
                this.mVelocityTracker.computeCurrentVelocity(1000);
                if (this.mAutoClose && translationY != 0) {
                    startScroll(translationY, -translationY, this.mVelocityTracker.getYVelocity());
                } else if (translationY != 0) {
                    if (translationY < this.mPrimaryContentHeight) {
                        if (this.mVelocityTracker.getYVelocity() > ((float) this.mMinimumFlingVelocity)) {
                            startScroll(translationY, this.mPrimaryContentHeight - translationY, this.mVelocityTracker.getYVelocity());
                        } else {
                            startScroll(translationY, -translationY, this.mVelocityTracker.getYVelocity());
                        }
                    } else if (translationY > this.mPrimaryContentHeight && translationY != this.mPrimaryContentHeight + this.mSecondaryContentHeight) {
                        if (this.mVelocityTracker.getYVelocity() > ((float) this.mMinimumFlingVelocity)) {
                            startScroll(translationY, (this.mPrimaryContentHeight + this.mSecondaryContentHeight) - translationY, this.mVelocityTracker.getYVelocity());
                        } else {
                            startScroll(translationY, this.mPrimaryContentHeight - translationY, this.mVelocityTracker.getYVelocity());
                        }
                    }
                }
                this.mVelocityTracker.clear();
                this.mDetectMode = 1;
                this.mTouchMode = 0;
                this.mPendingScroll = false;
                this.mTriggerOn = false;
                break;
            case 2:
                pointerIndex = ev.findPointerIndex(this.mActionPointerId);
                if (pointerIndex == -1) {
                    pointerIndex = 0;
                    this.mActionPointerId = ev.getPointerId(0);
                }
                float currentX = ev.getX(pointerIndex);
                float currentY = ev.getY(pointerIndex);
                float xDistance = Math.abs(currentX - this.mDownX);
                float yDistance = Math.abs(currentY - this.mDownY);
                if (this.mDetectMode == 1) {
                    if (xDistance <= ((float) this.mTouchSlop) || xDistance <= yDistance) {
                        if (yDistance > ((float) this.mTouchSlop)) {
                            if (!this.mDragEnabled && this.mTriggerView != null && currentY - this.mDownY < 0.0f) {
                                this.mDetectMode = 0;
                                break;
                            }
                            this.mDetectMode = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            if (this.mPrimaryContentView != null && this.mDownView == this.mPrimaryContentView) {
                                dispatchTouchEventToChild(this.mPrimaryContentView, ev, 3);
                            }
                            if (this.mSecondaryContentView != null && this.mDownView == this.mSecondaryContentView) {
                                dispatchTouchEventToChild(this.mSecondaryContentView, ev, 3);
                            }
                            if (this.mTriggerView != null && this.mDownView == this.mTriggerView) {
                                dispatchTouchEventToChild(this.mTriggerView, ev, 3);
                            }
                        }
                    } else {
                        this.mDetectMode = 0;
                    }
                }
                this.mVelocityTracker.addMovement(ev);
                this.mVelocityTracker.computeCurrentVelocity(1000);
                float deltaY = currentY - this.mLastY;
                if (this.mDetectMode == 2 && (deltaY >= 1.0f || deltaY <= -1.0f)) {
                    int touchMode = this.mTouchMode;
                    if (deltaY > 0.0f) {
                        if (this.mTargetView.getTranslationY() >= ((float) ((this.mPrimaryContentHeight + this.mSecondaryContentHeight) + this.mTriggerViewHeight)) || (this.mScrollableViewWrapper != null && this.mScrollableViewWrapper.canScrollDown())) {
                            touchMode = 2;
                        } else {
                            touchMode = 1;
                        }
                    } else if (deltaY < 0.0f) {
                        if (this.mTargetView.getTranslationY() > 0.0f || this.mScrollableViewWrapper == null) {
                            touchMode = 1;
                        } else {
                            touchMode = 2;
                        }
                    }
                    if (touchMode == 1) {
                        if (this.mTouchMode == 2) {
                            dispatchTouchEventToChild(this.mTargetViewAncestor, ev, 1);
                        } else if (this.mDownView == this.mTargetViewAncestor && this.mTouchMode == 0) {
                            dispatchTouchEventToChild(this.mTargetViewAncestor, ev, 3);
                        }
                        offsetTranslationAnimation(deltaY, this.mVelocityTracker.getYVelocity());
                        notifyDrawerStateChanged();
                    } else if (touchMode == 2) {
                        if (this.mTouchMode != 1 && (this.mDownView == this.mTargetViewAncestor || this.mTouchMode != 0)) {
                            dispatchTouchEventToChild(this.mTargetViewAncestor, ev);
                        } else if (this.mPendingScroll) {
                            this.mPendingScroll = false;
                            ev.offsetLocation(0.0f, this.mLastY - currentY);
                            dispatchTouchEventToChild(this.mTargetViewAncestor, ev, 0, true);
                            if (this.mTouchMode == 1) {
                                ev.offsetLocation(0.0f, currentY - this.mLastY);
                                dispatchTouchEventToChild(this.mTargetViewAncestor, ev, 2, true);
                            }
                        } else {
                            this.mDownX = currentX;
                            this.mDownY = currentY;
                            this.mDetectMode = 1;
                            this.mPendingScroll = true;
                            touchMode = 1;
                        }
                    }
                    if (this.mPendingScroll && this.mDetectMode == 2) {
                        this.mPendingScroll = false;
                    }
                    this.mTouchMode = touchMode;
                    this.mLastY = currentY;
                    break;
                }
                break;
            case 3:
                translationY = (int) this.mTargetView.getTranslationY();
                this.mVelocityTracker.addMovement(ev);
                this.mVelocityTracker.computeCurrentVelocity(1000);
                if (translationY != 0 && (this.mAutoClose || !(translationY == this.mPrimaryContentHeight || translationY == this.mPrimaryContentHeight + this.mSecondaryContentHeight))) {
                    startScroll(translationY, -translationY, this.mVelocityTracker.getYVelocity());
                }
                this.mVelocityTracker.clear();
                this.mDetectMode = 1;
                this.mTouchMode = 0;
                this.mPendingScroll = false;
                this.mTriggerOn = false;
                break;
            case 6:
                pointerIndex = ev.getActionIndex();
                if (ev.getPointerId(pointerIndex) == this.mActionPointerId) {
                    int newIndex = pointerIndex == 0 ? 1 : 0;
                    this.mActionPointerId = ev.getPointerId(newIndex);
                    this.mDownX = ev.getX(newIndex);
                    y = ev.getY(newIndex);
                    this.mDownY = y;
                    this.mLastY = y;
                }
                this.mVelocityTracker.addMovement(ev);
                break;
        }
        if (this.mDetectMode != 2) {
            super.dispatchTouchEvent(ev);
        } else if (ev.getActionMasked() != 2 && this.mTouchMode == 2) {
            dispatchTouchEventToChild(this.mTargetViewAncestor, ev);
        }
        return true;
    }

    private View getTouchDownView(int downX, int downY) {
        int i = 0;
        Rect bounds = new Rect();
        View[] views = new View[]{this.mTargetViewAncestor, this.mTriggerView, this.mSecondaryContentView, this.mPrimaryContentView};
        int length = views.length;
        while (i < length) {
            View v = views[i];
            if (v != null && v.getVisibility() == 0) {
                int left = (int) v.getX();
                int top = (int) v.getY();
                bounds.set(left, top, left + v.getWidth(), top + v.getHeight());
                if (bounds.contains(downX, downY)) {
                    return v;
                }
            }
            i++;
        }
        return null;
    }

    private void adaptiveTranslate() {
        if (this.mPrimaryContentView != null || this.mSecondaryContentView != null) {
            int translationY = (int) this.mTargetView.getTranslationY();
            if (translationY == 0) {
                return;
            }
            if (this.mPrimaryContentView == null || this.mPrimaryContentView.getTranslationY() != 0.0f) {
                if (this.mSecondaryContentView != null && this.mSecondaryContentView.getTranslationY() == 0.0f) {
                    startScroll(translationY, this.mSecondaryContentHeight - translationY);
                }
            } else if (this.mSecondaryContentView == null || this.mSecondaryContentView.getTranslationY() != 0.0f) {
                startScroll(translationY, this.mPrimaryContentHeight - translationY);
            } else {
                startScroll(translationY, (this.mPrimaryContentHeight + this.mSecondaryContentHeight) - translationY);
            }
        }
    }

    private void offsetTranslationAnimation(float deltaY, float velocity) {
        float transformTranslationY;
        int translationY = (int) this.mTargetView.getTranslationY();
        if (translationY > this.mPrimaryContentHeight + this.mSecondaryContentHeight) {
            transformTranslationY = ((float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight)) + (((float) ((translationY - this.mPrimaryContentHeight) - this.mSecondaryContentHeight)) * 2.0f);
        } else {
            transformTranslationY = (float) translationY;
        }
        transformTranslationY += deltaY;
        if (this.mDownTranslationY == ((float) this.mPrimaryContentHeight) || this.mTargetView.getTranslationY() > ((float) this.mPrimaryContentHeight) || velocity <= ((float) this.mMinimumFlingVelocity)) {
            transformTranslationY = Math.max(0.0f, Math.min(transformTranslationY, this.mTriggerViewHeight <= 0 ? (float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight) : 2.14748365E9f));
        } else {
            transformTranslationY = Math.max(0.0f, Math.min(transformTranslationY, this.mPrimaryContentView != null ? (float) this.mPrimaryContentHeight : (float) this.mSecondaryContentHeight));
        }
        if (transformTranslationY > ((float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight))) {
            translationY = (this.mPrimaryContentHeight + this.mSecondaryContentHeight) + ((int) (((transformTranslationY - ((float) this.mPrimaryContentHeight)) - ((float) this.mSecondaryContentHeight)) / 2.0f));
        } else {
            translationY = (int) transformTranslationY;
        }
        updateTranslationAnimation(translationY);
        invalidate();
    }

    private void updateTranslationAnimation(int translationY) {
        this.mTargetView.setTranslationY((float) translationY);
        int finalTranslationY = this.mScroller.getFinalY();
        if (this.mPrimaryContentView != null) {
            if (this.mPrimaryContentHeightChanged) {
                if (finalTranslationY == 0) {
                    this.mPrimaryContentView.setTranslationY((float) (-this.mPrimaryContentHeight));
                } else {
                    this.mPrimaryContentView.setTranslationY(0.0f);
                }
            } else if (translationY < this.mPrimaryContentHeight) {
                this.mPrimaryContentView.setTranslationY((float) (translationY - this.mPrimaryContentHeight));
            } else if (this.mPrimaryContentView.getTranslationY() != 0.0f) {
                this.mPrimaryContentView.setTranslationY(0.0f);
            }
        }
        if (this.mSecondaryContentView != null) {
            if (this.mSecondaryContentHeightChanged) {
                if (finalTranslationY == 0 || finalTranslationY == this.mPrimaryContentHeight) {
                    this.mSecondaryContentView.setTranslationY((float) (-(this.mPrimaryContentHeight + this.mSecondaryContentHeight)));
                } else {
                    this.mSecondaryContentView.setTranslationY(0.0f);
                }
            } else if (translationY <= this.mPrimaryContentHeight) {
                this.mSecondaryContentView.setTranslationY((float) ((0 - this.mPrimaryContentHeight) - this.mSecondaryContentHeight));
            } else {
                this.mSecondaryContentView.setTranslationY((float) ((translationY - this.mPrimaryContentHeight) - this.mSecondaryContentHeight));
            }
        }
        if (this.mTriggerView != null) {
            if (translationY <= this.mPrimaryContentHeight + this.mSecondaryContentHeight) {
                this.mTriggerView.setTranslationY((float) (((0 - this.mPrimaryContentHeight) - this.mSecondaryContentHeight) - this.mTriggerViewHeight));
            } else {
                this.mTriggerView.setTranslationY(0.0f);
            }
        }
        notifyTriggerStateChanged();
    }

    private void dispatchTouchEventToChild(View child, MotionEvent ev, int action, boolean resetDowntime) {
        MotionEvent fakeEvent;
        if (resetDowntime) {
            fakeEvent = MotionEvent.obtain(ev.getEventTime(), ev.getEventTime(), action, ev.getX(), ev.getY(), ev.getMetaState());
        } else {
            fakeEvent = MotionEvent.obtain(ev);
            fakeEvent.setAction(action);
        }
        dispatchTouchEventToChild(child, fakeEvent);
        fakeEvent.recycle();
    }

    private void dispatchTouchEventToChild(View child, MotionEvent ev, int action) {
        dispatchTouchEventToChild(child, ev, action, false);
    }

    private void dispatchTouchEventToChild(View child, MotionEvent ev) {
        float offsetX = -(((float) child.getLeft()) + child.getTranslationX());
        float offsetY = -(((float) child.getTop()) + child.getTranslationY());
        ev.offsetLocation(offsetX, offsetY);
        child.dispatchTouchEvent(ev);
        ev.offsetLocation(-offsetX, -offsetY);
    }

    private void startScroll(int startY, int dy, float velocity) {
        int duration = computeScrollDuration(dy, velocity);
        if (duration > 0) {
            startScroll(startY, dy, duration);
        } else {
            startScroll(startY, dy);
        }
    }

    private void startScroll(int startY, int dy) {
        this.mScroller.startScroll(0, startY, 0, dy);
        this.mScrolling = true;
        invalidate();
    }

    private void startScroll(int startY, int dy, int duration) {
        this.mScroller.startScroll(0, startY, 0, dy, duration);
        this.mScrolling = true;
        invalidate();
    }

    private int computeScrollDuration(int distance, float velocity) {
        int ret;
        velocity = Math.abs(velocity);
        if (velocity == 0.0f) {
            ret = 0;
        } else {
            ret = Math.round(1000.0f * Math.abs(((float) distance) / velocity)) * 4;
        }
        if (ret > 800) {
            return 800;
        }
        return ret;
    }

    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        if (child == this.mPrimaryContentView) {
            return drawPrimaryContentView(canvas, child, drawingTime);
        }
        if (child == this.mSecondaryContentView) {
            return drawSecondaryContentView(canvas, child, drawingTime);
        }
        if (child == this.mTargetViewAncestor) {
            return drawTargetViewAncestor(canvas, child, drawingTime);
        }
        if (child == this.mTriggerView) {
            return drawTriggerView(canvas, child, drawingTime);
        }
        return super.drawChild(canvas, child, drawingTime);
    }

    private boolean drawPrimaryContentView(Canvas canvas, View child, long drawingTime) {
        int translationY = (int) this.mTargetView.getTranslationY();
        if (translationY <= 0) {
            return true;
        }
        int right = getWidth();
        int top = 0;
        int bottom = translationY;
        if (this.mDividerHeight > 0 && translationY < this.mPrimaryContentHeight) {
            this.mScrollDivider.setBounds(0, 0, right, this.mDividerHeight + 0);
            this.mScrollDivider.draw(canvas);
            top = 0 + this.mDividerHeight;
        }
        if (this.mContentViewBackground != null) {
            this.mContentViewBackground.setBounds(0, top, right, bottom);
            this.mContentViewBackground.draw(canvas);
        }
        canvas.save();
        canvas.clipRect(0, top, right, bottom);
        boolean result = super.drawChild(canvas, child, drawingTime);
        canvas.restore();
        return result;
    }

    private boolean drawSecondaryContentView(Canvas canvas, View child, long drawingTime) {
        int translationY = (int) this.mTargetView.getTranslationY();
        if (translationY <= this.mPrimaryContentHeight) {
            return true;
        }
        int right = getWidth();
        int top = this.mPrimaryContentHeight;
        int bottom = translationY;
        if (translationY > this.mPrimaryContentHeight && translationY < this.mPrimaryContentHeight + this.mSecondaryContentHeight && this.mDividerHeight > 0) {
            this.mScrollDivider.setBounds(0, top, right, this.mDividerHeight + top);
            this.mScrollDivider.draw(canvas);
            top += this.mDividerHeight;
        }
        if (this.mContentViewBackground != null) {
            this.mContentViewBackground.setBounds(0, top, right, bottom);
            this.mContentViewBackground.draw(canvas);
        }
        canvas.save();
        canvas.clipRect(0, top, right, bottom);
        boolean result = super.drawChild(canvas, child, drawingTime);
        canvas.restore();
        return result;
    }

    private boolean drawTargetViewAncestor(Canvas canvas, View child, long drawingTime) {
        boolean result = super.drawChild(canvas, child, drawingTime);
        int translationY = (int) this.mTargetView.getTranslationY();
        if (this.mAlwaysShowTargetViewDivider || ((translationY <= 0 && this.mCanScrollDown) || (this.mDrawDividerWhenContentEmpty && this.mPrimaryContentHeight == 0 && this.mSecondaryContentHeight == 0))) {
            int right = getWidth();
            if (this.mDividerHeight > 0) {
                this.mScrollDivider.setBounds(0, translationY, right, this.mDividerHeight + translationY);
                this.mScrollDivider.draw(canvas);
            }
        }
        return result;
    }

    private boolean drawTriggerView(Canvas canvas, View child, long drawingTime) {
        int translationY = (int) this.mTargetView.getTranslationY();
        if (translationY <= this.mPrimaryContentHeight + this.mSecondaryContentHeight) {
            return true;
        }
        int right = getWidth();
        int top = this.mPrimaryContentHeight + this.mSecondaryContentHeight;
        int bottom = translationY;
        if (this.mContentViewBackground != null) {
            this.mContentViewBackground.setBounds(0, top, right, bottom);
            this.mContentViewBackground.draw(canvas);
        }
        canvas.save();
        canvas.clipRect(0, top, right, bottom);
        boolean result = super.drawChild(canvas, child, drawingTime);
        canvas.restore();
        return result;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.mTargetView == null) {
            return;
        }
        if (this.mScroller.computeScrollOffset()) {
            updateTranslationAnimation(this.mScroller.getCurrY());
            postInvalidateOnAnimation();
            return;
        }
        if (this.mAnimEndListener != null) {
            this.mAnimEndListener.onDrawerAnimEnd(isDrawerOpen());
            this.mAnimEndListener = null;
        }
        if (this.mScrolling) {
            this.mScrolling = false;
            notifyDrawerStateChanged();
            if (this.mPendingTranslate) {
                adaptiveTranslate();
                this.mPendingTranslate = false;
                return;
            }
            this.mPrimaryContentHeightChanged = false;
            this.mSecondaryContentHeightChanged = false;
        }
    }

    public void setDragEnabled(boolean enabled) {
        this.mDragEnabled = enabled;
    }

    public void setDrawerListener(DrawerListener l) {
        this.mDrawerListener = l;
    }

    public void setTriggerListener(TriggerListener l) {
        this.mTriggerListener = l;
    }

    public void openDrawer() {
        openDrawer(false, null);
    }

    public void openDrawer(boolean withAnimation, DrawerAnimEndListener listener) {
        getViewTreeObserver().dispatchOnGlobalLayout();
        this.mAnimEndListener = listener;
        if (withAnimation) {
            int translationY = (int) this.mTargetView.getTranslationY();
            startScroll(translationY, (this.mPrimaryContentHeight + this.mSecondaryContentHeight) - translationY, 800);
            return;
        }
        this.mScroller.forceFinished(true);
        updateTranslationAnimation(this.mPrimaryContentHeight + this.mSecondaryContentHeight);
        notifyDrawerStateChanged();
        invalidate();
    }

    public void halfOpenDrawer() {
        halfOpenDrawer(false);
    }

    public void halfOpenDrawer(boolean withAnimation) {
        if (this.mPrimaryContentView != null && this.mSecondaryContentView != null) {
            getViewTreeObserver().dispatchOnGlobalLayout();
            if (withAnimation) {
                int translationY = (int) this.mTargetView.getTranslationY();
                startScroll(translationY, this.mPrimaryContentHeight - translationY, 800);
                return;
            }
            updateTranslationAnimation(this.mPrimaryContentHeight);
            notifyDrawerStateChanged();
            invalidate();
        }
    }

    public void closeDrawer(boolean withAnimation, DrawerAnimEndListener listener) {
        this.mAnimEndListener = listener;
        if (withAnimation) {
            int translationY = (int) this.mTargetView.getTranslationY();
            startScroll(translationY, -translationY, 500);
            return;
        }
        this.mScroller.forceFinished(true);
        updateTranslationAnimation(0);
        notifyDrawerStateChanged();
        invalidate();
    }

    public void halfCloseDrawer(boolean withAnimation, DrawerAnimEndListener listener) {
        if (this.mPrimaryContentView != null && this.mSecondaryContentView != null) {
            this.mAnimEndListener = listener;
            if (withAnimation) {
                int translationY = (int) this.mTargetView.getTranslationY();
                startScroll(translationY, this.mPrimaryContentHeight - translationY, 500);
                return;
            }
            this.mScroller.forceFinished(true);
            updateTranslationAnimation(this.mPrimaryContentHeight);
            notifyDrawerStateChanged();
            invalidate();
        }
    }

    public void setAutoClose(boolean autoClose) {
        this.mAutoClose = autoClose;
    }

    public boolean isDrawerOpen() {
        float transY = this.mTargetView.getTranslationY();
        return ((this.mPrimaryContentView == null && this.mSecondaryContentView == null) || transY == 0.0f || transY != ((float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight))) ? false : true;
    }

    public boolean isAnimating() {
        return !this.mScroller.isFinished();
    }

    public boolean isDrawerHalfOpen() {
        float transY = this.mTargetView.getTranslationY();
        return (this.mPrimaryContentView == null || this.mSecondaryContentView == null || transY == 0.0f || transY != ((float) this.mPrimaryContentHeight)) ? false : true;
    }

    private void notifyDrawerStateChanged() {
        if (this.mDrawerListener == null) {
            return;
        }
        if (this.mPrimaryContentView != null || this.mSecondaryContentView != null) {
            int translationY = (int) this.mTargetView.getTranslationY();
            if (this.mDetectMode == 2) {
                this.mDrawerListener.onDrawerSlide(this, ((float) Math.min(this.mPrimaryContentHeight + this.mSecondaryContentHeight, Math.max(translationY, 0))) / ((float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight)));
            } else if (translationY == 0) {
                this.mDrawerListener.onDrawerClose(this);
            } else if (translationY == this.mPrimaryContentHeight) {
                if (this.mSecondaryContentHeight == 0) {
                    this.mDrawerListener.onDrawerOpen(this);
                } else {
                    this.mDrawerListener.onDrawerHalfOpen(this);
                }
            } else if (translationY == this.mPrimaryContentHeight + this.mSecondaryContentHeight) {
                this.mDrawerListener.onDrawerOpen(this);
            } else {
                this.mDrawerListener.onDrawerSlide(this, ((float) translationY) / ((float) (this.mPrimaryContentHeight + this.mSecondaryContentHeight)));
            }
        }
    }

    private void notifyTriggerStateChanged() {
        if (this.mTriggerListener != null && this.mTriggerViewHeight > 0 && this.mDetectMode == 2) {
            int maxTranslationY = this.mTriggerViewHeight;
            int translationY = (((int) this.mTargetView.getTranslationY()) - this.mPrimaryContentHeight) - this.mSecondaryContentHeight;
            this.mTriggerListener.onTriggerSlide(this, ((float) translationY) / ((float) maxTranslationY));
            if (translationY >= maxTranslationY) {
                if (!this.mTriggerOn) {
                    this.mTriggerOn = true;
                    this.mTriggerListener.onTriggerOpen(this);
                }
            } else if (this.mTriggerOn) {
                this.mTriggerOn = false;
            }
        }
    }
}
