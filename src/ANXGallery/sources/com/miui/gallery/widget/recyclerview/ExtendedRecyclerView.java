package com.miui.gallery.widget.recyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import com.miui.gallery.R;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.widget.TwoStageDrawer.ScrollableView;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class ExtendedRecyclerView extends RelativeLayout implements ScrollableView {
    protected boolean mClipToPadding;
    protected ViewStub mEmpty;
    protected int mEmptyId;
    protected View mEmptyView;
    protected int mMainContentId;
    protected boolean mManualInflateEmptyView;
    private final RecyclerViewDataObserver mObserver = new RecyclerViewDataObserver();
    protected int mPadding;
    protected int mPaddingBottom;
    protected int mPaddingLeft;
    protected int mPaddingRight;
    protected int mPaddingTop;
    protected ViewStub mProgress;
    protected int mProgressId;
    protected View mProgressView;
    protected RecyclerView mRecycler;
    protected int mScrollbarStyle;

    private class RecyclerViewDataObserver extends AdapterDataObserver {
        private RecyclerViewDataObserver() {
        }

        public void onItemRangeChanged(int positionStart, int itemCount) {
            super.onItemRangeChanged(positionStart, itemCount);
            update();
        }

        public void onItemRangeInserted(int positionStart, int itemCount) {
            super.onItemRangeInserted(positionStart, itemCount);
            update();
        }

        public void onItemRangeRemoved(int positionStart, int itemCount) {
            super.onItemRangeRemoved(positionStart, itemCount);
            update();
        }

        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            super.onItemRangeMoved(fromPosition, toPosition, itemCount);
            update();
        }

        public void onChanged() {
            super.onChanged();
            update();
        }

        private void update() {
            if (ExtendedRecyclerView.this.mRecycler.getAdapter() == null || ExtendedRecyclerView.this.mRecycler.getAdapter().getItemCount() <= 0) {
                ExtendedRecyclerView.this.showEmpty();
            } else {
                ExtendedRecyclerView.this.showRecycler();
            }
        }
    }

    public ExtendedRecyclerView(Context context) {
        super(context);
        initView();
    }

    public ExtendedRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttrs(attrs);
        initView();
    }

    public ExtendedRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initAttrs(attrs);
        initView();
    }

    protected void initAttrs(AttributeSet attrs) {
        TypedArray a = getContext().obtainStyledAttributes(attrs, R.styleable.ExtendedRecyclerView);
        try {
            this.mClipToPadding = a.getBoolean(3, false);
            this.mManualInflateEmptyView = a.getBoolean(4, false);
            this.mPadding = (int) a.getDimension(5, -1.0f);
            this.mPaddingTop = (int) a.getDimension(6, 0.0f);
            this.mPaddingBottom = (int) a.getDimension(7, 0.0f);
            this.mPaddingLeft = (int) a.getDimension(8, 0.0f);
            this.mPaddingRight = (int) a.getDimension(9, 0.0f);
            this.mScrollbarStyle = a.getInt(10, -1);
            this.mEmptyId = a.getResourceId(0, 0);
            this.mProgressId = a.getResourceId(1, R.layout.layout_progress);
            this.mMainContentId = a.getResourceId(2, R.layout.extended_recyclerview);
        } finally {
            a.recycle();
        }
    }

    private void initView() {
        if (!isInEditMode()) {
            View v = LayoutInflater.from(getContext()).inflate(this.mMainContentId, this);
            this.mProgress = (ViewStub) v.findViewById(R.id.progress);
            if (this.mProgress == null) {
                throw new RuntimeException("layout_main_content must contains progress stub!");
            }
            this.mProgress.setLayoutResource(this.mProgressId);
            this.mProgressView = this.mProgress.inflate();
            this.mEmpty = (ViewStub) v.findViewById(R.id.empty);
            if (this.mEmpty == null) {
                throw new RuntimeException("layout_main_content must contains empty stub!");
            }
            if (!(this.mEmptyId == 0 || this.mManualInflateEmptyView)) {
                this.mEmpty.setLayoutResource(this.mEmptyId);
                this.mEmptyView = this.mEmpty.inflate();
            }
            initRecyclerView(v);
        }
    }

    protected void initRecyclerView(View view) {
        View recyclerView = view.findViewById(R.id.recycler);
        if (recyclerView == null || !(recyclerView instanceof RecyclerView)) {
            throw new IllegalArgumentException("ExtendedRecyclerView only works with a RecyclerView!");
        }
        this.mRecycler = (RecyclerView) recyclerView;
        this.mRecycler.setClipToPadding(this.mClipToPadding);
        if (Numbers.equals(Float.valueOf((float) this.mPadding), Float.valueOf(-1.0f))) {
            this.mRecycler.setPadding(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom);
        } else {
            this.mRecycler.setPadding(this.mPadding, this.mPadding, this.mPadding, this.mPadding);
        }
        if (this.mScrollbarStyle == -1) {
            return;
        }
        if (this.mScrollbarStyle == nexEngine.ExportHEVCMainTierLevel62 || this.mScrollbarStyle == 0 || this.mScrollbarStyle == 50331648 || this.mScrollbarStyle == nexEngine.ExportHEVCHighTierLevel62) {
            this.mRecycler.setScrollBarStyle(this.mScrollbarStyle);
        }
    }

    public void setLayoutManager(LayoutManager manager) {
        this.mRecycler.setLayoutManager(manager);
    }

    public void setAdapter(Adapter adapter) {
        setAdapterInternal(adapter, false, true);
    }

    private void setAdapterInternal(Adapter adapter, boolean compatibleWithPrevious, boolean removeAndRecycleExistingViews) {
        Adapter oldAdapter = this.mRecycler.getAdapter();
        if (oldAdapter != null) {
            oldAdapter.unregisterAdapterDataObserver(this.mObserver);
        }
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
        }
        if (compatibleWithPrevious) {
            this.mRecycler.swapAdapter(adapter, removeAndRecycleExistingViews);
        } else {
            this.mRecycler.setAdapter(adapter);
        }
        if (adapter == null || adapter.getItemCount() <= 0) {
            showEmpty();
        } else {
            showRecycler();
        }
    }

    private void showRecycler() {
        this.mRecycler.setVisibility(0);
        setEmptyVisibility(8);
        this.mProgress.setVisibility(8);
    }

    private void showEmpty() {
        this.mRecycler.setVisibility(8);
        setEmptyVisibility(0);
        this.mProgress.setVisibility(8);
    }

    private void setEmptyVisibility(int visibility) {
        if (this.mEmptyView != null) {
            this.mEmpty.setVisibility(visibility);
        }
    }

    public void inflateEmptyView() {
        if (this.mEmptyView == null && this.mEmptyId != 0) {
            this.mEmpty.setLayoutResource(this.mEmptyId);
            this.mEmptyView = this.mEmpty.inflate();
        }
    }

    public void addItemDecoration(ItemDecoration itemDecoration) {
        this.mRecycler.addItemDecoration(itemDecoration);
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        this.mRecycler.setItemAnimator(itemAnimator);
    }

    public void smoothScrollToPosition(int position) {
        this.mRecycler.smoothScrollToPosition(position);
    }

    public LayoutManager getLayoutManager() {
        return this.mRecycler.getLayoutManager();
    }

    public RecyclerView getRecycler() {
        return this.mRecycler;
    }

    public boolean canScrollDown() {
        return this.mRecycler.canScrollVertically(-1);
    }
}
