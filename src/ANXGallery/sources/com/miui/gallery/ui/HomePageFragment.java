package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.RelativeLayout;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.HomePageStartupHelper;
import com.miui.gallery.activity.HomePageStartupHelper.Attacher;
import com.miui.gallery.activity.HomePageStartupHelper.DataLoadListener;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.adapter.HomePageAdapter;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.discovery.DiscoveryMessageManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.preference.GalleryPreferences.HomePage;
import com.miui.gallery.preference.GalleryPreferences.Search;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.search.widget.BannerSearchBar;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.AIAlbumDisplayHelper.DisplayStatusCallback;
import com.miui.gallery.ui.AIAlbumDisplayHelper.WeakReferencedAIAlbumDisplayStatusObserver;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.AppFocusedCheckHelper.OnAppFocusedListener;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeBroadcastReceiver;
import com.miui.gallery.util.SafeBroadcastReceiver.WeakReceiver;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.EmptyPage;
import com.miui.gallery.widget.PanelBar;
import com.miui.gallery.widget.TwoStageDrawer;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HomePageFragment extends BaseMediaFragment implements DisplayStatusCallback, OnAppFocusedListener {
    public static final String[] PHOTOS_LOADER_PROJECTION = HomePageAdapter.PROJECTION;
    public static final Uri PHOTOS_LOADER_URI = Media.URI.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).appendQueryParameter("generate_headers", String.valueOf(true)).build();
    private static final Uri PHOTOS_PAGE_URI = Media.URI.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
    private BannerSearchBar mBannerSearchBar;
    private MultiChoiceModeListener mChoiceModeListener = new MultiChoiceModeListener() {
        private MenuItem mAddToAlbum;
        private MenuItem mDelete;
        private MenuItem mProduce;
        private MenuItem mSend;

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            updateMenuState();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            updateMenuState();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(HomePageFragment.this.mActivity) ? R.menu.v15_home_page_menu : R.menu.home_page_menu, menu);
            this.mAddToAlbum = menu.findItem(R.id.add_to_album);
            this.mDelete = menu.findItem(R.id.delete);
            this.mProduce = menu.findItem(R.id.action_produce);
            this.mSend = menu.findItem(R.id.action_send);
            if (HomePageFragment.this.mHomePageTopBarController != null) {
                HomePageFragment.this.mHomePageTopBarController.setEnable(false);
            }
            if (HomePageFragment.this.mSearchBarController != null) {
                HomePageFragment.this.mSearchBarController.onPause();
                HomePageFragment.this.mSearchBarController.setEnable(false);
            }
            ImageSelectionTipFragment.showImageSelectionTipDialogIfNecessary(HomePageFragment.this.getActivity());
            BaseSamplingStatHelper.recordCountEvent("home", "action_mode_create");
            BaseSamplingStatHelper.recordNumericPropertyEvent("best_image", "best_image_count", (long) ImageFeatureCacheManager.getInstance().getBestImageCount(false));
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return false;
        }

        public boolean onActionItemClicked(final ActionMode mode, MenuItem item) {
            switch (item.getItemId()) {
                case R.id.delete /*2131886699*/:
                    MediaAndAlbumOperations.delete(HomePageFragment.this.mActivity, "HomePageFragmentDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
                        public void onDeleted(int count, long[] deleteIds) {
                            if (HomePageFragment.this.mActivity != null) {
                                ToastUtils.makeText(HomePageFragment.this.mActivity, HomePageFragment.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                                if (count > 0) {
                                    SoundUtils.playSoundForOperation(HomePageFragment.this.mActivity, 0);
                                }
                                mode.finish();
                                Map map = new HashMap();
                                map.put("count", Integer.valueOf(count));
                                BaseSamplingStatHelper.recordCountEvent("home", "delete_photo", map);
                            }
                        }
                    }, -1, "", 1, 26, HomePageFragment.this.mHomeGridViewWrapper.getCheckedItemIds());
                    return true;
                case R.id.action_produce /*2131886849*/:
                    MediaAndAlbumOperations.doProduceCreation(HomePageFragment.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            List<CheckedItem> selectedItems = HomePageFragment.this.mHomeGridViewWrapper.getCheckedItems();
                            int bestImageCount = 0;
                            for (int i = 0; i < selectedItems.size(); i++) {
                                if (ImageFeatureCacheManager.getInstance().isBestImage(((CheckedItem) selectedItems.get(i)).getId(), false)) {
                                    bestImageCount++;
                                }
                            }
                            Map map = new HashMap();
                            map.put("count", Integer.valueOf(selectedItems.size()));
                            map.put("best_image_count", Integer.valueOf(bestImageCount));
                            BaseSamplingStatHelper.recordCountEvent("home", "produce", map);
                            mode.finish();
                        }
                    }, HomePageFragment.this.mHomeGridViewWrapper.getCheckedItems());
                    return true;
                case R.id.action_send /*2131886850*/:
                    HomePageFragment.this.onSend(null, null);
                    return true;
                case R.id.add_to_album /*2131886852*/:
                    MediaAndAlbumOperations.addToAlbum(HomePageFragment.this.mActivity, new OnAddAlbumListener() {
                        public void onComplete(long[] result, boolean deleteOrigin) {
                            mode.finish();
                            BaseSamplingStatHelper.recordCountEvent("home", "add_to_album");
                        }
                    }, 1, true, true, HomePageFragment.this.mHomeGridViewWrapper.getCheckedItemIds());
                    return true;
                default:
                    return false;
            }
        }

        public void onDestroyActionMode(ActionMode mode) {
            if (HomePageFragment.this.mHomePageTopBarController != null) {
                HomePageFragment.this.mHomePageTopBarController.setEnable(true);
            }
            if (HomePageFragment.this.mSearchBarController != null) {
                HomePageFragment.this.mSearchBarController.onResume();
                HomePageFragment.this.mSearchBarController.setEnable(true);
            }
        }

        private void updateMenuState() {
            if (HomePageFragment.this.mHomeGridViewWrapper.getCheckedItemCount() < 1) {
                this.mDelete.setEnabled(false);
                this.mAddToAlbum.setEnabled(false);
                this.mProduce.setEnabled(false);
                this.mSend.setEnabled(false);
                return;
            }
            this.mDelete.setEnabled(true);
            this.mAddToAlbum.setEnabled(true);
            this.mProduce.setEnabled(true);
            this.mSend.setEnabled(true);
        }
    };
    private TwoStageDrawer mDrawer;
    private EmptyPage mEmptyView;
    private GridView mHomeGridView;
    private EditableListViewWrapperDeprecated mHomeGridViewWrapper;
    private HomePageAdapter mHomePageAdapter;
    private HomePagePhotoLoaderCallback mHomePagePhotoLoaderCallback;
    private HomePageStartupHelper mHomePageStartHelper;
    private HomePageTopBarController mHomePageTopBarController;
    private boolean mIsStartupDone = false;
    private TopSearchBarController mSearchBarController;
    private WeakReferencedAIAlbumDisplayStatusObserver mSearchBarStatusObserver;
    private FrameLayout mSearchContainer;
    private FrameLayout mSearchTextPreview;
    private boolean mStartCalled;
    private SafeBroadcastReceiver mVoiceAssistantReceiver;
    private WeakReceiver mWeakVoiceAssistantReceiver = new WeakReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (HomePageFragment.this.mHomeGridViewWrapper.isInActionMode()) {
                HomePageFragment.this.onSend(intent.getStringExtra("assistant_target_package"), intent.getStringExtra("assistant_target_class"));
            }
        }
    };

    private class HomePagePhotoLoaderCallback implements LoaderCallbacks {
        private long startTime;

        private HomePagePhotoLoaderCallback() {
        }

        /* synthetic */ HomePagePhotoLoaderCallback(HomePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle bundle) {
            if (id == 1) {
                this.startTime = System.currentTimeMillis();
                CursorLoader loader = new CursorLoader(HomePageFragment.this.mActivity);
                loader.setUri(HomePageFragment.PHOTOS_LOADER_URI);
                loader.setProjection(HomePageFragment.PHOTOS_LOADER_PROJECTION);
                loader.setSelection("alias_show_in_homepage=1 AND sha1 NOT NULL");
                loader.setSortOrder("alias_sort_time DESC ");
                return loader;
            } else if (id == 2) {
                return DiscoveryMessageManager.getInstance().createLoader(HomePageFragment.this.mActivity, 1);
            } else {
                return null;
            }
        }

        private boolean isTopBarPermanent() {
            return HomePageFragment.this.mHomePageAdapter.getCount() == 0 && AccountCache.getAccount() == null;
        }

        private void updateAfterLoadFinished() {
            if (HomePageFragment.this.mHomePageAdapter.getCount() == 0) {
                HomePageFragment.this.inflateEmptyView();
            }
            if (HomePageFragment.this.mHomePageTopBarController != null) {
                boolean permanent = isTopBarPermanent();
                HomePageFragment.this.mHomePageTopBarController.setPermanent(permanent);
                HomePageFragment.this.mDrawer.setDragEnabled(!permanent);
            }
            saveHomePageIds();
        }

        private void saveHomePageIds() {
            ArrayList<Long> ids = new ArrayList(128);
            int i = 0;
            while (i < 128 && i < HomePageFragment.this.mHomePageAdapter.getCount()) {
                ids.add(Long.valueOf(HomePageFragment.this.mHomePageAdapter.getItemKey(i)));
                i++;
            }
            HomePage.setHomePageImageIds(TextUtils.join(",", ids));
        }

        public void onLoadFinished(Loader loader, Object o) {
            int loaderId = loader.getId();
            if (loaderId == 1) {
                Log.d("HomePageFragment", "onLoadFinished %d", Long.valueOf(System.currentTimeMillis() - this.startTime));
                HomePageFragment.this.mHomePageAdapter.swapCursor((Cursor) o);
                updateAfterLoadFinished();
            } else if (loaderId == 2 && HomePageFragment.this.mHomePageTopBarController != null) {
                HomePageFragment.this.mHomePageTopBarController.setDiscoveryMessage((ArrayList) o);
            }
        }

        public void onLoaderReset(Loader loader) {
            if (loader.getId() == 2 && HomePageFragment.this.isResumed() && HomePageFragment.this.mHomePageTopBarController != null) {
                HomePageFragment.this.mHomePageTopBarController.setDiscoveryMessage(null);
            }
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mDrawer = new TwoStageDrawer(this.mActivity);
        this.mDrawer.setAlwaysShowTargetViewDivider(getResources().getBoolean(R.bool.homepage_alwaysShowTargetViewDivider));
        this.mHomeGridView = new StickyGridHeadersGridView(this.mActivity);
        this.mHomeGridView.setLayoutParams(new LayoutParams(-1, -1));
        this.mHomeGridView.setStretchMode(2);
        this.mHomeGridView.setHorizontalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_horizontal_spacing));
        this.mHomeGridView.setVerticalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_vertical_spacing));
        this.mHomeGridView.setSelector(new ColorDrawable(0));
        this.mHomeGridView.setOverScrollMode(2);
        updateConfiguration(getResources().getConfiguration());
        this.mHomePageAdapter = new HomePageAdapter(this.mActivity);
        this.mHomeGridView.setAdapter(this.mHomePageAdapter);
        this.mDrawer.addView(this.mHomeGridView);
        this.mHomePageStartHelper = ((Attacher) this.mActivity).getStartupHelper();
        this.mHomePageStartHelper.setDataLoaderListener(new DataLoadListener() {
            public void onDataLoadFinish(Cursor cursor) {
                if (HomePageFragment.this.mActivity != null) {
                    if (cursor != null) {
                        HomePageFragment.this.mHomePageAdapter.swapCursor(cursor);
                    }
                    HomePageFragment.this.onDataBind();
                }
            }
        });
        addSearchContainer();
        return this.mDrawer;
    }

    public void onStartup() {
        if (this.mActivity != null && !this.mActivity.isDestroyed()) {
            this.mDrawer.setContentViewBackground(getResources().getDrawable(R.drawable.top_bar_background));
            this.mDrawer.setTargetView(this.mHomeGridView);
            this.mDrawer.setPrimaryContentView(this.mSearchContainer);
            this.mDrawer.setScrollDivider(getResources().getDrawable(R.drawable.sync_status_scroll_divider));
            this.mDrawer.setScrollableView(this.mHomeGridView);
            this.mDrawer.setDragEnabled(true);
            this.mDrawer.setInitialDrawerState(1);
            addTopBar();
            if (this.mSearchTextPreview != null) {
                displaySearchBar();
            }
            this.mHomeGridView.setFastScrollEnabled(true);
            this.mHomeGridViewWrapper = new EditableListViewWrapperDeprecated(this.mHomeGridView);
            this.mHomeGridViewWrapper.setOnScrollListener(this.mHomePageAdapter.generateWrapScrollListener(null));
            this.mHomeGridViewWrapper.setAdapter(this.mHomePageAdapter);
            this.mHomeGridViewWrapper.setChoiceMode(3);
            this.mHomeGridViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
            this.mHomeGridViewWrapper.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                    ImageLoadParams item = new ImageLoadParams(HomePageFragment.this.mHomePageAdapter.getItemKey(position), HomePageFragment.this.mHomePageAdapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, HomePageFragment.this.mHomePageAdapter.getItemDecodeRectF(position), position, HomePageFragment.this.mHomePageAdapter.getMimeType(position), HomePageFragment.this.mHomePageAdapter.getFileLength(position));
                    IntentUtil.gotoPhotoPage(HomePageFragment.this, adapterView, HomePageFragment.PHOTOS_PAGE_URI, position, HomePageFragment.this.mHomePageAdapter.getCount(), "alias_show_in_homepage=1 AND sha1 NOT NULL", null, "alias_sort_time DESC ", item);
                    BaseSamplingStatHelper.recordNumericPropertyEvent("home", "click_micro_thumb", (long) position);
                }
            });
            this.mHomePageTopBarController = new HomePageTopBarController(getActivity(), this.mDrawer, R.id.home_page_top_bar);
            if (this.mStartCalled) {
                this.mHomePageTopBarController.onAppFocused();
                this.mHomePageTopBarController.onResume();
            }
            registerSearchStatusObserver();
            this.mHomePagePhotoLoaderCallback = new HomePagePhotoLoaderCallback(this, null);
            getLoaderManager().initLoader(1, null, this.mHomePagePhotoLoaderCallback);
            getLoaderManager().initLoader(2, null, this.mHomePagePhotoLoaderCallback);
        }
    }

    private void addSearchContainer() {
        this.mSearchContainer = new FrameLayout(this.mActivity);
        this.mSearchContainer.setLayoutParams(new LayoutParams(-1, -2));
        this.mSearchContainer.setBackgroundColor(getResources().getColor(R.color.top_bar_background));
        this.mSearchContainer.setId(R.id.home_page_search_bar_container);
        if (Search.isSearchCacheStatusOpen(false)) {
            this.mSearchTextPreview = new FrameLayout(this.mActivity);
            int textHeight = MiscUtil.dip2px(this.mActivity, 38.5f);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(-1, textHeight);
            int horizontalMargin = MiscUtil.dip2px(this.mActivity, 10.0f);
            lp.setMargins(horizontalMargin, 0, horizontalMargin, MiscUtil.dip2px(this.mActivity, 6.33f));
            this.mSearchTextPreview.setLayoutParams(lp);
            this.mSearchTextPreview.setBackgroundColor(getResources().getColor(R.color.search_bar_placeholder_color));
            this.mSearchContainer.addView(this.mSearchTextPreview);
            this.mHomeGridView.setTranslationY((float) (textHeight + horizontalMargin));
        }
        this.mDrawer.addView(this.mSearchContainer);
    }

    private void addTopBar() {
        PanelBar panel = new PanelBar(this.mActivity);
        panel.setId(R.id.home_page_top_bar);
        panel.setBackground(getResources().getDrawable(R.drawable.top_bar_single_bg));
        int horizontalMargin = getResources().getDimensionPixelSize(R.dimen.message_bar_horizontal_margin);
        int verticalMargin = getResources().getDimensionPixelSize(R.dimen.message_bar_vertical_margin);
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.panel_item_height));
        lp.setMargins(horizontalMargin, 0, horizontalMargin, verticalMargin);
        lp.addRule(3, R.id.home_page_search_bar_container);
        panel.setLayoutParams(lp);
        this.mDrawer.addView(panel);
        this.mDrawer.setSecondaryContentView(panel);
    }

    public void onDestroyView() {
        unregisterSearchStatusObserver();
        super.onDestroyView();
    }

    protected Loader getLoader() {
        return null;
    }

    protected List<Loader> getLoaders() {
        ArrayList<Loader> ret = new ArrayList();
        ret.add(getLoaderManager().getLoader(1));
        ret.add(getLoaderManager().getLoader(2));
        return ret;
    }

    private void inflateEmptyView() {
        if (this.mEmptyView == null) {
            this.mEmptyView = (EmptyPage) LayoutInflater.from(this.mActivity).inflate(R.layout.home_page_empty_view, null, false);
            this.mEmptyView.setOnActionButtonClickListener(new OnClickListener() {
                public void onClick(View v) {
                    IntentUtil.startCameraActivity(HomePageFragment.this.getActivity());
                }
            });
            this.mDrawer.addView(this.mEmptyView);
            this.mHomeGridViewWrapper.setEmptyView(this.mEmptyView);
        }
    }

    public void onDataBind() {
        if (!this.mIsStartupDone) {
            this.mIsStartupDone = true;
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    HomePageFragment.this.mHomePageStartHelper.onStartup();
                    HomePageFragment.this.onStartup();
                }
            });
        }
    }

    public void onResume() {
        super.onResume();
        if (!(this.mSearchBarController == null || this.mHomeGridViewWrapper.isInActionMode())) {
            this.mSearchBarController.onResume();
        }
        if (this.mVoiceAssistantReceiver == null) {
            this.mVoiceAssistantReceiver = new SafeBroadcastReceiver(this.mWeakVoiceAssistantReceiver);
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mVoiceAssistantReceiver, new IntentFilter("com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"));
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onPause();
        }
        if (this.mVoiceAssistantReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mVoiceAssistantReceiver);
            this.mVoiceAssistantReceiver = null;
        }
    }

    public void onStart() {
        super.onStart();
        doOnStart();
    }

    public void onStop() {
        super.onStop();
        doOnStop();
    }

    public void onAppFocused() {
        if (this.mHomePageTopBarController != null) {
            this.mHomePageTopBarController.onAppFocused();
        }
    }

    private void doOnStart() {
        if (!this.mStartCalled) {
            this.mHomePageAdapter.updateGalleryCloudSyncableState();
            if (this.mHomePageTopBarController != null) {
                this.mHomePageTopBarController.onResume();
            }
            ImageFeatureManger.getInstance().triggerNewImageCalculation();
            this.mStartCalled = true;
            if (getUserVisibleHint()) {
                onVisibleToUser();
            }
        }
    }

    private void doOnStop() {
        if (this.mStartCalled) {
            if (this.mHomePageTopBarController != null) {
                this.mHomePageTopBarController.onPause();
            }
            this.mStartCalled = false;
        }
    }

    protected void onPhotoPageCreate(Intent i) {
        super.onPhotoPageCreate(i);
        doOnStop();
    }

    protected void onPhotoPageDestroy(Intent i) {
        super.onPhotoPageDestroy(i);
        doOnStart();
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    public String getPageName() {
        return "home";
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mHomePageTopBarController != null) {
            this.mHomePageTopBarController.onDestroy();
        }
        DiscoveryMessageManager.getInstance().markAsReadByTypeAsync(GalleryApp.sGetAndroidContext(), 1);
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser) {
            onVisibleToUser();
        }
    }

    private boolean isEmpty() {
        return (this.mHomePageAdapter == null || this.mHomePageAdapter.getCursor() == null || this.mHomePageAdapter.getCount() != 0) ? false : true;
    }

    private void onVisibleToUser() {
        if (isEmpty()) {
            statHomeEmpty();
        }
    }

    private void statHomeEmpty() {
        HashMap<String, String> params = new HashMap();
        params.put("login", String.valueOf(AccountCache.getAccount() != null));
        BaseSamplingStatHelper.recordCountEvent("home", "home_empty", params);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateConfiguration(newConfig);
    }

    private void updateConfiguration(Configuration configuration) {
        int firstVisibleItemPosition = this.mHomeGridView.getFirstVisiblePosition();
        if (configuration.orientation == 2) {
            this.mHomeGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsLand);
        } else {
            this.mHomeGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsPortrait);
        }
        this.mHomeGridView.setSelection(firstVisibleItemPosition);
    }

    private void registerSearchStatusObserver() {
        this.mSearchBarStatusObserver = new WeakReferencedAIAlbumDisplayStatusObserver(this);
        onStatusChanged(AIAlbumDisplayHelper.getInstance().registerAIAlbumDisplayStatusObserver(this.mSearchBarStatusObserver));
    }

    private void unregisterSearchStatusObserver() {
        if (this.mSearchBarStatusObserver != null) {
            AIAlbumDisplayHelper.getInstance().unregisterAIAlbumDisplayStatusObserver(this.mSearchBarStatusObserver);
        }
    }

    public void onStatusChanged(SparseBooleanArray changedStatus) {
        if (changedStatus.indexOfKey(1) < 0) {
            return;
        }
        if (changedStatus.get(1)) {
            Search.setIsSearchCacheStatusOpen(true);
            displaySearchBar();
            return;
        }
        Search.setIsSearchCacheStatusOpen(false);
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onPause();
        }
        this.mSearchContainer.setVisibility(8);
    }

    private void displaySearchBar() {
        if (this.mBannerSearchBar == null) {
            this.mBannerSearchBar = new BannerSearchBar(this.mActivity);
            this.mBannerSearchBar.setId(R.id.home_page_search_bar);
        }
        if (this.mSearchBarController == null) {
            this.mSearchBarController = new TopSearchBarController(this, this.mBannerSearchBar, "from_home_page");
        }
        this.mSearchContainer.setVisibility(0);
        if (isResumed()) {
            this.mSearchBarController.onResume();
        }
        if (this.mBannerSearchBar.getParent() != null) {
            this.mBannerSearchBar.post(new Runnable() {
                public void run() {
                    if (!HomePageFragment.this.mDrawer.isDrawerOpen()) {
                        HomePageFragment.this.mDrawer.halfOpenDrawer(true);
                    }
                }
            });
        } else if (this.mSearchTextPreview == null) {
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(-1, -2);
            int horizontalMargin = MiscUtil.dip2px(this.mActivity, 10.0f);
            lp.setMargins(horizontalMargin, 0, horizontalMargin, MiscUtil.dip2px(this.mActivity, 6.33f));
            this.mBannerSearchBar.setLayoutParams(lp);
            this.mSearchContainer.addView(this.mBannerSearchBar);
            this.mBannerSearchBar.post(new Runnable() {
                public void run() {
                    if (!HomePageFragment.this.mDrawer.isDrawerOpen() || !HomePageFragment.this.mDrawer.isDrawerHalfOpen()) {
                        HomePageFragment.this.mDrawer.halfOpenDrawer(true);
                    }
                }
            });
        } else {
            this.mSearchTextPreview.addView(this.mBannerSearchBar);
            this.mBannerSearchBar.startAnimation(getSearchBarAppearAnimation());
        }
    }

    private AlphaAnimation getSearchBarAppearAnimation() {
        AlphaAnimation appearAnim = new AlphaAnimation(0.0f, 1.0f);
        appearAnim.setDuration(200);
        appearAnim.setInterpolator(new AccelerateInterpolator());
        appearAnim.setAnimationListener(new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                if (HomePageFragment.this.mSearchTextPreview != null) {
                    HomePageFragment.this.mSearchTextPreview.setBackgroundColor(0);
                }
            }

            public void onAnimationRepeat(Animation animation) {
            }
        });
        return appearAnim;
    }

    private void onSend(String targetPackage, String targetClass) {
        int i;
        int initPos = Integer.MAX_VALUE;
        SparseBooleanArray selectedItems = this.mHomeGridViewWrapper.getCheckedItemPositions();
        ArrayList<Integer> arrayList = new ArrayList(selectedItems.size());
        ArrayList<Long> arrayList2 = new ArrayList(selectedItems.size());
        for (i = 0; i < selectedItems.size(); i++) {
            int key = selectedItems.keyAt(i);
            if (selectedItems.get(key)) {
                arrayList.add(Integer.valueOf(key));
                arrayList2.add(Long.valueOf(this.mHomePageAdapter.getItemKey(key)));
                if (key < initPos) {
                    initPos = key;
                }
            }
        }
        if (arrayList.size() != 0) {
            int[] selectedPos = new int[arrayList.size()];
            long[] selectedId = new long[arrayList2.size()];
            for (i = 0; i < arrayList.size(); i++) {
                selectedPos[i] = ((Integer) arrayList.get(i)).intValue();
                selectedId[i] = ((Long) arrayList2.get(i)).longValue();
            }
            if (initPos == Integer.MAX_VALUE) {
                initPos = 0;
            }
            IntentUtil.gotoPreviewSelectPage(this, PHOTOS_PAGE_URI, initPos, this.mHomePageAdapter.getCount(), "alias_show_in_homepage=1 AND sha1 NOT NULL", null, "alias_sort_time DESC ", new ImageLoadParams(this.mHomePageAdapter.getItemKey(initPos), this.mHomePageAdapter.getLocalPath(initPos), ThumbConfig.get().sMicroTargetSize, this.mHomePageAdapter.getItemDecodeRectF(initPos), initPos, this.mHomePageAdapter.getMimeType(initPos), this.mHomePageAdapter.getFileLength(initPos)), selectedId, selectedPos, targetPackage, targetClass);
            this.mHomeGridViewWrapper.stopActionMode();
            Map map = new HashMap();
            map.put("count", Integer.valueOf(selectedItems.size()));
            BaseSamplingStatHelper.recordCountEvent("home", "send", map);
        }
    }
}
