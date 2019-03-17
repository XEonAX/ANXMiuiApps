package com.xiaomi.scanner.module.study.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class CustomViewBehind extends ViewGroup {
    private boolean mChildrenEnabled;
    private View mContent;

    public CustomViewBehind(Context context) {
        this(context, null);
    }

    public CustomViewBehind(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setContent(View v) {
        if (this.mContent != null) {
            removeView(this.mContent);
        }
        this.mContent = v;
        addView(this.mContent);
    }

    public void setChildrenEnabled(boolean enabled) {
        this.mChildrenEnabled = enabled;
    }

    public void scrollTo(int x, int y) {
        super.scrollTo(x, y);
    }

    public boolean onInterceptTouchEvent(MotionEvent e) {
        return !this.mChildrenEnabled;
    }

    public boolean onTouchEvent(MotionEvent e) {
        return !this.mChildrenEnabled;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int width = r - l;
        int height = b - t;
        if (this.mContent != null) {
            this.mContent.layout(0, 0, width, height);
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = getDefaultSize(0, widthMeasureSpec);
        int height = getDefaultSize(0, heightMeasureSpec);
        setMeasuredDimension(width, height);
        int contentWidth = getChildMeasureSpec(widthMeasureSpec, 0, width);
        int contentHeight = getChildMeasureSpec(heightMeasureSpec, 0, height);
        if (this.mContent != null) {
            this.mContent.measure(contentWidth, contentHeight);
        }
    }
}
