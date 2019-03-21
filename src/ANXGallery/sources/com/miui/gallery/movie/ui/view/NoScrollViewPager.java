package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class NoScrollViewPager extends ViewPager {
    private boolean mNoScroll = true;

    public NoScrollViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public boolean onTouchEvent(MotionEvent arg0) {
        if (this.mNoScroll) {
            return false;
        }
        return super.onTouchEvent(arg0);
    }

    public boolean onInterceptTouchEvent(MotionEvent arg0) {
        if (this.mNoScroll) {
            return false;
        }
        return super.onInterceptTouchEvent(arg0);
    }

    public void setNoScroll(boolean noScroll) {
        this.mNoScroll = noScroll;
    }
}
