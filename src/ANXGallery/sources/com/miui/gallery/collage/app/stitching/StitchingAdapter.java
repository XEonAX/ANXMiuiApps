package com.miui.gallery.collage.app.stitching;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.collage.core.stitching.StitchingModel;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class StitchingAdapter extends Adapter<StitchingHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator;
    private List<StitchingModel> mStitchingModelList;

    StitchingAdapter(Context context, List<StitchingModel> longLayoutList, Selector selector) {
        this.mStitchingModelList = longLayoutList;
        this.mContext = context;
        this.mDelegator = new Delegator(0, selector);
    }

    public StitchingHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new StitchingHolder(parent, this.mContext);
    }

    public void onBindViewHolder(StitchingHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setStitchingModel(this.mContext.getResources(), (StitchingModel) this.mStitchingModelList.get(position), position);
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mStitchingModelList.size();
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
