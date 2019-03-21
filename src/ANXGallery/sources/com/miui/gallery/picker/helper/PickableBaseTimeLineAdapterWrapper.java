package com.miui.gallery.picker.helper;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;

public class PickableBaseTimeLineAdapterWrapper extends PickableSimpleAdapterWrapper implements StickyGridHeadersBaseAdapter {
    private StickyGridHeadersBaseAdapter mBaseAdapter;

    public PickableBaseTimeLineAdapterWrapper(Picker picker, CursorAdapter adapter) {
        super(picker, adapter);
        if (adapter instanceof StickyGridHeadersBaseAdapter) {
            this.mBaseAdapter = (StickyGridHeadersBaseAdapter) adapter;
            return;
        }
        throw new IllegalArgumentException("Adapter must be a StickyGridHeadersBaseAdapter");
    }

    public int getCountForHeader(int header) {
        return this.mBaseAdapter.getCountForHeader(header);
    }

    public int getNumHeaders() {
        return this.mBaseAdapter.getNumHeaders();
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (this.mBaseAdapter != null) {
            return this.mBaseAdapter.getHeaderView(position, convertView, parent);
        }
        return null;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }
}
