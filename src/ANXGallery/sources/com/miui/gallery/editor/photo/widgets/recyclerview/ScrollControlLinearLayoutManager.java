package com.miui.gallery.editor.photo.widgets.recyclerview;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.SmoothScroller.Action;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.miui.gallery.R;
import miui.view.animation.CubicEaseOutInterpolator;

public class ScrollControlLinearLayoutManager extends LinearLayoutManager {
    private float mMinDistance;
    private float mSmoothScrollerSpeed = 25.0f;

    public ScrollControlLinearLayoutManager(Context context) {
        super(context);
        init(context);
    }

    public ScrollControlLinearLayoutManager(Context context, int orientation, boolean reverseLayout) {
        super(context, orientation, reverseLayout);
        init(context);
    }

    public ScrollControlLinearLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        init(context);
    }

    private void init(Context context) {
        this.mMinDistance = context.getResources().getDimension(R.dimen.scroll_control_item_min_scroll_distance);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) {
            public PointF computeScrollVectorForPosition(int targetPosition) {
                return ScrollControlLinearLayoutManager.this.computeScrollVectorForPosition(targetPosition);
            }

            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return ScrollControlLinearLayoutManager.this.mSmoothScrollerSpeed / ((float) displayMetrics.densityDpi);
            }

            protected void onTargetFound(View targetView, State state, Action action) {
                if (getLayoutManager() != null) {
                    int dx = calculateDxToMakeVisible(targetView, getHorizontalSnapPreference());
                    int dy = calculateDyToMakeVisible(targetView, getVerticalSnapPreference());
                    if (dx > 0) {
                        dx -= getLayoutManager().getLeftDecorationWidth(targetView);
                    } else {
                        dx += getLayoutManager().getRightDecorationWidth(targetView);
                    }
                    if (dy > 0) {
                        dy -= getLayoutManager().getTopDecorationHeight(targetView);
                    } else {
                        dy += getLayoutManager().getBottomDecorationHeight(targetView);
                    }
                    if (((float) ((int) Math.sqrt((double) ((dx * dx) + (dy * dy))))) > ScrollControlLinearLayoutManager.this.mMinDistance) {
                        action.update(-dx, -dy, 300, new CubicEaseOutInterpolator());
                    }
                }
            }
        };
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    public void setSmoothScrollerSpeed(float milliSecondsPerInch) {
        this.mSmoothScrollerSpeed = milliSecondsPerInch;
    }

    public static void onItemClick(RecyclerView parent, int position) {
        LayoutManager layoutManager = parent.getLayoutManager();
        Adapter adapter = parent.getAdapter();
        if (adapter != null && layoutManager != null && (layoutManager instanceof LinearLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int lastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            int lastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            int firstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int firstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            int finalPosition = -1;
            int targetPosition;
            if (lastVisibleItemPosition == position || lastCompletelyVisibleItemPosition == position) {
                targetPosition = position + 1;
                if (targetPosition <= 0 || targetPosition >= adapter.getItemCount()) {
                    finalPosition = -1;
                } else {
                    finalPosition = targetPosition;
                }
            } else if (firstVisibleItemPosition == position || firstCompletelyVisibleItemPosition == position) {
                targetPosition = position - 1;
                if (targetPosition < 0 || targetPosition >= adapter.getItemCount()) {
                    finalPosition = -1;
                } else {
                    finalPosition = targetPosition;
                }
            }
            if (finalPosition != -1) {
                if (linearLayoutManager instanceof ScrollControlLinearLayoutManager) {
                    ((ScrollControlLinearLayoutManager) linearLayoutManager).setSmoothScrollerSpeed(155.0f);
                }
                parent.smoothScrollToPosition(finalPosition);
            }
        }
    }
}
