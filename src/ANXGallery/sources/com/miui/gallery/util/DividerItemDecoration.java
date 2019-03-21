package com.miui.gallery.util;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public class DividerItemDecoration extends ItemDecoration {
    private static final int[] ATTRS = new int[]{16843284};
    private int mBottomKeepCount = 0;
    private Drawable mDivider;
    private int mOrientation;
    private int mTopKeepCount = 0;

    public DividerItemDecoration(Drawable drawable, int topKeepCount, int bottomKeepCount) {
        this.mDivider = drawable;
        setOrientation(1);
        this.mTopKeepCount = topKeepCount;
        this.mBottomKeepCount = bottomKeepCount;
    }

    public void setOrientation(int orientation) {
        if (orientation == 0 || orientation == 1) {
            this.mOrientation = orientation;
            return;
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public void onDraw(Canvas c, RecyclerView parent) {
        if (this.mOrientation == 1) {
            drawVertical(c, parent);
        } else {
            drawHorizontal(c, parent);
        }
    }

    private int getAdapterCount(RecyclerView parent) {
        Adapter adapter = parent.getAdapter();
        return adapter == null ? 0 : adapter.getItemCount();
    }

    public void drawVertical(Canvas c, RecyclerView parent) {
        int left = parent.getPaddingLeft();
        int right = parent.getWidth() - parent.getPaddingRight();
        int adapterCount = getAdapterCount(parent);
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            LayoutParams params = (LayoutParams) child.getLayoutParams();
            int position = params.getViewLayoutPosition();
            if (position >= this.mTopKeepCount && position < adapterCount - this.mBottomKeepCount) {
                int top = (child.getBottom() + params.bottomMargin) + Math.round(ViewCompat.getTranslationY(child));
                this.mDivider.setBounds(left, top, right, top + this.mDivider.getIntrinsicHeight());
                this.mDivider.draw(c);
            }
        }
    }

    public void drawHorizontal(Canvas c, RecyclerView parent) {
        int top = parent.getPaddingTop();
        int bottom = parent.getHeight() - parent.getPaddingBottom();
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            int left = (child.getRight() + ((LayoutParams) child.getLayoutParams()).rightMargin) + Math.round(ViewCompat.getTranslationX(child));
            this.mDivider.setBounds(left, top, left + this.mDivider.getIntrinsicHeight(), bottom);
            this.mDivider.draw(c);
        }
    }

    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
        if (this.mOrientation == 1) {
            int position = ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
            if (position >= this.mTopKeepCount && position < getAdapterCount(parent) - this.mBottomKeepCount) {
                outRect.set(0, 0, 0, this.mDivider.getIntrinsicHeight());
                return;
            }
            return;
        }
        outRect.set(0, 0, this.mDivider.getIntrinsicWidth(), 0);
    }
}
