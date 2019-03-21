package com.miui.gallery.editor.photo.app.crop;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.CropData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class CropAdapter extends Adapter<ItemHolder> implements Selectable {
    private List<CropData> mDataList;
    private Delegator mDelegator;

    public CropAdapter(List<CropData> dataList, Selector selector) {
        this.mDataList = dataList;
        this.mDelegator = new Delegator(2, selector);
    }

    public ItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ItemHolder(getInflater().inflate(R.layout.crop_menu_item, parent, false));
    }

    public void onBindViewHolder(ItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((CropData) this.mDataList.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mDataList.size();
    }

    public void setSelection(int index) {
        this.mDelegator.setSelection(index);
    }

    public int getSelection() {
        return this.mDelegator.getSelection();
    }

    public CropData getSelectedItem() {
        return (CropData) this.mDataList.get(this.mDelegator.getSelection());
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
