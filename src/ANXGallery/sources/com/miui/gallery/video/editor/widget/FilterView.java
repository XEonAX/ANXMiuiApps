package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.video.editor.Filter;
import com.miui.gallery.video.editor.adapter.FilterRecyclerViewAdapter;
import com.miui.gallery.video.editor.manager.FilterAdjustManager;
import com.miui.gallery.video.editor.util.ToolsUtil;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.ItemSelectChangeListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class FilterView extends LinearLayout {
    private FilterRecyclerViewAdapter mAdapter;
    private ArrayList<Filter> mFilters = new ArrayList();
    private OnItemSelectedListener mItemSelectedListener;
    private LinearLayoutManager mLinearLayoutManager;
    private SingleChoiceRecycleView mSingleChoiceRecycleView;

    public interface OnItemSelectedListener {
        boolean onItemSelect(SingleChoiceRecyclerViewAdapter singleChoiceRecyclerViewAdapter, int i, boolean z);
    }

    private class MyFilterItemSelectChangeListener implements ItemSelectChangeListener {
        private MyFilterItemSelectChangeListener() {
        }

        public boolean onItemSelect(SingleChoiceRecyclerViewAdapter adapter, int position, boolean isChanged) {
            if (FilterView.this.mItemSelectedListener == null || !isChanged) {
                return false;
            }
            ScrollControlLinearLayoutManager.onItemClick(FilterView.this.mSingleChoiceRecycleView, position);
            FilterView.this.mSingleChoiceRecycleView.smoothScrollToPosition(position);
            adapter.setSelectedItemPosition(position);
            adapter.clearLastSelectedPostion();
            return FilterView.this.mItemSelectedListener.onItemSelect(adapter, position, isChanged);
        }
    }

    public FilterView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.video_editor_filterview, this);
        initData();
        initRecylerView(context);
    }

    private void initRecylerView(Context context) {
        this.mSingleChoiceRecycleView = (SingleChoiceRecycleView) findViewById(R.id.recylerview);
        this.mLinearLayoutManager = new ScrollControlLinearLayoutManager(context, 0, false);
        this.mSingleChoiceRecycleView.setLayoutManager(this.mLinearLayoutManager);
        this.mAdapter = new FilterRecyclerViewAdapter(context, this.mFilters);
        this.mAdapter.setItemSelectChangeListener(new MyFilterItemSelectChangeListener());
        this.mSingleChoiceRecycleView.setAdapter(this.mAdapter);
        this.mSingleChoiceRecycleView.addItemDecoration(new BlankDivider(getResources(), R.dimen.video_editor_filter_view_gap, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mSingleChoiceRecycleView);
    }

    public void initData() {
        this.mFilters = FilterAdjustManager.getFilterData();
    }

    public int getSelectedItemPosition() {
        if (this.mAdapter != null) {
            return this.mAdapter.getSelectedItemPosition();
        }
        return 0;
    }

    public Filter getSelectedFilter() {
        if (this.mAdapter == null) {
            return null;
        }
        return this.mAdapter.getFilter(this.mAdapter.getSelectedItemPosition());
    }

    public void updateSelectedItemPosition(int position) {
        if (this.mAdapter != null) {
            if (position != -1) {
                this.mAdapter.setSelectedItemPosition(position);
            } else if (ToolsUtil.isRTLDirection()) {
                Collections.reverse(this.mFilters);
                this.mAdapter.setSelectedItemPosition(this.mAdapter.getItemCount() - 1);
            } else {
                this.mAdapter.setSelectedItemPosition(0);
            }
        }
    }

    public List<String> getFilterCurrentEffect() {
        if (getSelectedFilter() == null) {
            return null;
        }
        return Arrays.asList(new String[]{getSelectedFilter().getLabel()});
    }

    public void setItemSelectedListener(OnItemSelectedListener itemSelectedListener) {
        this.mItemSelectedListener = itemSelectedListener;
    }
}
