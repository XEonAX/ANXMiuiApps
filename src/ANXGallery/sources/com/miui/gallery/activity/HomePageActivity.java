package com.miui.gallery.activity;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.HomePageImmersionMenuHelper.MenuItemsCheckListener;
import com.miui.gallery.activity.HomePageStartupHelper.Attacher;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.card.ui.cardlist.AssistantPageFragment;
import com.miui.gallery.preference.DocumentProviderPreference;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.scanner.MediaScannerReceiver;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.AlbumPageFragment;
import com.miui.gallery.ui.BaseFragment;
import com.miui.gallery.ui.HomePageFragment;
import com.miui.gallery.util.AppFocusedCheckHelper;
import com.miui.gallery.util.AppFocusedCheckHelper.OnAppFocusedListener;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ReceiverUtils;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.PlayerActions.Out;
import miui.view.ViewPager;
import miui.yellowpage.YellowPageStatistic.Display;

public class HomePageActivity extends BaseActivity implements Attacher, OnAppFocusedListener {
    private AppFocusedCheckHelper mAppFocusedCheckHelper;
    private int mCurrentPagePosition = 0;
    private boolean mFirstTime = true;
    private int mFragmentPagerScrollState = 0;
    private HomePageStartupHelper mHomePageStartupHelper;
    private HomePageImmersionMenuHelper mImmersionMenuHelper;
    private boolean mIsInStartup = false;
    private MediaScannerReceiver mMediaScannerReceiver;
    private MenuItemsCheckListener mMenuItemsCheckListener = new MenuItemsCheckListener() {
        public void onMenuItemsChecked(boolean needRedDot) {
            View actionBarMore = HomePageActivity.this.mActionBar.getCustomView();
            if (actionBarMore != null) {
                actionBarMore.findViewById(R.id.menu_update_view).setVisibility(needRedDot ? 0 : 4);
            }
        }
    };
    private ViewPager mPager;
    private int mStartUpPage;

    private class CallbackWrapper implements Callback {
        private Callback mWrapped;

        public CallbackWrapper(Callback callback) {
            this.mWrapped = callback;
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            return this.mWrapped.onCreateActionMode(mode, menu);
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            if (HomePageActivity.this.mFirstTime) {
                View view = HomePageActivity.this.getWindow().findViewById(miui.R.id.view_pager);
                if (view instanceof ViewPager) {
                    HomePageActivity.this.mPager = (ViewPager) view;
                    HomePageActivity.this.mPager.setDraggable(false);
                }
                HomePageActivity.this.mFirstTime = false;
            }
            if (HomePageActivity.this.mPager != null) {
                HomePageActivity.this.mPager.setDraggable(false);
            }
            return this.mWrapped.onPrepareActionMode(mode, menu);
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            return this.mWrapped.onActionItemClicked(mode, item);
        }

        public void onDestroyActionMode(ActionMode mode) {
            this.mWrapped.onDestroyActionMode(mode);
            if (HomePageActivity.this.mPager != null) {
                HomePageActivity.this.mPager.setDraggable(true);
            }
        }
    }

    private static class MediaScanJob implements Job<Void> {
        private MediaScanJob() {
        }

        /* synthetic */ MediaScanJob(AnonymousClass1 x0) {
            this();
        }

        public Void run(JobContext jc) {
            Context context = GalleryApp.sGetAndroidContext();
            MediaScannerUtil.scanMediaProvider(context);
            MediaScannerUtil.scanAllAlbumDirectories(context, 5);
            MediaScannerUtil.cleanup(context);
            return null;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        this.mHomePageStartupHelper = new HomePageStartupHelper(this, this);
        this.mHomePageStartupHelper.onActivityCreate();
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent != null) {
            this.mStartUpPage = intent.getIntExtra("extra_start_page", 0);
        }
        this.mActionBar.setFragmentViewPagerMode(this, getFragmentManager());
        setupHomePageFragment();
        this.mAppFocusedCheckHelper = new AppFocusedCheckHelper(this);
        CTA.onCreateOrDestroyHomePage();
    }

    public void onStartup() {
        this.mIsInStartup = true;
        setupOtherFragments();
        setupActionBar();
        registerMediaScannerReceiver();
    }

    protected void onStop() {
        this.mAppFocusedCheckHelper.onStop();
        super.onStop();
    }

    protected void onStart() {
        super.onStart();
        this.mAppFocusedCheckHelper.onStart();
    }

    public void onAppFocused() {
        Log.d("HomePageActivity", "onAppFocused");
        dispatchAppFocused();
        ThreadManager.getMiscPool().submit(new MediaScanJob());
    }

    protected void dispatchAppFocused() {
        Fragment f = this.mActionBar.getFragmentAt(this.mCurrentPagePosition);
        if (f instanceof OnAppFocusedListener) {
            ((OnAppFocusedListener) f).onAppFocused();
        }
    }

    public void onDestroy() {
        this.mAppFocusedCheckHelper.onDestroy();
        super.onDestroy();
        unregisterMediaScannerReceiver();
        this.mHomePageStartupHelper.onActivityDestroy();
        if (this.mImmersionMenuHelper != null) {
            this.mImmersionMenuHelper.onActivityDestroy();
        }
        CTA.onCreateOrDestroyHomePage();
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, getPageName(this.mCurrentPagePosition));
    }

    protected void onCtaChecked(boolean agreed) {
        if (DocumentProviderPreference.isFirstEntrance() && BaseDocumentProviderUtils.needRequestExternalSDCardPermission(this)) {
            DocumentProviderUtils.startFirstEntrancyPermissionActivityForResult(this);
        }
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, getPageName(this.mCurrentPagePosition));
        updateActionBarMore(this.mCurrentPagePosition);
    }

    private void setupActionBar() {
        this.mActionBar.setFragmentViewPagerMode(this, getFragmentManager(), false);
        this.mActionBar.setCustomView(R.layout.action_bar_more);
        View customView = this.mActionBar.getCustomView();
        this.mImmersionMenuHelper = new HomePageImmersionMenuHelper(this);
        this.mImmersionMenuHelper.registerMenuItemsCheckListener(this.mMenuItemsCheckListener);
        this.mImmersionMenuHelper.checkRedDotFeature();
        customView.findViewById(R.id.more).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                String page;
                Fragment fragment = HomePageActivity.this.mActionBar.getFragmentAt(HomePageActivity.this.mCurrentPagePosition);
                if (fragment instanceof BaseFragment) {
                    page = ((BaseFragment) fragment).getPageName();
                } else {
                    page = String.valueOf(HomePageActivity.this.mCurrentPagePosition);
                }
                HomePageActivity.this.mImmersionMenuHelper.showImmersionMenu(view, page);
            }
        });
        updateActionBarMore(this.mCurrentPagePosition);
    }

    private void updateActionBarMore(int curPosition) {
        if (curPosition == 1) {
            this.mActionBar.setDisplayShowCustomEnabled(true);
        } else if (curPosition == 0) {
            this.mActionBar.setDisplayShowCustomEnabled(true);
        } else {
            this.mActionBar.setDisplayShowCustomEnabled(true);
        }
    }

    private String getPageName(int position) {
        if (position == 0) {
            return Display.HOME;
        }
        if (position == 1) {
            return Out.KEY_ALBUM;
        }
        if (position == 2) {
            return "assistant";
        }
        return null;
    }

    private void setupHomePageFragment() {
        this.mActionBar.addFragmentTab("HomePageFragment", this.mActionBar.newTab().setText(R.string.home_page_label), HomePageFragment.class, null, false);
        this.mActionBar.addFragmentTab("Empty", this.mActionBar.newTab().setText(R.string.album_page_label), Fragment.class, null, false);
        if (ImageFeatureManger.isStoryFunctionEnable()) {
            this.mActionBar.addFragmentTab("StoryStub", this.mActionBar.newTab().setText(R.string.assistant_page_label), Fragment.class, null, false);
        }
        this.mActionBar.addOnFragmentViewPagerChangeListener(new FragmentViewPagerChangeListener() {
            public void onPageScrolled(int position, float ratio, boolean fromHasActionMenu, boolean toHasActionMenu) {
            }

            public void onPageSelected(int position) {
                Log.d("HomePageActivity", "onPageSelected %d", Integer.valueOf(position));
                if (HomePageActivity.this.mCurrentPagePosition != position) {
                    BaseSamplingStatHelper.recordPageEnd(HomePageActivity.this, HomePageActivity.this.getPageName(HomePageActivity.this.mCurrentPagePosition));
                    BaseSamplingStatHelper.recordPageStart(HomePageActivity.this, HomePageActivity.this.getPageName(position));
                }
                HomePageActivity.this.updateActionBarMore(position);
                HomePageActivity.this.mCurrentPagePosition = position;
            }

            public void onPageScrollStateChanged(int state) {
                HomePageActivity.this.mFragmentPagerScrollState = state;
                HomePageActivity.this.setupOtherFragments();
            }
        });
    }

    private void setupOtherFragments() {
        if (this.mIsInStartup && this.mFragmentPagerScrollState == 0) {
            this.mIsInStartup = false;
            int position = this.mCurrentPagePosition;
            this.mActionBar.addFragmentTab("AlbumPageFragment", this.mActionBar.newTab().setText(R.string.album_page_label), 1, AlbumPageFragment.class, null, false);
            this.mActionBar.selectTab(this.mActionBar.getTabAt(position));
            this.mActionBar.removeFragmentTabAt(2);
            if (ImageFeatureManger.isStoryFunctionEnable()) {
                this.mActionBar.addFragmentTab("AssistantPageFragment", this.mActionBar.newTab().setText(R.string.assistant_page_label), 2, AssistantPageFragment.class, null, false);
                this.mActionBar.removeFragmentTabAt(3);
            }
            if (this.mStartUpPage > 0 && this.mStartUpPage < this.mActionBar.getTabCount()) {
                this.mActionBar.selectTab(this.mActionBar.getTabAt(this.mStartUpPage));
            }
        }
    }

    public HomePageStartupHelper getStartupHelper() {
        return this.mHomePageStartupHelper;
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    public ActionMode onWindowStartingActionMode(Callback callback) {
        return super.onWindowStartingActionMode(new CallbackWrapper(callback));
    }

    protected boolean supportEnterSetting() {
        return true;
    }

    private void registerMediaScannerReceiver() {
        if (this.mMediaScannerReceiver == null) {
            this.mMediaScannerReceiver = new MediaScannerReceiver();
        }
        ReceiverUtils.registerReceiver(this, this.mMediaScannerReceiver, 0, "file", "android.intent.action.MEDIA_MOUNTED", "android.intent.action.MEDIA_UNMOUNTED", "android.intent.action.MEDIA_SCANNER_FINISHED", "android.intent.action.MEDIA_SCANNER_SCAN_FILE");
    }

    private void unregisterMediaScannerReceiver() {
        ReceiverUtils.safeUnregisterReceiver(this, this.mMediaScannerReceiver);
        this.mMediaScannerReceiver = null;
    }

    public void onPermissionsChecked(String[] permissions, int[] grantResults) {
        super.onPermissionsChecked(permissions, grantResults);
        ThreadManager.getMiscPool().submit(new MediaScanJob());
    }
}
