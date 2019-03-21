package com.miui.gallery.util;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

public class ScalableTouchDelegate extends TouchDelegate {
    private Rect mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private View mHostView;
    private float mScale;
    private int mSlop;
    private Rect mSlopBounds;

    public ScalableTouchDelegate(float scale, View hostView, View delegateView) {
        super(null, delegateView);
        this.mScale = scale < 1.0f ? 0.0f : scale - 1.0f;
        this.mBounds = new Rect();
        this.mSlop = ViewConfiguration.get(delegateView.getContext()).getScaledTouchSlop();
        this.mSlopBounds = new Rect(this.mBounds);
        this.mDelegateView = delegateView;
        this.mHostView = hostView;
    }

    private void setBounds() {
        if (this.mBounds.isEmpty()) {
            Rect delegateRect = new Rect();
            Rect hostRect = new Rect();
            this.mDelegateView.getGlobalVisibleRect(delegateRect);
            this.mHostView.getGlobalVisibleRect(hostRect);
            if (hostRect.contains(delegateRect)) {
                this.mBounds.set(delegateRect.left - hostRect.left, delegateRect.top - hostRect.top, delegateRect.right - hostRect.left, delegateRect.bottom - hostRect.top);
                this.mBounds.inset(-((int) (((float) delegateRect.width()) * this.mScale)), -((int) (((float) delegateRect.height()) * this.mScale)));
                this.mSlopBounds.set(this.mBounds);
                this.mSlopBounds.inset(-this.mSlop, -this.mSlop);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        boolean sendToDelegate = false;
        boolean hit = true;
        switch (event.getAction()) {
            case 0:
                setBounds();
                if (this.mBounds.contains(x, y)) {
                    this.mDelegateTargeted = true;
                    sendToDelegate = true;
                    break;
                }
                break;
            case 1:
            case 2:
                sendToDelegate = this.mDelegateTargeted;
                if (sendToDelegate && !this.mSlopBounds.contains(x, y)) {
                    hit = false;
                    break;
                }
            case 3:
                sendToDelegate = this.mDelegateTargeted;
                this.mDelegateTargeted = false;
                break;
        }
        if (!sendToDelegate) {
            return false;
        }
        View delegateView = this.mDelegateView;
        if (hit) {
            event.setLocation((float) (delegateView.getWidth() / 2), (float) (delegateView.getHeight() / 2));
        } else {
            int slop = this.mSlop;
            event.setLocation((float) (-(slop * 2)), (float) (-(slop * 2)));
        }
        return delegateView.dispatchTouchEvent(event);
    }
}
