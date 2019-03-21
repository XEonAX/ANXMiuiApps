package com.tonicartos.widget.stickygridheaders;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StickyGridHeadersSimpleAdapterWrapper extends BaseAdapter implements StickyGridHeadersBaseAdapter {
    private StickyGridHeadersSimpleAdapter mDelegate;
    private List<HeaderData> mHeaders;

    private final class DataSetObserverExtension extends DataSetObserver {
        private DataSetObserverExtension() {
        }

        public void onChanged() {
            StickyGridHeadersSimpleAdapterWrapper.this.mHeaders = StickyGridHeadersSimpleAdapterWrapper.this.generateHeaderList(StickyGridHeadersSimpleAdapterWrapper.this.mDelegate);
            StickyGridHeadersSimpleAdapterWrapper.this.notifyDataSetChanged();
        }

        public void onInvalidated() {
            StickyGridHeadersSimpleAdapterWrapper.this.mHeaders = StickyGridHeadersSimpleAdapterWrapper.this.generateHeaderList(StickyGridHeadersSimpleAdapterWrapper.this.mDelegate);
            StickyGridHeadersSimpleAdapterWrapper.this.notifyDataSetInvalidated();
        }
    }

    private class HeaderData {
        private int mCount = 0;
        private int mRefPosition;

        public HeaderData(int refPosition) {
            this.mRefPosition = refPosition;
        }

        public int getCount() {
            return this.mCount;
        }

        public int getRefPosition() {
            return this.mRefPosition;
        }

        public void incrementCount() {
            this.mCount++;
        }
    }

    public StickyGridHeadersSimpleAdapterWrapper(StickyGridHeadersSimpleAdapter adapter) {
        this.mDelegate = adapter;
        adapter.registerDataSetObserver(new DataSetObserverExtension());
        this.mHeaders = generateHeaderList(adapter);
    }

    public int getCount() {
        return this.mDelegate.getCount();
    }

    public int getCountForHeader(int position) {
        return ((HeaderData) this.mHeaders.get(position)).getCount();
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        return this.mDelegate.getHeaderView(((HeaderData) this.mHeaders.get(position)).getRefPosition(), convertView, parent);
    }

    public boolean shouldDrawDivider() {
        return this.mDelegate.shouldDrawDivider();
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return this.mDelegate.getDividerView(((HeaderData) this.mHeaders.get(position)).getRefPosition(), convertView, parent);
    }

    public Object getItem(int position) {
        return this.mDelegate.getItem(position);
    }

    public long getItemId(int position) {
        return this.mDelegate.getItemId(position);
    }

    public int getItemViewType(int position) {
        return this.mDelegate.getItemViewType(position);
    }

    public int getNumHeaders() {
        return this.mHeaders.size();
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

    protected List<HeaderData> generateHeaderList(StickyGridHeadersSimpleAdapter adapter) {
        Map<Long, HeaderData> mapping = new HashMap();
        List<HeaderData> headers = new ArrayList();
        for (int i = 0; i < adapter.getCount(); i++) {
            long headerId = adapter.getHeaderId(i);
            HeaderData headerData = (HeaderData) mapping.get(Long.valueOf(headerId));
            if (headerData == null) {
                headerData = new HeaderData(i);
                headers.add(headerData);
            }
            headerData.incrementCount();
            mapping.put(Long.valueOf(headerId), headerData);
        }
        return headers;
    }
}
