package com.miui.gallery.search.core.display;

import android.content.Context;
import android.support.v7.util.DiffUtil;
import android.support.v7.util.DiffUtil.Callback;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.miui.gallery.R;
import java.util.ArrayList;

public abstract class QuickAdapterBase<VH extends BaseSuggestionViewHolder> extends Adapter<BaseSuggestionViewHolder> implements FullSpanDelegate {
    protected final Context mContext;
    private LinearLayout mCopyFooterLayout = null;
    private LinearLayout mCopyHeaderLayout = null;
    private AdapterDataObserver mDataObserver = new AdapterDataObserver() {
        public void onChanged() {
            QuickAdapterBase.this.genPositionList();
        }
    };
    private View mEmptyView;
    private boolean mFootAndEmptyEnable;
    private LinearLayout mFooterLayout;
    private boolean mHeadAndEmptyEnable;
    private LinearLayout mHeaderLayout;
    protected final LayoutInflater mLayoutInflater;
    private View mLoadCompleteView;
    private int mLoadCompleteViewRes = -1;
    private OnClickListener mLoadFailedViewOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            QuickAdapterBase.this.removeFooterView(QuickAdapterBase.this.mLoadMoreFailedView);
            QuickAdapterBase.this.openLoadMore();
        }
    };
    private View mLoadMoreFailedView;
    private int mLoadMoreFailedViewRes = -1;
    private boolean mLoadMoreRequested = false;
    private View mLoadingView;
    private int mLoadingViewRes = -1;
    private boolean mNextLoadEnable = false;
    private RequestLoadMoreListener mRequestLoadMoreListener;
    private boolean mShowLoadingView = true;
    private final ArrayList<Integer> mViewTypePositionList = new ArrayList();

    protected static abstract class InnerDiffCallback extends Callback {
        protected InnerDiffCallback() {
        }

        public int getOldListSize() {
            return 0;
        }

        public int getNewListSize() {
            return 0;
        }

        public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
            return false;
        }
    }

    private static class DataDiffCallback extends Callback {
        Callback mInnerDiffCallback;
        ArrayList<Integer> mNewTypeList;
        ArrayList<Integer> mOldTypeList;

        public DataDiffCallback(ArrayList<Integer> oldTypeList, ArrayList<Integer> newTypeList, Callback innerDiffCallback) {
            this.mOldTypeList = oldTypeList;
            this.mNewTypeList = newTypeList;
            this.mInnerDiffCallback = innerDiffCallback;
        }

        public int getOldListSize() {
            return this.mOldTypeList.size();
        }

        public int getNewListSize() {
            return this.mNewTypeList.size();
        }

        public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
            return ((Integer) this.mOldTypeList.get(oldItemPosition)).equals(this.mNewTypeList.get(newItemPosition));
        }

        public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
            if (((Integer) this.mOldTypeList.get(oldItemPosition)).intValue() < 16 || ((Integer) this.mNewTypeList.get(newItemPosition)).intValue() < 16) {
                return false;
            }
            return this.mInnerDiffCallback.areContentsTheSame(oldItemPosition - getItemStartPosition(this.mOldTypeList), newItemPosition - getItemStartPosition(this.mNewTypeList));
        }

        private int getItemStartPosition(ArrayList<Integer> typeList) {
            for (int i = 0; i < typeList.size(); i++) {
                if (((Integer) typeList.get(i)).intValue() != 1) {
                    return i;
                }
            }
            return 0;
        }
    }

    private static class NonDataDiffCallback extends Callback {
        ArrayList<Integer> mNewTypeList;
        ArrayList<Integer> mOldTypeList;

        public NonDataDiffCallback(ArrayList<Integer> oldTypeList, ArrayList<Integer> newTypeList) {
            this.mOldTypeList = oldTypeList;
            this.mNewTypeList = newTypeList;
        }

        public int getOldListSize() {
            return this.mOldTypeList.size();
        }

        public int getNewListSize() {
            return this.mNewTypeList.size();
        }

        public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
            return ((Integer) this.mOldTypeList.get(oldItemPosition)).equals(this.mNewTypeList.get(newItemPosition));
        }

        public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
            return ((Integer) this.mOldTypeList.get(oldItemPosition)).equals(this.mNewTypeList.get(newItemPosition));
        }
    }

    protected abstract void bindInnerItemViewHolder(VH vh, int i);

    protected abstract VH createInnerItemViewHolder(ViewGroup viewGroup, int i);

    protected abstract int getInnerItemViewCount();

    protected abstract int getInnerItemViewType(int i);

    public QuickAdapterBase(Context context) {
        this.mContext = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        registerAdapterDataObserver(this.mDataObserver);
    }

    protected int getInnerItemPosition(int position) {
        return position - (this.mHeaderLayout == null ? 0 : 1);
    }

    public void addHeaderView(View header) {
        addHeaderView(header, -1);
    }

    public void addHeaderView(View header, int index) {
        if (this.mHeaderLayout == null) {
            if (this.mCopyHeaderLayout == null) {
                this.mHeaderLayout = new LinearLayout(header.getContext());
                this.mHeaderLayout.setOrientation(1);
                this.mCopyHeaderLayout = this.mHeaderLayout;
            } else {
                this.mHeaderLayout = this.mCopyHeaderLayout;
            }
        }
        if (index >= this.mHeaderLayout.getChildCount()) {
            index = -1;
        }
        this.mHeaderLayout.addView(header, index);
        notifyNonDataChanged();
    }

    public void removeHeaderView(View header) {
        if (this.mHeaderLayout != null) {
            this.mHeaderLayout.removeView(header);
            if (this.mHeaderLayout.getChildCount() == 0) {
                this.mHeaderLayout = null;
            }
            notifyNonDataChanged();
        }
    }

    public void addFooterView(View footer) {
        addFooterView(footer, -1);
    }

    public void addFooterView(View footer, int index) {
        if (this.mFooterLayout == null) {
            if (this.mCopyFooterLayout == null) {
                this.mFooterLayout = new LinearLayout(footer.getContext());
                this.mFooterLayout.setOrientation(1);
                this.mCopyFooterLayout = this.mFooterLayout;
            } else {
                this.mFooterLayout = this.mCopyFooterLayout;
            }
        }
        this.mFooterLayout.removeView(footer);
        if (index >= this.mFooterLayout.getChildCount()) {
            index = -1;
        }
        this.mFooterLayout.addView(footer, index);
        notifyNonDataChanged();
    }

    public void removeFooterView(View footer) {
        if (this.mFooterLayout != null) {
            this.mFooterLayout.removeView(footer);
            if (this.mFooterLayout.getChildCount() == 0) {
                this.mFooterLayout = null;
            }
            notifyNonDataChanged();
        }
    }

    public void setOnLoadMoreListener(RequestLoadMoreListener requestLoadMoreListener) {
        this.mRequestLoadMoreListener = requestLoadMoreListener;
    }

    public void openLoadMore() {
        openLoadMore(true);
    }

    public void openLoadMore(boolean showLoadingView) {
        this.mShowLoadingView = showLoadingView;
        this.mNextLoadEnable = true;
        this.mLoadMoreRequested = false;
        hideLoadMoreFailedView();
        notifyNonDataChanged();
    }

    public void closeLoadMore() {
        if (this.mNextLoadEnable) {
            this.mNextLoadEnable = false;
        }
        this.mLoadMoreRequested = false;
        hideLoadMoreFailedView();
        notifyNonDataChanged();
    }

    public boolean isLoading() {
        return this.mNextLoadEnable;
    }

    public void hideLoadMoreFailedView() {
        if (this.mLoadMoreFailedView != null) {
            removeFooterView(this.mLoadMoreFailedView);
        }
    }

    public void showLoadCompleteView() {
        closeLoadMore();
        if (this.mLoadCompleteView == null) {
            this.mLoadCompleteView = this.mLayoutInflater.inflate(this.mLoadCompleteViewRes > 0 ? this.mLoadCompleteViewRes : R.layout.search_item_load_complete_layout, null);
        }
        addFooterView(this.mLoadCompleteView, 0);
    }

    private void onBindLoadMore(ViewHolder holder) {
        if (this.mNextLoadEnable && this.mRequestLoadMoreListener != null && !this.mLoadMoreRequested) {
            this.mLoadMoreRequested = true;
            this.mRequestLoadMoreListener.onLoadMoreRequested();
        }
    }

    private BaseSuggestionViewHolder getLoadingView(ViewGroup parent) {
        if (this.mLoadingView == null) {
            this.mLoadingView = this.mLayoutInflater.inflate(this.mLoadingViewRes > 0 ? this.mLoadingViewRes : R.layout.search_item_loading_layout, parent, false);
        }
        return new BaseSuggestionViewHolder(this.mLoadingView);
    }

    public int getItemCount() {
        return this.mViewTypePositionList.size();
    }

    public int getItemViewType(int position) {
        return ((Integer) this.mViewTypePositionList.get(position)).intValue();
    }

    public BaseSuggestionViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        BaseSuggestionViewHolder viewHolder;
        switch (viewType) {
            case 1:
                viewHolder = new BaseSuggestionViewHolder(this.mHeaderLayout);
                ensureLayoutParams(this.mHeaderLayout, parent);
                return viewHolder;
            case 2:
                viewHolder = new BaseSuggestionViewHolder(this.mFooterLayout);
                ensureLayoutParams(this.mFooterLayout, parent);
                return viewHolder;
            case 3:
                viewHolder = new BaseSuggestionViewHolder(this.mEmptyView);
                ensureLayoutParams(this.mEmptyView, parent);
                return viewHolder;
            case 4:
                viewHolder = getLoadingView(parent);
                ensureLayoutParams(viewHolder.itemView, parent);
                return viewHolder;
            default:
                return createInnerItemViewHolder(parent, viewType);
        }
    }

    public boolean isFullSpan(int position) {
        switch (getItemViewType(position)) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            default:
                return false;
        }
    }

    public void onBindViewHolder(BaseSuggestionViewHolder holder, int position) {
        switch (holder.getItemViewType()) {
            case 1:
            case 2:
            case 3:
                return;
            case 4:
                onBindLoadMore(holder);
                return;
            default:
                int innerPosition = getInnerItemPosition(holder.getLayoutPosition());
                bindInnerItemViewHolder(holder, innerPosition);
                if (!this.mShowLoadingView && innerPosition == getInnerItemViewCount() - 1) {
                    onBindLoadMore(null);
                    return;
                }
                return;
        }
    }

    private void genPositionList() {
        this.mViewTypePositionList.clear();
        this.mViewTypePositionList.ensureCapacity(getItemCount());
        if (!noItemView() || this.mNextLoadEnable) {
            if (this.mHeaderLayout != null) {
                this.mViewTypePositionList.add(Integer.valueOf(1));
            }
            for (int i = 0; i < getInnerItemViewCount(); i++) {
                this.mViewTypePositionList.add(Integer.valueOf(getInnerItemViewType(i)));
            }
            if (this.mNextLoadEnable && this.mShowLoadingView) {
                this.mViewTypePositionList.add(Integer.valueOf(4));
            }
            if (this.mFooterLayout != null) {
                this.mViewTypePositionList.add(Integer.valueOf(2));
                return;
            }
            return;
        }
        if (this.mHeaderLayout != null && (this.mEmptyView == null || this.mHeadAndEmptyEnable)) {
            this.mViewTypePositionList.add(Integer.valueOf(1));
        }
        if (this.mEmptyView != null) {
            this.mViewTypePositionList.add(Integer.valueOf(3));
        }
        if (this.mFooterLayout == null) {
            return;
        }
        if (this.mEmptyView == null || this.mFootAndEmptyEnable) {
            this.mViewTypePositionList.add(Integer.valueOf(2));
        }
    }

    private void ensureLayoutParams(View view, ViewGroup parent) {
        if (view.getLayoutParams() == null && (parent instanceof RecyclerView) && ((RecyclerView) parent).getLayoutManager() != null) {
            view.setLayoutParams(((RecyclerView) parent).getLayoutManager().generateLayoutParams(new LayoutParams(-1, -2)));
        }
    }

    private boolean noItemView() {
        return getInnerItemViewCount() == 0;
    }

    private void notifyNonDataChanged() {
        ArrayList<Integer> oldViewTypePositionList = new ArrayList(this.mViewTypePositionList);
        genPositionList();
        DiffUtil.calculateDiff(new NonDataDiffCallback(oldViewTypePositionList, this.mViewTypePositionList)).dispatchUpdatesTo((Adapter) this);
    }

    protected void notifyDataChanged(Callback diffCallback) {
        ArrayList<Integer> oldViewTypePositionList = new ArrayList(this.mViewTypePositionList);
        genPositionList();
        DiffUtil.calculateDiff(new DataDiffCallback(oldViewTypePositionList, this.mViewTypePositionList, diffCallback)).dispatchUpdatesTo((Adapter) this);
    }
}
