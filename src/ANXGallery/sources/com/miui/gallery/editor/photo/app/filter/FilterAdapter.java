package com.miui.gallery.editor.photo.app.filter;

import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.FilterData;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class FilterAdapter extends Adapter<FilterMenuItem> {
    private boolean mEditMode = false;
    private List<FilterData> mEffects;
    private int mHighlightColor;
    private int mSelectedIndex = 0;
    private int mSubHighlightColor;
    private int mSubItemSize;

    FilterAdapter(List<FilterData> effects, int highlighColor, int subHighlighColor, int subItemSize) {
        this.mEffects = effects;
        this.mHighlightColor = highlighColor;
        this.mSubHighlightColor = subHighlighColor;
        this.mSubItemSize = subItemSize;
    }

    public FilterData getItemData(int position) {
        if (this.mEffects == null || position < 0 || position >= this.mEffects.size()) {
            return null;
        }
        return (FilterData) this.mEffects.get(position);
    }

    public FilterMenuItem onCreateViewHolder(ViewGroup parent, int viewType) {
        return new FilterMenuItem(getInflater().inflate(R.layout.filter_menu_item, parent, false));
    }

    public void onBindViewHolder(FilterMenuItem holder, int position) {
        super.onBindViewHolder(holder, position);
        boolean selected = position == this.mSelectedIndex;
        holder.bindData((FilterData) this.mEffects.get(position));
        holder.setState(selected, this.mEditMode);
        if (this.mSubItemSize <= 0 || position < getItemCount() - this.mSubItemSize) {
            holder.setForegroundColor(this.mHighlightColor);
        } else {
            holder.setForegroundColor(this.mSubHighlightColor);
        }
        if (selected && this.mEditMode && !((FilterData) this.mEffects.get(position)).isNone()) {
            holder.updateIndicator(getValue());
        }
    }

    public int getItemCount() {
        return this.mEffects.size();
    }

    void setSelectedIndex(int position) {
        if (position != this.mSelectedIndex) {
            int lastSelectedIndex = this.mSelectedIndex;
            this.mSelectedIndex = position;
            if (lastSelectedIndex != -1) {
                notifyItemChanged(lastSelectedIndex);
            }
            if (this.mSelectedIndex != -1) {
                notifyItemChanged(this.mSelectedIndex);
            }
        }
    }

    void clearSelected() {
        if (this.mSelectedIndex != -1) {
            int lastIndex = this.mSelectedIndex;
            this.mSelectedIndex = -1;
            notifyItemChanged(lastIndex);
        }
    }

    boolean isInEditMode() {
        return this.mEditMode;
    }

    void enterEditMode() {
        this.mEditMode = true;
        notifyItemChanged(this.mSelectedIndex);
    }

    void exitEditMode() {
        this.mEditMode = false;
        notifyItemChanged(this.mSelectedIndex);
    }

    void update(int value) {
        if (this.mEditMode && this.mSelectedIndex != -1) {
            ((FilterData) this.mEffects.get(this.mSelectedIndex)).progress = value;
            notifyItemChanged(this.mSelectedIndex);
        }
    }

    int getValue() {
        return ((FilterData) this.mEffects.get(this.mSelectedIndex)).progress;
    }
}
