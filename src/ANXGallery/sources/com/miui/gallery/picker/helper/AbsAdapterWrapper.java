package com.miui.gallery.picker.helper;

import android.database.Cursor;
import android.database.DataSetObserver;
import android.widget.BaseAdapter;
import android.widget.CursorAdapter;

abstract class AbsAdapterWrapper extends BaseAdapter {
    private CursorAdapter mWrapped;

    public AbsAdapterWrapper(CursorAdapter adapter) {
        this.mWrapped = adapter;
    }

    public boolean areAllItemsEnabled() {
        return this.mWrapped.areAllItemsEnabled();
    }

    public boolean isEnabled(int position) {
        return this.mWrapped.isEnabled(position);
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        this.mWrapped.registerDataSetObserver(observer);
    }

    public void unregisterDataSetObserver(DataSetObserver observer) {
        this.mWrapped.unregisterDataSetObserver(observer);
    }

    public void notifyDataSetChanged() {
        this.mWrapped.notifyDataSetChanged();
    }

    public void notifyDataSetInvalidated() {
        this.mWrapped.notifyDataSetInvalidated();
    }

    public int getCount() {
        return this.mWrapped.getCount();
    }

    public Object getItem(int position) {
        return this.mWrapped.getItem(position);
    }

    public long getItemId(int position) {
        return this.mWrapped.getItemId(position);
    }

    public boolean hasStableIds() {
        return this.mWrapped.hasStableIds();
    }

    public int getItemViewType(int position) {
        return this.mWrapped.getItemViewType(position);
    }

    public int getViewTypeCount() {
        return this.mWrapped.getViewTypeCount();
    }

    public boolean isEmpty() {
        return this.mWrapped.isEmpty();
    }

    public Cursor swapCursor(Cursor newCursor) {
        return this.mWrapped.swapCursor(newCursor);
    }
}
