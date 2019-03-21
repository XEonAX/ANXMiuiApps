package com.miui.gallery.adapter;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;

public abstract class RecyclerAdapterWrapper<T extends Adapter<VH>, VH extends ViewHolder> extends Adapter<VH> {
    protected final T mWrapped;

    protected abstract void onHandleWrappedAdapterItemRangeChanged(int i, int i2);

    protected abstract void onHandleWrappedAdapterItemRangeInserted(int i, int i2);

    protected abstract void onHandleWrappedAdapterItemRangeMoved(int i, int i2, int i3);

    protected abstract void onHandleWrappedAdapterItemRangeRemoved(int i, int i2);

    public RecyclerAdapterWrapper(T wrapped) {
        if (wrapped == null) {
            throw new RuntimeException("The wrapped adapter can't be null!");
        }
        this.mWrapped = wrapped;
        this.mWrapped.registerAdapterDataObserver(new AdapterDataObserver() {
            public void onChanged() {
                RecyclerAdapterWrapper.this.notifyDataSetChanged();
            }

            public void onItemRangeChanged(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.onHandleWrappedAdapterItemRangeChanged(positionStart, itemCount);
            }

            public void onItemRangeInserted(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.onHandleWrappedAdapterItemRangeInserted(positionStart, itemCount);
            }

            public void onItemRangeRemoved(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.onHandleWrappedAdapterItemRangeRemoved(positionStart, itemCount);
            }

            public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
                RecyclerAdapterWrapper.this.onHandleWrappedAdapterItemRangeMoved(fromPosition, toPosition, itemCount);
            }
        });
    }

    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        return this.mWrapped.onCreateViewHolder(parent, viewType);
    }

    public void onBindViewHolder(VH holder, int position) {
        this.mWrapped.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mWrapped.getItemCount();
    }

    public int getItemViewType(int position) {
        return this.mWrapped.getItemViewType(position);
    }

    public void setHasStableIds(boolean hasStableIds) {
        this.mWrapped.setHasStableIds(hasStableIds);
    }

    public long getItemId(int position) {
        return this.mWrapped.getItemId(position);
    }

    public void onViewRecycled(VH holder) {
        this.mWrapped.onViewRecycled(holder);
    }

    public boolean onFailedToRecycleView(VH holder) {
        return this.mWrapped.onFailedToRecycleView(holder);
    }

    public void onViewAttachedToWindow(VH holder) {
        this.mWrapped.onViewAttachedToWindow(holder);
    }

    public void onViewDetachedFromWindow(VH holder) {
        this.mWrapped.onViewDetachedFromWindow(holder);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mWrapped.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mWrapped.onDetachedFromRecyclerView(recyclerView);
    }

    public final Adapter getWrappedAdapter() {
        return this.mWrapped;
    }

    public final int getWrappedAdapterItemCount() {
        return this.mWrapped.getItemCount();
    }
}
