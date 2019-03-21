package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.RectF;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;

public abstract class BaseMediaAdapterDeprecated extends BaseAdapter {
    protected int mViewScrollState = 0;

    private static class OnScrollListenerWrapper implements OnScrollListener {
        private final OnScrollListener mWrapped;

        public OnScrollListenerWrapper(OnScrollListener wrapped) {
            this.mWrapped = wrapped;
        }

        public void onScrollStateChanged(AbsListView view, int scrollState) {
            if (this.mWrapped != null) {
                this.mWrapped.onScrollStateChanged(view, scrollState);
            }
        }

        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (this.mWrapped != null) {
                this.mWrapped.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
        }
    }

    protected abstract void doBindView(View view, Context context, Cursor cursor);

    public abstract long getItemKey(int i);

    public abstract String getMimeType(int i);

    public abstract String getSha1(int i);

    public BaseMediaAdapterDeprecated(Context context) {
        super(context);
    }

    public RectF getItemDecodeRectF(int position) {
        return null;
    }

    public byte[] getItemSecretKey(int position) {
        return null;
    }

    public final void bindView(View view, Context context, Cursor cursor) {
        view.setTag(R.id.tag_item_position, Integer.valueOf(cursor.getPosition()));
        doBindView(view, context, cursor);
    }

    public CheckedItem getCheckedItem(int position) {
        if (position >= getCount() || position < 0) {
            return null;
        }
        return new Builder().setId(getItemKey(position)).setSha1(getSha1(position)).setMicroThumbnailFile(getMicroThumbFilePath(position)).setThumbnailFile(getThumbFilePath(position)).setOriginFile(getOriginFilePath(position)).setMimeType(getMimeType(position)).build();
    }

    protected void onViewScrollStateChanged(AbsListView view, int scrollState) {
        this.mViewScrollState = scrollState;
    }

    protected void onViewScrolled(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
    }

    public OnScrollListener generateWrapScrollListener(OnScrollListener scrollListener) {
        return new OnScrollListenerWrapper(scrollListener) {
            public void onScrollStateChanged(AbsListView view, int scrollState) {
                super.onScrollStateChanged(view, scrollState);
                BaseMediaAdapterDeprecated.this.onViewScrollStateChanged(view, scrollState);
            }

            public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
                super.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
                BaseMediaAdapterDeprecated.this.onViewScrolled(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
        };
    }
}
