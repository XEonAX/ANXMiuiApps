package com.miui.gallery.video.editor.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.Filter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import java.util.List;

public class FilterRecyclerViewAdapter extends SingleChoiceRecyclerViewAdapter<FilterViewHolder> {
    private final int ITEM_TYPE_ITEM_NORMAL = 1;
    private List<Filter> filterList;
    private int mFirstMarginLeft = 0;
    private LayoutInflater mLayoutInflater;

    public FilterRecyclerViewAdapter(Context context, List<Filter> filterList) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.filterList = filterList;
    }

    public Filter getFilter(int position) {
        if (this.filterList == null || position >= this.filterList.size()) {
            return null;
        }
        return (Filter) this.filterList.get(position);
    }

    public int getItemViewType(int position) {
        return 1;
    }

    public FilterViewHolder onCreateSingleChoiceViewHolder(ViewGroup parent, int viewType) {
        return new FilterViewHolder(this.mLayoutInflater.inflate(R.layout.video_editor_filter_item, parent, false));
    }

    public void onBindView(FilterViewHolder holder, int position) {
        if (getItemCount() > 0) {
            holder.setMarginLeft(position == 0 ? this.mFirstMarginLeft : 0);
            Filter filter = (Filter) this.filterList.get(position);
            holder.setName(filter.getNameResId());
            holder.setIcon(filter.getIconResId());
        }
    }

    public int getItemCount() {
        if (this.filterList != null) {
            return this.filterList.size();
        }
        return 0;
    }
}
