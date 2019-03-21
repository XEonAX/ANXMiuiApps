package com.miui.gallery.ui;

import android.app.Fragment;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridView;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumPageHeaderAdapter;
import com.miui.gallery.model.FaceAlbumCover;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.SearchStatusLoader;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.resultpage.DataListResultProcessor;
import com.miui.gallery.search.resultpage.DataListSourceResult;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.ArrayList;
import java.util.Iterator;

public class AlbumPageHeaderController implements LoaderCallbacks {
    private AlbumPageHeaderAdapter mAdapter;
    private int mAlbumCoverNum;
    private Fragment mFragment;
    private GridView mGridView;
    private ArrayList<Long> mLocationsAlbumCoverServerIds;
    private int mSearchStatus = -1;
    private ArrayList<Long> mTagsAlbumCoverServerIds;
    private Future mTaskFuture;

    public AlbumPageHeaderController(Fragment fragment) {
        this.mFragment = fragment;
        this.mGridView = (GridView) LayoutInflater.from(this.mFragment.getActivity()).inflate(R.layout.album_page_header_grid, null, false);
        this.mAdapter = new AlbumPageHeaderAdapter(this.mFragment.getActivity());
        this.mGridView.setAdapter(this.mAdapter);
        this.mAlbumCoverNum = this.mFragment.getResources().getInteger(R.integer.album_page_header_cover_num);
        this.mLocationsAlbumCoverServerIds = new ArrayList();
        this.mTagsAlbumCoverServerIds = new ArrayList();
        getLoaderManager().initLoader(-1, null, this);
        getLoaderManager().initLoader(-2, null, this);
        getLoaderManager().initLoader(-3, null, this);
        getLoaderManager().initLoader(-4, null, this);
    }

    public View getView() {
        return this.mGridView;
    }

    private LoaderManager getLoaderManager() {
        return this.mFragment.getLoaderManager();
    }

    private QueryLoader buildQueryLoaderByType(SectionType type) {
        Builder builder = new Builder(SearchType.SEARCH_TYPE_RESULT_LIST);
        builder.addParam(nexExportFormat.TAG_FORMAT_TYPE, type.getName());
        builder.addParam("pos", "0");
        builder.addParam("num", String.valueOf(this.mAlbumCoverNum));
        builder.addParam("secureMode", String.valueOf(true));
        builder.addParam("use_persistent_response", String.valueOf(true));
        return new QueryLoader(this.mFragment.getActivity(), builder.build(), new DataListResultProcessor());
    }

    public Loader onCreateLoader(int id, Bundle args) {
        switch (id) {
            case -4:
                return new SearchStatusLoader(this.mFragment.getActivity(), null);
            case -3:
                return buildQueryLoaderByType(SectionType.SECTION_TYPE_TAG_LIST);
            case -2:
                return buildQueryLoaderByType(SectionType.SECTION_TYPE_LOCATION_LIST);
            case -1:
                Loader loader = new CursorLoader(this.mFragment.getActivity());
                ((CursorLoader) loader).setUri(PeopleFace.PEOPLE_FACE_COVER_URI);
                return loader;
            default:
                return null;
        }
    }

    public void onLoadFinished(Loader loader, Object data) {
        Cursor cursor = null;
        ArrayList<String> covers;
        String cover;
        switch (loader.getId()) {
            case -4:
                if (data != null && (data instanceof Integer)) {
                    updateSearchStatus(((Integer) data).intValue());
                    return;
                }
                return;
            case -3:
                covers = null;
                if (data != null && (data instanceof DataListSourceResult)) {
                    this.mTagsAlbumCoverServerIds.clear();
                    cursor = ((DataListSourceResult) data).getData();
                    if (cursor != null && cursor.getCount() > 0) {
                        covers = new ArrayList();
                        cursor.moveToFirst();
                        while (!cursor.isAfterLast()) {
                            cover = ((SuggestionCursor) cursor).getSuggestionIcon();
                            covers.add(cover);
                            this.mTagsAlbumCoverServerIds.add(Long.valueOf(parseAlbumCoverServerId(cover)));
                            cursor.moveToNext();
                        }
                    }
                }
                this.mAdapter.setAlbumCover(2, covers);
                return;
            case -2:
                covers = null;
                if (data != null && (data instanceof DataListSourceResult)) {
                    this.mLocationsAlbumCoverServerIds.clear();
                    cursor = ((DataListSourceResult) data).getData();
                    if (cursor != null && cursor.getCount() > 0) {
                        covers = new ArrayList();
                        cursor.moveToFirst();
                        while (!cursor.isAfterLast()) {
                            cover = ((SuggestionCursor) cursor).getSuggestionIcon();
                            covers.add(cover);
                            this.mLocationsAlbumCoverServerIds.add(Long.valueOf(parseAlbumCoverServerId(cover)));
                            cursor.moveToNext();
                        }
                    }
                }
                this.mAdapter.setAlbumCover(1, covers);
                return;
            case -1:
                ArrayList<FaceAlbumCover> covers2 = null;
                if (data != null && (data instanceof Cursor)) {
                    cursor = (Cursor) data;
                }
                if (!(cursor == null || cursor.getExtras() == null)) {
                    covers2 = cursor.getExtras().getParcelableArrayList("face_album_cover");
                }
                this.mAdapter.setAlbumCover(0, covers2);
                return;
            default:
                return;
        }
    }

    private long parseAlbumCoverServerId(String cover) {
        try {
            return Long.parseLong(Uri.parse(cover).getQueryParameter("serverId"));
        } catch (Exception e) {
            Log.e("AlbumPageHeaderController", "Invalid album cover Uri: %s", (Object) cover);
            return -1;
        }
    }

    private void updateSearchStatus(int newStatus) {
        if (newStatus != this.mSearchStatus) {
            if (SearchConstants.isErrorStatus(this.mSearchStatus) && !SearchConstants.isErrorStatus(newStatus)) {
                getLoaderManager().restartLoader(-2, null, this);
                getLoaderManager().restartLoader(-3, null, this);
            }
            this.mSearchStatus = newStatus;
        }
    }

    public void onLoaderReset(Loader loader) {
    }

    private void restartSearchAlbumLoaderIfNeeded() {
        if (this.mTaskFuture == null || this.mTaskFuture.isDone() || this.mTaskFuture.isCancelled()) {
            this.mTaskFuture = ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    if (jc == null || !jc.isCancelled()) {
                        Iterator it;
                        Long serverId;
                        boolean albumCoverValid;
                        Context context = AlbumPageHeaderController.this.mFragment.getActivity();
                        if (context != null && BaseMiscUtil.isValid(AlbumPageHeaderController.this.mLocationsAlbumCoverServerIds)) {
                            it = AlbumPageHeaderController.this.mLocationsAlbumCoverServerIds.iterator();
                            while (it.hasNext()) {
                                serverId = (Long) it.next();
                                if (serverId.longValue() > 0) {
                                    albumCoverValid = AlbumPageHeaderController.this.isAlbumCoverValid(context, serverId.longValue());
                                    if (jc != null && jc.isCancelled()) {
                                        break;
                                    } else if (!albumCoverValid) {
                                        ThreadManager.getMainHandler().post(new Runnable() {
                                            public void run() {
                                                if (AlbumPageHeaderController.this.mFragment != null && AlbumPageHeaderController.this.mFragment.isAdded()) {
                                                    AlbumPageHeaderController.this.getLoaderManager().restartLoader(-2, null, AlbumPageHeaderController.this);
                                                }
                                            }
                                        });
                                        break;
                                    }
                                }
                            }
                        }
                        context = AlbumPageHeaderController.this.mFragment.getActivity();
                        if (context != null && BaseMiscUtil.isValid(AlbumPageHeaderController.this.mTagsAlbumCoverServerIds)) {
                            it = AlbumPageHeaderController.this.mTagsAlbumCoverServerIds.iterator();
                            while (it.hasNext()) {
                                serverId = (Long) it.next();
                                if (serverId.longValue() > 0) {
                                    albumCoverValid = AlbumPageHeaderController.this.isAlbumCoverValid(context, serverId.longValue());
                                    if (jc != null && jc.isCancelled()) {
                                        break;
                                    } else if (!albumCoverValid) {
                                        ThreadManager.getMainHandler().post(new Runnable() {
                                            public void run() {
                                                if (AlbumPageHeaderController.this.mFragment != null && AlbumPageHeaderController.this.mFragment.isAdded()) {
                                                    AlbumPageHeaderController.this.getLoaderManager().restartLoader(-3, null, AlbumPageHeaderController.this);
                                                }
                                            }
                                        });
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    return null;
                }
            });
        }
    }

    private boolean isAlbumCoverValid(Context context, long serverId) {
        Boolean result = (Boolean) SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, new String[]{"count(*)"}, "serverId = ? AND ((localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))) AND ((localGroupId!=-1000))", new String[]{String.valueOf(serverId)}, null, new QueryHandler<Boolean>() {
            public Boolean handle(Cursor cursor) {
                boolean z = false;
                if (cursor != null && cursor.moveToFirst() && cursor.getInt(0) > 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        return result != null && result.booleanValue();
    }

    public void onDestroy() {
        if (this.mTaskFuture != null && !this.mTaskFuture.isDone() && !this.mTaskFuture.isCancelled()) {
            this.mTaskFuture.cancel();
        }
    }

    public void onResume() {
        restartSearchAlbumLoaderIfNeeded();
    }
}
