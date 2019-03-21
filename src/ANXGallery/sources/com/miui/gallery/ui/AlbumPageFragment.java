package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.AsyncTaskLoader;
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
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.google.common.base.Joiner;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumPageAdapter;
import com.miui.gallery.adapter.HeaderFooterRecyclerAdapterWrapper;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.loader.AsyncContentLoader;
import com.miui.gallery.model.Album.VirtualAlbum;
import com.miui.gallery.model.AlbumList;
import com.miui.gallery.model.OtherAlbum;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.search.widget.BannerSearchBar;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumDisplayHelper.DisplayStatusCallback;
import com.miui.gallery.ui.AIAlbumDisplayHelper.WeakReferencedAIAlbumDisplayStatusObserver;
import com.miui.gallery.ui.BaseAlbumOperationDialogFragment.OnAlbumOperationDoneListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.widget.DividerTypeProvider;
import com.miui.gallery.widget.TwoStageDrawer;
import com.miui.gallery.widget.TwoStageDrawer.TriggerListener;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView.RecyclerContextMenuInfo;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class AlbumPageFragment extends BaseAlbumPageFragment implements DisplayStatusCallback {
    private AlbumPageAdapterWrapper mAlbumPageAdapterWrapper;
    private AlbumPageHeaderController mAlbumPageHeaderController;
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;
    private BannerSearchBar mBannerSearchBar;
    private View mCreateAlbumButton;
    private TwoStageDrawer mDrawer;
    private boolean mHasEnterPrivateEntry;
    private boolean mLoaderInitialized;
    private long mNewlyCreatedAlbumId;
    private OnAlbumOperationDoneListener mOnAlbumCreatedListener = new OnAlbumOperationDoneListener() {
        public void onOperationDone(long id, String albumName) {
            if (id > 0 && AlbumPageFragment.this.isAdded()) {
                AlbumPageFragment.this.mPendingDisplayCreateAlbum = true;
                AlbumPageFragment.this.mNewlyCreatedAlbumId = id;
                AddPhotosFragment.addPhotos(AlbumPageFragment.this, id);
            }
        }
    };
    private boolean mPendingDisplayCreateAlbum;
    private boolean mPendingLoadExtraInfo;
    private TriggerListener mPrivateEntryTriggerListener = new TriggerListener() {
        public void onTriggerSlide(TwoStageDrawer drawer, float slideOffset) {
        }

        public void onTriggerOpen(TwoStageDrawer drawer) {
            if (!AlbumPageFragment.this.mHasEnterPrivateEntry) {
                AlbumPageFragment.this.enterPrivateEntry();
                AlbumPageFragment.this.mHasEnterPrivateEntry = true;
                BaseSamplingStatHelper.recordCountEvent("album", "enter_privacy_mode");
            }
        }
    };
    private TopSearchBarController mSearchBarController;
    private WeakReferencedAIAlbumDisplayStatusObserver mSearchStatusObserver = new WeakReferencedAIAlbumDisplayStatusObserver(this);
    private boolean mShowAIAlbum = false;

    private static class AlbumPageAdapterWrapper extends HeaderFooterRecyclerAdapterWrapper<AlbumPageAdapter, BaseViewHolder> implements DividerTypeProvider, OnItemClickListener {
        public AlbumPageAdapterWrapper(AlbumPageAdapter wrapped) {
            super(wrapped);
        }

        protected BaseViewHolder onCreateHeaderFooterViewHolder(View itemView) {
            BaseViewHolder holder = new BaseViewHolder(itemView);
            holder.setIsRecyclable(false);
            return holder;
        }

        public int getTopDividerType(int adapterPosition) {
            if (adapterPosition == -1) {
                return 0;
            }
            if (getHeadersCount() > 0 || adapterPosition != 0) {
                return ((AlbumPageAdapter) this.mWrapped).getTopDividerType(adapterPosition - getHeadersCount());
            }
            return 3;
        }

        public int getBottomDividerType(int adapterPosition) {
            if (adapterPosition == -1) {
                return 0;
            }
            if (isHeaderPosition(adapterPosition)) {
                return 3;
            }
            if (isFooterPosition(adapterPosition)) {
                return 0;
            }
            return ((AlbumPageAdapter) this.mWrapped).getBottomDividerType(adapterPosition - getHeadersCount());
        }

        public boolean onItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
            if (isHeaderPosition(position) || isFooterPosition(position)) {
                return false;
            }
            int realPosition = getWrappedAdapterPosition(position);
            recordViewAlbum(realPosition);
            return ((AlbumPageAdapter) this.mWrapped).onItemClick(parent, view, realPosition, id, x, y);
        }

        private void recordViewAlbum(int position) {
            String localPath = ((AlbumPageAdapter) this.mWrapped).getAlbumLocalPath(position);
            HashMap<String, String> params;
            if (((AlbumPageAdapter) this.mWrapped).isSystemAlbum(position)) {
                params = new HashMap();
                params.put("album_name", ((AlbumPageAdapter) this.mWrapped).getAlbumName(position));
                params.put("album_server_id", ((AlbumPageAdapter) this.mWrapped).getServerId(position));
                params.put("album_image_count", String.valueOf(((AlbumPageAdapter) this.mWrapped).getAlbumCount(position)));
                BaseSamplingStatHelper.recordCountEvent("album", "view_system_album", params);
            } else if (!TextUtils.isEmpty(localPath)) {
                params = new HashMap();
                params.put("album_path", localPath.toLowerCase());
                params.put("album_attribute", String.valueOf(((AlbumPageAdapter) this.mWrapped).getAttributes(position)));
                params.put("album_image_count", String.valueOf(((AlbumPageAdapter) this.mWrapped).getAlbumCount(position)));
                params.put("baby_album", String.valueOf(((AlbumPageAdapter) this.mWrapped).isBabyAlbum(position)));
                BaseSamplingStatHelper.recordCountEvent("album", "view_album", params);
            } else if (((AlbumPageAdapter) this.mWrapped).isOtherShareAlbum(position)) {
                params = new HashMap();
                params.put("album_image_count", String.valueOf(((AlbumPageAdapter) this.mWrapped).getAlbumCount(position)));
                params.put("baby_album", String.valueOf(((AlbumPageAdapter) this.mWrapped).isBabyAlbum(position)));
                BaseSamplingStatHelper.recordCountEvent("album", "view_share_album", params);
            }
        }
    }

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        SoftReference<View> mFooterViewRef;
        SparseBooleanArray mIsManualLoad;
        SparseLongArray mLoaderCreateTime;
        OtherAlbum mOtherAlbumEntity;

        private AlbumPagePhotoLoaderCallback() {
            this.mLoaderCreateTime = new SparseLongArray();
            this.mIsManualLoad = new SparseBooleanArray();
        }

        /* synthetic */ AlbumPagePhotoLoaderCallback(AlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            boolean firstTime = true;
            this.mIsManualLoad.put(i, true);
            this.mLoaderCreateTime.put(i, System.currentTimeMillis());
            AsyncContentLoader<AlbumList> loader;
            AsyncTaskLoader loader2;
            if (i == 1) {
                if (bundle == null || !bundle.getBoolean("first_time_load")) {
                    firstTime = false;
                }
                loader = new AsyncContentLoader(AlbumPageFragment.this.mActivity, AlbumPageFragment.this.mAlbumConvertCallback);
                Uri uri = AlbumPageFragment.this.getAlbumQueryUri(false, firstTime);
                if (firstTime) {
                    uri = UriUtil.appendLimit(uri, 20);
                }
                loader.setUri(uri);
                loader.setProjection(AlbumPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSelection(AlbumPageFragment.this.getAlbumQuerySelection(false));
                return loader;
            } else if (i == 2) {
                loader2 = new CursorLoader(AlbumPageFragment.this.mActivity);
                loader2.setUri(Album.URI_SHARE_ALL);
                loader2.setProjection(AlbumPageAdapter.SHARED_ALBUM_PROJECTION);
                loader2.setSelection("count > 0");
                return loader2;
            } else if (i == 3) {
                loader2 = new CursorLoader(AlbumPageFragment.this.mActivity);
                loader2.setUri(PeopleFace.PEOPLE_FACE_COVER_URI);
                return loader2;
            } else if (i != 4) {
                return null;
            } else {
                loader = new AsyncContentLoader(AlbumPageFragment.this.mActivity, AlbumPageFragment.this.mAlbumConvertCallback);
                loader.setUri(UriUtil.appendLimit(AlbumPageFragment.this.getAlbumQueryUri(true, false), 5));
                loader.setProjection(AlbumPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSelection(AlbumPageFragment.this.getAlbumQuerySelection(true));
                loader.setSortOrder("sortBy ASC ");
                return loader;
            }
        }

        public void onLoadFinished(Loader loader, Object o) {
            int loaderId = loader.getId();
            long currTimeMillis = System.currentTimeMillis();
            int count = 0;
            ArrayList<com.miui.gallery.model.Album> albums;
            Cursor cursor;
            if (loaderId == 1) {
                Object albums2 = o != null ? (AlbumList) o : null;
                if ((albums2 != null ? albums2.size() : 0) <= 0) {
                    AlbumPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                } else {
                    count = albums2.size();
                    if (AlbumPageFragment.this.mPendingLoadExtraInfo && count >= 5) {
                        ArrayList<com.miui.gallery.model.Album> albums3 = new ArrayList(albums2);
                        albums3.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.VIDEO));
                        albums3.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.FAVORITES));
                        albums3.add(0, com.miui.gallery.model.Album.makePlaceholderFor(VirtualAlbum.RECENT));
                        albums2 = albums3;
                    }
                }
                if (this.mOtherAlbumEntity != null) {
                    if (albums2 == null) {
                        albums2 = new ArrayList(1);
                    }
                    albums2.add(this.mOtherAlbumEntity);
                }
                SortedList<com.miui.gallery.model.Album> adapterData = AlbumPageFragment.this.mAlbumPageAdapter.getData();
                if (BaseMiscUtil.isValid(albums2)) {
                    long start = System.currentTimeMillis();
                    adapterData.replaceAll(albums2);
                    Log.d("AlbumPageFragment", "dispatch updates to adapter costs [%d ms], [%d] items", Long.valueOf(System.currentTimeMillis() - start), Integer.valueOf(albums2.size()));
                } else if (adapterData.size() > 0) {
                    adapterData.clear();
                } else {
                    AlbumPageFragment.this.mAlbumPageAdapter.notifyDataSetChanged();
                }
                AlbumPageFragment.this.mDrawer.setDragEnabled(BaseMiscUtil.isValid(albums2));
                AlbumPageFragment.this.addHeaderAlbumUI();
                updateFooterUI();
                AlbumPageFragment.this.scrollToNewlyCreatedAlbum(albums2, adapterData);
            } else if (loaderId == 2) {
                cursor = (Cursor) o;
                count = cursor != null ? cursor.getCount() : 0;
                AlbumPageFragment.this.mAlbumPageAdapter.setSharedAlbums(cursor);
            } else if (loaderId == 3) {
                cursor = (Cursor) o;
                count = cursor != null ? cursor.getCount() : 0;
                AlbumPageFragment.this.mAlbumPageAdapter.setPeopleFaceCover(cursor);
            } else if (loaderId == 4) {
                albums2 = o != null ? (AlbumList) o : null;
                if (BaseMiscUtil.isValid(albums2)) {
                    count = albums2.size();
                    OtherAlbum others = new OtherAlbum();
                    Iterable names = new ArrayList(count);
                    Iterator it = albums2.iterator();
                    while (it.hasNext()) {
                        names.add(((com.miui.gallery.model.Album) it.next()).getAlbumName());
                    }
                    others.setAlbumName(Joiner.on(AlbumPageFragment.this.getString(R.string.name_split)).skipNulls().join(names));
                    others.setAlbumNames(names);
                    others.setCount(count);
                    this.mOtherAlbumEntity = others;
                    AlbumPageFragment.this.mAlbumPageAdapter.getData().add(this.mOtherAlbumEntity);
                } else {
                    if (this.mOtherAlbumEntity != null) {
                        AlbumPageFragment.this.mAlbumPageAdapter.getData().remove(this.mOtherAlbumEntity);
                    }
                    this.mOtherAlbumEntity = null;
                }
                updateFooterUI();
            }
            if (this.mIsManualLoad.get(loaderId)) {
                this.mIsManualLoad.put(loaderId, false);
                long costs = currTimeMillis - this.mLoaderCreateTime.get(loaderId);
                Log.d("AlbumPageFragment", "load [%d] items for [%s] costs [%d ms]", Integer.valueOf(count), AlbumPageFragment.this.loaderId2Name(loaderId), Long.valueOf(costs));
                statAlbumLoadTime(AlbumPageFragment.this.mPendingLoadExtraInfo, costs, count);
            }
            if (loaderId == 1 && AlbumPageFragment.this.mPendingLoadExtraInfo) {
                AlbumPageFragment.this.mPendingLoadExtraInfo = false;
                AlbumPageFragment.this.startToLoadAlbumExtraInfo();
            }
        }

        public void onLoaderReset(Loader loader) {
        }

        private void updateFooterUI() {
            boolean invalidate = false;
            int recyclerPaddingBottom = AlbumPageFragment.this.getRecyclerPaddingBottom();
            View footer = this.mFooterViewRef != null ? (View) this.mFooterViewRef.get() : null;
            Adapter wrappedAdapter = AlbumPageFragment.this.mAlbumPageAdapterWrapper.getWrappedAdapter();
            if (this.mOtherAlbumEntity != null || wrappedAdapter.getItemCount() > 0) {
                if (footer != null) {
                    AlbumPageFragment.this.mAlbumPageAdapterWrapper.removeFooterView(footer);
                    invalidate = true;
                }
            } else if (AlbumPageFragment.this.mShowAIAlbum && SyncUtil.existXiaomiAccount(AlbumPageFragment.this.getActivity())) {
                if (footer == null) {
                    View view = (AlbumPageListEmptyItem) LayoutInflater.from(AlbumPageFragment.this.mActivity).inflate(R.layout.album_page_list_empty_item, AlbumPageFragment.this.mRecyclerView, false);
                    view.setTextContainer(AlbumPageFragment.this.mAlbumRecyclerView);
                    footer = view;
                    this.mFooterViewRef = new SoftReference(footer);
                }
                if (AlbumPageFragment.this.mAlbumPageAdapterWrapper.getFootersCount() == 0) {
                    AlbumPageFragment.this.mAlbumPageAdapterWrapper.addFooterView(footer);
                    invalidate = true;
                }
                recyclerPaddingBottom = 0;
            }
            if (invalidate) {
                AlbumPageFragment.this.mRecyclerView.invalidateItemDecorations();
            }
            AlbumPageFragment.this.mRecyclerView.setPadding(AlbumPageFragment.this.mRecyclerView.getPaddingLeft(), AlbumPageFragment.this.mRecyclerView.getTop(), AlbumPageFragment.this.mRecyclerView.getPaddingRight(), recyclerPaddingBottom);
        }

        private void statAlbumLoadTime(boolean firstTime, long costs, int count) {
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            params.put("costs", String.valueOf(costs));
            params.put("count", String.valueOf(count));
            BaseSamplingStatHelper.recordCountEvent("album", firstTime ? "album_minimum_load_time" : "album_full_load_time", params);
        }
    }

    private class OnCreateNewAlbumListener implements OnClickListener {
        private OnCreateNewAlbumListener() {
        }

        /* synthetic */ OnCreateNewAlbumListener(AlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onClick(View view) {
            AlbumCreatorDialogFragment creator = new AlbumCreatorDialogFragment();
            creator.setOnAlbumOperationDoneListener(AlbumPageFragment.this.mOnAlbumCreatedListener);
            creator.showAllowingStateLoss(AlbumPageFragment.this.getFragmentManager(), "AlbumCreatorDialogFragment");
            BaseSamplingStatHelper.recordCountEvent("album", "create_album");
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mLoaderInitialized = false;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.album_page, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mRecyclerView = (GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler();
        this.mAlbumPageAdapter = new AlbumPageAdapter(this.mActivity);
        this.mAlbumPageAdapter.registerAdapterDataObserver(new AdapterDataObserver() {
            public void onChanged() {
                AlbumPageFragment.this.getActivity().closeContextMenu();
            }
        });
        this.mAlbumPageAdapterWrapper = new AlbumPageAdapterWrapper(this.mAlbumPageAdapter);
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapterWrapper);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setItemAnimator(null);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapterWrapper);
        this.mRecyclerView.setOnItemClickListener(this.mAlbumPageAdapterWrapper);
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback(this, null);
        this.mCreateAlbumButton = view.findViewById(R.id.create_album);
        this.mCreateAlbumButton.setOnClickListener(new OnCreateNewAlbumListener(this, null));
        this.mDrawer = (TwoStageDrawer) view;
        this.mDrawer.setTriggerListener(this.mPrivateEntryTriggerListener);
        this.mBannerSearchBar = (BannerSearchBar) view.findViewById(R.id.album_page_search_bar);
        SparseBooleanArray status = AIAlbumDisplayHelper.getInstance().registerAIAlbumDisplayStatusObserver(this.mSearchStatusObserver);
        this.mShowAIAlbum = status.get(2, false);
        boolean showSearchBar = status.get(1, false);
        Log.d("AlbumPageFragment", "Init search bar: %s, ai album: %s", Boolean.valueOf(showSearchBar), Boolean.valueOf(this.mShowAIAlbum));
        if (showSearchBar) {
            this.mBannerSearchBar.setVisibility(0);
            if (this.mSearchBarController == null) {
                this.mSearchBarController = new TopSearchBarController(this, this.mBannerSearchBar, "from_album_page");
            }
            this.mDrawer.post(new Runnable() {
                public void run() {
                    AlbumPageFragment.this.mDrawer.openDrawer();
                }
            });
        } else {
            this.mBannerSearchBar.setVisibility(8);
        }
        if (this.mUserFirstVisible && !this.mLoaderInitialized) {
            startToLoadAlbums();
        }
        return view;
    }

    public void onDestroyView() {
        AIAlbumDisplayHelper.getInstance().unregisterAIAlbumDisplayStatusObserver(this.mSearchStatusObserver);
        super.onDestroyView();
    }

    public void onDestroy() {
        if (this.mAlbumPageHeaderController != null) {
            this.mAlbumPageHeaderController.onDestroy();
        }
        super.onDestroy();
    }

    public void onResume() {
        super.onResume();
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onResume();
        }
        if (this.mAlbumPageHeaderController != null) {
            this.mAlbumPageHeaderController.onResume();
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onPause();
        }
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
        if (menuInfo != null) {
            int position = ((RecyclerContextMenuInfo) menuInfo).position;
            if (!this.mAlbumPageAdapterWrapper.isHeaderPosition(position) && !this.mAlbumPageAdapterWrapper.isFooterPosition(position)) {
                setContextMenuItems(menu, this.mAlbumPageAdapterWrapper.getWrappedAdapterPosition(position));
            }
        }
    }

    private void enterPrivateEntry() {
        Bundle bundle = new Bundle();
        bundle.putInt("check_login_and_sync", 3);
        bundle.putSerializable("cloud_guide_source", CloudGuideSource.SECRET);
        LoginAndSyncCheckFragment.checkLoginAndSyncState(this, bundle);
    }

    private void doEnterPrivateEntry() {
        if (AccountHelper.getXiaomiAccount(this.mActivity) != null) {
            AuthenticatePrivacyPasswordFragment.startAuthenticatePrivacyPassword(this);
        }
    }

    public void onStart() {
        super.onStart();
        this.mHasEnterPrivateEntry = false;
        if (getUserVisibleHint()) {
            onVisibleToUser();
        }
    }

    public String getPageName() {
        return "album";
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 29:
                    int checkFor = data.getIntExtra("check_login_and_sync", -1);
                    if (checkFor != 1 && checkFor != 2) {
                        if (checkFor == 3) {
                            doEnterPrivateEntry();
                            break;
                        }
                    }
                    super.onActivityResult(requestCode, resultCode, data);
                    return;
                    break;
                case 36:
                    Log.d("AlbumPageFragment", "onActivityResult");
                    IntentUtil.enterPrivateAlbum(getActivity());
                    break;
            }
        }
        this.mHasEnterPrivateEntry = false;
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void addHeaderAlbumUI() {
        if (SyncUtil.existXiaomiAccount(getActivity()) && this.mShowAIAlbum) {
            if (this.mAlbumPageHeaderController == null) {
                this.mAlbumPageHeaderController = new AlbumPageHeaderController(this);
            }
            if (this.mAlbumPageAdapterWrapper.getHeadersCount() == 0) {
                this.mAlbumPageAdapterWrapper.addHeaderView(this.mAlbumPageHeaderController.getView());
            }
        } else if (this.mAlbumPageAdapterWrapper.getHeadersCount() > 0) {
            this.mAlbumPageAdapterWrapper.removeHeaderView(this.mAlbumPageHeaderController.getView());
        }
    }

    private void scrollToNewlyCreatedAlbum(ArrayList<com.miui.gallery.model.Album> albums, SortedList<com.miui.gallery.model.Album> adapterData) {
        if (this.mPendingDisplayCreateAlbum) {
            this.mPendingDisplayCreateAlbum = false;
            if (albums != null) {
                long start = System.currentTimeMillis();
                Iterator it = albums.iterator();
                while (it.hasNext()) {
                    com.miui.gallery.model.Album album = (com.miui.gallery.model.Album) it.next();
                    if (album.getId() == this.mNewlyCreatedAlbumId) {
                        int pos = adapterData.indexOf(album);
                        if (pos != -1) {
                            this.mAlbumRecyclerView.smoothScrollToPosition(this.mAlbumPageAdapterWrapper.getHeadersCount() + pos);
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    private int getRecyclerPaddingBottom() {
        int fabHeight = 0;
        if (!(this.mCreateAlbumButton == null || this.mCreateAlbumButton.getVisibility() == 8)) {
            fabHeight = this.mCreateAlbumButton.getHeight();
        }
        if (fabHeight > 0) {
            return (getResources().getDimensionPixelSize(R.dimen.album_fab_margin) * 2) + fabHeight;
        }
        return getResources().getDimensionPixelSize(R.dimen.album_item_placeholder_height);
    }

    private Uri getAlbumQueryUri(boolean forOtherAlbum, boolean firstTime) {
        boolean z = true;
        Builder buildUpon = Album.URI.buildUpon();
        String str = "join_face";
        boolean z2 = (forOtherAlbum || firstTime || this.mShowAIAlbum || AccountCache.getAccount() == null) ? false : true;
        buildUpon = buildUpon.appendQueryParameter(str, String.valueOf(z2));
        str = "join_video";
        if (forOtherAlbum || firstTime) {
            z2 = false;
        } else {
            z2 = true;
        }
        buildUpon = buildUpon.appendQueryParameter(str, String.valueOf(z2));
        str = "join_share";
        if (forOtherAlbum || firstTime) {
            z2 = false;
        } else {
            z2 = true;
        }
        buildUpon = buildUpon.appendQueryParameter(str, String.valueOf(z2));
        str = "join_recent";
        if (forOtherAlbum || firstTime) {
            z2 = false;
        } else {
            z2 = true;
        }
        buildUpon = buildUpon.appendQueryParameter(str, String.valueOf(z2));
        str = "join_favorites";
        if (forOtherAlbum || firstTime) {
            z2 = false;
        } else {
            z2 = true;
        }
        Builder appendQueryParameter = buildUpon.appendQueryParameter(str, String.valueOf(z2)).appendQueryParameter("exclude_empty_album", "true");
        String str2 = "fill_covers";
        if (forOtherAlbum || firstTime) {
            z = false;
        }
        return appendQueryParameter.appendQueryParameter(str2, String.valueOf(z)).build();
    }

    private String getAlbumQuerySelection(boolean forOtherAlbum) {
        if (forOtherAlbum) {
            return "classification = 1";
        }
        return "classification = 0";
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (getUserVisibleHint()) {
            if (!this.mLoaderInitialized) {
                startToLoadAlbums();
            }
            onVisibleToUser();
        }
    }

    private boolean isEmpty() {
        return this.mAlbumPageAdapter != null && this.mAlbumPageAdapter.getItemCount() == 0;
    }

    private void onVisibleToUser() {
        if (isEmpty()) {
            statAlbumEmpty();
        }
    }

    private void statAlbumEmpty() {
        HashMap<String, String> params = new HashMap();
        params.put("login", String.valueOf(AccountCache.getAccount() != null));
        BaseSamplingStatHelper.recordCountEvent("album", "album_empty", params);
    }

    private void startToLoadAlbums() {
        Log.d("AlbumPageFragment", "startToLoadAlbums");
        if (this.mAlbumPagePhotoLoaderCallback != null) {
            Bundle args = new Bundle();
            args.putBoolean("first_time_load", true);
            getLoaderManager().initLoader(1, args, this.mAlbumPagePhotoLoaderCallback);
            this.mLoaderInitialized = true;
            this.mPendingLoadExtraInfo = true;
        }
    }

    private void startToLoadAlbumExtraInfo() {
        Log.d("AlbumPageFragment", "startToLoadAlbumExtraInfo");
        getLoaderManager().restartLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
        getLoaderManager().initLoader(4, null, this.mAlbumPagePhotoLoaderCallback);
        if (!this.mShowAIAlbum) {
            getLoaderManager().initLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
        }
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    public void onStatusChanged(SparseBooleanArray changedStatus) {
        if (changedStatus != null) {
            if (changedStatus.indexOfKey(1) >= 0) {
                boolean showSearchBar = changedStatus.get(1);
                Log.d("AlbumPageFragment", "New search bar status %s", Boolean.valueOf(showSearchBar));
                if (showSearchBar) {
                    if (this.mSearchBarController == null) {
                        this.mSearchBarController = new TopSearchBarController(this, this.mBannerSearchBar, "from_album_page");
                    }
                    this.mBannerSearchBar.setVisibility(0);
                    this.mSearchBarController.onResume();
                    this.mBannerSearchBar.post(new Runnable() {
                        public void run() {
                            if (!AlbumPageFragment.this.mDrawer.isDrawerOpen()) {
                                AlbumPageFragment.this.mDrawer.openDrawer();
                            }
                        }
                    });
                } else {
                    if (this.mSearchBarController != null) {
                        this.mSearchBarController.onPause();
                    }
                    this.mBannerSearchBar.setVisibility(8);
                }
            }
            if (changedStatus.indexOfKey(2) >= 0) {
                this.mShowAIAlbum = changedStatus.get(2);
                Log.d("AlbumPageFragment", "New ai album status %s", Boolean.valueOf(this.mShowAIAlbum));
                if (this.mShowAIAlbum) {
                    getLoaderManager().destroyLoader(3);
                } else {
                    getLoaderManager().restartLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
                }
                getLoaderManager().destroyLoader(1);
                getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
            }
        }
    }

    private String loaderId2Name(int loaderId) {
        switch (loaderId) {
            case 1:
                return "albums";
            case 2:
                return "share albums";
            case 3:
                return "people face cover";
            case 4:
                return "other albums";
            default:
                return String.valueOf(loaderId);
        }
    }
}
