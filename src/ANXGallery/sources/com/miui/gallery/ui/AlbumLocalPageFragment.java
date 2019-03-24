package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.AsyncTaskLoader;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumPageAdapter;
import com.miui.gallery.loader.AsyncContentLoader;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.model.AlbumList;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.util.HashMap;
import miui.util.PlayerActions.Out;

public class AlbumLocalPageFragment extends BaseAlbumPageFragment implements OnItemClickListener {
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;
    private boolean mPendingLoadExtraInfo;

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        private AlbumPagePhotoLoaderCallback() {
        }

        private String getSelection() {
            return "classification = 1";
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            if (i == 1) {
                AsyncContentLoader<AlbumList> loader = new AsyncContentLoader(AlbumLocalPageFragment.this.mActivity, AlbumLocalPageFragment.this.mAlbumConvertCallback);
                loader.setUri(Album.URI.buildUpon().appendQueryParameter("join_video", "false").appendQueryParameter("join_face", "false").appendQueryParameter("join_share", "false").appendQueryParameter("exclude_empty_album", "true").build());
                loader.setProjection(AlbumLocalPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSelection(getSelection());
                loader.setSortOrder("sortBy ASC ");
                return loader;
            } else if (i != 2) {
                return null;
            } else {
                AsyncTaskLoader loader2 = new CursorLoader(AlbumLocalPageFragment.this.mActivity);
                loader2.setUri(Album.URI_SHARE_ALL);
                loader2.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader2.setSelection("count > 0");
                return loader2;
            }
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (loader.getId() == 1) {
                AlbumList albums = o != null ? (AlbumList) o : null;
                if (BaseMiscUtil.isValid(albums)) {
                    AlbumLocalPageFragment.this.mAlbumPageAdapter.getData().replaceAll(albums);
                } else {
                    AlbumLocalPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                    AlbumLocalPageFragment.this.mAlbumPageAdapter.getData().clear();
                }
                if (AlbumLocalPageFragment.this.mPendingLoadExtraInfo) {
                    AlbumLocalPageFragment.this.mPendingLoadExtraInfo = false;
                    AlbumLocalPageFragment.this.startToLoadExtraInfo();
                }
            } else if (loader.getId() == 2) {
                AlbumLocalPageFragment.this.mAlbumPageAdapter.setSharedAlbums((Cursor) o);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        setHasOptionsMenu(true);
        View view = inflater.inflate(R.layout.album_page_others, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mRecyclerView = (GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler();
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mAlbumPageAdapter = new AlbumPageAdapter(this.mActivity);
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapter);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setItemAnimator(null);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapter);
        this.mRecyclerView.setOnItemClickListener(this);
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback();
        this.mActivity.getActionBar().setTitle(this.mActivity.getString(R.string.other_album));
        return view;
    }

    public void onStart() {
        super.onStart();
        this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
    }

    public String getPageName() {
        return "album_local";
    }

    public boolean onItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
        if (this.mAlbumPageAdapter == null) {
            return false;
        }
        recordViewAlbum(position);
        return this.mAlbumPageAdapter.onItemClick(parent, view, position, id, x, y);
    }

    private void recordViewAlbum(int position) {
        String localPath = this.mAlbumPageAdapter.getAlbumLocalPath(position);
        if (!TextUtils.isEmpty(localPath)) {
            HashMap<String, String> params = new HashMap();
            params.put(Out.KEY_ALBUM_PATH, localPath.toLowerCase());
            params.put("album_attribute", String.valueOf(this.mAlbumPageAdapter.getAttributes(position)));
            params.put("album_image_count", String.valueOf(this.mAlbumPageAdapter.getAlbumCount(position)));
            BaseSamplingStatHelper.recordCountEvent(Out.KEY_ALBUM, "view_other_album", params);
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        startToLoadAlbums();
    }

    private void startToLoadAlbums() {
        Log.d("AlbumLocalPageFragment", "startToLoadAlbums");
        getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
        this.mPendingLoadExtraInfo = true;
    }

    private void startToLoadExtraInfo() {
        Log.d("AlbumLocalPageFragment", "startToLoadExtraInfo");
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
    }
}
