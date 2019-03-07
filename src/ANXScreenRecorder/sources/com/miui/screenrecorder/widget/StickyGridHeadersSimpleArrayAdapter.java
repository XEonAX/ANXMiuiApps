package com.miui.screenrecorder.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Arrays;
import java.util.List;

public class StickyGridHeadersSimpleArrayAdapter<T> extends BaseAdapter implements StickyGridHeadersSimpleAdapter {
    protected static final String TAG = StickyGridHeadersSimpleArrayAdapter.class.getSimpleName();
    private int mHeaderResId;
    private LayoutInflater mInflater;
    private int mItemResId;
    private List<T> mItems;

    protected class HeaderViewHolder {
        public TextView textView;

        protected HeaderViewHolder() {
        }
    }

    protected class ViewHolder {
        public TextView textView;

        protected ViewHolder() {
        }
    }

    public StickyGridHeadersSimpleArrayAdapter(Context context, List<T> items, int headerResId, int itemResId) {
        init(context, items, headerResId, itemResId);
    }

    public StickyGridHeadersSimpleArrayAdapter(Context context, T[] items, int headerResId, int itemResId) {
        init(context, Arrays.asList(items), headerResId, itemResId);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public int getCount() {
        return this.mItems.size();
    }

    public long getHeaderId(int position) {
        CharSequence value;
        T item = getItem(position);
        if (item instanceof CharSequence) {
            value = (CharSequence) item;
        } else {
            value = item.toString();
        }
        return (long) value.subSequence(0, 1).charAt(0);
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        HeaderViewHolder holder;
        CharSequence string;
        if (convertView == null) {
            convertView = this.mInflater.inflate(this.mHeaderResId, parent, false);
            holder = new HeaderViewHolder();
            holder.textView = (TextView) convertView.findViewById(16908308);
            convertView.setTag(holder);
        } else {
            holder = (HeaderViewHolder) convertView.getTag();
        }
        T item = getItem(position);
        if (item instanceof CharSequence) {
            string = (CharSequence) item;
        } else {
            string = item.toString();
        }
        holder.textView.setText(string.subSequence(0, 1));
        return convertView;
    }

    public T getItem(int position) {
        return this.mItems.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            convertView = this.mInflater.inflate(this.mItemResId, parent, false);
            holder = new ViewHolder();
            holder.textView = (TextView) convertView.findViewById(16908308);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        T item = getItem(position);
        if (item instanceof CharSequence) {
            holder.textView.setText((CharSequence) item);
        } else {
            holder.textView.setText(item.toString());
        }
        return convertView;
    }

    private void init(Context context, List<T> items, int headerResId, int itemResId) {
        this.mItems = items;
        this.mHeaderResId = headerResId;
        this.mItemResId = itemResId;
        this.mInflater = LayoutInflater.from(context);
    }
}
