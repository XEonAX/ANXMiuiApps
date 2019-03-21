package com.miui.gallery.editor.photo.app.remover;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

public class RemoverAdapter extends Adapter<RemoverItemHolder> implements Selectable {
    private List<RemoverData> mDataList;
    private Delegator mDelegator;

    public RemoverAdapter(List<RemoverData> dataList, Selector selector) {
        this.mDataList = dataList;
        this.mDelegator = new Delegator(-1, selector);
    }

    public RemoverItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new RemoverItemHolder(getInflater().inflate(R.layout.remover_menu_item, parent, false));
    }

    public void onBindViewHolder(RemoverItemHolder removerItemHolder, int position) {
        super.onBindViewHolder(removerItemHolder, position);
        removerItemHolder.bind((RemoverData) this.mDataList.get(position));
        this.mDelegator.onBindViewHolder(removerItemHolder, position);
    }

    public int getItemCount() {
        return this.mDataList == null ? 0 : this.mDataList.size();
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
