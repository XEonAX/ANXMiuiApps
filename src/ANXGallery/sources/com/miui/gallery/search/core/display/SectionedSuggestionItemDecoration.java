package com.miui.gallery.search.core.display;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.miui.gallery.R;

public class SectionedSuggestionItemDecoration extends ItemDecoration {
    SectionedSuggestionAdapter mAdapter;
    private int mBottomLineDividerColor;
    Context mContext;
    private boolean mDrawBottomLine = false;
    private boolean mDrawLineBetweenSectionItems = false;
    private int mLineDividerHeight;
    Paint mPaint;
    private int mSectionDividerColor;
    private int mSectionDividerHeight;
    private int mSectionInnerDividerStartMargin;
    private int mTopLineDividerColor;

    public SectionedSuggestionItemDecoration(Context context, SectionedSuggestionAdapter adapter, boolean drawLineBetweenSectionItems, int sectionInnerDividerStartMargin, boolean drawBottomLine) {
        this.mContext = context;
        this.mAdapter = adapter;
        this.mPaint = new Paint();
        Resources resources = context.getResources();
        this.mSectionDividerHeight = resources.getDimensionPixelSize(R.dimen.search_section_divider_height);
        this.mLineDividerHeight = resources.getDimensionPixelSize(R.dimen.search_line_divider_height);
        this.mBottomLineDividerColor = resources.getColor(R.color.search_section_divider_line_color);
        this.mTopLineDividerColor = resources.getColor(R.color.search_section_divider_line_color);
        this.mSectionDividerColor = resources.getColor(R.color.search_section_divider_color);
        this.mDrawLineBetweenSectionItems = drawLineBetweenSectionItems;
        this.mSectionInnerDividerStartMargin = sectionInnerDividerStartMargin;
        this.mDrawBottomLine = drawBottomLine;
    }

    public void onDrawOver(Canvas c, RecyclerView parent, State state) {
        int left = parent.getPaddingLeft();
        int right = parent.getWidth() - parent.getPaddingRight();
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            int dividerType = 0;
            int adapterPosition = this.mAdapter.getInnerItemPosition(parent.getChildAdapterPosition(child));
            if (adapterPosition >= 0 && adapterPosition < this.mAdapter.getInnerItemViewCount()) {
                if (isSectionHeader(this.mAdapter.getIndexes(adapterPosition))) {
                    dividerType = 0 | 1;
                } else if (adapterPosition != 0 && this.mDrawLineBetweenSectionItems) {
                    dividerType = 0 | 2;
                }
                if (this.mDrawBottomLine && adapterPosition == this.mAdapter.getInnerItemViewCount() - 1) {
                    dividerType |= 4;
                }
                drawDivider(c, child, dividerType, left, right);
            }
        }
    }

    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
        int adapterPosition = this.mAdapter.getInnerItemPosition(parent.getChildAdapterPosition(view));
        if (adapterPosition < 0 || adapterPosition >= this.mAdapter.getInnerItemViewCount()) {
            outRect.set(0, 0, 0, 0);
        } else if (isSectionHeader(this.mAdapter.getIndexes(adapterPosition))) {
            outRect.set(0, this.mSectionDividerHeight, 0, 0);
        } else {
            outRect.set(0, 0, 0, 0);
        }
    }

    private boolean isSectionHeader(int[] indexes) {
        return indexes[1] == -1 && indexes[0] != 0;
    }

    private void drawDivider(Canvas c, View child, int dividerType, int left, int right) {
        LayoutParams params = (LayoutParams) child.getLayoutParams();
        int topBottom = child.getTop() - params.topMargin;
        if ((dividerType & 1) != 0) {
            int top = topBottom - this.mSectionDividerHeight;
            this.mPaint.setStyle(Style.FILL);
            this.mPaint.setColor(this.mSectionDividerColor);
            c.drawRect((float) left, (float) top, (float) right, (float) topBottom, this.mPaint);
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setStrokeWidth((float) this.mLineDividerHeight);
            this.mPaint.setColor(this.mBottomLineDividerColor);
            c.drawLine((float) left, (float) (top - this.mLineDividerHeight), (float) right, (float) (top - this.mLineDividerHeight), this.mPaint);
            this.mPaint.setColor(this.mTopLineDividerColor);
            c.drawLine((float) left, (float) topBottom, (float) right, (float) topBottom, this.mPaint);
        }
        if ((dividerType & 2) != 0) {
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setColor(this.mBottomLineDividerColor);
            c.drawLine((float) this.mSectionInnerDividerStartMargin, (float) (this.mLineDividerHeight + topBottom), (float) right, (float) (this.mLineDividerHeight + topBottom), this.mPaint);
        }
        if ((dividerType & 4) != 0) {
            int bottomTop = child.getBottom() + params.bottomMargin;
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setColor(this.mBottomLineDividerColor);
            c.drawLine(0.0f, (float) (bottomTop - this.mLineDividerHeight), (float) right, (float) (bottomTop - this.mLineDividerHeight), this.mPaint);
        }
    }
}
