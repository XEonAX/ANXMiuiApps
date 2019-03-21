package com.miui.gallery.widget;

import android.view.View;
import android.view.View.OnClickListener;

public class MultiClickListener implements OnClickListener {
    private int mClickCount;
    private long mDuration;
    private long mLastClickTime;
    private int mMaxClickCount;
    private OnClickListener mOnClickListener;

    public MultiClickListener(int clickCount, OnClickListener onClickListener) {
        this(500, clickCount, onClickListener);
    }

    public MultiClickListener(long duration, int clickCount, OnClickListener onClickListener) {
        this.mDuration = duration;
        this.mMaxClickCount = clickCount;
        this.mOnClickListener = onClickListener;
    }

    public void onClick(View v) {
        if (this.mMaxClickCount == 1) {
            callClick(v);
            return;
        }
        long now = System.currentTimeMillis();
        if (now - this.mLastClickTime > this.mDuration) {
            this.mClickCount = 0;
        }
        this.mLastClickTime = now;
        this.mClickCount++;
        if (this.mClickCount >= this.mMaxClickCount) {
            this.mLastClickTime = 0;
            this.mClickCount = 0;
            callClick(v);
        }
    }

    private void callClick(View v) {
        if (this.mOnClickListener != null) {
            this.mOnClickListener.onClick(v);
        }
    }
}
