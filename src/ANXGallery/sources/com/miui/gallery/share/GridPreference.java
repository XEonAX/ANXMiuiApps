package com.miui.gallery.share;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridLayout;
import com.miui.gallery.R;

public class GridPreference extends GridPreferenceBase {
    public GridPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public GridPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GridPreference(Context context) {
        this(context, null);
    }

    protected int getLayoutResourceId() {
        return R.layout.share_album_user_grid_pref_view;
    }

    protected void updateGrid(View root) {
        GridLayout grid = (GridLayout) root.findViewById(16908298);
        grid.setColumnCount(this.mColumnCount);
        if (this.mAdapter == null || grid.getColumnCount() == 0) {
            grid.removeAllViews();
            return;
        }
        View v;
        int adapterCount = this.mAdapter.getCount();
        int childCount = grid.getChildCount();
        int reuseCount = Math.min(adapterCount, childCount);
        int index = 0;
        while (index < reuseCount) {
            v = grid.getChildAt(index);
            if (v == this.mAdapter.getView(index, v, grid)) {
                v.getLayoutParams().width = this.mColumnWidth;
                v.setTag(getTagInfo(), Integer.valueOf(index));
                index++;
            } else {
                throw new UnsupportedOperationException("convert view must be reused!");
            }
        }
        while (index < adapterCount) {
            v = this.mAdapter.getView(index, null, grid);
            grid.addView(v);
            v.setOnClickListener(this.mClickListener);
            v.setTag(getTagInfo(), Integer.valueOf(index));
            v.getLayoutParams().width = this.mColumnWidth;
            index++;
        }
        if (index < childCount) {
            grid.removeViews(index, childCount - index);
        }
        grid.getLayoutParams().width = this.mColumnWidth * this.mColumnCount;
        grid.requestLayout();
    }
}
