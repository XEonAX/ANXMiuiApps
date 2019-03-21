package com.miui.gallery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class SortByHeader extends LinearLayout {
    private View mDateTimeContainer;
    private View mNameContainer;
    private OnClickListener mOnSortByClickListener;
    private View mSizeContainer;
    private ImageView mSortByDateArrow;
    private TextView mSortByDateTime;
    private TextView mSortByFileName;
    private TextView mSortByFileSize;
    private ImageView mSortByNameArrow;
    private ImageView mSortBySizeArrow;

    public enum SortBy {
        NONE,
        DATE,
        NAME,
        SIZE
    }

    public SortByHeader(Context context) {
        super(context);
    }

    public SortByHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SortByHeader(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setOnSortByClickListener(OnClickListener l) {
        this.mOnSortByClickListener = l;
        this.mDateTimeContainer.setOnClickListener(this.mOnSortByClickListener);
        this.mNameContainer.setOnClickListener(this.mOnSortByClickListener);
        this.mSizeContainer.setOnClickListener(this.mOnSortByClickListener);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDateTimeContainer = findViewById(R.id.datetime_container);
        this.mNameContainer = findViewById(R.id.name_container);
        this.mSizeContainer = findViewById(R.id.size_container);
        this.mSortByDateTime = (TextView) findViewById(R.id.datetime);
        this.mSortByDateArrow = (ImageView) findViewById(R.id.datetime_sort_arrow);
        this.mSortByFileName = (TextView) findViewById(R.id.name);
        this.mSortByNameArrow = (ImageView) findViewById(R.id.name_sort_arrow);
        this.mSortByFileSize = (TextView) findViewById(R.id.size);
        this.mSortBySizeArrow = (ImageView) findViewById(R.id.size_sort_arrow);
    }

    public void updateCurrentSortView(SortBy currentSortBy, int sortbyIndicatorResource) {
        switch (currentSortBy) {
            case SIZE:
                this.mSortByFileSize.setSelected(true);
                this.mSortByDateTime.setSelected(false);
                this.mSortByFileName.setSelected(false);
                this.mSortBySizeArrow.setSelected(true);
                this.mSortByDateArrow.setSelected(false);
                this.mSortByNameArrow.setSelected(false);
                this.mSortBySizeArrow.setBackgroundResource(sortbyIndicatorResource);
                this.mSortByDateArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                this.mSortByNameArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                return;
            case DATE:
                this.mSortByDateTime.setSelected(true);
                this.mSortByFileName.setSelected(false);
                this.mSortByFileSize.setSelected(false);
                this.mSortBySizeArrow.setSelected(false);
                this.mSortByDateArrow.setSelected(true);
                this.mSortByNameArrow.setSelected(false);
                this.mSortBySizeArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                this.mSortByDateArrow.setBackgroundResource(sortbyIndicatorResource);
                this.mSortByNameArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                return;
            case NAME:
                this.mSortByFileName.setSelected(true);
                this.mSortByDateTime.setSelected(false);
                this.mSortByFileSize.setSelected(false);
                this.mSortBySizeArrow.setSelected(false);
                this.mSortByDateArrow.setSelected(false);
                this.mSortByNameArrow.setSelected(true);
                this.mSortBySizeArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                this.mSortByDateArrow.setBackgroundResource(R.drawable.sort_by_item_arrow_up);
                this.mSortByNameArrow.setBackgroundResource(sortbyIndicatorResource);
                return;
            default:
                return;
        }
    }
}
