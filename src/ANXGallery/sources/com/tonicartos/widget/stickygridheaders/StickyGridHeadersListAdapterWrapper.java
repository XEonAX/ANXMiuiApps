package com.tonicartos.widget.stickygridheaders;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;

public class StickyGridHeadersListAdapterWrapper extends BaseAdapter implements StickyGridHeadersBaseAdapter {
    private DataSetObserver mDataSetObserver = new DataSetObserver() {
        public void onChanged() {
            StickyGridHeadersListAdapterWrapper.this.notifyDataSetChanged();
        }

        public void onInvalidated() {
            StickyGridHeadersListAdapterWrapper.this.notifyDataSetInvalidated();
        }
    };
    private ListAdapter mDelegate;

    public StickyGridHeadersListAdapterWrapper(ListAdapter adapter) {
        this.mDelegate = adapter;
        if (adapter != null) {
            adapter.registerDataSetObserver(this.mDataSetObserver);
        }
    }

    public int getCount() {
        if (this.mDelegate == null) {
            return 0;
        }
        return this.mDelegate.getCount();
    }

    public int getCountForHeader(int header) {
        return 0;
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public Object getItem(int position) {
        if (this.mDelegate == null) {
            return null;
        }
        return this.mDelegate.getItem(position);
    }

    public long getItemId(int position) {
        return this.mDelegate.getItemId(position);
    }

    public int getItemViewType(int position) {
        return this.mDelegate.getItemViewType(position);
    }

    public int getNumHeaders() {
        return 0;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        return this.mDelegate.getView(position, convertView, parent);
    }

    public int getViewTypeCount() {
        return this.mDelegate.getViewTypeCount();
    }

    public boolean hasStableIds() {
        return this.mDelegate.hasStableIds();
    }
}
