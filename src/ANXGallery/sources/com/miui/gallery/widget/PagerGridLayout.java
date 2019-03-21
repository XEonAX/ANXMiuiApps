package com.miui.gallery.widget;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.support.v7.widget.GridLayout;
import android.support.v7.widget.GridLayout.LayoutParams;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class PagerGridLayout extends GridLayout {
    private BaseAdapter mAdapter;
    private int mColumnCount;
    private int mCount;
    private DataSetObserver mDataSetObserver;
    private int mItemCount;
    private OnPageChangedListener mListener;
    private int mPageCount;
    private int mPageIndex;
    private int mRowCount;

    public static abstract class BaseAdapter {
        private final DataSetObservable mDataSetObservable = new DataSetObservable();

        public abstract void bindData(int i, View view);

        public abstract void freshView(View view);

        public abstract int getColumnsCount();

        public abstract int getCount();

        public abstract int getRowsCount();

        public abstract View getView(LayoutInflater layoutInflater, ViewGroup viewGroup);

        public abstract void onPageChanged();

        public void registerDataSetObserver(DataSetObserver observer) {
            this.mDataSetObservable.registerObserver(observer);
        }

        public void unregisterDataSetObserver(DataSetObserver observer) {
            this.mDataSetObservable.unregisterObserver(observer);
        }

        public void notifyDataSetChanged() {
            this.mDataSetObservable.notifyChanged();
        }
    }

    public interface OnPageChangedListener {
        void onPageChanged(int i, int i2, boolean z);
    }

    public PagerGridLayout(Context context) {
        this(context, null);
    }

    public PagerGridLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PagerGridLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDataSetObserver = new DataSetObserver() {
            public void onChanged() {
                PagerGridLayout.this.bindPage(PagerGridLayout.this.mPageIndex);
            }

            public void onInvalidated() {
            }
        };
    }

    public void setOnPageChangedListener(OnPageChangedListener listener) {
        this.mListener = listener;
    }

    public void setAdapter(BaseAdapter adapter) {
        setAdapter(adapter, 0);
    }

    public void setAdapter(BaseAdapter adapter, int pageIndex) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        this.mAdapter = adapter;
        adapter.registerDataSetObserver(this.mDataSetObserver);
        LayoutInflater inflater = LayoutInflater.from(getContext());
        int column = adapter.getColumnsCount();
        int row = adapter.getRowsCount();
        this.mRowCount = row;
        this.mColumnCount = column;
        this.mItemCount = column * row;
        this.mCount = adapter.getCount();
        this.mPageIndex = pageIndex;
        this.mPageCount = (this.mCount + (this.mItemCount - 1)) / this.mItemCount;
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < column; j++) {
                addView(this.mAdapter.getView(inflater, this), new LayoutParams(GridLayout.spec(i, 1.0f), GridLayout.spec(j, 1.0f)));
            }
        }
        bindPage(this.mPageIndex);
    }

    private void bindPage(int pageIndex) {
        boolean z = false;
        if (pageIndex < this.mPageCount) {
            int firstPosition = pageIndex * this.mItemCount;
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                View view = getChildAt(i);
                int position = firstPosition + i;
                if (position >= this.mCount) {
                    view.setVisibility(4);
                } else {
                    view.setVisibility(0);
                    this.mAdapter.bindData(position, view);
                }
            }
        }
        if (this.mListener != null) {
            OnPageChangedListener onPageChangedListener = this.mListener;
            int i2 = this.mPageIndex;
            int i3 = this.mPageCount;
            if (pageIndex == this.mPageCount) {
                z = true;
            }
            onPageChangedListener.onPageChanged(i2, i3, z);
        }
    }

    public void changeToNextPage() {
        if (this.mPageIndex + 1 <= this.mPageCount) {
            this.mPageIndex++;
            this.mAdapter.onPageChanged();
            bindPage(this.mPageIndex);
        }
    }

    public void freshCurrentPage() {
        if (this.mAdapter != null) {
            int firstPosition = this.mPageIndex * this.mItemCount;
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                View view = getChildAt(i);
                if (view.getVisibility() == 0) {
                    this.mAdapter.freshView(view);
                }
            }
        }
    }
}
