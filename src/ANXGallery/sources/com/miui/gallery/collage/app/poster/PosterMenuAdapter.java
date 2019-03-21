package com.miui.gallery.collage.app.poster;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.collage.core.poster.PosterModel;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class PosterMenuAdapter extends Adapter<PosterHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator;
    private int mImageCount;
    private List<PosterModel> mPosterList;

    PosterMenuAdapter(Context context, List<PosterModel> posterList, Selector selector) {
        this.mContext = context;
        this.mDelegator = new Delegator(0, selector);
        this.mPosterList = posterList;
    }

    public PosterHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new PosterHolder(parent, this.mContext);
    }

    public void onBindViewHolder(PosterHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setPosterModel(this.mContext.getResources(), (PosterModel) this.mPosterList.get(position), this.mImageCount, position);
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mPosterList.size();
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

    public void setImageCount(int imageCount) {
        this.mImageCount = imageCount;
    }
}
