package com.miui.gallery.ui;

import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.AlbumDetailTimeLineAdapter;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.preference.GalleryPreferences.Secret;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.BaseAlbumOperationDialogFragment.OnAlbumOperationDoneListener;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.ScrollableViewDrawer;
import com.miui.gallery.widget.SortByHeader;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.miui.privacy.LockSettingsHelper;
import miui.util.PlayerActions.Out;

public class AlbumDetailFragment extends AlbumDetailFragmentBase {
    private AlbumDetailSimpleAdapter mAlbumDetailSimpleAdapter;
    private AlbumDetailTimeLineAdapter mAlbumDetailTimelineAdapter;
    private SortBy mCurrentSortBy = SortBy.NONE;
    private ScrollableViewDrawer mDrawer;
    private MenuStatusManager mMenuStatusManager;
    private boolean mNeedConfirmPassWord;
    private OnAlbumOperationDoneListener mOnAlbumRenamedListener = new OnAlbumOperationDoneListener() {
        public void onOperationDone(long id, String albumName) {
            if (id > 0 && AlbumDetailFragment.this.isAdded()) {
                AlbumDetailFragment.this.mAlbumName = albumName;
                AlbumDetailFragment.this.updateActionBarTitle();
            }
        }
    };
    private OnSortByClickListener mOnSortByClickListener;
    private SortByHeader mSortByHeader;
    private int mSortByHeaderPaddingTop;
    private String mSortOrder = " DESC ";

    private class AlbumDetailLoaderCallback implements LoaderCallbacks {
        private AlbumDetailLoaderCallback() {
        }

        /* synthetic */ AlbumDetailLoaderCallback(AlbumDetailFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(AlbumDetailFragment.this.mActivity);
            AlbumDetailFragment.this.configLoader(loader, SortBy.DATE);
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            AlbumDetailSimpleAdapter adapter = AlbumDetailFragment.this.getAdapter();
            adapter.swapCursor((Cursor) o);
            AlbumDetailFragment.this.mAlbumDetailGridViewWrapper.setAdapter(adapter);
            AlbumDetailFragment.this.mAlbumDetailGridViewWrapper.setOnScrollListener(adapter.generateWrapScrollListener(null));
            AlbumDetailFragment.this.mSortByHeader.updateCurrentSortView(AlbumDetailFragment.this.mCurrentSortBy, AlbumDetailFragment.this.getSortByIndicatorResource());
            AlbumDetailFragment.this.updateActionBarTitle();
            if (adapter.getCount() == 0) {
                AlbumDetailFragment.this.mEmptyView.setVisibility(0);
            } else {
                AlbumDetailFragment.this.mEmptyView.setVisibility(8);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private class OnSortByClickListener implements OnClickListener {
        private OnSortByClickListener() {
        }

        /* synthetic */ OnSortByClickListener(AlbumDetailFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onClick(View view) {
            Loader loader = AlbumDetailFragment.this.getLoaderManager().getLoader(1);
            switch (view.getId()) {
                case R.id.datetime_container /*2131886224*/:
                    AlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.DATE);
                    BaseSamplingStatHelper.recordCountEvent("album_detail", "sort_by_date");
                    break;
                case R.id.name_container /*2131886227*/:
                    AlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.NAME);
                    BaseSamplingStatHelper.recordCountEvent("album_detail", "sort_by_name");
                    break;
                case R.id.size_container /*2131886230*/:
                    BaseSamplingStatHelper.recordCountEvent("album_detail", "sort_by_size");
                    AlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.SIZE);
                    break;
            }
            loader.forceLoad();
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onInflateView(inflater, container, savedInstanceState);
        Intent intent = this.mActivity.getIntent();
        this.mMenuStatusManager = new MenuStatusManager(this.mActivity, intent.getStringExtra("album_server_id"), intent.getLongExtra("attributes", 0), intent.getBooleanExtra("album_unwriteable", false), isOthersShareAlbum(), intent.getStringExtra("album_local_path"));
        this.mOnSortByClickListener = new OnSortByClickListener(this, null);
        if (!TextUtils.isEmpty(this.mAlbumName)) {
            updateActionBarTitle();
        }
        this.mDrawer = (ScrollableViewDrawer) view.findViewById(R.id.drawer);
        this.mSortByHeader = (SortByHeader) view.findViewById(R.id.sortby_header);
        this.mSortByHeaderPaddingTop = this.mSortByHeader.getPaddingTop();
        this.mSortByHeader.setOnSortByClickListener(this.mOnSortByClickListener);
        if (!sortByChangeable()) {
            this.mDrawer.setDragEnabled(false);
        }
        return view;
    }

    private void updateActionBarTitle() {
        this.mActivity.getActionBar().setTitle(this.mAlbumName);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mActivity.setImmersionMenuEnabled(showOptionsMenu());
        if (isSecretAlbum()) {
            this.mActivity.getWindow().addFlags(8192);
        }
        if (savedInstanceState != null) {
            this.mCurrentSortBy = (SortBy) savedInstanceState.getSerializable("album_detail_sort_by");
            if (sortByChangeable() && savedInstanceState.getBoolean("album_detail_drawer_state", false)) {
                this.mDrawer.openDrawer();
            }
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != 27) {
            super.onActivityResult(requestCode, resultCode, data);
        } else if (resultCode != -1) {
            finish();
        } else {
            this.mNeedConfirmPassWord = false;
        }
    }

    private boolean isNeedConfirmPassWord() {
        return isSecretAlbum() && this.mNeedConfirmPassWord && !isInPhotoPage();
    }

    public void onResume() {
        super.onResume();
        if (isNeedConfirmPassWord()) {
            this.mNeedConfirmPassWord = false;
            LockSettingsHelper.startAuthenticatePasswordActivity((Fragment) this, 27);
        }
    }

    protected void onPhotoPageDestroy(Intent i) {
        super.onPhotoPageDestroy(i);
        this.mNeedConfirmPassWord = false;
    }

    public void onStop() {
        super.onStop();
        this.mNeedConfirmPassWord = true;
    }

    public void finish() {
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            this.mActivity.finish();
        }
    }

    protected void onEnterActionMode() {
        if (this.mMenuStatusManager.canShowInPhotosTab()) {
            ImageSelectionTipFragment.showImageSelectionTipDialogIfNecessary(getActivity());
        }
        BaseSamplingStatHelper.recordNumericPropertyEvent("best_image", "best_image_count", (long) ImageFeatureCacheManager.getInstance().getBestImageCount(false));
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putSerializable("album_detail_sort_by", this.mCurrentSortBy);
        outState.putBoolean("album_detail_drawer_state", this.mDrawer.isDrawerOpen());
    }

    private boolean sortByChangeable() {
        return !isDailyAlbum();
    }

    public String getPageName() {
        if (isSecretAlbum()) {
            return "album_secret";
        }
        if (isFavoritesAlbum()) {
            return "album_favorites";
        }
        return "album_detail";
    }

    protected AlbumDetailSimpleAdapter getViewAdapter() {
        ListAdapter adapter = this.mAlbumDetailGridViewWrapper.getAdapter();
        if (adapter == null || !(adapter instanceof AlbumDetailSimpleAdapter)) {
            return super.getViewAdapter();
        }
        return (AlbumDetailSimpleAdapter) adapter;
    }

    protected AlbumDetailSimpleAdapter getAdapter() {
        if (this.mCurrentSortBy != SortBy.DATE || isDailyAlbum()) {
            if (this.mAlbumDetailSimpleAdapter == null) {
                this.mAlbumDetailSimpleAdapter = new AlbumDetailSimpleAdapter(this.mActivity);
                if (this.mIsOtherShareAlbum) {
                    this.mAlbumDetailSimpleAdapter.setAlbumType(AlbumType.OTHER_SHARE);
                } else if (this.mIsScreenshotAlbum) {
                    this.mAlbumDetailSimpleAdapter.setAlbumType(AlbumType.SCREENSHOT);
                } else if (isSecretAlbum()) {
                    this.mAlbumDetailSimpleAdapter.setAlbumType(AlbumType.SECRET);
                } else if (isPanoAlbum()) {
                    this.mAlbumDetailSimpleAdapter.setAlbumType(AlbumType.PANO);
                } else if (isFavoritesAlbum()) {
                    this.mAlbumDetailSimpleAdapter.setAlbumType(AlbumType.FAVORITES);
                }
            }
            return this.mAlbumDetailSimpleAdapter;
        }
        if (this.mAlbumDetailTimelineAdapter == null) {
            this.mAlbumDetailTimelineAdapter = new AlbumDetailTimeLineAdapter(this.mActivity);
            if (this.mIsOtherShareAlbum) {
                this.mAlbumDetailTimelineAdapter.setAlbumType(AlbumType.OTHER_SHARE);
            } else if (this.mIsScreenshotAlbum) {
                this.mAlbumDetailTimelineAdapter.setAlbumType(AlbumType.SCREENSHOT);
            } else if (isSecretAlbum()) {
                this.mAlbumDetailTimelineAdapter.setAlbumType(AlbumType.SECRET);
            } else if (isPanoAlbum()) {
                this.mAlbumDetailTimelineAdapter.setAlbumType(AlbumType.PANO);
            } else if (isFavoritesAlbum()) {
                this.mAlbumDetailTimelineAdapter.setAlbumType(AlbumType.FAVORITES);
            }
        }
        return this.mAlbumDetailTimelineAdapter;
    }

    protected int getLayoutSource() {
        return R.layout.album_detail;
    }

    protected boolean needEnableAutoUpload() {
        return this.mMenuStatusManager.canEnableAutoUpload();
    }

    protected LoaderCallbacks getLoaderCallback() {
        if (this.mAlbumDetailLoaderCallback == null) {
            this.mAlbumDetailLoaderCallback = new AlbumDetailLoaderCallback(this, null);
        }
        return this.mAlbumDetailLoaderCallback;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        inflater.inflate(R.menu.album_detail_page_options, menu);
    }

    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem addPhotosItem = menu.findItem(R.id.menu_add_photos);
        MenuItem removeFromOtherAlbumsItem = menu.findItem(R.id.menu_remove_from_other_albums);
        MenuItem moveToOtherAlbumsItem = menu.findItem(R.id.menu_move_to_other_albums);
        MenuItem enableAutoUploadItem = menu.findItem(R.id.menu_enable_auto_upload);
        MenuItem disableAutoUploadItem = menu.findItem(R.id.menu_disable_auto_upload);
        MenuItem showInPhotosTabItem = menu.findItem(R.id.menu_show_in_photos_tab);
        MenuItem notShowInPhotosTabItem = menu.findItem(R.id.menu_not_show_in_photos_tab);
        MenuItem shareItem = menu.findItem(R.id.menu_share);
        MenuItem renameItem = menu.findItem(R.id.menu_rename);
        if (SyncUtil.isGalleryCloudSyncable(getActivity())) {
            enableAutoUploadItem.setVisible(this.mMenuStatusManager.canEnableAutoUpload());
            disableAutoUploadItem.setVisible(this.mMenuStatusManager.canDisableAutoUpload());
        } else {
            enableAutoUploadItem.setVisible(false);
            disableAutoUploadItem.setVisible(false);
        }
        removeFromOtherAlbumsItem.setVisible(this.mMenuStatusManager.canDisableShowInOtherAlbums());
        moveToOtherAlbumsItem.setVisible(this.mMenuStatusManager.canEnableShowInOtherAlbums());
        addPhotosItem.setVisible(this.mMenuStatusManager.canAddPhotos());
        showInPhotosTabItem.setVisible(this.mMenuStatusManager.canEnableShowInPhotosTab());
        notShowInPhotosTabItem.setVisible(this.mMenuStatusManager.canDisableShowInPhotosTab());
        shareItem.setVisible(this.mMenuStatusManager.canShare());
        renameItem.setVisible(this.mMenuStatusManager.canRename());
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 16908332:
                if (onBackPressed() || !isAdded() || !isResumed()) {
                    return true;
                }
                finish();
                return true;
            case R.id.menu_remove_from_other_albums /*2131886822*/:
                removeFromOtherAlbums();
                BaseSamplingStatHelper.recordCountEvent("album_detail", "show_in_others_disable");
                return true;
            case R.id.menu_move_to_other_albums /*2131886823*/:
                moveToOtherAlbums();
                BaseSamplingStatHelper.recordCountEvent("album_detail", "show_in_others_enable");
                return true;
            case R.id.menu_show_in_photos_tab /*2131886824*/:
                doChangeShowInPhotosTab(true);
                BaseSamplingStatHelper.recordCountEvent("album_detail", "show_in_home_enable");
                return true;
            case R.id.menu_not_show_in_photos_tab /*2131886825*/:
                BaseSamplingStatHelper.recordCountEvent("album_detail", "show_in_home_disable");
                doChangeShowInPhotosTab(false);
                return true;
            case R.id.menu_enable_auto_upload /*2131886826*/:
                enableAutoUpload();
                BaseSamplingStatHelper.recordCountEvent("album_detail", "auto_upload_enable");
                return true;
            case R.id.menu_disable_auto_upload /*2131886827*/:
                disableAutoUpload();
                BaseSamplingStatHelper.recordCountEvent("album_detail", "auto_upload_disable");
                return true;
            case R.id.menu_rename /*2131886829*/:
                doRename();
                BaseSamplingStatHelper.recordCountEvent(Out.KEY_ALBUM, "rename_album");
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    private int getSortByIndicatorResource() {
        return TextUtils.equals(this.mSortOrder, " ASC ") ? R.drawable.sort_by_item_arrow_up : R.drawable.sort_by_item_arrow_down;
    }

    private void configLoader(CursorLoader cursorLoader, SortBy sortBy) {
        cursorLoader.setUri(getUri(sortBy));
        cursorLoader.setProjection(AlbumDetailTimeLineAdapter.PROJECTION);
        cursorLoader.setSelection(getSelection());
        cursorLoader.setSelectionArgs(getSelectionArgs());
        cursorLoader.setSortOrder(configOrderBy(sortBy));
    }

    private void onSortByChanged() {
        getAdapter().setCurrentSortBy(this.mCurrentSortBy);
        if (this.mCurrentSortBy == SortBy.DATE) {
            setViewPaddingTop(this.mSortByHeader, this.mSortByHeaderPaddingTop);
            setViewPaddingTop(this.mDrawer, 0);
            return;
        }
        int topDivider = getResources().getDimensionPixelSize(R.dimen.micro_thumb_horizontal_spacing);
        setViewPaddingTop(this.mSortByHeader, this.mSortByHeaderPaddingTop - topDivider);
        setViewPaddingTop(this.mDrawer, topDivider);
    }

    private void setViewPaddingTop(View view, int top) {
        view.setPadding(view.getPaddingLeft(), top, view.getPaddingRight(), view.getPaddingBottom());
    }

    private String configOrderBy(SortBy sortBy) {
        String orderBy = getSortByString(sortBy);
        if (this.mCurrentSortBy == sortBy) {
            this.mSortOrder = TextUtils.equals(this.mSortOrder, " DESC ") ? " ASC " : " DESC ";
        } else {
            if (sortBy == SortBy.DATE) {
                this.mSortOrder = " DESC ";
            } else {
                this.mSortOrder = " ASC ";
            }
            this.mCurrentSortBy = sortBy;
        }
        orderBy = orderBy + this.mSortOrder;
        onSortByChanged();
        return orderBy;
    }

    private String getSortByString(SortBy sortBy) {
        switch (sortBy) {
            case NAME:
                return "title";
            case SIZE:
                return "size";
            default:
                return "alias_sort_time";
        }
    }

    private void doRename() {
        AlbumRenameDialogFragment.newInstance(this.mAlbumId, this.mAlbumName, this.mOnAlbumRenamedListener).showAllowingStateLoss(getFragmentManager(), "AlbumRenameDialogFragment");
    }

    protected String getCurrentSortOrder() {
        return getSortByString(this.mCurrentSortBy) + this.mSortOrder;
    }

    protected boolean doChangeAutoUpload(boolean enable) {
        if (!super.doChangeAutoUpload(enable)) {
            return false;
        }
        this.mMenuStatusManager.onAutoUploadStatusChanged(enable);
        return true;
    }

    protected void doChangeShowInOtherAlbums(boolean showInOtherAlbums) {
        super.doChangeShowInOtherAlbums(showInOtherAlbums);
        this.mMenuStatusManager.onShowInOtherAlbumsStatusChanged(showInOtherAlbums);
    }

    private void doChangeShowInPhotosTab(boolean showInPhotosTab) {
        MediaAndAlbumOperations.doChangeShowInPhotosTab(this.mActivity, this.mAlbumId, showInPhotosTab);
        this.mMenuStatusManager.onShowInPhotosTabStatusChanged(showInPhotosTab);
    }

    public boolean onBackPressed() {
        if (!isSecretAlbum() || !Secret.isFirstAddSecret()) {
            return false;
        }
        Secret.setIsFirstAddSecret(false);
        SecretTipDialogFragment dialogFragment = new SecretTipDialogFragment();
        dialogFragment.setOnDismissListener(new OnDismissListener() {
            public void onDismiss(DialogInterface dialog) {
                AlbumDetailFragment.this.finish();
            }
        });
        dialogFragment.showAllowingStateLoss(getActivity().getFragmentManager(), "SecretTip");
        return true;
    }

    protected String getCreatorIdByPosition(int position) {
        return getAdapter().getCreatorId(position);
    }

    protected long getMediaIdByPosition(int position) {
        return getAdapter().getItemId(position);
    }

    private boolean showOptionsMenu() {
        return (isVirtualAlbum() || this.mMenuStatusManager.isUnWriteable()) ? false : true;
    }

    public void onDestroy() {
        if (this.mAlbumDetailSimpleAdapter != null) {
            this.mAlbumDetailSimpleAdapter.swapCursor(null);
        }
        if (this.mAlbumDetailTimelineAdapter != null) {
            this.mAlbumDetailTimelineAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
