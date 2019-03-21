package com.miui.gallery.editor.photo.app.sticker;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.StickerCategory;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

public class HeaderAdapter extends Adapter<HeaderHolder> implements Selectable {
    private List<StickerCategory> mCategories;
    private Delegator mDelegator;

    public HeaderAdapter(List<StickerCategory> categories, Selector selector) {
        this.mCategories = categories;
        this.mDelegator = new Delegator(0, selector);
    }

    public HeaderHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new HeaderHolder(getInflater().inflate(R.layout.sticker_category_navigation_item, parent, false));
    }

    public void onBindViewHolder(HeaderHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((StickerCategory) this.mCategories.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mCategories.size();
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
