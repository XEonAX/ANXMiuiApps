package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v7.util.SortedList;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumAdapterBase;
import com.miui.gallery.adapter.BaseAlbumListAdapter;
import com.miui.gallery.loader.AlbumConvertCallback;
import com.miui.gallery.loader.AsyncContentLoader;
import com.miui.gallery.model.Album.VirtualAlbum;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.model.AlbumList;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class PickAlbumPageFragment extends PickerFragment {
    private AlbumAdapterBase mAlbumPageAdapter;
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;
    private boolean mLoadInited;
    private boolean mPendingLoadExtraInfo;

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        private AlbumPagePhotoLoaderCallback() {
        }

        /* synthetic */ AlbumPagePhotoLoaderCallback(PickAlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            boolean firstTime = true;
            Loader loader;
            if (i == 1) {
                Loader loader2 = new AsyncContentLoader(PickAlbumPageFragment.this.mActivity, new AlbumConvertCallback());
                if (bundle == null || !bundle.getBoolean("first_time_load")) {
                    firstTime = false;
                }
                Uri uri = PickAlbumPageFragment.this.getAlbumQueryUri(firstTime);
                if (firstTime) {
                    uri = UriUtil.appendLimit(uri, 20);
                }
                loader2.setUri(uri);
                loader2.setProjection(PickAlbumPageFragment.this.mAlbumPageAdapter.getProjection());
                loader2.setSelection("media_count>0");
                return loader2;
            } else if (i == 2) {
                loader = new CursorLoader(PickAlbumPageFragment.this.mActivity);
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
                return loader;
            } else if (i != 3) {
                return null;
            } else {
                loader = new CursorLoader(PickAlbumPageFragment.this.mActivity);
                loader.setUri(PeopleFace.PEOPLE_FACE_COVER_URI);
                return loader;
            }
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (loader.getId() == 1) {
                int size;
                Collection albums = o != null ? (AlbumList) o : null;
                if (albums != null) {
                    size = albums.size();
                } else {
                    size = 0;
                }
                if (size <= 0) {
                    PickAlbumPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                } else if (PickAlbumPageFragment.this.mPendingLoadExtraInfo && size >= 5) {
                    ArrayList<com.miui.gallery.model.Album> albums2 = new ArrayList(albums);
                    if (PickAlbumPageFragment.this.getPicker().getMediaType() != MediaType.IMAGE) {
                        albums2.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.VIDEO));
                    }
                    albums2.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.FAVORITES));
                    albums2.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.RECENT));
                    Object albums3 = albums2;
                }
                SortedList<com.miui.gallery.model.Album> adapterData = PickAlbumPageFragment.this.mAlbumPageAdapter.getData();
                if (BaseMiscUtil.isValid(albums3)) {
                    adapterData.replaceAll(albums3);
                } else if (adapterData.size() > 0) {
                    adapterData.clear();
                } else {
                    PickAlbumPageFragment.this.mAlbumPageAdapter.notifyDataSetChanged();
                }
                if (PickAlbumPageFragment.this.mPendingLoadExtraInfo) {
                    PickAlbumPageFragment.this.mPendingLoadExtraInfo = false;
                    PickAlbumPageFragment.this.startToLoadAlbumExtraInfo();
                }
            } else if (loader.getId() == 2) {
                PickAlbumPageFragment.this.mAlbumPageAdapter.setSharedAlbums((Cursor) o);
            } else if (loader.getId() == 3) {
                PickAlbumPageFragment.this.mAlbumPageAdapter.setPeopleFaceCover((Cursor) o);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mLoadInited = false;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.picker_album_page, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mAlbumPageAdapter = new AlbumAdapterBase(this.mActivity);
        this.mAlbumPageAdapter.setInPickMode(true);
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapter);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setItemAnimator(null);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapter);
        ((GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler()).setOnItemClickListener(new OnItemClickListener() {
            public boolean onItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
                Intent intent = new Intent();
                if (BaseAlbumListAdapter.isFaceAlbum(id)) {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickPeopleActivity.class);
                } else if (BaseAlbumListAdapter.isRecentAlbum(id)) {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickRecentDiscoveryActivity.class);
                    intent.putExtra("album_id", id);
                    intent.putExtra("album_name", PickAlbumPageFragment.this.mAlbumPageAdapter.getAlbumName(position));
                } else {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickAlbumDetailActivity.class);
                }
                intent.putExtra("other_share_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isOtherShareAlbum(position));
                intent.putExtra("owner_share_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isOwnerShareAlbum(position));
                intent.putExtra("pano_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isPanoAlbum(position));
                intent.putExtra("album_id", id);
                intent.putExtra("album_name", PickAlbumPageFragment.this.mAlbumPageAdapter.getAlbumName(position));
                intent.putExtra("pick-upper-bound", PickAlbumPageFragment.this.mPicker.getMode() == Mode.UNLIMITED ? -1 : PickAlbumPageFragment.this.mPicker.capacity());
                intent.putExtra("pick-lower-bound", PickAlbumPageFragment.this.mPicker.baseline());
                intent.putExtra("picker_media_type", PickAlbumPageFragment.this.mPicker.getMediaType().ordinal());
                intent.putExtra("picker_result_set", PickerActivity.copyPicker(PickAlbumPageFragment.this.mPicker));
                intent.putExtra("picker_result_type", PickAlbumPageFragment.this.mPicker.getResultType().ordinal());
                PickAlbumPageFragment.this.startActivityForResult(intent, 1);
                return true;
            }
        });
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback(this, null);
        return view;
    }

    public void onStart() {
        super.onStart();
        this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
    }

    protected String getPageName() {
        return "picker_album";
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    protected Uri getUri() {
        return null;
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        return false;
    }

    private Uri getAlbumQueryUri(boolean firstTime) {
        boolean joinVideo;
        boolean joinFace;
        boolean z;
        boolean z2 = false;
        MediaType mediaType = getPicker().getMediaType();
        if (firstTime || mediaType == MediaType.IMAGE) {
            joinVideo = false;
        } else {
            joinVideo = true;
        }
        if (firstTime || mediaType == MediaType.VIDEO) {
            joinFace = false;
        } else {
            joinFace = true;
        }
        Builder appendQueryParameter = Album.URI.buildUpon().appendQueryParameter("join_face", String.valueOf(joinFace)).appendQueryParameter("join_video", String.valueOf(joinVideo));
        String str = "join_share";
        if (firstTime) {
            z = false;
        } else {
            z = true;
        }
        appendQueryParameter = appendQueryParameter.appendQueryParameter(str, String.valueOf(z));
        str = "join_recent";
        if (firstTime) {
            z = false;
        } else {
            z = true;
        }
        appendQueryParameter = appendQueryParameter.appendQueryParameter(str, String.valueOf(z));
        str = "join_favorites";
        if (firstTime) {
            z = false;
        } else {
            z = true;
        }
        Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter(str, String.valueOf(z)).appendQueryParameter("remove_duplicate_items", "true");
        String str2 = "fill_covers";
        if (!firstTime) {
            z2 = true;
        }
        Builder builder = appendQueryParameter2.appendQueryParameter(str2, String.valueOf(z2));
        if (mediaType == MediaType.IMAGE) {
            builder.appendQueryParameter("media_type", String.valueOf(1));
        } else if (mediaType == MediaType.VIDEO) {
            builder.appendQueryParameter("media_type", String.valueOf(2));
        }
        return builder.build();
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (getUserVisibleHint() && !this.mLoadInited) {
            startToLoadAlbums();
            this.mLoadInited = true;
        }
    }

    private void startToLoadAlbums() {
        Log.d("PickAlbumPageFragment", "startToLoadAlbums");
        Bundle args = new Bundle();
        args.putBoolean("first_time_load", true);
        getLoaderManager().initLoader(1, args, this.mAlbumPagePhotoLoaderCallback);
        this.mLoadInited = true;
        this.mPendingLoadExtraInfo = true;
    }

    private void startToLoadAlbumExtraInfo() {
        Log.d("PickAlbumPageFragment", "startToLoadAlbumExtraInfo");
        getLoaderManager().restartLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
        if (getPicker().getMediaType() != MediaType.VIDEO) {
            getLoaderManager().initLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 0) {
            this.mPicker.cancel();
            return;
        }
        List<String> fromAlbum = (List) data.getSerializableExtra("internal_key_updated_selection");
        if (fromAlbum != null) {
            Log.d("PickAlbumPageFragment", "Pick result of pre album: %s ", Integer.valueOf(fromAlbum.size()));
            Object removed = new ArrayList();
            for (String sha1 : this.mPicker) {
                if (!fromAlbum.contains(sha1)) {
                    removed.add(sha1);
                }
            }
            Log.d("PickAlbumPageFragment", "Deleted items in pre album : %s ", removed);
            Iterator it = removed.iterator();
            while (it.hasNext()) {
                this.mPicker.remove((String) it.next());
            }
            for (String sha12 : fromAlbum) {
                if (!this.mPicker.contains(sha12)) {
                    this.mPicker.pick(sha12);
                }
            }
            if (resultCode == -1) {
                this.mPicker.done();
            }
        }
    }
}
