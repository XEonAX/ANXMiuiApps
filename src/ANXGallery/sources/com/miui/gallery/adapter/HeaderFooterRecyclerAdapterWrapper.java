package com.miui.gallery.adapter;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;

public abstract class HeaderFooterRecyclerAdapterWrapper<ADAPTER extends Adapter<VH>, VH extends ViewHolder> extends RecyclerAdapterWrapper<ADAPTER, VH> {
    private ArrayList<View> mFooterViews;
    private ArrayList<View> mHeaderViews;
    private LayoutManager mLayoutManager;

    private static class HeaderFooterSpanSizeLookup extends SpanSizeLookup {
        private HeaderFooterRecyclerAdapterWrapper mAdapterWrapper;
        private int mSpanCount;
        private SpanSizeLookup mWrapped;

        public HeaderFooterSpanSizeLookup(SpanSizeLookup wrapped, HeaderFooterRecyclerAdapterWrapper adapterWrapper, int spanCount) {
            this.mWrapped = wrapped;
            this.mAdapterWrapper = adapterWrapper;
            this.mSpanCount = spanCount;
        }

        public int getSpanSize(int position) {
            if (this.mAdapterWrapper.isHeaderPosition(position) || this.mAdapterWrapper.isFooterPosition(position)) {
                return this.mSpanCount;
            }
            return this.mWrapped.getSpanSize(position);
        }
    }

    protected abstract VH onCreateHeaderFooterViewHolder(View view);

    public HeaderFooterRecyclerAdapterWrapper(ADAPTER wrapped) {
        this(wrapped, null, null);
    }

    public HeaderFooterRecyclerAdapterWrapper(ADAPTER wrapped, List<View> headerViews, List<View> footerViews) {
        super(wrapped);
        this.mHeaderViews = new ArrayList();
        this.mFooterViews = new ArrayList();
        if (headerViews != null) {
            this.mHeaderViews.addAll(headerViews);
        }
        if (footerViews != null) {
            this.mFooterViews.addAll(footerViews);
        }
    }

    public int getHeadersCount() {
        return this.mHeaderViews.size();
    }

    public int getFootersCount() {
        return this.mFooterViews.size();
    }

    private static void removeFromParentFor(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(view);
            if (view.getParent() != null) {
                ((ViewGroup) parent).endViewTransition(view);
            }
        }
    }

    public void addHeaderView(View header) {
        if (header != null) {
            int preHeadersCount = getHeadersCount();
            this.mHeaderViews.add(header);
            notifyItemInserted(preHeadersCount);
        }
    }

    public boolean removeHeaderView(View header) {
        if (header == null) {
            return false;
        }
        int preHeaderIndex = this.mHeaderViews.indexOf(header);
        if (preHeaderIndex == -1) {
            return false;
        }
        removeFromParentFor(header);
        this.mHeaderViews.remove(preHeaderIndex);
        notifyItemRemoved(preHeaderIndex);
        return true;
    }

    public void addFooterView(View footer) {
        if (footer != null) {
            int preFootersCount = getFootersCount();
            this.mFooterViews.add(footer);
            notifyItemInserted((getHeadersCount() + getWrappedAdapterItemCount()) + preFootersCount);
        }
    }

    public boolean removeFooterView(View footer) {
        if (footer == null) {
            return false;
        }
        int preFooterIndex = this.mFooterViews.indexOf(footer);
        if (preFooterIndex == -1) {
            return false;
        }
        removeFromParentFor(footer);
        this.mFooterViews.remove(preFooterIndex);
        notifyItemRemoved((getHeadersCount() + getWrappedAdapterItemCount()) + preFooterIndex);
        return true;
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mLayoutManager = recyclerView.getLayoutManager();
        if (this.mLayoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = this.mLayoutManager;
            gridLayoutManager.setSpanSizeLookup(new HeaderFooterSpanSizeLookup(gridLayoutManager.getSpanSizeLookup(), this, gridLayoutManager.getSpanCount()));
        }
    }

    public int getItemCount() {
        return (getWrappedAdapterItemCount() + getHeadersCount()) + getFootersCount();
    }

    public long getItemId(int position) {
        if (isHeaderPosition(position) || isFooterPosition(position)) {
            return -1;
        }
        return super.getItemId(getWrappedAdapterPosition(position));
    }

    public int getItemViewType(int position) {
        if (isHeaderPosition(position)) {
            return mapPosition2ViewType(position);
        }
        if (isFooterPosition(position)) {
            return mapPosition2ViewType(position);
        }
        return super.getItemViewType(getWrappedAdapterPosition(position));
    }

    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = null;
        if (isHeaderViewType(viewType)) {
            itemView = (View) this.mHeaderViews.get(mapViewType2Position(viewType));
        } else if (isFooterViewType(viewType)) {
            itemView = (View) this.mFooterViews.get((mapViewType2Position(viewType) - getWrappedAdapterItemCount()) - getHeadersCount());
        }
        if (itemView == null) {
            return super.onCreateViewHolder(parent, viewType);
        }
        removeFromParentFor(itemView);
        if (this.mLayoutManager instanceof StaggeredGridLayoutManager) {
            LayoutParams staggerLayoutParams;
            ViewGroup.LayoutParams targetParams = itemView.getLayoutParams();
            if (targetParams != null) {
                staggerLayoutParams = new LayoutParams(targetParams.width, targetParams.height);
            } else {
                staggerLayoutParams = new LayoutParams(-1, -2);
            }
            staggerLayoutParams.setFullSpan(true);
            itemView.setLayoutParams(staggerLayoutParams);
        }
        return onCreateHeaderFooterViewHolder(itemView);
    }

    public void onBindViewHolder(VH holder, int position) {
        if (!isHeaderPosition(position) && !isFooterPosition(position)) {
            super.onBindViewHolder(holder, getWrappedAdapterPosition(position));
        }
    }

    public int getWrappedAdapterPosition(int position) {
        if (position < 0 || position >= getItemCount() || isHeaderPosition(position) || isFooterPosition(position)) {
            return -1;
        }
        return position - getHeadersCount();
    }

    public boolean isHeaderPosition(int position) {
        return position >= 0 && position < getHeadersCount();
    }

    public boolean isFooterPosition(int position) {
        return position >= getItemCount() - getFootersCount() && position < getItemCount();
    }

    public boolean isHeaderViewType(int viewType) {
        return isHeaderPosition(mapViewType2Position(viewType));
    }

    public boolean isFooterViewType(int viewType) {
        return isFooterPosition(mapViewType2Position(viewType));
    }

    private int mapViewType2Position(int viewType) {
        return viewType - Integer.MIN_VALUE;
    }

    private int mapPosition2ViewType(int position) {
        return Integer.MIN_VALUE + position;
    }

    protected void onHandleWrappedAdapterItemRangeChanged(int positionStart, int itemCount) {
        notifyItemRangeChanged(getHeadersCount() + positionStart, itemCount);
    }

    protected void onHandleWrappedAdapterItemRangeInserted(int positionStart, int itemCount) {
        notifyItemRangeInserted(getHeadersCount() + positionStart, itemCount);
    }

    protected void onHandleWrappedAdapterItemRangeRemoved(int positionStart, int itemCount) {
        notifyItemRangeRemoved(getHeadersCount() + positionStart, itemCount);
    }

    protected void onHandleWrappedAdapterItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
        notifyItemMoved(getHeadersCount() + fromPosition, getHeadersCount() + toPosition);
    }
}
