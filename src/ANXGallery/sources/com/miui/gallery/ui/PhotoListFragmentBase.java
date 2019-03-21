package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.IntentUtil;

public abstract class PhotoListFragmentBase extends BaseMediaFragment {
    protected GridView mAlbumDetailGridView;
    protected LoaderCallbacks mAlbumDetailLoaderCallback;
    protected long mAlbumId = -1;
    protected String mAlbumName;
    protected View mEmptyView;

    private class PhotoListLoaderCallback implements LoaderCallbacks {
        private PhotoListLoaderCallback() {
        }

        /* synthetic */ PhotoListLoaderCallback(PhotoListFragmentBase x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader cursorLoader = new CursorLoader(PhotoListFragmentBase.this.mActivity);
            PhotoListFragmentBase.this.configLoader(cursorLoader);
            return cursorLoader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            PhotoListFragmentBase.this.mayDoAdditionalWork((Cursor) o);
            PhotoListFragmentBase.this.getAdapter().swapCursor((Cursor) o);
            if (PhotoListFragmentBase.this.getAdapter().getCount() == 0) {
                PhotoListFragmentBase.this.setEmptyViewVisibility(0);
            } else {
                PhotoListFragmentBase.this.setEmptyViewVisibility(8);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    protected abstract AlbumDetailSimpleAdapter getAdapter();

    protected abstract int getLayoutSource();

    protected abstract String getSelection();

    protected abstract String[] getSelectionArgs();

    protected abstract Uri getUri();

    protected AlbumDetailSimpleAdapter getViewAdapter() {
        return getAdapter();
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(getLayoutSource(), container, false);
        this.mAlbumDetailGridView = (GridView) view.findViewById(R.id.grid);
        this.mEmptyView = view.findViewById(16908292);
        setEmptyViewVisibility(8);
        return view;
    }

    protected void setEmptyViewVisibility(int visibility) {
        if (this.mEmptyView != null) {
            this.mEmptyView.setVisibility(visibility);
        }
    }

    public void onStart() {
        super.onStart();
        getAdapter().updateGalleryCloudSyncableState();
    }

    protected OnItemClickListener getGridViewOnItemClickListener() {
        return new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                AlbumDetailSimpleAdapter adapter = PhotoListFragmentBase.this.getViewAdapter();
                IntentUtil.gotoPhotoPage(PhotoListFragmentBase.this, adapterView, PhotoListFragmentBase.this.getUri(), position, adapter.getCount(), PhotoListFragmentBase.this.getSelection(), PhotoListFragmentBase.this.getSelectionArgs(), PhotoListFragmentBase.this.getCurrentSortOrder(), new ImageLoadParams(adapter.getItemKey(position), adapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, adapter.getItemDecodeRectF(position), position, adapter.getMimeType(position), adapter.getItemSecretKey(position), adapter.getFileLength(position)), PhotoListFragmentBase.this.mAlbumId, PhotoListFragmentBase.this.mAlbumName, PhotoListFragmentBase.this.getSupportOperationMask());
                BaseSamplingStatHelper.recordNumericPropertyEvent(PhotoListFragmentBase.this.getPageName(), "click_micro_thumb", (long) position);
            }
        };
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getLoaderManager().initLoader(1, null, getLoaderCallback());
    }

    protected Loader getLoader() {
        return getLoaderManager().getLoader(1);
    }

    protected LoaderCallbacks getLoaderCallback() {
        if (this.mAlbumDetailLoaderCallback == null) {
            this.mAlbumDetailLoaderCallback = new PhotoListLoaderCallback(this, null);
        }
        return this.mAlbumDetailLoaderCallback;
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mAlbumDetailGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsLand);
        } else {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsPortrait);
        }
        this.mAlbumDetailGridView.setSelection(firstVisibleItemPosition);
    }

    protected String getCurrentSortOrder() {
        return "alias_sort_time DESC ";
    }

    protected String[] getProjection() {
        return AlbumDetailSimpleAdapter.PROJECTION;
    }

    protected int getSupportOperationMask() {
        return -1;
    }

    protected void configLoader(CursorLoader loader) {
        loader.setUri(getUri());
        loader.setProjection(getProjection());
        loader.setSelection(getSelection());
        loader.setSelectionArgs(getSelectionArgs());
        loader.setSortOrder(getCurrentSortOrder());
    }

    protected void mayDoAdditionalWork(Cursor o) {
    }

    public void onDestroy() {
        AlbumDetailSimpleAdapter adapter = getViewAdapter();
        if (adapter != null) {
            adapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
