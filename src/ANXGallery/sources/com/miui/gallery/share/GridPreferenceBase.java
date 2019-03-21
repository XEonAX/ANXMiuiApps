package com.miui.gallery.share;

import android.content.Context;
import android.database.DataSetObserver;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListAdapter;

public abstract class GridPreferenceBase extends Preference {
    protected ListAdapter mAdapter;
    protected final OnClickListener mClickListener;
    protected int mColumnCount;
    protected int mColumnWidth;
    private DataSetObserver mDataSetObserver;
    private OnItemClickListener mItemClickListener;

    final class MyDataSetObserver extends DataSetObserver {
        MyDataSetObserver() {
        }

        public void onChanged() {
            GridPreferenceBase.this.update();
        }

        public void onInvalidated() {
            GridPreferenceBase.this.update();
        }
    }

    public interface OnItemClickListener {
        void onItemClick(GridPreferenceBase gridPreferenceBase, int i);
    }

    protected abstract int getLayoutResourceId();

    protected abstract void updateGrid(View view);

    public GridPreferenceBase(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mClickListener = new OnClickListener() {
            public void onClick(View v) {
                if (GridPreferenceBase.this.mItemClickListener != null) {
                    GridPreferenceBase.this.mItemClickListener.onItemClick(GridPreferenceBase.this, ((Integer) v.getTag(GridPreferenceBase.this.getTagInfo())).intValue());
                }
            }
        };
        setLayoutResource(getLayoutResourceId());
    }

    public GridPreferenceBase(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GridPreferenceBase(Context context) {
        this(context, null);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        updateGrid(view);
    }

    public void setAdapter(ListAdapter adapter) {
        if (!(this.mAdapter == null || this.mDataSetObserver == null)) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
            this.mDataSetObserver = null;
        }
        this.mAdapter = adapter;
        if (this.mAdapter != null) {
            this.mDataSetObserver = new MyDataSetObserver();
            this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
        }
        update();
    }

    public void setColumnCountAndWidth(int columnCount, int columnWidth) {
        this.mColumnCount = columnCount;
        this.mColumnWidth = columnWidth;
        notifyChanged();
    }

    public void setOnItemClickListener(OnItemClickListener l) {
        this.mItemClickListener = l;
    }

    public void update() {
        notifyChanged();
    }

    protected int getTagInfo() {
        return getLayoutResourceId();
    }
}
