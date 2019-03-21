package com.miui.gallery.widget.recyclerview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.widget.DividerTypeProvider;

public class SectionedDividerItemDecoration extends ItemDecoration {
    private DividerTypeProvider mDividerTypeProvider;
    private Drawable mItemDivider;
    private int mItemDividerHeight;
    private Rect mItemDividerPadding = new Rect(0, 0, 0, 0);
    private Drawable mSectionDivider;
    private int mSectionDividerHeight;

    public SectionedDividerItemDecoration(Context context, int sectionDividerRes, int itemDividerRes, DividerTypeProvider dividerTypeProvider) {
        this.mSectionDivider = context.getResources().getDrawable(sectionDividerRes);
        this.mItemDivider = context.getResources().getDrawable(itemDividerRes);
        this.mSectionDividerHeight = context.getResources().getDimensionPixelSize(R.dimen.section_divider_height);
        this.mItemDividerHeight = context.getResources().getDimensionPixelSize(R.dimen.item_divider_height);
        this.mDividerTypeProvider = dividerTypeProvider;
    }

    public void setItemDividerPadding(Rect itemDividerPadding) {
        if (itemDividerPadding != null) {
            this.mItemDividerPadding.set(itemDividerPadding);
        } else {
            this.mItemDividerPadding.setEmpty();
        }
    }

    private int getTopDividerType(int adapterPosition) {
        if (this.mDividerTypeProvider != null) {
            return this.mDividerTypeProvider.getTopDividerType(adapterPosition);
        }
        return 0;
    }

    private int getBottomDividerType(int adapterPosition) {
        if (this.mDividerTypeProvider != null) {
            return this.mDividerTypeProvider.getBottomDividerType(adapterPosition);
        }
        return 0;
    }

    public void onDrawOver(Canvas c, RecyclerView parent, State state) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            int tx = Math.round(ViewCompat.getTranslationX(child));
            int left = child.getLeft() + tx;
            int right = child.getRight() + tx;
            int adapterPosition = parent.getChildAdapterPosition(child);
            drawTopDivider(c, child, getTopDividerType(adapterPosition), left, right);
            drawBottomDivider(c, child, getBottomDividerType(adapterPosition), left, right);
        }
        super.onDrawOver(c, parent, state);
    }

    private void drawTopDivider(Canvas c, View child, int dividerType, int left, int right) {
        int top = (child.getTop() + ((LayoutParams) child.getLayoutParams()).topMargin) + Math.round(ViewCompat.getTranslationY(child));
        switch (dividerType) {
            case 3:
                if (this.mItemDivider != null && this.mItemDividerHeight > 0) {
                    this.mItemDivider.setBounds(left, this.mItemDividerPadding.top + top, right, (top + this.mItemDividerHeight) - this.mItemDividerPadding.bottom);
                    this.mItemDivider.draw(c);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void drawBottomDivider(Canvas c, View child, int dividerType, int left, int right) {
        int top = (child.getBottom() + ((LayoutParams) child.getLayoutParams()).bottomMargin) + Math.round(ViewCompat.getTranslationY(child));
        switch (dividerType) {
            case 1:
                if (this.mSectionDivider != null && this.mSectionDividerHeight > 0) {
                    this.mSectionDivider.setBounds(left, top, right, top + this.mSectionDividerHeight);
                    this.mSectionDivider.draw(c);
                    return;
                }
                return;
            case 2:
                if (this.mItemDivider != null && this.mItemDividerHeight > 0) {
                    int bottom = top + this.mItemDividerHeight;
                    if (1 == child.getLayoutDirection()) {
                        this.mItemDivider.setBounds(this.mItemDividerPadding.right + left, this.mItemDividerPadding.top + top, right - this.mItemDividerPadding.left, bottom - this.mItemDividerPadding.bottom);
                    } else {
                        this.mItemDivider.setBounds(this.mItemDividerPadding.left + left, this.mItemDividerPadding.top + top, right - this.mItemDividerPadding.right, bottom - this.mItemDividerPadding.bottom);
                    }
                    this.mItemDivider.draw(c);
                    return;
                }
                return;
            case 3:
                if (this.mItemDivider != null && this.mItemDividerHeight > 0) {
                    this.mItemDivider.setBounds(left, this.mItemDividerPadding.top + top, right, (top + this.mItemDividerHeight) - this.mItemDividerPadding.bottom);
                    this.mItemDivider.draw(c);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
        int adapterPosition = parent.getChildAdapterPosition(view);
        int top = 0;
        int bottom = 0;
        switch (getTopDividerType(adapterPosition)) {
            case 3:
                top = this.mItemDividerHeight;
                break;
        }
        switch (getBottomDividerType(adapterPosition)) {
            case 1:
                bottom = this.mSectionDividerHeight;
                break;
            case 3:
                bottom = this.mItemDividerHeight;
                break;
        }
        outRect.set(0, top, 0, bottom);
    }
}
