package com.miui.gallery.widget.recyclerview;

import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.LayoutParams;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public class GridLayoutInnerPaddingItemDecoration extends ItemDecoration {
    private final int[] mEdgeMargins;
    private boolean mFullSpanIgnorePadding = false;
    private final int mItemHorizontalPadding;
    private final int mItemVerticalPadding;
    private final GridLayoutManager mLayoutManager;
    private Rect mRecycleRect;

    public GridLayoutInnerPaddingItemDecoration(int leftMargin, int topMargin, int rightMargin, int bottomMargin, int itemHorizontalPadding, int itemVerticalPadding, boolean fullSpanIgnorePadding, GridLayoutManager layoutManager) {
        this.mEdgeMargins = new int[]{leftMargin, topMargin, rightMargin, bottomMargin};
        this.mItemHorizontalPadding = itemHorizontalPadding;
        this.mItemVerticalPadding = itemVerticalPadding;
        this.mRecycleRect = new Rect();
        this.mFullSpanIgnorePadding = fullSpanIgnorePadding;
        this.mLayoutManager = layoutManager;
    }

    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
        int spanCount = this.mLayoutManager.getSpanCount();
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int itemSpanSize = layoutParams.getSpanSize();
        int itemSpanIndex = layoutParams.getSpanIndex();
        boolean ignorePadding = itemSpanSize == spanCount && this.mFullSpanIgnorePadding;
        Rect rect = this.mRecycleRect;
        int i = ignorePadding ? 0 : itemSpanIndex != 0 ? 0 : this.mEdgeMargins[0];
        rect.left = i;
        rect = this.mRecycleRect;
        i = ignorePadding ? 0 : itemSpanIndex + itemSpanSize < spanCount ? this.mItemHorizontalPadding : this.mEdgeMargins[2];
        rect.right = i;
        int position = parent.getChildAdapterPosition(view);
        rect = this.mRecycleRect;
        i = ignorePadding ? 0 : (position >= spanCount || itemSpanIndex != position) ? 0 : this.mEdgeMargins[1];
        rect.top = i;
        boolean lastLine = isLastLine(position, itemSpanSize, itemSpanIndex, spanCount, parent.getAdapter().getItemCount(), this.mLayoutManager.getSpanSizeLookup());
        rect = this.mRecycleRect;
        i = ignorePadding ? 0 : lastLine ? this.mEdgeMargins[3] : this.mItemVerticalPadding;
        rect.bottom = i;
        outRect.set(this.mRecycleRect);
    }

    private boolean isLastLine(int adapterPosition, int spanSize, int spanIndex, int spanCount, int itemCount, SpanSizeLookup lookup) {
        if (adapterPosition < itemCount - spanCount) {
            return false;
        }
        if (adapterPosition == itemCount - 1) {
            return true;
        }
        int sumSpan = spanSize + spanIndex;
        while (true) {
            adapterPosition++;
            if (adapterPosition > itemCount - 1) {
                return true;
            }
            sumSpan += lookup == null ? 1 : lookup.getSpanSize(adapterPosition);
            if (sumSpan > spanCount) {
                return false;
            }
        }
    }
}
