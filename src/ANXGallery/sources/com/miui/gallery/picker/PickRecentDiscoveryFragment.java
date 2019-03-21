package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.RecentDiscoveryAdapter;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.picker.helper.CursorUtils;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.PickerItemHolder;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.RecentDiscoveredMedia;
import com.miui.gallery.ui.Checkable;
import com.miui.gallery.ui.MicroThumbGridItem;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;

public class PickRecentDiscoveryFragment extends PickAlbumDetailFragmentBase {
    private PickRecentAlbumTimelineAdapter mAdapter;
    private AlbumItemCheckListener mAlbumItemCheckListener;
    private RecentDiscoveryLoaderCallback mLoaderCallback;

    private class PickRecentAlbumTimelineAdapter extends RecentDiscoveryAdapter {
        public PickRecentAlbumTimelineAdapter(Context context) {
            super(context, DisplayScene.SCENE_NONE, true);
        }

        public void doBindData(View view, Context context, Cursor cursor) {
            super.doBindData(view, context, cursor);
            PickRecentDiscoveryFragment.this.bindCheckState(view, cursor);
            PickerItemHolder.bindView(cursor.getPosition(), view, this, PickRecentDiscoveryFragment.this.mAlbumItemCheckListener);
        }
    }

    private class RecentDiscoveryLoaderCallback implements LoaderCallbacks {
        private RecentDiscoveryLoaderCallback() {
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PickRecentDiscoveryFragment.this.mActivity);
            switch (i) {
                case 1:
                    loader.setUri(PickRecentDiscoveryFragment.this.getUri());
                    loader.setProjection(RecentDiscoveryAdapter.PROJECTION);
                    loader.setSelection(PickRecentDiscoveryFragment.this.getSelection());
                    loader.setSelectionArgs(PickRecentDiscoveryFragment.this.getSelectionArgs());
                    loader.setSortOrder(PickRecentDiscoveryFragment.this.getSortOrder());
                    break;
                case 2:
                    loader.setUri(Album.URI_ALL);
                    loader.setProjection(AlbumsCursorHelper.ALL_ALBUMS_PROJECTION);
                    loader.setSortOrder("sortBy ASC ");
                    break;
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            switch (loader.getId()) {
                case 1:
                    PickRecentDiscoveryFragment.this.mAdapter.swapCursor((Cursor) o);
                    PickRecentDiscoveryFragment.this.copy2Pick();
                    return;
                case 2:
                    PickRecentDiscoveryFragment.this.mAdapter.setAllAlbums((Cursor) o);
                    return;
                default:
                    return;
            }
        }

        public void onLoaderReset(Loader loader) {
            switch (loader.getId()) {
                case 1:
                    PickRecentDiscoveryFragment.this.mAdapter.changeCursor(null);
                    return;
                case 2:
                    PickRecentDiscoveryFragment.this.mAdapter.setAllAlbums(null);
                    return;
                default:
                    return;
            }
        }
    }

    public PickRecentDiscoveryFragment() {
        super("recent");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mAdapter = new PickRecentAlbumTimelineAdapter(this.mActivity);
        this.mAdapter.setShareAlbums(null);
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.album_recent, container, false);
        this.mAlbumDetailGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mAlbumDetailGridView.setHeadersIgnorePadding(true);
        this.mAlbumDetailGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mAlbumDetailGridView.setAdapter(this.mAdapter);
        this.mAlbumItemCheckListener = new AlbumItemCheckListener(this.mPicker);
        intialSelections();
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mLoaderCallback = new RecentDiscoveryLoaderCallback();
        getLoaderManager().initLoader(1, null, this.mLoaderCallback);
        getLoaderManager().initLoader(2, null, this.mLoaderCallback);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateConfiguration(newConfig);
        this.mAlbumDetailGridView.setSelection(this.mAlbumDetailGridView.getFirstVisiblePosition());
    }

    private void updateConfiguration(Configuration newConfig) {
        int columns;
        if (newConfig.orientation == 2) {
            columns = ThumbConfig.get().sMicroThumbRecentColumnsLand;
        } else {
            columns = ThumbConfig.get().sMicroThumbRecentColumnsPortrait;
        }
        this.mAlbumDetailGridView.setNumColumns(columns);
    }

    private String getSelection() {
        if (getPicker().getMediaType() != MediaType.ALL) {
            return "serverType=?";
        }
        return null;
    }

    private String[] getSelectionArgs() {
        if (getPicker().getMediaType() == MediaType.IMAGE) {
            return new String[]{String.valueOf(1)};
        } else if (getPicker().getMediaType() != MediaType.IMAGE) {
            return null;
        } else {
            return new String[]{String.valueOf(2)};
        }
    }

    protected String getPageName() {
        return "picker_recent_album";
    }

    protected Uri getUri() {
        return RecentDiscoveredMedia.URI.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).appendQueryParameter("remove_processing_items", String.valueOf(true)).appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
    }

    private String getSortOrder() {
        return "dateModified DESC";
    }

    protected void bindCheckState(View view, Cursor cursor) {
        if (this.mPicker.getMode() != Mode.SINGLE) {
            Checkable checkable = (Checkable) view;
            checkable.setCheckable(true);
            checkable.setChecked(this.mPicker.contains(CursorUtils.getSha1(cursor)));
        } else if (view instanceof MicroThumbGridItem) {
            ((MicroThumbGridItem) view).setSimilarMarkEnable(true);
        }
    }

    public void onDestroy() {
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
