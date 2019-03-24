package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.adapter.RecentDiscoveryAdapter;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.RecentDiscoveredMedia;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.ShareAlbumsCursorHelper;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import com.miui.internal.vip.VipConstants;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class RecentDiscoveryFragment extends BaseMediaFragment {
    protected long mAlbumId;
    protected String mAlbumName;
    private MultiChoiceModeListener mChoiceModeListener = new MultiChoiceModeListener() {
        private MenuItem mAddToAlbum;
        private MenuItem mCreativity;
        private MenuItem mDelete;
        private ActionMode mMode;
        private MenuItem mSend;

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            updateMenuState();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            updateMenuState();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            this.mMode = mode;
            mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(RecentDiscoveryFragment.this.mActivity) ? R.menu.v15_home_page_menu : R.menu.home_page_menu, menu);
            this.mAddToAlbum = menu.findItem(R.id.add_to_album);
            this.mCreativity = menu.findItem(R.id.action_produce);
            this.mDelete = menu.findItem(R.id.delete);
            if (this.mCreativity != null) {
                this.mCreativity.setVisible(true);
            }
            if (this.mDelete != null) {
                this.mDelete.setVisible(true);
            }
            this.mSend = menu.findItem(R.id.action_send);
            BaseSamplingStatHelper.recordCountEvent("recent_album", "action_mode_create");
            BaseSamplingStatHelper.recordNumericPropertyEvent("best_image", "best_image_count", (long) ImageFeatureCacheManager.getInstance().getBestImageCount(false));
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return false;
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            SparseBooleanArray selectedItems;
            int i;
            int key;
            switch (item.getItemId()) {
                case R.id.delete /*2131886699*/:
                    RecentDiscoveryFragment.this.doDelete(mode);
                    BaseSamplingStatHelper.recordCountEvent("recent_album", "delete_photo");
                    break;
                case R.id.action_produce /*2131886849*/:
                    final ActionMode actionMode = mode;
                    MediaAndAlbumOperations.doProduceCreation(RecentDiscoveryFragment.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            List<CheckedItem> selectedItems = RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItems();
                            int bestImageCount = 0;
                            for (int i = 0; i < selectedItems.size(); i++) {
                                if (ImageFeatureCacheManager.getInstance().isBestImage(((CheckedItem) selectedItems.get(i)).getId(), false)) {
                                    bestImageCount++;
                                }
                            }
                            Map map = new HashMap();
                            map.put("count", Integer.valueOf(selectedItems.size()));
                            map.put("best_image_count", Integer.valueOf(bestImageCount));
                            BaseSamplingStatHelper.recordCountEvent("recent_album", "produce", map);
                            actionMode.finish();
                        }
                    }, RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItems());
                    break;
                case R.id.action_send /*2131886850*/:
                    int initPos = Integer.MAX_VALUE;
                    selectedItems = RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItemPositions();
                    ArrayList<Integer> arrayList = new ArrayList(selectedItems.size());
                    ArrayList<Long> arrayList2 = new ArrayList(selectedItems.size());
                    for (i = 0; i < selectedItems.size(); i++) {
                        key = selectedItems.keyAt(i);
                        if (selectedItems.get(key)) {
                            arrayList.add(Integer.valueOf(key));
                            arrayList2.add(Long.valueOf(RecentDiscoveryFragment.this.getAdapter().getItemKey(key)));
                            if (key < initPos) {
                                initPos = key;
                            }
                        }
                    }
                    int[] selectedPos = new int[arrayList.size()];
                    long[] selectedId = new long[arrayList2.size()];
                    for (i = 0; i < arrayList.size(); i++) {
                        selectedPos[i] = ((Integer) arrayList.get(i)).intValue();
                        selectedId[i] = ((Long) arrayList2.get(i)).longValue();
                    }
                    if (initPos == Integer.MAX_VALUE) {
                        initPos = 0;
                    }
                    if (selectedPos.length > 0 && RecentDiscoveryFragment.this.getAdapter().getCount() > 0) {
                        IntentUtil.gotoPreviewSelectPage(RecentDiscoveryFragment.this, RecentDiscoveryFragment.this.getUri(), initPos, RecentDiscoveryFragment.this.getAdapter().getCount(), RecentDiscoveryFragment.this.getSelection(), RecentDiscoveryFragment.this.getSelectionArgs(), RecentDiscoveryFragment.this.getSortOrder(), new ImageLoadParams(RecentDiscoveryFragment.this.getAdapter().getItemKey(initPos), RecentDiscoveryFragment.this.getAdapter().getLocalPath(initPos), ThumbConfig.get().sMicroRecentTargetSize, RecentDiscoveryFragment.this.getAdapter().getItemDecodeRectF(initPos), initPos, RecentDiscoveryFragment.this.getAdapter().getMimeType(initPos), RecentDiscoveryFragment.this.getAdapter().getItemSecretKey(initPos), RecentDiscoveryFragment.this.getAdapter().getFileLength(initPos)), selectedId, selectedPos);
                    }
                    mode.finish();
                    BaseSamplingStatHelper.recordCountEvent("recent_album", "send");
                    break;
                case R.id.add_to_album /*2131886852*/:
                    MediaAndAlbumOperations.addToAlbum(RecentDiscoveryFragment.this.mActivity, new OnAddAlbumListener() {
                        public void onComplete(long[] result, boolean deleteOrigin) {
                            AnonymousClass2.this.mMode.finish();
                        }
                    }, 0, true, true, RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItemIds());
                    BaseSamplingStatHelper.recordCountEvent("recent_album", "add_to_album");
                    break;
                default:
                    return false;
            }
            selectedItems = RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItemPositions();
            ArrayList<Integer> positions = new ArrayList();
            for (i = 0; i < selectedItems.size(); i++) {
                key = selectedItems.keyAt(i);
                if (selectedItems.get(key)) {
                    positions.add(Integer.valueOf(key));
                }
            }
            RecentDiscoveryAdapter adapter = RecentDiscoveryFragment.this.getAdapter();
            Iterator it = positions.iterator();
            while (it.hasNext()) {
                long dateModified = adapter.getDateModified(((Integer) it.next()).intValue());
                if (dateModified < RecentDiscoveryFragment.this.mOldestDateModified) {
                    RecentDiscoveryFragment.this.mOldestDateModified = dateModified;
                }
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
        }

        private void updateMenuState() {
            if (RecentDiscoveryFragment.this.mGridViewWrapper.getCheckedItemCount() < 1) {
                if (isMenuItemVisible(this.mDelete)) {
                    this.mDelete.setEnabled(false);
                }
                if (isMenuItemVisible(this.mAddToAlbum)) {
                    this.mAddToAlbum.setEnabled(false);
                }
                if (isMenuItemVisible(this.mCreativity)) {
                    this.mCreativity.setEnabled(false);
                }
                if (isMenuItemVisible(this.mSend)) {
                    this.mSend.setEnabled(false);
                    return;
                }
                return;
            }
            if (isMenuItemVisible(this.mDelete)) {
                this.mDelete.setEnabled(true);
            }
            if (isMenuItemVisible(this.mAddToAlbum)) {
                this.mAddToAlbum.setEnabled(true);
            }
            if (isMenuItemVisible(this.mCreativity)) {
                this.mCreativity.setEnabled(true);
            }
            if (isMenuItemVisible(this.mSend)) {
                this.mSend.setEnabled(true);
            }
        }

        private boolean isMenuItemVisible(MenuItem item) {
            return item != null && item.isVisible();
        }
    };
    protected View mEmptyView;
    protected StickyGridHeadersGridView mGridView;
    protected EditableListViewWrapperDeprecated mGridViewWrapper;
    protected LoaderCallbacks mLoaderCallbacks;
    private long mOldestDateModified = Long.MAX_VALUE;
    private RecentDiscoveryAdapter mRecentDiscoveryAdapter;

    private class RecentDiscoveryLoaderCallback implements LoaderCallbacks {
        private RecentDiscoveryLoaderCallback() {
        }

        /* synthetic */ RecentDiscoveryLoaderCallback(RecentDiscoveryFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(RecentDiscoveryFragment.this.mActivity);
            switch (i) {
                case 1:
                    loader.setUri(RecentDiscoveryFragment.this.getUri());
                    loader.setProjection(RecentDiscoveryAdapter.PROJECTION);
                    loader.setSortOrder(RecentDiscoveryFragment.this.getSortOrder());
                    break;
                case 2:
                    loader.setUri(Album.URI_SHARE_ALL);
                    loader.setProjection(ShareAlbumsCursorHelper.SHARED_ALBUM_PROJECTION);
                    loader.setSelection("count > 0");
                    break;
                case 3:
                    loader.setUri(Album.URI_NO_COVERS.buildUpon().appendQueryParameter("join_share", "true").build());
                    loader.setProjection(AlbumsCursorHelper.ALL_ALBUMS_PROJECTION);
                    break;
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            switch (loader.getId()) {
                case 1:
                    RecentDiscoveryFragment.this.getAdapter().swapCursor((Cursor) o);
                    if (RecentDiscoveryFragment.this.getAdapter().getCount() == 0) {
                        RecentDiscoveryFragment.this.setEmptyViewVisibility(0);
                        return;
                    } else {
                        RecentDiscoveryFragment.this.setEmptyViewVisibility(8);
                        return;
                    }
                case 2:
                    RecentDiscoveryFragment.this.getAdapter().setShareAlbums((Cursor) o);
                    return;
                case 3:
                    RecentDiscoveryFragment.this.getAdapter().setAllAlbums((Cursor) o);
                    return;
                default:
                    return;
            }
        }

        public void onLoaderReset(Loader loader) {
            switch (loader.getId()) {
                case 1:
                    RecentDiscoveryFragment.this.getAdapter().changeCursor(null);
                    RecentDiscoveryFragment.this.setEmptyViewVisibility(0);
                    return;
                case 2:
                    RecentDiscoveryFragment.this.getAdapter().resetShareAlbums();
                    return;
                case 3:
                    RecentDiscoveryFragment.this.getAdapter().setAllAlbums(null);
                    return;
                default:
                    return;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        recordPageEnterSource();
    }

    private void recordPageEnterSource() {
        Uri intentDataUri = this.mActivity.getIntent().getData();
        if (intentDataUri != null) {
            String source = intentDataUri.getQueryParameter("source");
            HashMap<String, String> params = new HashMap();
            String str = "source";
            if (source == null) {
                source = "unknown";
            }
            params.put(str, source);
            BaseSamplingStatHelper.recordCountEvent("recent_album", "recent_album_enter_source", params);
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.album_recent, container, false);
        this.mAlbumName = getResources().getString(R.string.album_name_recent_discovery);
        this.mAlbumId = 2147483644;
        this.mGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mEmptyView = view.findViewById(16908292);
        this.mGridViewWrapper = new EditableListViewWrapperDeprecated(this.mGridView);
        this.mGridViewWrapper.setEmptyView(this.mEmptyView);
        this.mGridViewWrapper.setAdapter(getAdapter());
        this.mGridViewWrapper.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mGridViewWrapper.setChoiceMode(3);
        this.mGridViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
        this.mGridView.setHeadersIgnorePadding(true);
        setEmptyViewVisibility(8);
        updateConfiguration(getResources().getConfiguration());
        return view;
    }

    public void onDestroy() {
        recordOldestOperatedPicture();
        if (this.mRecentDiscoveryAdapter != null) {
            this.mRecentDiscoveryAdapter.swapCursor(null);
        }
        super.onDestroy();
    }

    private void recordOldestOperatedPicture() {
        if (this.mOldestDateModified < Long.MAX_VALUE) {
            HashMap<String, String> params = new HashMap();
            params.put("days_ago", String.valueOf((System.currentTimeMillis() - this.mOldestDateModified) / VipConstants.DAY));
            BaseSamplingStatHelper.recordCountEvent("recent_album", "recent_album_oldest_operated_picture", params);
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getLoaderManager().initLoader(1, null, getLoaderCallback());
        getLoaderManager().initLoader(2, null, getLoaderCallback());
        getLoaderManager().initLoader(3, null, getLoaderCallback());
    }

    protected LoaderCallbacks getLoaderCallback() {
        if (this.mLoaderCallbacks == null) {
            this.mLoaderCallbacks = new RecentDiscoveryLoaderCallback(this, null);
        }
        return this.mLoaderCallbacks;
    }

    protected void setEmptyViewVisibility(int visibility) {
        if (this.mEmptyView != null) {
            this.mEmptyView.setVisibility(visibility);
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateConfiguration(newConfig);
        this.mGridView.setSelection(this.mGridView.getFirstVisiblePosition());
    }

    private void updateConfiguration(Configuration newConfig) {
        int columns;
        if (newConfig.orientation == 2) {
            columns = ThumbConfig.get().sMicroThumbRecentColumnsLand;
        } else {
            columns = ThumbConfig.get().sMicroThumbRecentColumnsPortrait;
        }
        this.mGridView.setNumColumns(columns);
    }

    protected RecentDiscoveryAdapter getAdapter() {
        if (this.mRecentDiscoveryAdapter == null) {
            this.mRecentDiscoveryAdapter = new RecentDiscoveryAdapter(this.mActivity);
        }
        return this.mRecentDiscoveryAdapter;
    }

    protected Uri getUri() {
        return RecentDiscoveredMedia.URI.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).build();
    }

    protected String getSelection() {
        return null;
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    public String getPageName() {
        return "album_recent";
    }

    protected String getSortOrder() {
        return "dateModified DESC";
    }

    protected OnItemClickListener getGridViewOnItemClickListener() {
        return new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                RecentDiscoveryAdapter adapter = RecentDiscoveryFragment.this.getAdapter();
                IntentUtil.gotoPhotoPage(RecentDiscoveryFragment.this, adapterView, RecentDiscoveryFragment.this.getUri(), position, adapter.getCount(), RecentDiscoveryFragment.this.getSelection(), RecentDiscoveryFragment.this.getSelectionArgs(), RecentDiscoveryFragment.this.getSortOrder(), new ImageLoadParams(adapter.getItemKey(position), adapter.getLocalPath(position), ThumbConfig.get().sMicroRecentTargetSize, adapter.getItemDecodeRectF(position), position, adapter.getMimeType(position), adapter.getItemSecretKey(position), adapter.getFileLength(position)), RecentDiscoveryFragment.this.mAlbumId, RecentDiscoveryFragment.this.mAlbumName, RecentDiscoveryFragment.this.getSupportOperationMask());
                long dateModified = adapter.getDateModified(position);
                if (dateModified < RecentDiscoveryFragment.this.mOldestDateModified) {
                    RecentDiscoveryFragment.this.mOldestDateModified = dateModified;
                }
                BaseSamplingStatHelper.recordNumericPropertyEvent(RecentDiscoveryFragment.this.getPageName(), "click_micro_thumb", (long) position);
            }
        };
    }

    protected int getSupportOperationMask() {
        return -1;
    }

    protected Loader getLoader() {
        return null;
    }

    protected List<Loader> getLoaders() {
        ArrayList<Loader> ret = new ArrayList();
        ret.add(getLoaderManager().getLoader(1));
        ret.add(getLoaderManager().getLoader(3));
        ret.add(getLoaderManager().getLoader(2));
        return ret;
    }

    protected int getDupType() {
        if (getUri().getBooleanQueryParameter("remove_duplicate_items", false)) {
            return 2;
        }
        return 0;
    }

    private void doDelete(final ActionMode mode) {
        long[] ids = this.mGridViewWrapper.getCheckedItemIds();
        if (ids == null || ids.length <= 0) {
            ToastUtils.makeText(this.mActivity, getString(R.string.delete_other_shared_images));
            mode.finish();
            return;
        }
        MediaAndAlbumOperations.delete(this.mActivity, "RecentDiscoveryFragmentDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
            public void onDeleted(int count, long[] deleteIds) {
                if (RecentDiscoveryFragment.this.mActivity != null) {
                    ToastUtils.makeText(RecentDiscoveryFragment.this.mActivity, RecentDiscoveryFragment.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                    if (count > 0) {
                        SoundUtils.playSoundForOperation(RecentDiscoveryFragment.this.mActivity, 0);
                    }
                    mode.finish();
                }
            }
        }, this.mAlbumId, this.mAlbumName, getDupType(), 29, ids);
    }
}
