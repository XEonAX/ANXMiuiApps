package com.miui.gallery.editor.photo.app.filter;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.FilterCategory;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class FilterHeadAdapter extends Adapter<HeaderHolder> implements Selectable {
    private List<FilterCategory> mCategories;
    private Delegator mDelegator;

    public static class HeaderHolder extends ViewHolder {
        private TextView mTitle;

        public HeaderHolder(View itemView) {
            super(itemView);
            if (itemView instanceof TextView) {
                this.mTitle = (TextView) itemView;
            }
        }

        void bind(FilterCategory category) {
            this.mTitle.setText(category.name);
        }
    }

    public FilterHeadAdapter(List<FilterCategory> categories, Selector selector) {
        this.mCategories = categories;
        this.mDelegator = new Delegator(0, selector);
    }

    public HeaderHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new HeaderHolder(getInflater().inflate(R.layout.filter_category_navigation_item, parent, false));
    }

    public void onBindViewHolder(HeaderHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((FilterCategory) this.mCategories.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mCategories == null ? 0 : this.mCategories.size();
    }

    public void setSelection(int index) {
        this.mDelegator.setSelection(index);
    }

    public int getSelection() {
        return this.mDelegator.getSelection();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mDelegator.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mDelegator.onDetachedFromRecyclerView(recyclerView);
    }
}
