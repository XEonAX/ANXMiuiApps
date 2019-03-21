package com.miui.gallery.search.widget.bannerView;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ViewAnimator;
import com.miui.gallery.R;

public class BannerView extends ViewAnimator implements OnDataChangedListener, ILoopController {
    private BaseBannerAdapter mAdapter;
    private int mDefaultItemDisplayDuration;
    private boolean mIsStarted;
    private int mPosition;
    private AnimRunnable mRunnable;
    private boolean mShouldStartLoopingWhenAttached;

    private class AnimRunnable implements Runnable {
        private AnimRunnable() {
        }

        public void run() {
            BannerView.this.performNext();
            BannerView.this.mPosition = BannerView.this.getCircledNextPosition();
            BannerView.this.postDelayed(BannerView.this.mPosition);
        }
    }

    public BannerView(Context context) {
        this(context, null);
    }

    public BannerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDefaultItemDisplayDuration = 3000;
        this.mPosition = -1;
        this.mShouldStartLoopingWhenAttached = false;
        this.mRunnable = new AnimRunnable();
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        setAnimateFirstView(false);
        TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.BannerView);
        this.mDefaultItemDisplayDuration = array.getInteger(0, this.mDefaultItemDisplayDuration);
        array.recycle();
    }

    public void setAdapter(BaseBannerAdapter adapter) {
        if (adapter == null) {
            throw new RuntimeException("adapter must not be null");
        } else if (this.mAdapter != null) {
            throw new RuntimeException("you have already set an Adapter");
        } else {
            this.mAdapter = adapter;
            this.mAdapter.setOnDataChangedListener(this);
            setupAdapter();
        }
    }

    private void setupAdapter() {
        int i;
        for (i = 0; i < getChildCount(); i++) {
            getChildAt(i).clearAnimation();
        }
        removeAllViews();
        this.mPosition = 0;
        if (this.mAdapter.getCount() > 0) {
            for (i = 0; i < 2; i++) {
                View view = this.mAdapter.getView(this);
                view.setTag(Integer.valueOf(i));
                addView(view, i);
            }
            this.mAdapter.bindView(getCurrentView(), this.mPosition);
        }
    }

    public void startLoop() {
        if (this.mAdapter == null) {
            throw new RuntimeException("You must call setContentAdapter() before start");
        } else if (!this.mIsStarted) {
            this.mIsStarted = true;
            if (this.mAdapter.getCount() > 1) {
                postDelayed(this.mPosition);
            }
        }
    }

    public void stopLoop() {
        removeCallbacks(this.mRunnable);
        this.mIsStarted = false;
    }

    public void performNext() {
        View view = getCurrentView();
        if (view != null) {
            this.mAdapter.bindView(getChildAt((((Integer) view.getTag()).intValue() + 1) % getChildCount()), getCircledNextPosition());
            showNext();
        }
    }

    public boolean isLooping() {
        return this.mIsStarted;
    }

    public int getCurrentPosition() {
        return this.mPosition;
    }

    private void postDelayed(int position) {
        BaseBannerItemData itemData = this.mAdapter.getItem(position);
        postDelayed(this.mRunnable, (long) (itemData.getDisplayDuration() != -1 ? itemData.getDisplayDuration() : this.mDefaultItemDisplayDuration));
    }

    public void onChanged() {
        boolean shouldContinueLooping = false;
        if (isLooping()) {
            shouldContinueLooping = true;
            stopLoop();
        }
        setupAdapter();
        if (shouldContinueLooping) {
            startLoop();
        }
    }

    private int getCircledNextPosition() {
        return (this.mPosition + 1) % this.mAdapter.getCount();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (isLooping()) {
            stopLoop();
            this.mShouldStartLoopingWhenAttached = true;
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isLooping() && this.mShouldStartLoopingWhenAttached) {
            startLoop();
        }
    }
}
