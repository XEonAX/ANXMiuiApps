package com.miui.gallery.collage.app.layout;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.collage.core.layout.LayoutModel;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class LayoutMenuAdapter extends Adapter<LayoutHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator;
    private List<LayoutModel> mLayoutList;

    LayoutMenuAdapter(Context context, List<LayoutModel> layoutList, Selector selector) {
        this.mContext = context;
        this.mDelegator = new Delegator(0, selector);
        this.mLayoutList = layoutList;
    }

    public LayoutHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new LayoutHolder(parent, this.mContext);
    }

    public void onBindViewHolder(LayoutHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setLayoutModel((LayoutModel) this.mLayoutList.get(position), position);
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mLayoutList.size();
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
