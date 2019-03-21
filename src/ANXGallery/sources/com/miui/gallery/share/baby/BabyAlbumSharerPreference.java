package com.miui.gallery.share.baby;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.share.GridPreferenceBase;

public class BabyAlbumSharerPreference extends GridPreferenceBase {
    public BabyAlbumSharerPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setSelectable(false);
    }

    public BabyAlbumSharerPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BabyAlbumSharerPreference(Context context) {
        this(context, null);
    }

    protected int getLayoutResourceId() {
        return R.layout.baby_album_sharer_pref_view;
    }

    protected void updateGrid(View root) {
        if (this.mAdapter != null) {
            View convertView;
            int adapterCount = this.mAdapter.getCount();
            int parentSharerCount = 0;
            ViewGroup fatherGrid = (ViewGroup) root.findViewById(R.id.father_grid);
            ViewGroup motherGrid = (ViewGroup) root.findViewById(R.id.mother_grid);
            fatherGrid.setVisibility(8);
            motherGrid.setVisibility(8);
            for (int i = 0; i < adapterCount; i++) {
                int type = this.mAdapter.getItemViewType(i);
                if (type == 0 || type == 1) {
                    ViewGroup parentView;
                    if (type == 0) {
                        parentView = fatherGrid;
                    } else {
                        parentView = motherGrid;
                    }
                    parentView.setVisibility(0);
                    convertView = parentView.getChildCount() == 1 ? parentView.getChildAt(0) : null;
                    View view = this.mAdapter.getView(i, convertView, parentView);
                    view.setTag(getTagInfo(), Integer.valueOf(i));
                    if (convertView == null) {
                        parentView.addView(view);
                        view.setOnClickListener(this.mClickListener);
                    } else if (convertView != view) {
                        throw new UnsupportedOperationException("convert view must be reused!");
                    }
                    parentSharerCount++;
                }
            }
            ((LayoutParams) fatherGrid.getLayoutParams()).setMarginEnd((int) getContext().getResources().getDimension(R.dimen.baby_album_sharer_parents_margin));
            GridLayout otherFamilyMemberGrids = (GridLayout) root.findViewById(16908298);
            otherFamilyMemberGrids.setColumnCount(this.mColumnCount);
            otherFamilyMemberGrids.getLayoutParams().width = this.mColumnWidth * this.mColumnCount;
            if (otherFamilyMemberGrids.getColumnCount() == 0) {
                otherFamilyMemberGrids.removeAllViews();
                return;
            }
            int oldChildCount = otherFamilyMemberGrids.getChildCount();
            int gridPos = 0;
            for (int itemPos = 0; itemPos < adapterCount; itemPos++) {
                if (this.mAdapter.getItemViewType(itemPos) == 2) {
                    convertView = otherFamilyMemberGrids.getChildCount() < gridPos ? otherFamilyMemberGrids.getChildAt(gridPos) : null;
                    View v = this.mAdapter.getView(itemPos, convertView, otherFamilyMemberGrids);
                    v.setTag(getTagInfo(), Integer.valueOf(itemPos));
                    v.getLayoutParams().width = this.mColumnWidth;
                    if (convertView == null) {
                        otherFamilyMemberGrids.addView(v);
                        v.setOnClickListener(this.mClickListener);
                    } else if (convertView != v) {
                        throw new UnsupportedOperationException("convert view must be reused!");
                    }
                    gridPos++;
                }
            }
            int newChildCount = adapterCount - parentSharerCount;
            if (newChildCount < oldChildCount) {
                otherFamilyMemberGrids.removeViews(newChildCount, oldChildCount - newChildCount);
            }
            View divider = root.findViewById(R.id.divider);
            int i2 = (parentSharerCount <= 0 || newChildCount <= 0) ? 8 : 0;
            divider.setVisibility(i2);
            root.requestLayout();
        }
    }
}
