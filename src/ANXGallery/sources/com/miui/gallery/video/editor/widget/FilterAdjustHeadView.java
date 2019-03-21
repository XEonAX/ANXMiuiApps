package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class FilterAdjustHeadView extends LinearLayout implements OnClickListener {
    private FilterHeadViewClickListener mHeadViewClickListener;
    private TextView mTvAdjust;
    private TextView mTvTitleFilter;

    public interface FilterHeadViewClickListener {
        void onAdjustClick();

        void onFilterClick();
    }

    public FilterAdjustHeadView(Context context) {
        super(context);
        init(context);
    }

    public FilterAdjustHeadView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    private void init(Context context) {
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.video_editor_filter_head_view, this);
        this.mTvTitleFilter = (TextView) findViewById(R.id.tv_title_filter);
        this.mTvAdjust = (TextView) findViewById(R.id.tv_title_adjust);
        this.mTvTitleFilter.setOnClickListener(this);
        this.mTvAdjust.setOnClickListener(this);
        selectFilter(true);
    }

    public void onClick(View v) {
        if (v != null) {
            switch (v.getId()) {
                case R.id.tv_title_filter /*2131886803*/:
                    if (!this.mTvTitleFilter.isSelected()) {
                        selectFilter(true);
                        if (this.mHeadViewClickListener != null) {
                            this.mHeadViewClickListener.onFilterClick();
                            return;
                        }
                        return;
                    }
                    return;
                case R.id.tv_title_adjust /*2131886804*/:
                    if (!this.mTvAdjust.isSelected()) {
                        selectFilter(false);
                        if (this.mHeadViewClickListener != null) {
                            this.mHeadViewClickListener.onAdjustClick();
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void setHeadViewClickListener(FilterHeadViewClickListener headViewClickListener) {
        this.mHeadViewClickListener = headViewClickListener;
    }

    public void selectFilter(boolean select) {
        this.mTvTitleFilter.setSelected(select);
        this.mTvAdjust.setSelected(!select);
    }
}
