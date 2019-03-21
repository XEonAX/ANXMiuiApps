package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.miui.gallery.R;

public class SuggestionTagView extends LinearLayout {
    private SuggestionTagViewAdapter mAdapter;
    private DataSetObserver mAdapterObserver;
    private int mHorizontalMargin;
    private boolean mInvalid;
    private LayoutParams mItemLayoutParam;
    private int mMaxLines;
    private LayoutParams mRowLayoutParam;
    private int mVerticalMargin;

    public interface SuggestionTagViewAdapter extends Adapter {
        View getMoreItemView(View view, ViewGroup viewGroup);

        boolean hasMoreItem();

        boolean isFixedMoreItem();
    }

    public SuggestionTagView(Context context) {
        this(context, null);
    }

    public SuggestionTagView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SuggestionTagView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mInvalid = false;
        this.mAdapterObserver = new DataSetObserver() {
            public void onChanged() {
                SuggestionTagView.this.onAdapterChanged();
            }

            public void onInvalidated() {
                SuggestionTagView.this.onAdapterChanged();
            }
        };
        initView(context, attrs, defStyle);
    }

    private void initView(Context context, AttributeSet attrs, int defStyle) {
        setOrientation(1);
        TypedArray typeArray = context.obtainStyledAttributes(attrs, R.styleable.SuggestionTagView, defStyle, 0);
        this.mHorizontalMargin = (int) typeArray.getDimension(0, 0.0f);
        this.mVerticalMargin = (int) typeArray.getDimension(1, 0.0f);
        this.mMaxLines = typeArray.getInteger(2, Integer.MAX_VALUE);
        typeArray.recycle();
        this.mRowLayoutParam = new LayoutParams(-1, -2);
        this.mRowLayoutParam.setMargins(0, 0, 0, this.mVerticalMargin);
        this.mItemLayoutParam = new LayoutParams(-2, -2);
        this.mItemLayoutParam.setMargins(0, 0, this.mHorizontalMargin, 0);
    }

    public void setAdapter(SuggestionTagViewAdapter adapter) {
        if (this.mAdapter != adapter) {
            this.mAdapter = adapter;
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(this.mAdapterObserver);
            }
            onAdapterChanged();
        }
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    private void onAdapterChanged() {
        this.mInvalid = true;
        requestLayout();
    }

    public void setMaxLines(int maxLines) {
        if (maxLines != this.mMaxLines) {
            this.mMaxLines = maxLines;
            this.mInvalid = true;
            requestLayout();
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mInvalid) {
            layoutTags(getFillWidth(MeasureSpec.getSize(widthMeasureSpec)));
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    private int getItemMeasuredWidth(View itemView) {
        itemView.measure(0, 0);
        return itemView.getMeasuredWidth() + this.mHorizontalMargin;
    }

    private LinearLayout changeToNewLine() {
        LinearLayout rowLayout = new LinearLayout(getContext());
        addView(rowLayout, this.mRowLayoutParam);
        return rowLayout;
    }

    /* JADX WARNING: Removed duplicated region for block: B:64:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0066 A:{SKIP} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void layoutTags(int width) {
        int lastTagWidth = 0;
        removeAllViews();
        this.mInvalid = false;
        if (this.mMaxLines > 0 && this.mAdapter != null) {
            View lastTagItem;
            boolean fixedMoreItem = this.mAdapter.isFixedMoreItem();
            int size = 0;
            int rowIndex = 0;
            int length = this.mAdapter.getCount();
            LinearLayout rowLayout = null;
            if (this.mAdapter.hasMoreItem()) {
                lastTagItem = this.mAdapter.getMoreItemView(null, this);
            } else {
                lastTagItem = null;
            }
            if (lastTagItem != null) {
                lastTagWidth = getItemMeasuredWidth(lastTagItem);
            }
            if (0 == this.mMaxLines - 1 && lastTagItem != null) {
                size = lastTagWidth;
            }
            int i = 0;
            while (i < length) {
                View tagItemView = this.mAdapter.getView(i, null, this);
                int itemWidth = getItemMeasuredWidth(tagItemView);
                size += itemWidth;
                if (size > width) {
                    rowIndex++;
                    if (rowIndex < this.mMaxLines) {
                        rowLayout = changeToNewLine();
                        if (rowIndex != this.mMaxLines - 1 || lastTagItem == null) {
                            size = itemWidth;
                            rowLayout.addView(tagItemView, this.mItemLayoutParam);
                        } else {
                            size = lastTagWidth;
                            if (size + itemWidth <= width) {
                                size += itemWidth;
                                rowLayout.addView(tagItemView, this.mItemLayoutParam);
                            } else if (i != length - 1 || fixedMoreItem) {
                                i--;
                            } else {
                                rowLayout.addView(tagItemView, this.mItemLayoutParam);
                                lastTagItem = null;
                            }
                        }
                    } else if (lastTagItem == null || i != length - 1 || fixedMoreItem || size - lastTagWidth > width) {
                        i--;
                    } else {
                        rowLayout.addView(tagItemView, this.mItemLayoutParam);
                        lastTagItem = null;
                    }
                    if (lastTagItem == null) {
                        if (fixedMoreItem && (rowLayout == null || (rowIndex < this.mMaxLines - 1 && size + lastTagWidth > width))) {
                            rowLayout = changeToNewLine();
                        }
                        if (fixedMoreItem || i < length - 1) {
                            rowLayout.addView(lastTagItem, this.mItemLayoutParam);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (rowLayout == null) {
                    rowLayout = changeToNewLine();
                }
                rowLayout.addView(tagItemView, this.mItemLayoutParam);
                i++;
            }
            if (lastTagItem == null) {
            }
        }
    }

    private int getFillWidth(int viewWidth) {
        return (viewWidth - getPaddingLeft()) - getPaddingRight();
    }
}
