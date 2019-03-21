package com.miui.gallery.widget.recyclerview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.State;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;

class FastScroller extends ItemDecoration implements OnItemTouchListener {
    private static final int[] EMPTY_STATE_SET = new int[0];
    private static final int[] PRESSED_STATE_SET = new int[]{16842919};
    private int mAnimTranslateX = 0;
    private int mAnimTranslateY = 0;
    private int mAnimationState = 0;
    private int mDefaultThumbHeight;
    private int mDefaultThumbWidth;
    private int mDragState = 0;
    private final Runnable mHideRunnable = new Runnable() {
        public void run() {
            FastScroller.this.hide(300);
        }
    };
    private int mHorizontalDragInitX;
    float mHorizontalDragX;
    private final int[] mHorizontalRange = new int[2];
    private StateListDrawable mHorizontalThumbDrawable;
    private int mHorizontalThumbHeight;
    private int mHorizontalThumbWidth;
    int mHorizontalThumbX;
    private Drawable mHorizontalTrackDrawable;
    private int mHorizontalTrackHeight;
    private int mMargin;
    private boolean mNeedDispatchFakeEvent = false;
    private boolean mNeedHorizontalScrollbar = false;
    private boolean mNeedVerticalScrollbar = false;
    private final OnScrollListener mOnScrollListener = new OnScrollListener() {
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            if (!FastScroller.this.isDragging()) {
                FastScroller.this.updateThumbPositionByScrolling(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
            }
        }
    };
    private final GalleryRecyclerView mRecyclerView;
    private int mRecyclerViewHeight = 0;
    private int mRecyclerViewWidth = 0;
    private int mScrollSlop;
    private int mScrollbarMinimumRange;
    private final ValueAnimator mShowHideAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
    private int mState = 0;
    private int mTouchOffset;
    private int mVerticalDragInitY;
    float mVerticalDragY;
    private final int[] mVerticalRange = new int[2];
    private StateListDrawable mVerticalThumbDrawable;
    private int mVerticalThumbHeight;
    private int mVerticalThumbWidth;
    int mVerticalThumbY;
    private Drawable mVerticalTrackDrawable;
    private int mVerticalTrackWidth;

    private class AnimatorListener extends AnimatorListenerAdapter {
        private boolean mCanceled;

        private AnimatorListener() {
            this.mCanceled = false;
        }

        /* synthetic */ AnimatorListener(FastScroller x0, AnonymousClass1 x1) {
            this();
        }

        public void onAnimationEnd(Animator animation) {
            if (this.mCanceled) {
                this.mCanceled = false;
            } else if (((Float) FastScroller.this.mShowHideAnimator.getAnimatedValue()).floatValue() == 0.0f) {
                FastScroller.this.mAnimationState = 0;
                FastScroller.this.setState(0);
            } else {
                FastScroller.this.mAnimationState = 2;
                FastScroller.this.requestRedraw();
            }
        }

        public void onAnimationCancel(Animator animation) {
            this.mCanceled = true;
        }
    }

    private class AnimatorUpdater implements AnimatorUpdateListener {
        private AnimatorUpdater() {
        }

        /* synthetic */ AnimatorUpdater(FastScroller x0, AnonymousClass1 x1) {
            this();
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int alpha = (int) (255.0f * animatedValue);
            if (FastScroller.this.mNeedVerticalScrollbar) {
                if (FastScroller.this.mVerticalThumbDrawable != null) {
                    FastScroller.this.mVerticalThumbDrawable.setAlpha(alpha);
                }
                if (FastScroller.this.mVerticalTrackDrawable != null) {
                    FastScroller.this.mVerticalTrackDrawable.setAlpha(alpha);
                }
                FastScroller.this.mAnimTranslateX = (int) ((1.0f - animatedValue) * ((float) FastScroller.this.mVerticalThumbWidth));
                if (FastScroller.this.isLayoutRTL()) {
                    FastScroller.this.mAnimTranslateX = -FastScroller.this.mAnimTranslateX;
                }
            }
            if (FastScroller.this.mNeedHorizontalScrollbar) {
                if (FastScroller.this.mHorizontalThumbDrawable != null) {
                    FastScroller.this.mHorizontalThumbDrawable.setAlpha(alpha);
                }
                if (FastScroller.this.mHorizontalTrackDrawable != null) {
                    FastScroller.this.mHorizontalTrackDrawable.setAlpha(alpha);
                }
                FastScroller.this.mAnimTranslateY = (int) ((1.0f - animatedValue) * ((float) FastScroller.this.mHorizontalThumbHeight));
            }
            FastScroller.this.requestRedraw();
        }
    }

    FastScroller(GalleryRecyclerView view) {
        this.mRecyclerView = view;
        this.mShowHideAnimator.addListener(new AnimatorListener(this, null));
        this.mShowHideAnimator.addUpdateListener(new AnimatorUpdater(this, null));
        this.mScrollSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    public void setStyle(int resId) {
        TypedArray ta = this.mRecyclerView.getContext().obtainStyledAttributes(null, R.styleable.CustomFastScroll, R.attr.customFastScrollStyle, resId);
        int N = ta.getIndexCount();
        for (int i = 0; i < N; i++) {
            int index = ta.getIndex(i);
            switch (index) {
                case 0:
                    this.mVerticalThumbDrawable = (StateListDrawable) ta.getDrawable(index);
                    break;
                case 1:
                    this.mVerticalTrackDrawable = ta.getDrawable(index);
                    break;
                case 2:
                    this.mHorizontalThumbDrawable = (StateListDrawable) ta.getDrawable(index);
                    break;
                case 3:
                    this.mHorizontalTrackDrawable = ta.getDrawable(index);
                    break;
                case 4:
                    this.mDefaultThumbWidth = ta.getDimensionPixelSize(index, 0);
                    break;
                case 5:
                    this.mDefaultThumbHeight = ta.getDimensionPixelSize(index, 0);
                    break;
                case 6:
                    this.mScrollbarMinimumRange = ta.getDimensionPixelSize(index, 0);
                    break;
                case 7:
                    this.mMargin = ta.getDimensionPixelSize(index, 0);
                    break;
                default:
                    break;
            }
        }
        ta.recycle();
        updateAppearance();
    }

    private void updateAppearance() {
        if (this.mVerticalThumbDrawable != null) {
            this.mVerticalThumbWidth = Math.max(this.mDefaultThumbWidth, this.mVerticalThumbDrawable.getIntrinsicWidth());
            this.mVerticalThumbHeight = Math.max(this.mDefaultThumbHeight, this.mVerticalThumbDrawable.getIntrinsicHeight());
            this.mVerticalThumbDrawable.setAlpha(255);
        }
        if (this.mVerticalTrackDrawable != null) {
            this.mVerticalTrackWidth = Math.max(this.mDefaultThumbWidth, this.mVerticalTrackDrawable.getIntrinsicWidth());
            this.mVerticalTrackDrawable.setAlpha(255);
        }
        if (this.mHorizontalThumbDrawable != null) {
            this.mHorizontalThumbWidth = Math.max(this.mDefaultThumbWidth, this.mHorizontalThumbDrawable.getIntrinsicWidth());
            this.mHorizontalThumbHeight = Math.max(this.mDefaultThumbHeight, this.mHorizontalThumbDrawable.getIntrinsicWidth());
            this.mHorizontalThumbDrawable.setAlpha(255);
        }
        if (this.mHorizontalTrackDrawable != null) {
            this.mHorizontalTrackHeight = Math.max(this.mDefaultThumbHeight, this.mHorizontalTrackDrawable.getIntrinsicWidth());
            this.mHorizontalTrackDrawable.setAlpha(255);
        }
        updateThumbPositionByScrolling(this.mRecyclerView.computeHorizontalScrollOffset(), this.mRecyclerView.computeVerticalScrollOffset());
        requestRedraw();
    }

    public void attach() {
        setupCallbacks();
        updateThumbPositionByScrolling(this.mRecyclerView.computeHorizontalScrollOffset(), this.mRecyclerView.computeVerticalScrollOffset());
        requestRedraw();
    }

    public void detach() {
        destroyCallbacks();
    }

    private void setupCallbacks() {
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this);
        this.mRecyclerView.addOnScrollListener(this.mOnScrollListener);
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this);
        this.mRecyclerView.removeOnScrollListener(this.mOnScrollListener);
        cancelHide();
    }

    private void requestRedraw() {
        this.mRecyclerView.invalidate();
    }

    private void setState(int state) {
        if (state == 2 && this.mState != 2) {
            if (this.mDragState == 2 && this.mVerticalThumbDrawable != null) {
                this.mVerticalThumbDrawable.setState(PRESSED_STATE_SET);
            }
            if (this.mDragState == 1 && this.mHorizontalThumbDrawable != null) {
                this.mHorizontalThumbDrawable.setState(PRESSED_STATE_SET);
            }
            cancelHide();
        }
        if (state == 0) {
            requestRedraw();
        } else {
            show();
        }
        if (this.mState == 2 && state != 2) {
            if (this.mDragState == 2 && this.mVerticalThumbDrawable != null) {
                this.mVerticalThumbDrawable.setState(EMPTY_STATE_SET);
            }
            if (this.mDragState == 1 && this.mHorizontalThumbDrawable != null) {
                this.mHorizontalThumbDrawable.setState(EMPTY_STATE_SET);
            }
            resetHideDelay(1200);
        } else if (state == 1) {
            resetHideDelay(1500);
        }
        this.mState = state;
    }

    private boolean isLayoutRTL() {
        return ViewCompat.getLayoutDirection(this.mRecyclerView) == 1;
    }

    public boolean isDragging() {
        return this.mState == 2;
    }

    public void show() {
        switch (this.mAnimationState) {
            case 0:
                break;
            case 3:
                this.mShowHideAnimator.cancel();
                break;
            default:
                return;
        }
        this.mAnimationState = 1;
        this.mShowHideAnimator.setFloatValues(new float[]{((Float) this.mShowHideAnimator.getAnimatedValue()).floatValue(), 1.0f});
        this.mShowHideAnimator.setDuration(150);
        this.mShowHideAnimator.setStartDelay(0);
        this.mShowHideAnimator.start();
    }

    void hide(int duration) {
        switch (this.mAnimationState) {
            case 1:
                this.mShowHideAnimator.cancel();
                break;
            case 2:
                break;
            default:
                return;
        }
        this.mAnimationState = 3;
        this.mShowHideAnimator.setFloatValues(new float[]{((Float) this.mShowHideAnimator.getAnimatedValue()).floatValue(), 0.0f});
        this.mShowHideAnimator.setDuration((long) duration);
        this.mShowHideAnimator.start();
    }

    private void cancelHide() {
        this.mRecyclerView.removeCallbacks(this.mHideRunnable);
    }

    private void resetHideDelay(int delay) {
        cancelHide();
        this.mRecyclerView.postDelayed(this.mHideRunnable, (long) delay);
    }

    public void onDrawOver(Canvas canvas, RecyclerView parent, State state) {
        if (this.mRecyclerViewWidth != this.mRecyclerView.getWidth() || this.mRecyclerViewHeight != this.mRecyclerView.getHeight()) {
            this.mRecyclerViewWidth = this.mRecyclerView.getWidth();
            this.mRecyclerViewHeight = this.mRecyclerView.getHeight();
            setState(0);
        } else if (this.mAnimationState != 0) {
            if (this.mNeedVerticalScrollbar) {
                drawVerticalScrollbar(canvas);
            }
            if (this.mNeedHorizontalScrollbar) {
                drawHorizontalScrollbar(canvas);
            }
        }
    }

    private void ensureLayoutDirection(Drawable drawable) {
        if (drawable.getLayoutDirection() != this.mRecyclerView.getLayoutDirection()) {
            drawable.setLayoutDirection(this.mRecyclerView.getLayoutDirection());
        }
    }

    private void drawVerticalScrollbar(Canvas canvas) {
        if (this.mVerticalThumbDrawable != null) {
            int left = this.mRecyclerViewWidth - this.mVerticalThumbWidth;
            int top = this.mVerticalThumbY;
            this.mVerticalThumbDrawable.setBounds(0, 0, this.mVerticalThumbWidth, this.mVerticalThumbHeight);
            if (this.mVerticalTrackDrawable != null) {
                this.mVerticalTrackDrawable.setBounds(0, 0, this.mVerticalTrackWidth, this.mRecyclerViewHeight);
            }
            if (this.mVerticalTrackDrawable != null) {
                ensureLayoutDirection(this.mVerticalTrackDrawable);
            }
            ensureLayoutDirection(this.mVerticalThumbDrawable);
            int translate;
            if (isLayoutRTL()) {
                if (this.mVerticalTrackDrawable != null) {
                    this.mVerticalTrackDrawable.draw(canvas);
                }
                translate = this.mAnimTranslateX;
                canvas.translate((float) translate, (float) top);
                this.mVerticalThumbDrawable.draw(canvas);
                canvas.translate((float) (-translate), (float) (-top));
                return;
            }
            translate = left + this.mAnimTranslateX;
            canvas.translate((float) translate, 0.0f);
            if (this.mVerticalTrackDrawable != null) {
                this.mVerticalTrackDrawable.draw(canvas);
            }
            canvas.translate(0.0f, (float) top);
            this.mVerticalThumbDrawable.draw(canvas);
            canvas.translate((float) (-translate), (float) (-top));
        }
    }

    private void drawHorizontalScrollbar(Canvas canvas) {
        if (this.mHorizontalThumbDrawable != null) {
            int top = (this.mRecyclerViewHeight - this.mHorizontalThumbHeight) + this.mAnimTranslateY;
            int left = this.mHorizontalThumbX;
            this.mHorizontalThumbDrawable.setBounds(0, 0, this.mHorizontalThumbWidth, this.mHorizontalThumbHeight);
            if (this.mHorizontalTrackDrawable != null) {
                this.mHorizontalTrackDrawable.setBounds(0, 0, this.mRecyclerViewWidth, this.mHorizontalTrackHeight);
            }
            canvas.translate(0.0f, (float) top);
            if (this.mHorizontalTrackDrawable != null) {
                this.mHorizontalTrackDrawable.draw(canvas);
            }
            canvas.translate((float) left, 0.0f);
            this.mHorizontalThumbDrawable.draw(canvas);
            canvas.translate((float) (-left), (float) (-top));
        }
    }

    void updateThumbPositionByScrolling(int offsetX, int offsetY) {
        boolean z;
        int verticalContentLength = this.mRecyclerView.computeVerticalScrollRange();
        int verticalVisibleLength = this.mRecyclerViewHeight;
        if (verticalContentLength - verticalVisibleLength <= 0 || this.mRecyclerViewHeight < this.mScrollbarMinimumRange) {
            z = false;
        } else {
            z = true;
        }
        this.mNeedVerticalScrollbar = z;
        int horizontalContentLength = this.mRecyclerView.computeHorizontalScrollRange();
        int horizontalVisibleLength = this.mRecyclerViewWidth;
        if (horizontalContentLength - horizontalVisibleLength <= 0 || this.mRecyclerViewWidth < this.mScrollbarMinimumRange) {
            z = false;
        } else {
            z = true;
        }
        this.mNeedHorizontalScrollbar = z;
        if (this.mNeedVerticalScrollbar || this.mNeedHorizontalScrollbar) {
            float scrollRatio;
            if (this.mNeedVerticalScrollbar) {
                scrollRatio = (((float) offsetY) * 1.0f) / ((float) (verticalContentLength - verticalVisibleLength));
                int[] verticalRange = getVerticalRange();
                this.mVerticalThumbY = (int) (((float) verticalRange[0]) + (((float) (verticalRange[1] - verticalRange[0])) * scrollRatio));
            }
            if (this.mNeedHorizontalScrollbar) {
                scrollRatio = (((float) offsetX) * 1.0f) / ((float) (horizontalContentLength - horizontalVisibleLength));
                int[] horizontalRange = getHorizontalRange();
                this.mHorizontalThumbX = (int) (((float) horizontalRange[0]) + (((float) (horizontalRange[1] - horizontalRange[0])) * scrollRatio));
            }
            if (this.mState == 0 || this.mState == 1) {
                setState(1);
            }
        } else if (this.mState != 0) {
            setState(0);
        }
    }

    void updateThumbPositionByDragging(int dragX, int dragY) {
        if (this.mDragState == 1) {
            this.mNeedHorizontalScrollbar = true;
            this.mHorizontalThumbX = dragX;
        }
        if (this.mDragState == 2) {
            this.mNeedVerticalScrollbar = true;
            this.mVerticalThumbY = dragY;
        }
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent ev) {
        boolean handled = false;
        int action = ev.getActionMasked();
        if (action == 0 || action == 1 || action == 3) {
            this.mHorizontalDragInitX = -1;
            this.mVerticalDragInitY = -1;
        }
        if (this.mState == 1) {
            if (action == 0) {
                boolean insideVerticalThumb = isPointInsideVerticalThumb(ev.getX(), ev.getY());
                if (isPointInsideHorizontalThumb(ev.getX(), ev.getY())) {
                    this.mHorizontalDragInitX = (int) ev.getX();
                    return false;
                } else if (!insideVerticalThumb) {
                    return false;
                } else {
                    this.mVerticalDragInitY = (int) ev.getY();
                    return false;
                }
            } else if (action != 2) {
                return false;
            } else {
                if (this.mHorizontalDragInitX > 0 && Math.abs(ev.getX() - ((float) this.mHorizontalDragInitX)) > ((float) this.mScrollSlop)) {
                    this.mDragState = 1;
                    this.mHorizontalDragX = (float) ((int) ev.getX());
                    this.mTouchOffset = (int) (this.mHorizontalDragX - ((float) this.mHorizontalThumbX));
                    handled = true;
                } else if (this.mVerticalDragInitY > 0 && Math.abs(ev.getY() - ((float) this.mVerticalDragInitY)) > ((float) this.mScrollSlop)) {
                    this.mDragState = 2;
                    this.mVerticalDragY = (float) ((int) ev.getY());
                    this.mTouchOffset = (int) (this.mVerticalDragY - ((float) this.mVerticalThumbY));
                    handled = true;
                }
                if (!handled) {
                    return handled;
                }
                this.mNeedDispatchFakeEvent = true;
                setState(2);
                return handled;
            }
        } else if (this.mState == 2) {
            return true;
        } else {
            return false;
        }
    }

    private void dispatchFakeEventExceptSelf(MotionEvent fakeEvent) {
        int size = this.mRecyclerView.getItemTouchListenerCount();
        if (size > 1) {
            Log.d("FastScroller", "dispatch fake event %s", (Object) fakeEvent);
            for (int i = 0; i < size; i++) {
                FastScroller listener = this.mRecyclerView.getItemTouchListenerAt(i);
                if (listener != this) {
                    listener.onInterceptTouchEvent(this.mRecyclerView, fakeEvent);
                }
            }
        }
    }

    public void onTouchEvent(RecyclerView recyclerView, MotionEvent ev) {
        if (this.mState != 0) {
            int action = ev.getActionMasked();
            if (action == 0 || action == 1 || action == 3) {
                this.mHorizontalDragInitX = -1;
                this.mVerticalDragInitY = -1;
            }
            if (action == 0) {
                boolean insideVerticalThumb = isPointInsideVerticalThumb(ev.getX(), ev.getY());
                if (isPointInsideHorizontalThumb(ev.getX(), ev.getY())) {
                    this.mHorizontalDragInitX = (int) ev.getX();
                } else if (insideVerticalThumb) {
                    this.mVerticalDragInitY = (int) ev.getY();
                }
            } else if (action == 2) {
                if (this.mState != 2) {
                    if (this.mHorizontalDragInitX > 0 && Math.abs(ev.getX() - ((float) this.mHorizontalDragInitX)) > ((float) this.mScrollSlop)) {
                        this.mDragState = 1;
                        this.mHorizontalDragX = (float) ((int) ev.getX());
                        this.mTouchOffset = (int) (this.mHorizontalDragX - ((float) this.mHorizontalThumbX));
                    } else if (this.mVerticalDragInitY > 0 && Math.abs(ev.getY() - ((float) this.mVerticalDragInitY)) > ((float) this.mScrollSlop)) {
                        this.mDragState = 2;
                        this.mVerticalDragY = (float) ((int) ev.getY());
                        this.mTouchOffset = (int) (this.mVerticalDragY - ((float) this.mVerticalThumbY));
                    }
                    setState(2);
                } else {
                    show();
                    if (this.mDragState == 1) {
                        horizontalScrollTo(ev.getX());
                    }
                    if (this.mDragState == 2) {
                        verticalScrollTo(ev.getY());
                    }
                }
            } else if (ev.getAction() == 1 && this.mState == 2) {
                this.mVerticalDragY = 0.0f;
                this.mHorizontalDragX = 0.0f;
                setState(1);
                this.mDragState = 0;
            }
        }
        if (this.mNeedDispatchFakeEvent) {
            this.mNeedDispatchFakeEvent = false;
            MotionEvent fakeEvent = MotionEvent.obtain(ev);
            fakeEvent.setAction(3);
            dispatchFakeEventExceptSelf(fakeEvent);
        }
    }

    public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    private void verticalScrollTo(float y) {
        int[] scrollbarRange = getVerticalRange();
        int scrollbarLength = scrollbarRange[1] - scrollbarRange[0];
        if (scrollbarLength != 0) {
            float percentage = (y - ((float) this.mTouchOffset)) / ((float) scrollbarLength);
            int itemCount = this.mRecyclerView.getAdapter().getItemCount();
            int pos = Math.max(0, Math.min((int) (((float) itemCount) * percentage), itemCount - 1));
            this.mRecyclerView.invalidateItemDecorations();
            this.mRecyclerView.scrollToPosition(pos);
            this.mVerticalDragY = y;
            updateThumbPositionByDragging(-1, (int) Math.min((float) scrollbarRange[1], Math.max(y, (float) scrollbarRange[0])));
        }
    }

    private void horizontalScrollTo(float x) {
        float f = x;
        int scrollingBy = scrollTo(this.mHorizontalDragX, f, getHorizontalRange(), this.mRecyclerView.computeHorizontalScrollRange(), this.mRecyclerView.computeHorizontalScrollOffset(), this.mRecyclerViewWidth);
        if (scrollingBy != 0) {
            this.mRecyclerView.scrollBy(scrollingBy, 0);
        }
        this.mHorizontalDragX = x;
    }

    private int scrollTo(float oldDragPos, float newDragPos, int[] scrollbarRange, int scrollRange, int scrollOffset, int viewLength) {
        int scrollbarLength = scrollbarRange[1] - scrollbarRange[0];
        if (scrollbarLength == 0) {
            return 0;
        }
        int totalPossibleOffset = scrollRange - viewLength;
        int scrollingBy = (int) (((float) totalPossibleOffset) * ((newDragPos - oldDragPos) / ((float) scrollbarLength)));
        int absoluteOffset = scrollOffset + scrollingBy;
        if (absoluteOffset >= totalPossibleOffset || absoluteOffset < 0) {
            return 0;
        }
        return scrollingBy;
    }

    boolean isPointInsideVerticalThumb(float x, float y) {
        if (isLayoutRTL() ? x <= ((float) (this.mVerticalThumbWidth / 2)) : x >= ((float) (this.mRecyclerViewWidth - this.mVerticalThumbWidth))) {
            if (y >= ((float) this.mVerticalThumbY) && y <= ((float) (this.mVerticalThumbY + this.mVerticalThumbHeight))) {
                return true;
            }
        }
        return false;
    }

    boolean isPointInsideHorizontalThumb(float x, float y) {
        return y >= ((float) (this.mRecyclerViewHeight - this.mHorizontalThumbHeight)) && x >= ((float) this.mHorizontalThumbX) && x <= ((float) (this.mHorizontalThumbX + this.mHorizontalThumbWidth));
    }

    private int[] getVerticalRange() {
        this.mVerticalRange[0] = this.mMargin;
        this.mVerticalRange[1] = (this.mRecyclerViewHeight - this.mMargin) - this.mVerticalThumbHeight;
        return this.mVerticalRange;
    }

    private int[] getHorizontalRange() {
        this.mHorizontalRange[0] = this.mMargin;
        this.mHorizontalRange[1] = (this.mRecyclerViewWidth - this.mMargin) - this.mHorizontalThumbWidth;
        return this.mHorizontalRange;
    }
}
