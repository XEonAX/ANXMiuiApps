package com.miui.gallery.ui;

import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.app.Fragment;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.MiuiIntent;
import android.content.SystemIntent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.RectF;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings.System;
import android.support.v4.content.LocalBroadcastManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.WindowCompat;
import com.miui.extraphoto.sdk.ExtraPhotoSDK;
import com.miui.extraphoto.sdk.ExtraPhotoWrapper;
import com.miui.extraphoto.sdk.ExtraPhotoWrapper.StartCallback;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.compat.app.ActionBarCompat;
import com.miui.gallery.compat.app.ActivityCompat;
import com.miui.gallery.compat.view.ViewCompat;
import com.miui.gallery.data.CacheOfAllFacesInOnePhoto;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.CloudItem;
import com.miui.gallery.model.FavoriteInfo;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Favorites;
import com.miui.gallery.projection.ConnectController;
import com.miui.gallery.projection.ConnectController.ConnectListener;
import com.miui.gallery.projection.DeviceListController;
import com.miui.gallery.projection.DeviceListController.OnItemClickListener;
import com.miui.gallery.projection.RemoteControlReceiver.RemoteControlListener;
import com.miui.gallery.projection.RemoteController;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.DownloadFragment.OnDownloadListener;
import com.miui.gallery.ui.PhotoPageFragmentBase.PhotoPageInteractionListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnAlphaChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnDisplayRectChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnExitListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnScaleChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnSingleTapListener;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.OrientationSensor;
import com.miui.gallery.util.OrientationSensor.OnOrientationChangedListener;
import com.miui.gallery.util.PhotoOperationsUtil;
import com.miui.gallery.util.ReceiverUtils;
import com.miui.gallery.util.SlideWallpaperUtils;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.SpecialTypeMediaUtils;
import com.miui.gallery.util.SystemUiUtil;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.Utils;
import com.miui.gallery.util.WallpaperUtils;
import com.miui.gallery.util.XmpHelper;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.PhotoPageDataCache;
import com.miui.gallery.util.photoview.TileReusedBitCache;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudImageLoadingListenerAdapter;
import com.miui.gallery.util.uil.PhotoReusedBitCache;
import com.miui.gallery.video.editor.manager.SmartVideoGuideHelper;
import com.miui.gallery.video.editor.manager.SmartVideoGuideHelper.SmartVideoGuideListener;
import com.miui.gallery.video.editor.manager.SmartVideoJudgeManager;
import com.miui.gallery.video.editor.sdk.Build;
import com.miui.gallery.widget.IMultiThemeView;
import com.miui.gallery.widget.IMultiThemeView.Theme;
import com.miui.gallery.widget.IMultiThemeView.ThemeTransition;
import com.miui.gallery.widget.ViewPager;
import com.miui.gallery.widget.slip.VerticalSlipLayout;
import com.miui.gallery.widget.slip.VerticalSlipLayout.OnSlipListener;
import com.miui.privacy.LockSettingsHelper;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import miui.provider.Notes.Data;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.widget.GuidePopupWindow;
import miui.yellowpage.Tag.TagYellowPage;
import miui.yellowpage.YellowPageContract.MipubPhoneEvent;

public class PhotoPageFragment extends PhotoPageFragmentBase {
    private boolean isFromCamera;
    private OnAlphaChangedListener mAlphaChangedListener = new OnAlphaChangedListener() {
        public void onAlphaChanged(float alpha) {
            if (PhotoPageFragment.this.isTransparentTheme() && PhotoPageFragment.this.mThemeManager != null) {
                PhotoPageFragment.this.mThemeManager.setBackgroundAlpha(alpha);
            }
        }
    };
    private boolean mAlwaysShowMenubar;
    private ChoiceManager mChoiceManager;
    private boolean mDataLoaded;
    private CloudImageLoadingListener mDownloadListener = new CloudImageLoadingListenerAdapter() {
        public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, true);
            }
        }

        public void onLoadingStarted(Uri uri, DownloadType type, View view) {
            if (CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, false);
            }
        }

        public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, true);
            }
        }

        public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type)) {
                if (PhotoPageFragment.this.mMenuManager != null) {
                    PhotoPageFragment.this.mMenuManager.refreshDownloadItem(false, false);
                }
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.settleItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                }
                if (PhotoPageFragment.this.mSpecialTypeManager != null) {
                    PhotoPageFragment.this.mSpecialTypeManager.updateItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                }
            }
        }
    };
    private DualCameraManager mDualCameraManager;
    private EditorManager mEditorManager;
    private FavoritesManager mFavoritesManager;
    private boolean mFromRecommendFacePage;
    private boolean mHasSendDismissCast;
    private boolean mIsNightMode;
    private PhotoMaskManager mMaskManager;
    private MenuManager mMenuManager;
    private MotionPhotoManager mMotionPhotoManager;
    private NFCManager mNFCManager;
    private boolean mNeedConfirmPassWord;
    private OnExitListener mOnExitListener = new OnExitListener() {
        public void onExit() {
            PhotoPageFragment.this.doExit();
        }
    };
    private OnDisplayRectChangedListener mOnPhotoMatrixChangeListener = new OnDisplayRectChangedListener() {
        public void onDisplayRectChanged(RectF rect) {
            if (!PhotoPageFragment.this.isEntering() && !PhotoPageFragment.this.isExiting()) {
                BaseDataItem currentItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (!(currentItem == null || PhotoPageFragment.this.mProjectManager == null || !PhotoPageFragment.this.mProjectManager.isConnected())) {
                    PhotoPageFragment.this.mProjectManager.updateRemoteView(currentItem, rect);
                }
                if (PhotoPageFragment.this.mMaskManager != null) {
                    PhotoPageFragment.this.mMaskManager.refreshMask(false);
                }
            }
        }
    };
    private OnScaleChangedListener mOnPhotoScaleChangeListener = new OnScaleChangedListener() {
        public void onScaleChanged(float scaleFactorX, float scaleFactorY, float scale) {
            if (!PhotoPageFragment.this.isEntering() && !PhotoPageFragment.this.isExiting()) {
                if (PhotoPageFragment.this.mChoiceManager != null) {
                    PhotoPageFragment.this.mChoiceManager.onPhotoScale(scale);
                }
                if (PhotoPageFragment.this.isActionBarVisible() && scaleFactorY > 1.0f && scale > 1.0f) {
                    PhotoPageFragment.this.setActionBarVisible(false);
                }
                if (PhotoPageFragment.this.isTransparentTheme() && scale < 1.0f && scaleFactorY < 1.0f && !PhotoPageDataCache.getInstance().isItemVisible(PhotoPageFragment.this.mPager.getCurrentItem())) {
                    PhotoPageDataCache.getInstance().viewToPosition(PhotoPageFragment.this.mPager.getCurrentItem());
                }
            }
        }
    };
    private OnSingleTapListener mOnSingleTapListener = new OnSingleTapListener() {
        public void onTap(float x, float y) {
            if (PhotoPageFragment.this.isPreviewMode()) {
                PhotoPageFragment.this.doExit();
            } else if (PhotoPageFragment.this.isActionBarVisible()) {
                PhotoPageFragment.this.setActionBarVisible(false);
            } else {
                PhotoPageFragment.this.setActionBarVisible(true);
                if (PhotoPageFragment.this.mUserShowBarIndex < 0) {
                    PhotoPageFragment.this.mUserShowBarIndex = PhotoPageFragment.this.mPager.getCurrentItem();
                }
            }
        }
    };
    private OrientationManager mOrientationManager;
    private PhotoRefreshReceiver mPhotoRefreshReceiver;
    private boolean mPreviewMode;
    private ProjectionManager mProjectManager;
    private RefocusManager mRefocusManager;
    private ScreenBroadcastReceiver mScreenReceiver;
    private boolean mShowSecretInAddDialog;
    private SmartVideoGuideManager mSmartVideoGuideManager;
    private SpecialTypeManager mSpecialTypeManager;
    private boolean mStartWhenLocked;
    private boolean mStartWhenLockedAndSecret;
    private int mTheme = 0;
    private ThemeManager mThemeManager;
    private PhotoPageTopBar mTopBar;
    private int mUserShowBarIndex = -1;
    private VideoPlayerManager mVideoPlayerManager;
    private VoiceAssistantReceiver mVoiceAssistantReceiver;

    private static final class AccelerometerRotationChangedListener extends ContentObserver {
        private final WeakReference<OrientationManager> mManagerRef;

        public AccelerometerRotationChangedListener(Handler handler, OrientationManager manager) {
            super(handler);
            this.mManagerRef = new WeakReference(manager);
        }

        public void onChange(boolean selfChange) {
            OrientationManager manager = this.mManagerRef != null ? (OrientationManager) this.mManagerRef.get() : null;
            if (manager != null) {
                manager.onAccelerometerRotationChanged();
            }
        }
    }

    private abstract class BaseEditorManager {
        private boolean mEverStartedEditor;
        private Runnable mOnLoadTimeOut;
        private boolean mResultHandled;
        private long mStartTransition;
        private String mTargetFilePath;
        private long mTargetId;
        private MediaUpdateTask mUpdateTask;

        protected abstract boolean handleEditorResult(Intent intent);

        private BaseEditorManager() {
            this.mTargetFilePath = null;
            this.mEverStartedEditor = false;
            this.mOnLoadTimeOut = new Runnable() {
                public void run() {
                    Log.w("PhotoPageFragment", "editor return to photo, image loading time out.");
                    BaseEditorManager.this.finishTransition();
                }
            };
        }

        /* synthetic */ BaseEditorManager(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onStartEditor() {
            Log.d("PhotoPageFragment", "EditorManager.onStartEditor");
            this.mEverStartedEditor = true;
            if (isCurrentImageOverDisplayArea()) {
                PhotoPageFragment.this.hideActionBarView();
            }
            if (PhotoPageFragment.this.mPagerHelper != null) {
                PhotoPageFragment.this.mPagerHelper.onActivityTransition();
            }
            if (PhotoPageFragment.this.mSpecialTypeManager != null) {
                PhotoPageFragment.this.mSpecialTypeManager.onActivityTransition();
            }
        }

        public void onActivityReenter(Intent data) {
            Log.d("PhotoPageFragment", "Transition onActivityReenter %s", Boolean.valueOf(this.mEverStartedEditor));
            if (hasExportedMeasure(data)) {
                if (isExportedImageOverDisplayArea(data)) {
                    PhotoPageFragment.this.hideActionBarView();
                } else {
                    PhotoPageFragment.this.showActionBarView();
                }
            }
            this.mTargetFilePath = null;
            this.mTargetId = 0;
            ImageLoader.getInstance().resume();
            this.mResultHandled = handleEditorResult(data);
            if (VERSION.SDK_INT <= 23 && !this.mEverStartedEditor) {
                Log.w("PhotoPageFragment", "Transition stop, because activity restart.");
            } else if (this.mResultHandled) {
                this.mStartTransition = System.currentTimeMillis();
                ActivityCompat.postponeEnterTransition(PhotoPageFragment.this.mActivity);
                ThreadManager.getMainHandler().postDelayed(this.mOnLoadTimeOut, 2000);
            }
        }

        public void onImageLoadFinish(String uri) {
            if (this.mTargetId > 0) {
                finishTransition();
            } else if (this.mTargetFilePath != null && uri != null && TextUtils.equals(Uri.parse(uri).getPath(), this.mTargetFilePath)) {
                finishTransition();
            }
        }

        private void finishTransition() {
            Log.d("PhotoPageFragment", "editor transition delay %s", Long.valueOf(System.currentTimeMillis() - this.mStartTransition));
            ThreadManager.getMainHandler().removeCallbacks(this.mOnLoadTimeOut);
            if (PhotoPageFragment.this.mActivity != null) {
                ActivityCompat.startPostponedEnterTransition(PhotoPageFragment.this.mActivity);
            }
            this.mTargetFilePath = null;
            this.mTargetId = 0;
        }

        public void release() {
            if (this.mUpdateTask != null) {
                this.mUpdateTask.cancel();
            }
            ThreadManager.getMainHandler().removeCallbacks(this.mOnLoadTimeOut);
        }

        public void onActivityResult(int resultCode, Intent data) {
            Log.d("PhotoPageFragment", "EditorManager.onActivityResult");
            PhotoPageFragment.this.showActionBarView();
            if (PhotoPageFragment.this.mSpecialTypeManager != null) {
                PhotoPageFragment.this.mSpecialTypeManager.onActivityResult();
            }
            if (resultCode == -1) {
                if (!this.mResultHandled) {
                    handleEditorResult(data);
                    this.mTargetFilePath = null;
                    this.mTargetId = 0;
                }
                this.mResultHandled = false;
            } else if (resultCode == 0) {
                onCanceled();
            }
        }

        protected void onCanceled() {
        }

        protected void setTargetPath(String path) {
            this.mTargetFilePath = path;
        }

        protected void setTargetId(long id) {
            this.mTargetId = id;
        }

        protected void notifyDataSetChange(long id) {
            PhotoPageFragment.this.getArguments().putLong("photo_focused_id", id);
            PhotoPageFragment.this.onContentChanged();
        }

        protected void notifyDataSetChange(String path) {
            if (!TextUtils.isEmpty(path)) {
                BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                if (dataSet != null) {
                    dataSet.addNewFile(path, PhotoPageFragment.this.mPager.getCurrentItem() + 1);
                }
                PhotoPageFragment.this.getArguments().putString("photo_focused_path", path);
                PhotoPageFragment.this.onContentChanged();
            }
        }

        protected void insertAndNotifyDataSet(String path) {
            if (this.mUpdateTask == null) {
                this.mUpdateTask = new MediaUpdateTask();
            }
            this.mUpdateTask.execute(path, new Callback() {
                public void onInsertDone(String path) {
                    BaseEditorManager.this.notifyDataSetChange(path);
                }
            });
        }

        private boolean hasExportedMeasure(Intent data) {
            return data != null && data.hasExtra("photo_edit_exported_width") && data.hasExtra("photo_edit_exported_height");
        }

        private boolean isCurrentImageOverDisplayArea() {
            if (PhotoPageFragment.this.mPagerHelper != null) {
                RectF rectF = PhotoPageFragment.this.mPagerHelper.getCurItemDisplayRect();
                if (rectF != null) {
                    return isImageOverDisplayArea(rectF.width(), rectF.height());
                }
            }
            return false;
        }

        private boolean isExportedImageOverDisplayArea(Intent data) {
            if (data == null) {
                return false;
            }
            return isImageOverDisplayArea((float) data.getIntExtra("photo_edit_exported_width", 0), (float) data.getIntExtra("photo_edit_exported_height", 0));
        }

        private boolean isImageOverDisplayArea(float imageWidth, float imageHeight) {
            if (imageWidth <= 0.0f || imageHeight <= 0.0f || PhotoPageFragment.this.mMaskManager == null || PhotoPageFragment.this.mPager == null) {
                return false;
            }
            float imageRatio = imageHeight / imageWidth;
            if (imageRatio <= 1.34f) {
                return false;
            }
            float displayWidth = (float) PhotoPageFragment.this.mPager.getWidth();
            float displayHeight = (float) (PhotoPageFragment.this.mPager.getHeight() - (Math.max(PhotoPageFragment.this.mMaskManager.getSplitBarHeight(), PhotoPageFragment.this.mMaskManager.getTopBarHeight()) * 2));
            if (displayWidth <= 0.0f || displayHeight <= 0.0f || imageRatio <= displayHeight / displayWidth) {
                return false;
            }
            return true;
        }
    }

    private class ChoiceManager extends ChoiceManagerBase implements OnSlipListener {
        private boolean mBarsVisibleBeforeSlip;
        private TextView mChoiceModeTitle;
        private boolean mIsInMultiWindow;
        private int mLastOrientation = 0;
        private Intent mShareTargetIntent = null;
        private VerticalSlipLayout mSlipLayout;
        private boolean mSlipPending;
        private Runnable mSlipRunnable;
        private int mSlipState;
        private boolean mSlipped;
        private boolean mSupportSend;

        ChoiceManager() {
            super();
            this.mSlipLayout = (VerticalSlipLayout) PhotoPageFragment.this.getView().findViewById(R.id.slip_layout);
            this.mSlipLayout.setOnSlipListener(this);
            this.mChoiceModeTitle = (TextView) PhotoPageFragment.this.getView().findViewById(R.id.choice_mode_title);
            this.mIsInMultiWindow = ActivityCompat.isInMultiWindowMode(PhotoPageFragment.this.mActivity);
            onUiOrientationChanged(PhotoPageFragment.this.getResources().getConfiguration());
            boolean isEnterInChoiceMode = PhotoPageFragment.this.getArguments().getBoolean("com.miui.gallery.extra.photo_enter_choice_mode", false);
            if (isEnterInChoiceMode) {
                this.mSlipLayout.setDraggable(true);
                this.mSlipLayout.setSlippedWhenEnter(true);
                PhotoPageFragment.this.getArguments().remove("com.miui.gallery.extra.photo_enter_choice_mode");
            }
            setUpChooserFragment(0, isEnterInChoiceMode);
        }

        public void initSelected(BaseDataSet set) {
            if (set != null && this.mSlipLayout.isSlipped()) {
                BaseDataItem item = set.getItem(null, set.getInitPosition());
                if (item != null) {
                    this.mChoiceMode.setChecked(set.getInitPosition(), item.getKey(), true);
                }
            }
        }

        public void settleItem(BaseDataItem item) {
            if (item != null) {
                boolean z = (PhotoPageFragment.this.mStartWhenLockedAndSecret || PhotoPageFragment.this.isPreviewMode() || !PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations(), 4)) ? false : true;
                this.mSupportSend = z;
                setSlipLayoutDraggable(this.mSupportSend);
            }
        }

        public void onPhotoScale(float scale) {
            boolean z = scale <= 1.0f && this.mSupportSend;
            setSlipLayoutDraggable(z);
        }

        private void setChoiceTitleVisible(boolean visible) {
            int visibility = visible ? 0 : 8;
            if (visibility != this.mChoiceModeTitle.getVisibility()) {
                this.mChoiceModeTitle.setVisibility(visibility);
            }
        }

        public void setSlipped(boolean smooth) {
            if (this.mIsInMultiWindow || PhotoPageFragment.this.getResources().getConfiguration().orientation == 1) {
                if (this.mSupportSend) {
                    setSlipLayoutDraggable(true);
                }
                this.mSlipLayout.setSlipped(smooth);
                return;
            }
            PhotoPageFragment.this.mActivity.setRequestedOrientation(1);
            this.mSlipPending = true;
            if (PhotoPageFragment.this.mOrientationManager != null) {
                PhotoPageFragment.this.mOrientationManager.setSensorEnable(false);
            }
        }

        public boolean isSlipped() {
            return this.mSlipLayout.isSlipped();
        }

        public void setUnSlipped(boolean smooth) {
            this.mSlipLayout.setUnSlipped(smooth);
        }

        public void onUiOrientationChanged(Configuration newConfig) {
            if (newConfig.orientation != this.mLastOrientation) {
                if (!this.mIsInMultiWindow) {
                    setUnSlipped(false);
                    if (newConfig.orientation == 1) {
                        setSlipLayoutDraggable(true);
                        if (this.mSlipPending) {
                            this.mSlipPending = false;
                            if (this.mSlipRunnable == null) {
                                this.mSlipRunnable = new Runnable() {
                                    public void run() {
                                        if (PhotoPageFragment.this.isAdded()) {
                                            ChoiceManager.this.setSlipped(true);
                                        }
                                    }
                                };
                            }
                            ThreadManager.getMainHandler().removeCallbacks(this.mSlipRunnable);
                            ThreadManager.getMainHandler().postDelayed(this.mSlipRunnable, 200);
                        }
                    } else {
                        setSlipLayoutDraggable(false);
                    }
                }
                this.mLastOrientation = newConfig.orientation;
            }
        }

        public void onSlipStart() {
            if (!this.mSlipped) {
                onVisibilityChanged(true);
                this.mBarsVisibleBeforeSlip = PhotoPageFragment.this.isActionBarVisible();
                PhotoPageFragment.this.setActionBarVisible(false);
                this.mChoiceMode = PhotoPageFragment.this.mAdapter.startActionMode(this);
                setChoiceTitleVisible(true);
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(false);
                }
                TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.enter_choice_mode));
                BaseSamplingStatHelper.recordNumericPropertyEvent("best_image", "best_image_count", (long) ImageFeatureCacheManager.getInstance().getBestImageCount(false));
            }
        }

        public void onSlipping(float progress) {
        }

        public void onSlipEnd(boolean slipped) {
            this.mSlipped = slipped;
            if (slipped) {
                if (PhotoPageFragment.this.mOrientationManager != null) {
                    PhotoPageFragment.this.mOrientationManager.setSensorEnable(false);
                }
                PhotoPageFragment.this.mActivity.setRequestedOrientation(1);
                BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (item != null) {
                    this.mChoiceMode.setChecked(PhotoPageFragment.this.mPager.getCurrentItem(), item.getKey(), true);
                }
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(false);
                }
                TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.enter_choice_mode));
                BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "fast_share_mode_enter");
                if (!(this.mShareTargetIntent == null || item == null)) {
                    if (this.mShareTargetIntent.getBooleanExtra("assistant_need_beauty", false) && (PhotoPageFragment.this.mPagerHelper.getCurrentItem() instanceof PhotoPageImageItem)) {
                        this.mChoiceMode.setRenderChecked(PhotoPageFragment.this.mPager.getCurrentItem(), item.getKey(), true);
                    }
                    PhotoPageFragment.this.mChoiceManager.onIntentSelected(this.mShareTargetIntent);
                    this.mShareTargetIntent = null;
                }
                if (item != null && ImageFeatureCacheManager.getInstance().isBestImage(item.getKey(), false)) {
                    ImageSelectionTipFragment.showImageSelectionTipDialogIfNecessary(PhotoPageFragment.this.getActivity());
                    return;
                }
                return;
            }
            onVisibilityChanged(false);
            setChoiceTitleVisible(false);
            this.mChoiceMode.unChooseAll();
            this.mChoiceMode.finish();
            if (PhotoPageFragment.this.mOrientationManager != null) {
                PhotoPageFragment.this.mOrientationManager.setSensorEnable(true);
                PhotoPageFragment.this.mOrientationManager.tryRestoreOrientation(false);
            }
            if (PhotoPageFragment.this.getArguments().getBoolean("com.miui.gallery.extra.show_menu_after_choice_mode", false)) {
                PhotoPageFragment.this.setActionBarVisible(true);
            }
            if (PhotoPageFragment.this.mDualCameraManager != null) {
                PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(true);
            }
            PhotoPageFragment.this.setActionBarVisible(this.mBarsVisibleBeforeSlip);
            this.mBarsVisibleBeforeSlip = false;
            TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.exit_choice_mode));
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "fast_share_mode_exit");
        }

        public void onSlipStateChanged(int state) {
            this.mSlipState = state;
            if (state != 1) {
                PhotoPageFragment.this.refreshTheme(true);
            }
        }

        public boolean isPendingSlipped() {
            return (this.mSlipState == 0 && isSlipped()) || this.mSlipPending || this.mBarsVisibleBeforeSlip || this.mSlipLayout.isFlingToSlipped();
        }

        public boolean onBackPressed() {
            if (!this.mSlipLayout.isSlipped()) {
                return false;
            }
            this.mSlipLayout.setUnSlipped(true);
            return true;
        }

        protected int getContainerId() {
            return R.id.child_container;
        }

        protected TextView getChoiceTitle() {
            return this.mChoiceModeTitle;
        }

        protected void onShared() {
            super.onShared();
            setUnSlipped(true);
        }

        private void setSlipLayoutDraggable(boolean draggable) {
            int i = 1;
            if (!(this.mSupportSend && (this.mIsInMultiWindow || PhotoPageFragment.this.getResources().getConfiguration().orientation == 1))) {
                i = 0;
            }
            this.mSlipLayout.setDraggable(draggable & i);
        }

        public void onMultiWindowModeChanged(boolean isInMultiWindow) {
            this.mIsInMultiWindow = isInMultiWindow;
            if (isInMultiWindow) {
                setSlipLayoutDraggable(true);
            }
        }

        public void release() {
            if (this.mSlipRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mSlipRunnable);
            }
        }

        void sendCurrentToShare(Intent target) {
            this.mShareTargetIntent = target;
            this.mSlipLayout.setSlipped(true);
        }
    }

    protected interface DownloadCallback {
        void downloadSuccess(String str, BaseDataItem baseDataItem);
    }

    private class DualCameraManager implements OnClickListener {
        private Animation mAppearAnim;
        private Animation mDisapperAnim;
        private ViewGroup mDualCameraEnter;
        private ExtraPhotoWrapper mDualWrapper;
        private int mParseState = -1;
        private AsyncTask mParseTask;
        private AsyncTask mSaveTask;

        class ParsePhotoTask extends AsyncTask<String, Void, Boolean> {
            ParsePhotoTask() {
            }

            protected Boolean doInBackground(String... params) {
                String path = params[0];
                if (!FileUtils.isFileExist(path)) {
                    return Boolean.valueOf(false);
                }
                boolean dualCamera = DualCameraManager.this.mDualWrapper.isExtraPhoto(path);
                if (isCancelled()) {
                    return Boolean.valueOf(false);
                }
                return Boolean.valueOf(dualCamera);
            }

            protected void onPostExecute(Boolean dualCamera) {
                if (!isCancelled()) {
                    DualCameraManager.this.mParseState = dualCamera.booleanValue() ? 1 : 0;
                    DualCameraManager.this.setStereoBtnVisible(dualCamera.booleanValue());
                }
            }
        }

        class SaveDualPhotoTask extends AsyncTask<String, Void, String> {
            SaveDualPhotoTask() {
            }

            protected void onPreExecute() {
            }

            protected String doInBackground(String... params) {
                MediaScanner.scanSingleFile(PhotoPageFragment.this.mActivity.getApplicationContext(), params[0]);
                return params[0];
            }

            protected void onPostExecute(String path) {
                if (!isCancelled()) {
                    BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                    if (dataSet != null) {
                        dataSet.addNewFile(path, PhotoPageFragment.this.mPager.getCurrentItem() + 1);
                    }
                    PhotoPageFragment.this.getArguments().putString("photo_focused_path", path);
                    PhotoPageFragment.this.onContentChanged();
                }
            }
        }

        public DualCameraManager() {
            this.mDualCameraEnter = (ViewGroup) ((ViewStub) PhotoPageFragment.this.getView().findViewById(R.id.dualcamera_stub)).inflate().findViewById(R.id.dualcamera_enter);
            this.mDualWrapper = ExtraPhotoWrapper.getInstance();
        }

        private void resolveSupportFunc() {
            View view;
            int count = this.mDualCameraEnter.getChildCount();
            List<Integer> funcs = this.mDualWrapper.resolveExtraFuncs();
            List<View> needRemoveFuncs = new ArrayList();
            for (int i = 0; i < count; i++) {
                view = this.mDualCameraEnter.getChildAt(i);
                if (funcs.contains(Integer.valueOf(view.getId()))) {
                    view.setOnClickListener(this);
                } else {
                    needRemoveFuncs.add(view);
                }
            }
            for (View view2 : needRemoveFuncs) {
                this.mDualCameraEnter.removeView(view2);
            }
        }

        private Animation getAppearAnim() {
            if (this.mAppearAnim == null) {
                this.mAppearAnim = new AlphaAnimation(0.0f, 1.0f);
                this.mAppearAnim.setDuration(400);
                this.mAppearAnim.setInterpolator(new AccelerateInterpolator());
            }
            this.mAppearAnim.reset();
            return this.mAppearAnim;
        }

        private Animation getDisappearAnim() {
            if (this.mDisapperAnim == null) {
                this.mDisapperAnim = new AlphaAnimation(1.0f, 0.0f);
                this.mDisapperAnim.setDuration(300);
                this.mDisapperAnim.setInterpolator(new AccelerateInterpolator());
            }
            this.mDisapperAnim.reset();
            return this.mDisapperAnim;
        }

        private void appearView(View view, boolean anim) {
            view.setVisibility(0);
            view.setOnClickListener(this);
            if (anim) {
                view.clearAnimation();
                view.startAnimation(getAppearAnim());
            }
        }

        private void disappearView(View view, boolean anim) {
            view.setVisibility(8);
            view.setOnClickListener(null);
            if (anim) {
                view.clearAnimation();
                view.startAnimation(getDisappearAnim());
            }
        }

        public boolean isDualCamera() {
            return this.mDualWrapper.isExtraCamera();
        }

        public void clearAnim() {
            if (isDualCamera()) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            view.clearAnimation();
                        }
                    }
                }
            }
        }

        public void showMoreFuncExceptRefocus(boolean anim) {
            if (isDualCamera() && this.mDualCameraEnter.getVisibility() == 0) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            appearView(view, anim);
                        }
                    }
                }
            }
        }

        public void hideMoreFuncExceptRefocus(boolean anim) {
            if (isDualCamera() && this.mDualCameraEnter.getVisibility() == 0) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            disappearView(view, anim);
                        }
                    }
                }
            }
        }

        public void resume() {
            this.mDualWrapper.start(PhotoPageFragment.this.mActivity, new StartCallback() {
                public void onStarted(boolean success) {
                    if (DualCameraManager.this.isDualCamera()) {
                        DualCameraManager.this.resolveSupportFunc();
                        DualCameraManager.this.tryChangeStereoBtnVisible(success);
                        BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                        if (success && item != null && BaseFileMimeUtil.isImageFromMimeType(BaseFileMimeUtil.getMimeType(item.getOriginalPath()))) {
                            PhotoPageFragment.this.mPagerHelper.onStart();
                        }
                    }
                }
            });
        }

        public void pause() {
            clearAnim();
            this.mDualWrapper.stop(PhotoPageFragment.this.mActivity);
        }

        public void onDestory() {
            cancelParseTask();
            if (this.mSaveTask != null) {
                this.mSaveTask.cancel(true);
                this.mSaveTask = null;
            }
        }

        private void sendParseTask(String path) {
            cancelParseTask();
            Log.d("PhotoPageFragment", "excute parse task %s", (Object) path);
            this.mParseTask = new ParsePhotoTask().execute(new String[]{path});
        }

        private void cancelParseTask() {
            if (this.mParseTask != null) {
                this.mParseTask.cancel(true);
                this.mParseTask = null;
                Log.d("PhotoPageFragment", "cancelParseTask");
            }
        }

        public void settleItem(BaseDataItem item) {
            this.mParseState = -1;
            if (isDualCamera()) {
                cancelParseTask();
                if (PhotoPageFragment.this.mChoiceManager != null && !PhotoPageFragment.this.mChoiceManager.isSlipped()) {
                    if (isExternalEnvOK(item) && isLightStereoPhoto(item)) {
                        sendParseTask(item.getOriginalPath());
                        return;
                    }
                    this.mParseState = 0;
                    setStereoBtnVisible(false);
                    return;
                }
                return;
            }
            setStereoBtnVisible(false);
        }

        public void updateItem(BaseDataItem item) {
            this.mParseState = -1;
        }

        private void setStereoBtnVisible(boolean visible) {
            clearAnim();
            if (visible) {
                if (this.mDualCameraEnter.getVisibility() != 0) {
                    this.mDualCameraEnter.setVisibility(0);
                }
                if (PhotoPageFragment.this.isActionBarVisible()) {
                    showMoreFuncExceptRefocus(false);
                }
            } else if (this.mDualCameraEnter.getVisibility() != 8) {
                this.mDualCameraEnter.setVisibility(8);
            }
        }

        public void tryChangeStereoBtnVisible(boolean visible) {
            if (isDualCamera()) {
                switch (this.mParseState) {
                    case -1:
                        if (visible) {
                            settleItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                            return;
                        } else {
                            setStereoBtnVisible(visible);
                            return;
                        }
                    case 0:
                        if (!visible) {
                            setStereoBtnVisible(visible);
                            return;
                        }
                        return;
                    case 1:
                        setStereoBtnVisible(visible);
                        return;
                    default:
                        return;
                }
            }
        }

        private boolean isExternalEnvOK(BaseDataItem item) {
            if (!isDualCamera() || item == null) {
                return false;
            }
            return PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations() & PhotoPageFragment.this.getArguments().getInt("support_operation_mask", -1), 512);
        }

        private boolean isLightStereoPhoto(BaseDataItem item) {
            return (item == null || TextUtils.isEmpty(item.getOriginalPath())) ? false : true;
        }

        public void onClick(View v) {
            if (isDualCamera() && this.mParseState == 1) {
                BaseDataItem photo = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (photo != null) {
                    if (PhotoPageFragment.this.needDismissKeyGuard()) {
                        PhotoPageFragment.this.dismissKeyGuard();
                    }
                    switch (v.getId()) {
                        case R.id.fancycolor_enter /*2131886084*/:
                            IntentUtil.startFancyColorAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "view_fancy_color");
                            return;
                        case R.id.freeview_enter /*2131886085*/:
                            IntentUtil.startFreeViewAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "view_free_view");
                            return;
                        case R.id.refocus_enter /*2131886105*/:
                            IntentUtil.startRefocusAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "view_refocus");
                            return;
                        default:
                            return;
                    }
                }
            }
        }

        public void onDualPhotoEdited(Intent data) {
            if (data != null) {
                Uri uri = data.getData();
                if (uri != null) {
                    if (!TextUtils.isEmpty("file".equals(uri.getScheme()) ? uri.getPath() : uri.getLastPathSegment())) {
                        if (this.mSaveTask != null) {
                            this.mSaveTask.cancel(true);
                        }
                        this.mSaveTask = new SaveDualPhotoTask().execute(new String[]{path});
                    }
                }
            }
        }
    }

    private class EditorManager extends BaseEditorManager {
        private EditorManager() {
            super(PhotoPageFragment.this, null);
        }

        /* synthetic */ EditorManager(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        protected boolean handleEditorResult(Intent data) {
            if (data == null) {
                return false;
            }
            long id = data.getLongExtra("photo_secret_id", 0);
            if (id > 0) {
                setTargetId(id);
                notifyDataSetChange(id);
                return true;
            }
            Uri uri = data.getData();
            if (uri == null) {
                return false;
            }
            String path = uri.getLastPathSegment();
            PhotoPagerSamplingStatHelper.onEditorSaved(Uri.parse("file://" + path));
            notifyDataSetChange(path);
            setTargetPath(path);
            return true;
        }

        public void onDestroy() {
            release();
        }
    }

    private class FavoritesManager {
        private OnCompleteListener mAddCompleteListener = new OnCompleteListener() {
            public void onComplete(long[] result) {
                if (PhotoPageFragment.this.activityAlive()) {
                    if (result == null || result[0] <= 0) {
                        FavoritesManager.this.refreshStatus();
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.add_to_favorites_failed);
                    } else {
                        FavoritesManager.this.sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                        if (Favorites.isFirstTimeAddToFavorites()) {
                            ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.added_to_favorites_tip);
                        } else {
                            TalkBackUtil.requestAnnouncementEvent(PhotoPageFragment.this.mPager, PhotoPageFragment.this.mActivity.getResources().getString(R.string.added_to_favorites_desc));
                        }
                    }
                    FavoritesManager.this.mIsToggling = false;
                }
            }
        };
        private FavoriteInfo mFavoriteInfo;
        private boolean mIsToggling;
        private Menu mMenu;
        private AsyncTask mQueryTask;
        private OnCompleteListener mRemoveCompleteListener = new OnCompleteListener() {
            public void onComplete(long[] result) {
                if (PhotoPageFragment.this.activityAlive()) {
                    if (result == null || result[0] <= 0) {
                        FavoritesManager.this.refreshStatus();
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.remove_from_favorites_failed);
                    } else {
                        FavoritesManager.this.sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                        TalkBackUtil.requestAnnouncementEvent(PhotoPageFragment.this.mPager, PhotoPageFragment.this.mActivity.getResources().getString(R.string.removed_from_favorites_desc));
                    }
                    FavoritesManager.this.mIsToggling = false;
                }
            }
        };

        class QueryTask extends AsyncTask<Void, Void, FavoriteInfo> {
            private BaseDataItem item;

            public QueryTask(BaseDataItem item) {
                this.item = item;
            }

            protected FavoriteInfo doInBackground(Void... params) {
                if (isCancelled() || this.item == null) {
                    return null;
                }
                return this.item.getFavoriteInfo(FavoritesManager.this.usingStrictMode());
            }

            protected void onPostExecute(FavoriteInfo info) {
                if (!isCancelled()) {
                    this.item = null;
                    FavoritesManager.this.mFavoriteInfo = info;
                    FavoritesManager.this.refreshStatus();
                }
            }
        }

        public FavoritesManager(Menu menu) {
            this.mMenu = menu;
            if (PhotoPageFragment.this.mAdapter != null) {
                sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
            }
        }

        public void updateItem(BaseDataItem item) {
            this.mFavoriteInfo = null;
            sendQueryTask(item);
        }

        public void show() {
        }

        public void hide() {
        }

        public void onDestroy() {
            cancelQueryTask();
            this.mAddCompleteListener = null;
            this.mRemoveCompleteListener = null;
        }

        private void sendQueryTask(BaseDataItem item) {
            if (this.mQueryTask == null || item != ((QueryTask) this.mQueryTask).item) {
                cancelQueryTask();
                this.mQueryTask = new QueryTask(item).execute(new Void[0]);
            }
        }

        private void cancelQueryTask() {
            if (this.mQueryTask != null) {
                this.mQueryTask.cancel(true);
                this.mQueryTask = null;
            }
        }

        private void setFavoriteChecked(boolean checked) {
            MenuItem favorite = this.mMenu.findItem(R.id.action_favorite);
            if (favorite != null && favorite.isChecked() != checked) {
                favorite.setChecked(checked);
            }
        }

        private void setFavoriteVisible(boolean visible) {
            MenuItem favorite = this.mMenu.findItem(R.id.action_favorite);
            if (favorite != null && favorite.isVisible() != visible) {
                favorite.setVisible(visible);
            }
        }

        public void toggle() {
            boolean z = true;
            if (this.mIsToggling) {
                Log.d("PhotoPageFragment", "skip frequent toggle");
            } else if (PhotoPageFragment.this.isProcessingMedia(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()))) {
                ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.operate_processing_file_error);
            } else {
                MenuItem menuItem = this.mMenu.findItem(R.id.action_favorite);
                if (menuItem != null) {
                    this.mIsToggling = true;
                    boolean originalChecked = menuItem.isChecked();
                    if (originalChecked) {
                        z = false;
                    }
                    setFavoriteChecked(z);
                    BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                    if (dataSet == null) {
                        return;
                    }
                    if (originalChecked) {
                        dataSet.removeFromFavorites(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), this.mRemoveCompleteListener);
                        BaseSamplingStatHelper.recordCountEvent("favorites", "remove_from_favorites");
                        return;
                    }
                    dataSet.addToFavorites(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), this.mAddCompleteListener);
                    BaseSamplingStatHelper.recordCountEvent("favorites", "add_to_favorites");
                }
            }
        }

        public void refreshStatus() {
            if (this.mFavoriteInfo == null || !this.mFavoriteInfo.isFavoriteUsable()) {
                setFavoriteVisible(false);
                return;
            }
            setFavoriteVisible(true);
            setFavoriteChecked(this.mFavoriteInfo.isFavorite());
        }

        private boolean usingStrictMode() {
            return !PhotoPageFragment.this.isFromCamera;
        }
    }

    private static class MediaUpdateTask {
        private Callback mCallback;
        private Future<Void> mFuture;

        public interface Callback {
            void onInsertDone(String str);
        }

        private MediaUpdateTask() {
        }

        /* synthetic */ MediaUpdateTask(AnonymousClass1 x0) {
            this();
        }

        public void execute(final String path, Callback callback) {
            if (!TextUtils.isEmpty(path)) {
                if (this.mFuture != null) {
                    this.mFuture.cancel();
                }
                this.mCallback = callback;
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        Context context = GalleryApp.sGetAndroidContext();
                        MediaScanner.scanSingleFile(context, path);
                        MediaStoreUtils.insert(context, path, path.endsWith(".mp4") ? 2 : 1);
                        return null;
                    }
                }, new FutureHandler<Void>() {
                    public void onPostExecute(Future<Void> future) {
                        if (!future.isCancelled() && MediaUpdateTask.this.mCallback != null) {
                            MediaUpdateTask.this.mCallback.onInsertDone(path);
                        }
                    }
                });
            }
        }

        public void cancel() {
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
            this.mCallback = null;
        }
    }

    private class MenuManager {
        private final int ORDER_IMAGE = 0;
        private final int ORDER_UNKNOWN = -1;
        private final int ORDER_VIDEO = 1;
        private Menu mMenu;
        private int mOperationMask;
        private int mOrder = -1;

        MenuManager(Menu menu, int operationMask) {
            this.mMenu = menu;
            this.mOperationMask = operationMask;
        }

        public void onMenuItemClick(MenuItem item) {
            int id = item.getItemId();
            final BaseDataItem current = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (current != null) {
                if (PhotoPageFragment.this.needDismissKeyGuard() && isOperationWithoutKeyGuard(id)) {
                    PhotoPageFragment.this.dismissKeyGuard();
                }
                String eventCategory = PhotoPageFragment.this.getItemClickEventCategory(current);
                BaseDataSet dataSet;
                MenuItem downloadItem;
                switch (id) {
                    case R.id.action_send /*2131886850*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            if (PhotoPageFragment.this.mChoiceManager != null) {
                                PhotoPageFragment.this.mChoiceManager.setSlipped(true);
                            }
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, "send");
                            return;
                        }
                        return;
                    case R.id.action_delete /*2131886851*/:
                        doDelete(PhotoPageFragment.this.mPager.getCurrentItem());
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "delete_photo");
                        return;
                    case R.id.action_edit /*2131886858*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            if (IntentUtil.startEditAction(current, PhotoPageFragment.this.mActivity, PhotoPageFragment.this) && PhotoPageFragment.this.mEditorManager != null) {
                                PhotoPageFragment.this.mEditorManager.onStartEditor();
                            }
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, current.isVideo() ? "edit_video" : "edit_photo");
                            return;
                        }
                        return;
                    case R.id.action_favorite /*2131886859*/:
                        if (PhotoPageFragment.this.mFavoritesManager != null) {
                            PhotoPageFragment.this.mFavoritesManager.toggle();
                            return;
                        }
                        return;
                    case R.id.action_save /*2131886860*/:
                        current.save(PhotoPageFragment.this.mActivity, new SaveUriDialogFragment.OnCompleteListener() {
                            public void onComplete(String savePath) {
                                int stringId = R.string.photo_page_save_uri_image_ok;
                                if (TextUtils.isEmpty(savePath)) {
                                    stringId = R.string.photo_page_save_uri_image_fail;
                                } else {
                                    MenuManager.this.setMenuItemVisibility(R.id.action_save, false);
                                }
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mActivity.getResources().getString(stringId), null);
                            }
                        });
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "save_photo");
                        return;
                    case R.id.action_add_cloud /*2131886861*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                            if (dataSet != null) {
                                dataSet.addToAlbum(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), true, PhotoPageFragment.this.mShowSecretInAddDialog, new OnAddAlbumListener() {
                                    public void onComplete(long[] result, boolean deleteOrigin) {
                                        if (deleteOrigin && result != null && result[0] > 0) {
                                            PhotoPageFragment.this.onContentChanged();
                                        }
                                    }
                                });
                            }
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, "add_to_album");
                            return;
                        }
                        return;
                    case R.id.action_remove_secret /*2131886862*/:
                        dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                        if (dataSet != null) {
                            dataSet.removeFromSecret(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), new OnCompleteListener() {
                                public void onComplete(long[] result) {
                                    if (result != null && result[0] > 0) {
                                        PhotoPageFragment.this.onContentChanged();
                                    }
                                }
                            });
                        }
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "remove_from_secret");
                        return;
                    case R.id.action_cast /*2131886863*/:
                        if (PhotoPageFragment.this.mProjectManager != null) {
                            PhotoPageFragment.this.mProjectManager.projectClicked();
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, "project_photo");
                            return;
                        }
                        return;
                    case R.id.action_set_wallpaper /*2131886864*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            downloadItem = this.mMenu.findItem(R.id.action_download_original);
                            if (downloadItem == null || !downloadItem.isVisible()) {
                                setWallpaper(current.getContentUriForExternal(), current.getMimeType());
                            } else {
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, (int) R.string.set_as_wallpaper_description, (int) R.string.set_as_wallpaper_title, (int) R.string.yes, (int) R.string.no, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        PhotoPageFragment.this.downloadOrigin(current, new DownloadCallback() {
                                            public void downloadSuccess(String path, BaseDataItem item) {
                                                MenuManager.this.setWallpaper(path);
                                            }
                                        });
                                    }
                                }, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        MenuManager.this.setWallpaper(current.getContentUriForExternal(), current.getMimeType());
                                    }
                                });
                            }
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, "set_wallpaper_click");
                            return;
                        }
                        return;
                    case R.id.action_set_slide_wallpaper /*2131886865*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            downloadItem = this.mMenu.findItem(R.id.action_download_original);
                            if (downloadItem == null || !downloadItem.isVisible()) {
                                setSlideWallpaper(current.getContentUriForExternal(), current instanceof CloudItem ? ((CloudItem) current).getSha1() : null);
                            } else {
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, (int) R.string.set_as_slide_wallpaper_description, (int) R.string.set_as_slide_wallpaper_title, (int) R.string.yes, (int) R.string.no, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        PhotoPageFragment.this.downloadOrigin(current, new DownloadCallback() {
                                            public void downloadSuccess(String path, BaseDataItem item) {
                                                MenuManager.this.setSlideWallpaper(item.getContentUriForExternal(), item instanceof CloudItem ? ((CloudItem) item).getSha1() : null);
                                            }
                                        });
                                    }
                                }, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        MenuManager.this.setSlideWallpaper(current.getContentUriForExternal(), current instanceof CloudItem ? ((CloudItem) current).getSha1() : null);
                                    }
                                });
                            }
                            BaseSamplingStatHelper.recordCountEvent(eventCategory, "set_slide_wallpaper_click");
                            return;
                        }
                        return;
                    case R.id.action_play_slideshow /*2131886866*/:
                        if (PhotoPageFragment.this.mProjectManager == null || !PhotoPageFragment.this.mProjectManager.isConnected()) {
                            PhotoPageFragment.this.getArguments().putInt("photo_init_position", PhotoPageFragment.this.mPager.getCurrentItem());
                            BaseDataItem dataItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                            if (dataItem != null) {
                                String path;
                                if (TextUtils.isEmpty(dataItem.getOriginalPath())) {
                                    path = dataItem.getThumnailPath();
                                } else {
                                    path = dataItem.getOriginalPath();
                                }
                                PhotoPageFragment.this.getArguments().putParcelable("photo_transition_data", new ImageLoadParams(dataItem.getKey(), path, null, null, PhotoPageFragment.this.mPager.getCurrentItem(), dataItem.getMimeType(), dataItem.getSecretKey(), dataItem.getSize()));
                            }
                            SlideShowFragment.showSlideShowFragment(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.getArguments());
                        } else {
                            PhotoPageFragment.this.mProjectManager.enterSlideShow(PhotoPageFragment.this.mPager.getCurrentItem());
                        }
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "play_slide_show");
                        return;
                    case R.id.action_download_original /*2131886867*/:
                        PhotoPageFragment.this.downloadOrigin();
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "download_origin");
                        return;
                    case R.id.action_details /*2131886868*/:
                        IntentUtil.gotoPhotoDetailPage(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()), PhotoPageFragment.this.mStartWhenLocked);
                        BaseSamplingStatHelper.recordCountEvent(eventCategory, "view_detail");
                        return;
                    default:
                        return;
                }
            }
        }

        private void setWallpaper(String originPath) {
            if (FileUtils.isFileExist(originPath)) {
                setWallpaper(Uri.fromFile(new File(originPath)), BaseFileMimeUtil.getMimeType(originPath));
                return;
            }
            onGetWallpaperFileFailed();
        }

        private void setWallpaper(Uri originUri, String mimeType) {
            if (originUri == null) {
                onGetWallpaperFileFailed();
                return;
            }
            WallpaperUtils.setWallPapers(PhotoPageFragment.this.mActivity, originUri, mimeType);
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "set_as_wallpaper");
        }

        private void setSlideWallpaper(Uri originUri, String sha1) {
            if (originUri == null) {
                onGetWallpaperFileFailed();
                return;
            }
            SlideWallpaperUtils.setSlideWallpaper(PhotoPageFragment.this.mActivity, originUri, sha1);
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "set_as_slidewallpaper");
        }

        private void onGetWallpaperFileFailed() {
            ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.set_wallpaper_get_image_failed);
        }

        private boolean isOperationWithoutKeyGuard(int id) {
            return id == R.id.action_send || id == R.id.action_edit || id == R.id.action_set_wallpaper || id == R.id.action_add_cloud;
        }

        private void doDelete(int position) {
            BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
            final BaseDataItem current = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (dataSet != null && current != null) {
                dataSet.delete(PhotoPageFragment.this.mActivity, position, new OnDeletionCompleteListener() {
                    public void onDeleted(int count, long[] deleteIds) {
                        if (PhotoPageFragment.this.mActivity != null) {
                            ExtraPhotoSDK.sendDeletePhotoStatic(current.getSpecialTypeFlags());
                            if (count > 0) {
                                SoundUtils.playSoundForOperation(PhotoPageFragment.this.mActivity, 0);
                            } else if (count == -112) {
                                DocumentProviderUtils.startExtSDCardPermissionActivityForResult(PhotoPageFragment.this.getActivity());
                            }
                            PhotoPageFragment.this.onContentChanged();
                        }
                    }
                });
            }
        }

        public void settleItem(BaseDataItem item) {
            configMenu(item);
        }

        private void configMenu(BaseDataItem item) {
            boolean z = true;
            if (item != null) {
                boolean z2;
                if (!PhotoPageFragment.this.isPreviewMode()) {
                    if (item.isVideo()) {
                        if (this.mOrder != 1) {
                            makeVideoOrder();
                            this.mOrder = 1;
                        }
                    } else if (this.mOrder != 0) {
                        makeImageOrder();
                        this.mOrder = 0;
                    }
                }
                int supportOptions = item.getSupportOperations() & this.mOperationMask;
                setMenuItemVisibility(R.id.action_delete, PhotoOperationsUtil.isSupportedOptions(supportOptions, 1));
                setMenuItemVisibility(R.id.action_save, PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCHighTierLevel52));
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 512)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_edit, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 4)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_send, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 32)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_set_wallpaper, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 2048)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_set_slide_wallpaper, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 1048576)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_add_cloud, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCMainTierLevel52)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_play_slideshow, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCMainTierLevel62)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_remove_secret, z2);
                refreshDownloadItem(getDownloadOriginTitle(item), PhotoOperationsUtil.isSupportedOptions(supportOptions, 256), true);
                PhotoPageFragment photoPageFragment = PhotoPageFragment.this;
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCHighTierLevel61)) {
                    z = false;
                }
                photoPageFragment.mShowSecretInAddDialog = z;
                if (PhotoPageFragment.this.mProjectManager == null) {
                    refreshCastItem(null, false, false);
                } else {
                    PhotoPageFragment.this.mProjectManager.refreshProjectState();
                }
            }
        }

        private void refreshDownloadItem(String title, boolean visible, boolean enable) {
            MenuItem item = this.mMenu.findItem(R.id.action_download_original);
            if (item != null) {
                if (!(TextUtils.isEmpty(title) || title.equals(item.getTitle()))) {
                    item.setTitle(title);
                }
                if (item.isVisible() != visible) {
                    item.setVisible(visible);
                }
                if (item.isEnabled() != enable) {
                    item.setEnabled(enable);
                }
            }
        }

        void refreshCastItem(String title, boolean visible, boolean enable) {
            MenuItem item = this.mMenu.findItem(R.id.action_cast);
            if (item != null) {
                if (!(TextUtils.isEmpty(title) || TextUtils.equals(title, item.getTitle()))) {
                    item.setTitle(Html.fromHtml(title));
                }
                if (item.isVisible() != visible) {
                    item.setVisible(visible);
                }
                if (item.isEnabled() != enable) {
                    item.setEnabled(enable);
                }
            }
        }

        private void setMenuItemVisibility(int id, boolean visible) {
            MenuItem item = this.mMenu.findItem(id);
            if (item != null && item.isVisible() != visible) {
                item.setVisible(visible);
            }
        }

        private void makeImageOrder() {
            this.mMenu.removeItem(R.id.action_edit);
            this.mMenu.add(0, R.id.action_edit, 2, R.string.operation_edit).setIcon(R.drawable.button_beautify_light);
            this.mMenu.findItem(R.id.action_edit).setShowAsAction(2);
            this.mMenu.removeItem(R.id.action_add_cloud);
            this.mMenu.add(0, R.id.action_add_cloud, 5, R.string.operation_add_album).setIcon(R.drawable.button_new_light).setShowAsAction(2);
        }

        private void makeVideoOrder() {
            this.mMenu.removeItem(R.id.action_edit);
            if (Build.supportVideoEditor()) {
                this.mMenu.add(0, R.id.action_edit, 2, R.string.operation_edit_video).setIcon(R.drawable.button_beautify_light);
                this.mMenu.findItem(R.id.action_edit).setShowAsAction(2);
            }
            this.mMenu.removeItem(R.id.action_add_cloud);
            this.mMenu.add(0, R.id.action_add_cloud, 4, R.string.operation_add_album).setIcon(R.drawable.button_new_light).setShowAsAction(2);
        }

        public void refreshDownloadItem(boolean visible, boolean enable) {
            BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (item != null) {
                refreshDownloadItem(getDownloadOriginTitle(item), visible, enable);
            }
        }

        private String getDownloadOriginTitle(BaseDataItem item) {
            if (item == null) {
                return null;
            }
            return PhotoPageFragment.this.getResources().getString(R.string.image_download_item_title, new Object[]{FormatUtil.formatFileSize(PhotoPageFragment.this.mActivity, item.getSize())});
        }
    }

    private class MotionPhotoManager extends BaseEditorManager implements OnClickListener, Callback {
        private View mOperationView;
        private boolean mSupported;

        public MotionPhotoManager(SpecialTypeManager specialTypeManager, PhotoPageTopBar topBar) {
            super(PhotoPageFragment.this, null);
            this.mSupported = ExtraPhotoSDK.isDeviceSupportMotionPhoto(PhotoPageFragment.this.getActivity());
            if (this.mSupported) {
                specialTypeManager.addTypeCallback(32, this);
                this.mOperationView = topBar.getOperationView();
                this.mOperationView.setOnClickListener(this);
            }
        }

        public void onClick(View v) {
            if (this.mSupported && PhotoPageFragment.this.mPagerHelper != null) {
                PhotoPageItem photoPageItem = PhotoPageFragment.this.mPagerHelper.getCurrentItem();
                if (photoPageItem instanceof PhotoPageImageItem) {
                    ((PhotoPageImageItem) photoPageItem).onActionBarOperationClick();
                }
            }
        }

        protected boolean handleEditorResult(Intent data) {
            if (data == null) {
                return false;
            }
            Uri uri = data.getData();
            if (uri == null) {
                return false;
            }
            String path = uri.getPath();
            if (TextUtils.isEmpty(path)) {
                return false;
            }
            setTargetPath(path);
            insertAndNotifyDataSet(path);
            BaseSamplingStatHelper.recordCountEvent("motion_photo", "motion_photo_save");
            return true;
        }

        public void onRecognized(BaseDataItem dataItem, boolean result) {
            if (this.mSupported) {
                this.mOperationView.setVisibility(result ? 0 : 8);
            }
        }

        public void onEnterClick(BaseDataItem dataItem) {
            if (this.mSupported) {
                IntentUtil.startMotionPhotoAction(dataItem, PhotoPageFragment.this.mActivity, PhotoPageFragment.this);
                onStartEditor();
                BaseSamplingStatHelper.recordCountEvent("motion_photo", "motion_photo_enter");
            }
        }

        public int getEnterDrawableId() {
            return R.drawable.motion_photo_btn;
        }

        protected void onCanceled() {
            super.onCanceled();
            BaseSamplingStatHelper.recordCountEvent("motion_photo", "motion_photo_cancel");
        }

        public void onDestroy() {
            release();
        }
    }

    private static class NFCManager {
        private NfcUpdateTask mUpdateTask;

        private static class NfcUpdateTask implements Runnable {
            private WeakReference<Activity> mActivityRef;
            private NfcAdapter mNfcAdapter;
            private BaseDataItem mUpdateItem;

            public NfcUpdateTask(Activity activity) {
                this.mActivityRef = new WeakReference(activity);
            }

            private NfcAdapter getNfcAdapter() {
                Activity activity = (Activity) this.mActivityRef.get();
                if (activity != null && this.mNfcAdapter == null) {
                    try {
                        this.mNfcAdapter = NfcAdapter.getDefaultAdapter(activity.getApplicationContext());
                    } catch (Throwable e) {
                        Log.e("PhotoPageFragment", e);
                    }
                }
                return this.mNfcAdapter;
            }

            void updateItem(BaseDataItem item) {
                if (item != null) {
                    this.mUpdateItem = item;
                    ThreadManager.getWorkHandler().removeCallbacks(this);
                    ThreadManager.getWorkHandler().post(this);
                }
            }

            public final void run() {
                Activity activity = (Activity) this.mActivityRef.get();
                NfcAdapter adapter = getNfcAdapter();
                if (activity != null && adapter != null) {
                    if (!TextUtils.isEmpty(this.mUpdateItem.getPathDisplayBetter())) {
                        try {
                            adapter.setBeamPushUris(new Uri[]{Uri.fromFile(new File(this.mUpdateItem.getPathDisplayBetter()))}, activity);
                        } catch (Throwable e) {
                            Log.w("PhotoPageFragment", e);
                        }
                    }
                }
            }

            public void release() {
                ThreadManager.getWorkHandler().removeCallbacks(this);
                this.mActivityRef.clear();
                this.mNfcAdapter = null;
            }
        }

        NFCManager(Activity activity) {
            this.mUpdateTask = new NfcUpdateTask(activity);
        }

        public void settleItem(BaseDataItem item) {
            if (this.mUpdateTask != null) {
                this.mUpdateTask.updateItem(item);
            }
        }

        public void release() {
            if (this.mUpdateTask != null) {
                this.mUpdateTask.release();
                this.mUpdateTask = null;
            }
        }
    }

    private static final class OrientationChangedListener implements OnOrientationChangedListener {
        private final WeakReference<OrientationManager> mManagerRef;

        public OrientationChangedListener(OrientationManager manager) {
            this.mManagerRef = new WeakReference(manager);
        }

        public void onOrientationChanged(int oldOrientation, int newOrientation) {
            OrientationManager manager = this.mManagerRef != null ? (OrientationManager) this.mManagerRef.get() : null;
            if (manager != null) {
                manager.onSensorOrientationChanged(oldOrientation, newOrientation);
            }
        }
    }

    private class OrientationManager {
        private boolean isOrientationLocked = false;
        private ContentObserver mAccelerometerRotationObserver;
        private int mCurUiOrientation = 0;
        private OrientationSensor mOrientationSensor;
        private boolean mSensorEnable = true;
        private int mSensorRotation = -1;

        OrientationManager() {
            this.mCurUiOrientation = PhotoPageFragment.this.getResources().getConfiguration().orientation;
            this.mOrientationSensor = new OrientationSensor(PhotoPageFragment.this.mActivity);
        }

        void onAccelerometerRotationChanged() {
            if (PhotoPageFragment.this.mActivity == null) {
                Log.e("PhotoPageFragment", "activity has detached AccelerometerRotationChanged");
                return;
            }
            int accelerometerRotation = System.getInt(PhotoPageFragment.this.mActivity.getContentResolver(), "accelerometer_rotation", 0);
            Log.d("PhotoPageFragment", "onAccelerometerRotationChanged %d", Integer.valueOf(accelerometerRotation));
            if (accelerometerRotation == 0) {
                lock();
            } else {
                unlock();
            }
        }

        private int getScreenOrientation(int rotation) {
            switch (rotation) {
                case 0:
                    return 1;
                case 1:
                    return 0;
                case 2:
                    return 9;
                case 3:
                    return 8;
                default:
                    return 2;
            }
        }

        void release() {
            disableOrientationSensor();
            disableAccelerometerRotationObserver();
        }

        private void enableOrientationSensor() {
            if (this.mSensorEnable && PhotoPageFragment.this.isResumed() && this.mOrientationSensor != null && !this.mOrientationSensor.isEnabled()) {
                Log.d("PhotoPageFragment", "enableOrientationSensor");
                this.mOrientationSensor.setOrientationChangedListener(new OrientationChangedListener(this));
                this.mOrientationSensor.enable();
            }
        }

        private void disableOrientationSensor() {
            if (this.mOrientationSensor != null && this.mOrientationSensor.isEnabled()) {
                Log.d("PhotoPageFragment", "disableOrientationSensor");
                this.mOrientationSensor.setOrientationChangedListener(null);
                this.mOrientationSensor.disable();
            }
        }

        private void enableAccelerometerRotationObserver() {
            if (PhotoPageFragment.this.isResumed() && this.mAccelerometerRotationObserver == null) {
                Log.d("PhotoPageFragment", "enableAccelerometerRotationObserver");
                this.mAccelerometerRotationObserver = new AccelerometerRotationChangedListener(ThreadManager.getMainHandler(), this);
                PhotoPageFragment.this.mActivity.getContentResolver().registerContentObserver(System.getUriFor("accelerometer_rotation"), true, this.mAccelerometerRotationObserver);
            }
        }

        private void disableAccelerometerRotationObserver() {
            if (this.mAccelerometerRotationObserver != null) {
                Log.d("PhotoPageFragment", "disableAccelerometerRotationObserver");
                PhotoPageFragment.this.mActivity.getContentResolver().unregisterContentObserver(this.mAccelerometerRotationObserver);
                this.mAccelerometerRotationObserver = null;
            }
        }

        void setSensorEnable(boolean enable) {
            this.mSensorEnable = enable;
            if (!PhotoPageFragment.this.isResumed()) {
                return;
            }
            if (this.mSensorEnable) {
                enableOrientationSensor();
            } else {
                disableOrientationSensor();
            }
        }

        void tryRestoreOrientation(boolean onResume) {
            boolean z = false;
            if (onResume) {
                if (!PhotoPageFragment.this.isFromCamera() && System.getInt(PhotoPageFragment.this.mActivity.getContentResolver(), "accelerometer_rotation", 0) == 0) {
                    z = true;
                }
                this.isOrientationLocked = z;
            }
            PhotoPageFragment.this.mActivity.setRequestedOrientation(this.isOrientationLocked ? 2 : 4);
        }

        void resume() {
            enableOrientationSensor();
            enableAccelerometerRotationObserver();
            tryRestoreOrientation(true);
        }

        void pause() {
            disableOrientationSensor();
            disableAccelerometerRotationObserver();
        }

        void onSensorOrientationChanged(int last, int cur) {
            if (PhotoPageFragment.this.mActivity == null) {
                Log.e("PhotoPageFragment", "activity has detached onOrientationChanged oldOrientation %d, newOrientation %d", Integer.valueOf(last), Integer.valueOf(cur));
                return;
            }
            this.mSensorRotation = OrientationSensor.transfer2SurfaceRotation(cur);
            Log.d("PhotoPageFragment", "onSensorOrientationChanged old %s, new %s", Integer.valueOf(last), Integer.valueOf(cur));
        }

        void onUiOrientationChanged(Configuration newConfig) {
            if (this.mCurUiOrientation != newConfig.orientation) {
                this.mCurUiOrientation = newConfig.orientation;
            }
        }

        private void lock() {
            int uiRotation = ((WindowManager) PhotoPageFragment.this.mActivity.getSystemService("window")).getDefaultDisplay().getRotation();
            PhotoPageFragment.this.mActivity.setRequestedOrientation(getScreenOrientation(uiRotation));
            this.isOrientationLocked = true;
            Map map = new HashMap();
            map.put("lock", Integer.valueOf(uiRotation));
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "orientation_lock_by_accelerometer", map);
        }

        private void unlock() {
            PhotoPageFragment.this.mActivity.setRequestedOrientation(4);
            this.isOrientationLocked = false;
            Map map = new HashMap();
            map.put("unlock", Integer.valueOf(this.mSensorRotation));
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "orientation_lock_by_accelerometer", map);
        }

        public void settleItem(BaseDataItem item) {
            boolean z = item == null || !item.isVideo();
            setSensorEnable(z);
        }
    }

    private class PhotoMaskManager {
        private final int OUT_OF_VIEWPORT_SLOP = 0;
        private int mActionBarHeight = -1;
        private ActionBarDividerRunnable mBarDividerRunnable;
        private ActionBarMaskRunnable mBarMaskRunnable;
        private PhotoPageMaskView mMaskView;
        private int mSplitBarHeight = -1;

        private class ActionBarDividerRunnable implements Runnable {
            final boolean isShowBottomDivider;
            final boolean isShowTopDivider;

            public ActionBarDividerRunnable(boolean showTopDivider, boolean showBottomDivider) {
                this.isShowTopDivider = showTopDivider;
                this.isShowBottomDivider = showBottomDivider;
            }

            public void run() {
                PhotoMaskManager.this.mMaskView.setActionBarDividerVisible(this.isShowTopDivider);
                PhotoMaskManager.this.mMaskView.setSplitBarDividerVisible(this.isShowBottomDivider);
            }
        }

        private class ActionBarMaskRunnable implements Runnable {
            final boolean isAnim;
            final boolean isShowMask;

            public ActionBarMaskRunnable(boolean isShowMask, boolean isAnim) {
                this.isShowMask = isShowMask;
                this.isAnim = isAnim;
            }

            public void run() {
                PhotoMaskManager.this.mMaskView.setActionBarMaskVisible(this.isShowMask, this.isAnim);
            }
        }

        public PhotoMaskManager() {
            this.mMaskView = (PhotoPageMaskView) PhotoPageFragment.this.getView().findViewById(R.id.mask_view);
            this.mMaskView.setHost(PhotoPageFragment.this);
        }

        public int getTopBarHeight() {
            if (this.mActionBarHeight == -1) {
                this.mActionBarHeight = PhotoPageFragment.this.getActionBarHeight();
            }
            return this.mActionBarHeight;
        }

        public int getSplitBarHeight() {
            if (this.mSplitBarHeight == -1) {
                this.mSplitBarHeight = PhotoPageFragment.this.getMenuCollapsedHeight();
            }
            return (this.mSplitBarHeight <= 0 ? MiscUtil.getDefaultSplitActionBarHeight(PhotoPageFragment.this.mActivity) : this.mSplitBarHeight) + ViewCompat.getSystemWindowInsetBottom(PhotoPageFragment.this.mActivity.getWindow().getDecorView());
        }

        public void refreshMask(boolean actionBarAnimating) {
            RectF rect = PhotoPageFragment.this.mPagerHelper.getCurItemDisplayRect();
            boolean outOfTopBar = rect != null && rect.top + 0.0f < ((float) getTopBarHeight());
            boolean outOfBottomBar = rect != null && rect.bottom - 0.0f > ((float) (PhotoPageFragment.this.mPager.getHeight() - getSplitBarHeight()));
            boolean isActionBarShow = PhotoPageFragment.this.isActionBarVisible();
            boolean showTopDivider = isActionBarShow && outOfTopBar;
            boolean showBottomDivider = isActionBarShow && outOfBottomBar;
            boolean isDividerPendingShow = false;
            if (isActionBarShow && (showTopDivider || showBottomDivider)) {
                isDividerPendingShow = this.mBarDividerRunnable != null && ((this.mBarDividerRunnable.isShowTopDivider || this.mBarDividerRunnable.isShowBottomDivider) && ThreadManager.getMainHandler().hasCallbacksCompat(this.mBarDividerRunnable));
            }
            if (!isDividerPendingShow) {
                removeRefreshDividerRunnable();
                this.mBarDividerRunnable = new ActionBarDividerRunnable(showTopDivider, showBottomDivider);
                if (isActionBarShow && actionBarAnimating) {
                    ThreadManager.getMainHandler().postDelayed(this.mBarDividerRunnable, (long) PhotoPageFragment.this.getResources().getInteger(R.integer.photo_bar_divider_refresh_delay));
                } else {
                    this.mBarDividerRunnable.run();
                }
            }
            boolean outOfViewPort = rect == null || outOfTopBar || outOfBottomBar;
            boolean isMaskAnim = actionBarAnimating && (outOfViewPort || PhotoPageFragment.this.isExiting());
            if (isActionBarShow && !outOfViewPort) {
                boolean isMaskPendingShow = this.mBarMaskRunnable != null && this.mBarMaskRunnable.isShowMask && ThreadManager.getMainHandler().hasCallbacksCompat(this.mBarMaskRunnable);
                if (isMaskPendingShow) {
                    return;
                }
            }
            removeRefreshMaskRunnable();
            this.mBarMaskRunnable = new ActionBarMaskRunnable(isActionBarShow, isMaskAnim);
            if (isActionBarShow && !outOfViewPort && actionBarAnimating) {
                ThreadManager.getMainHandler().postDelayed(this.mBarMaskRunnable, (long) PhotoPageFragment.this.getResources().getInteger(R.integer.photo_bar_divider_refresh_delay));
            } else {
                this.mBarMaskRunnable.run();
            }
        }

        public void showMaskImmediately() {
            this.mMaskView.setActionBarDividerVisible(true);
            this.mMaskView.setSplitBarDividerVisible(true);
            this.mMaskView.setActionBarMaskVisible(true, false);
        }

        public void hideMaskImmediately() {
            this.mMaskView.setActionBarDividerVisible(false);
            this.mMaskView.setSplitBarDividerVisible(false);
            this.mMaskView.setActionBarMaskVisible(false, false);
        }

        public void release() {
            removeRefreshDividerRunnable();
            removeRefreshMaskRunnable();
        }

        private void removeRefreshDividerRunnable() {
            if (this.mBarDividerRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mBarDividerRunnable);
                this.mBarDividerRunnable = null;
            }
        }

        private void removeRefreshMaskRunnable() {
            if (this.mBarMaskRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mBarMaskRunnable);
                this.mBarMaskRunnable = null;
            }
        }
    }

    private class PhotoRefreshReceiver extends BroadcastReceiver {
        private PhotoRefreshReceiver() {
        }

        /* synthetic */ PhotoRefreshReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            BaseDataItem dataItem;
            PhotoPageItem targetItem = null;
            if (SystemIntent.ACTION_SAVE_TO_CLOUD_GALLERY.equals(intent.getAction())) {
                String filePath = intent.getStringExtra(SystemIntent.EXTRA_FILE_PATH);
                if (!TextUtils.isEmpty(filePath) && PhotoPageFragment.this.mPager != null) {
                    int count = PhotoPageFragment.this.mPagerHelper.getActiveItemCount();
                    for (int i = 0; i < count; i++) {
                        PhotoPageItem item = PhotoPageFragment.this.mPagerHelper.getItemByNativeIndex(i);
                        if (item != null) {
                            dataItem = item.getDataItem();
                            if (dataItem != null && filePath.equals(dataItem.getOriginalPath())) {
                                targetItem = item;
                                break;
                            }
                        }
                    }
                } else {
                    return;
                }
            }
            if (targetItem != null) {
                dataItem = targetItem.getDataItem();
                if (dataItem != null) {
                    dataItem.resetSpecialTypeFlags();
                    if (PhotoPageFragment.this.mSpecialTypeManager != null) {
                        PhotoPageFragment.this.mSpecialTypeManager.updateItem(dataItem);
                    }
                }
                if (!intent.hasExtra("extra_is_temp_file")) {
                    targetItem.refreshItem();
                }
            }
        }
    }

    private class ProjectionManager implements Callback, ConnectListener, OnItemClickListener, RemoteControlListener {
        private int mConnectState = 1;
        private String mConnectedDeviceName = "";
        private BaseDataItem mCurItem;
        private Handler mHandler;
        private RemoteController mRemoteController;
        private DeviceListController mWidget = null;

        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 3:
                    switch2Local(2);
                    break;
                case 4:
                    this.mHandler.sendEmptyMessage(2);
                    if (ConnectController.getInstance().connectPhotoServer(msg.obj) != 0) {
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.projection_device_connection_failed);
                        setConnectState(1);
                        this.mWidget.removeActive();
                        break;
                    }
                    ConnectController.getInstance().showType(false, 0);
                    break;
                case 5:
                    switch2Local(2);
                    break;
            }
            return false;
        }

        ProjectionManager() {
            this.mWidget = new DeviceListController(PhotoPageFragment.this.mActivity);
            this.mWidget.setOnItemClickListener(this);
            this.mHandler = new Handler(Looper.getMainLooper(), this);
            ConnectController.getInstance().registConnectListener(this);
            this.mRemoteController = new RemoteController(this);
        }

        private void projectClicked() {
            this.mWidget.show();
            if (this.mConnectState == 2) {
                switch2Local(1);
            }
        }

        public boolean isConnected() {
            return this.mConnectState == 3;
        }

        private boolean isBigScreenSupported(BaseDataItem item) {
            if (item == null || item.isSecret() || TextUtils.isEmpty(item.getPathDisplayBetter())) {
                return false;
            }
            return true;
        }

        public void settleItem(BaseDataItem item, int index) {
            if (item != null) {
                Log.i("ProjectionManager", "updateItem %s  %d", item, Integer.valueOf(index));
                this.mCurItem = item;
                refreshProjectState();
                ConnectController.getInstance().updateCurrentPhoto(item.getPathDisplayBetter(), index);
            }
        }

        public void updateSet(BaseDataSet set) {
            ConnectController.getInstance().updateCurrentFolder(set);
        }

        public void updateRemoteView(BaseDataItem item, RectF displayRect) {
            if (item != null && item.getWidth() > 0 && displayRect.width() > 0.0f) {
                float centerX;
                float centerY;
                float currentScale = displayRect.width() / ((float) item.getWidth());
                float minScale = Math.min(((float) PhotoPageFragment.this.mPager.getWidth()) / ((float) item.getWidth()), ((float) PhotoPageFragment.this.mPager.getHeight()) / ((float) item.getHeight()));
                if (Utils.floatNear(currentScale, minScale, 1.0E-6f) || currentScale < minScale) {
                    currentScale = minScale;
                    centerX = ((float) item.getWidth()) / 2.0f;
                    centerY = ((float) item.getHeight()) / 2.0f;
                } else {
                    centerX = (((float) (PhotoPageFragment.this.mPager.getWidth() / 2)) - displayRect.left) / currentScale;
                    centerY = (((float) (PhotoPageFragment.this.mPager.getHeight() / 2)) - displayRect.top) / currentScale;
                }
                ConnectController.getInstance().syncRemoteView(centerX, centerY, (float) Math.round(((float) item.getWidth()) * minScale), (float) Math.round(((float) item.getHeight()) * minScale), (float) item.getWidth(), (float) item.getHeight(), currentScale);
            }
        }

        void refreshProjectState() {
            boolean z = false;
            if (PhotoPageFragment.this.mMenuManager != null && PhotoPageFragment.this.isAdded()) {
                String title;
                switch (this.mConnectState) {
                    case 2:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_cast_connecting_format, new Object[]{this.mConnectedDeviceName});
                        break;
                    case 3:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_cast_connected_format, new Object[]{this.mConnectedDeviceName});
                        break;
                    default:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_projection);
                        break;
                }
                Object state = this.mConnectState == 1 ? "init" : this.mConnectState == 2 ? "connecting" : MipubPhoneEvent.EXTRA_DATA_CONNECTED;
                if (isBigScreenSupported(this.mCurItem)) {
                    Log.i("ProjectionManager", "refreshProjectState: [%s] [visible]", state);
                    MenuManager access$2000 = PhotoPageFragment.this.mMenuManager;
                    if (this.mConnectState != 2) {
                        z = true;
                    }
                    access$2000.refreshCastItem(title, true, z);
                    return;
                }
                Log.i("ProjectionManager", "refreshProjectState: [%s] [gone]", state);
                PhotoPageFragment.this.mMenuManager.refreshCastItem(title, false, true);
                this.mHandler.removeMessages(2);
            }
        }

        public void onDevicesAvailable(ArrayList<String> deviceList) {
            Log.i("ProjectionManager", "onDevicesAvailable");
            if (deviceList != null) {
                Iterator it = deviceList.iterator();
                while (it.hasNext()) {
                    this.mWidget.addNewDevice((String) it.next(), false);
                }
            }
        }

        public void onDevicesAdded(String newDevice) {
            Log.i("ProjectionManager", "onDevicesAdded %s", (Object) newDevice);
            this.mWidget.addNewDevice(newDevice, TextUtils.equals(newDevice, ConnectController.getInstance().getCurConnectedDevice()));
        }

        public void onDeviceRemoved(String removedDevice) {
            Log.i("ProjectionManager", "onDeviceRemoved %s", (Object) removedDevice);
            if (this.mWidget.removeDevice(removedDevice)) {
                refreshProjectState();
            }
        }

        public void onDeviceRefresh(ArrayList<String> deviceList, String curDevice) {
            Log.i("ProjectionManager", "onDeviceRefresh %s", (Object) curDevice);
            if (this.mWidget.refreshDevices(deviceList, curDevice)) {
                refreshProjectState();
            }
            if (curDevice != null && this.mConnectState != 3) {
                setConnectState(3);
            }
        }

        public void onPhotoConnectResponse(int result) {
            Log.i("ProjectionManager", "onPhotoConnectResponse %d", Integer.valueOf(result));
            this.mHandler.removeMessages(2);
            switch (result) {
                case -1:
                    setConnectState(1);
                    this.mHandler.sendEmptyMessage(3);
                    ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.projection_device_connection_failed);
                    BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "project_photo_fail");
                    return;
                case 0:
                    setConnectState(3);
                    this.mHandler.sendEmptyMessage(1);
                    BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "project_photo_success");
                    return;
                default:
                    return;
            }
        }

        public void onPhotoConnectReleased() {
            Log.i("ProjectionManager", "onPhotoConnectReleased");
            this.mHandler.sendEmptyMessage(5);
        }

        public void switch2Local(int activeRelease) {
            setConnectState(1);
            if (activeRelease == 1) {
                ConnectController.getInstance().release();
            }
            this.mWidget.removeActive();
            this.mHandler.removeMessages(2);
        }

        public void switch2TV(String deviceName) {
            this.mConnectedDeviceName = deviceName;
            setConnectState(2);
            Message msg = this.mHandler.obtainMessage();
            msg.what = 4;
            msg.obj = deviceName;
            this.mHandler.sendMessage(msg);
        }

        private void setConnectState(int state) {
            this.mConnectState = state;
            this.mRemoteController.onConnectStateChange(PhotoPageFragment.this.mActivity, this.mConnectState == 3);
            refreshProjectState();
        }

        public void onItemClicked(String deviceName) {
            if (TextUtils.equals(deviceName, ConnectController.getInstance().getCurConnectedDevice())) {
                this.mHandler.removeMessages(2);
                switch2Local(1);
            } else if (deviceName.equals(DeviceListController.MOBILE_NAME)) {
                switch2Local(1);
            } else {
                ConnectController.getInstance().release();
                switch2TV(deviceName);
            }
            this.mWidget.dismiss();
        }

        public void enterSlideShow(int currentIndex) {
            if (ConnectController.getInstance().showType(true, currentIndex) != 0) {
                ToastUtils.makeText(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mActivity.getText(R.string.projection_slide_fail_cause_loading));
                return;
            }
            this.mRemoteController.disable(PhotoPageFragment.this.mActivity);
            ProjectSlideFragment.showProjectSlideFragment(PhotoPageFragment.this.mActivity, PhotoPageFragment.this, ConnectController.getInstance().getCurConnectedDevice());
        }

        public void exitSlideShow() {
            settleItem(this.mCurItem, PhotoPageFragment.this.mPager.getCurrentItem());
            this.mRemoteController.enable(PhotoPageFragment.this.mActivity);
            if (!PhotoPageFragment.this.isVisible()) {
                this.mRemoteController.disableDelay(PhotoPageFragment.this.mActivity);
            }
        }

        public void release() {
            this.mWidget.dismiss();
            ConnectController.getInstance().unregistConnectListener(this);
            this.mHandler.removeCallbacksAndMessages(null);
            ConnectController.getInstance().disconnect(this, true);
            this.mRemoteController.release(PhotoPageFragment.this.mActivity);
        }

        public void enableRemoteControl() {
            this.mRemoteController.enable(PhotoPageFragment.this.mActivity);
        }

        public void disableRemoteControl() {
            this.mRemoteController.disableDelay(PhotoPageFragment.this.mActivity);
        }

        public void onRemoteControl(boolean isVolumeUp) {
            boolean z = true;
            if (PhotoPageFragment.this.mAdapter.getCount() > 0) {
                int index;
                ViewPager viewPager;
                if (isVolumeUp) {
                    index = PhotoPageFragment.this.mPager.getCurrentItem() - 1;
                    if (index >= 0) {
                        viewPager = PhotoPageFragment.this.mPager;
                        if (MiscUtil.isKeyGuardLocked(PhotoPageFragment.this.mActivity)) {
                            z = false;
                        }
                        viewPager.setCurrentItem(index, z);
                        return;
                    }
                    return;
                }
                index = PhotoPageFragment.this.mPager.getCurrentItem() + 1;
                if (index < PhotoPageFragment.this.mAdapter.getCount()) {
                    viewPager = PhotoPageFragment.this.mPager;
                    if (MiscUtil.isKeyGuardLocked(PhotoPageFragment.this.mActivity)) {
                        z = false;
                    }
                    viewPager.setCurrentItem(index, z);
                }
            }
        }
    }

    private static class RecognitionTask {
        private Callback mCallback;
        private Future mFuture;

        public interface Callback {
            void onDataItemRecognized(BaseDataItem baseDataItem);
        }

        public RecognitionTask(Callback callback) {
            this.mCallback = callback;
        }

        public void execute(final BaseDataItem dataItem) {
            if (this.mFuture != null) {
                this.mFuture.cancel();
            }
            this.mFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    if (!(jc.isCancelled() || dataItem == null)) {
                        String path = dataItem.getOriginalPath();
                        if (!TextUtils.isEmpty(path)) {
                            long specialTypeFlags = SpecialTypeMediaUtils.parseFlagsForImage(path);
                            if ((32 & specialTypeFlags) != 0) {
                                long offset = XmpHelper.readMicroVideoOffset(path);
                                if (offset > 0) {
                                    dataItem.setMotionOffset(offset);
                                } else {
                                    specialTypeFlags = 0;
                                }
                            }
                            dataItem.setSpecialTypeFlags(specialTypeFlags);
                        }
                    }
                    return null;
                }
            }, new FutureHandler<Void>() {
                public void onPostExecute(Future<Void> future) {
                    if (RecognitionTask.this.mCallback != null) {
                        RecognitionTask.this.mCallback.onDataItemRecognized(dataItem);
                    }
                }
            });
        }

        public void release() {
            this.mCallback = null;
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }

    private class RefocusManager extends BaseEditorManager implements Callback {
        private boolean mRefocusSupport;

        public RefocusManager(SpecialTypeManager specialTypeManager) {
            super(PhotoPageFragment.this, null);
            this.mRefocusSupport = ExtraPhotoSDK.isDeviceSupportRefocus(PhotoPageFragment.this.getActivity());
            if (this.mRefocusSupport) {
                specialTypeManager.addTypeCallback(1, this);
            }
        }

        protected boolean handleEditorResult(Intent data) {
            if (data == null) {
                return false;
            }
            Uri uri = data.getData();
            if (uri == null) {
                return false;
            }
            String path = uri.getPath();
            if (TextUtils.isEmpty(path)) {
                return false;
            }
            ExtraPhotoSDK.sendResultStatic(data);
            setTargetPath(path);
            insertAndNotifyDataSet(path);
            return true;
        }

        public void onRecognized(BaseDataItem dataItem, boolean result) {
            if (this.mRefocusSupport && result) {
                ExtraPhotoSDK.sendExposureStatic();
            }
        }

        public void onEnterClick(BaseDataItem dataItem) {
            if (this.mRefocusSupport) {
                IntentUtil.startAdvancedRefocusAction(dataItem, PhotoPageFragment.this.mActivity, PhotoPageFragment.this);
                ExtraPhotoSDK.sendEnterStatic();
                onStartEditor();
            }
        }

        public int getEnterDrawableId() {
            return R.drawable.blur_refocus_btn;
        }

        public void release() {
            super.release();
        }
    }

    private class ScreenBroadcastReceiver extends BroadcastReceiver {
        private ScreenBroadcastReceiver() {
        }

        /* synthetic */ ScreenBroadcastReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                PhotoPageFragment.this.finishActivity(-1);
            }
        }
    }

    private class SmartVideoGuideManager implements SmartVideoGuideListener {
        private GuidePopupWindow mGuideView;
        private String mLastHFRVideoPath;
        private Runnable mShowGuidanceRunnable;
        private SmartVideoGuideHelper mSmartVideoGuideHelper = new SmartVideoGuideHelper();
        private String mVideoPath;

        public SmartVideoGuideManager() {
            this.mSmartVideoGuideHelper.setSmartVideoGuideListener(this);
        }

        public void updateItem(BaseDataItem item) {
            if (!SmartVideoGuideHelper.hasGuided()) {
                if (item != null) {
                    this.mVideoPath = item.getOriginalPath();
                }
                if (this.mSmartVideoGuideHelper != null && !preventGuide(item)) {
                    this.mSmartVideoGuideHelper.handleHighFrameRate(this.mVideoPath);
                }
            } else if (preventGuide(item) || !TextUtils.equals(this.mLastHFRVideoPath, item.getOriginalPath())) {
                dismissGuidance();
            }
        }

        private boolean preventGuide(BaseDataItem item) {
            return PhotoPageFragment.this.isPreviewMode() || !PhotoPageFragment.this.isActionBarVisible() || item == null || !item.isVideo() || TextUtils.isEmpty(item.getOriginalPath());
        }

        public void onActionBarVisibilityChanged(boolean visible) {
            if (visible) {
                updateItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
            } else {
                dismissGuidance();
            }
        }

        public void showGuideView(String path) {
            if (this.mGuideView == null && PhotoPageFragment.this.isActionBarVisible() && !TextUtils.isEmpty(path) && path.equals(this.mVideoPath)) {
                this.mLastHFRVideoPath = path;
                if (this.mShowGuidanceRunnable != null) {
                    ThreadManager.getMainHandler().removeCallbacks(this.mShowGuidanceRunnable);
                }
                ThreadManager.getMainHandler().postDelayed(getShowGuidanceRunnable(), 380);
            }
        }

        private Runnable getShowGuidanceRunnable() {
            if (this.mShowGuidanceRunnable == null) {
                this.mShowGuidanceRunnable = new Runnable() {
                    public void run() {
                        if (SmartVideoGuideManager.this.mGuideView == null && PhotoPageFragment.this.isActionBarVisible() && !TextUtils.isEmpty(SmartVideoGuideManager.this.mLastHFRVideoPath) && SmartVideoGuideManager.this.mLastHFRVideoPath.equals(SmartVideoGuideManager.this.mVideoPath) && !PhotoPageFragment.this.isExiting()) {
                            SmartVideoGuideManager.this.doShowGuidance();
                        }
                    }
                };
            }
            return this.mShowGuidanceRunnable;
        }

        private void doShowGuidance() {
            this.mGuideView = new GuidePopupWindow(PhotoPageFragment.this.mActivity);
            this.mGuideView.setArrowMode(0);
            this.mGuideView.setGuideText((int) R.string.feature_guidance_video_editor_smart_effects);
            View root = PhotoPageFragment.this.getView();
            if (root != null) {
                View anchor = root.findViewWithTag(Integer.valueOf(R.id.action_edit));
                if (anchor != null) {
                    this.mGuideView.show(anchor, false);
                    SmartVideoGuideHelper.setHasGuided(true);
                }
            }
        }

        private void dismissGuidance() {
            if (this.mShowGuidanceRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mShowGuidanceRunnable);
            }
            if (this.mGuideView != null && this.mGuideView.isShowing()) {
                this.mGuideView.dismiss(false);
            }
        }

        public void release() {
            if (this.mSmartVideoGuideHelper != null) {
                this.mSmartVideoGuideHelper.release();
            }
            dismissGuidance();
        }
    }

    private static class SpecialTypeManager implements OnClickListener {
        private LongSparseArray<Callback> mCallbacks;
        private Animation mEnterHideAnim;
        private Animation mEnterShowAnim;
        private ImageView mEnterView;
        private PhotoPageFragment mFragment;
        private int mOperationMask;
        private Callback mRecognitionCallback = new Callback() {
            public void onDataItemRecognized(BaseDataItem dataItem) {
                BaseDataItem currentItem = SpecialTypeManager.this.getCurrentItem();
                if (dataItem != null && dataItem.equals(currentItem)) {
                    SpecialTypeManager.this.onRecognized(dataItem);
                }
            }
        };
        private RecognitionTask mRecognitionTask;
        private boolean mSupportEnter;

        public interface Callback {
            int getEnterDrawableId();

            void onEnterClick(BaseDataItem baseDataItem);

            void onRecognized(BaseDataItem baseDataItem, boolean z);
        }

        public SpecialTypeManager(PhotoPageFragment fragment) {
            this.mFragment = fragment;
            this.mSupportEnter = !fragment.mStartWhenLockedAndSecret;
            this.mCallbacks = new LongSparseArray();
            Bundle arguments = fragment.getArguments();
            this.mOperationMask = arguments == null ? -1 : arguments.getInt("support_operation_mask", -1);
            this.mEnterView = (ImageView) fragment.getView().findViewById(R.id.special_type_enter);
            this.mEnterView.setOnClickListener(this);
            updateEnterViewPosition();
        }

        public void addTypeCallback(long type, Callback callback) {
            if (callback != null) {
                this.mCallbacks.put(type, callback);
            }
        }

        public void onActivityTransition() {
            if (this.mEnterView != null) {
                this.mEnterView.setVisibility(8);
            }
        }

        public void onActivityResult() {
            updateEnterView();
        }

        public void onActionBarVisibilityChanged() {
            updateEnterView();
        }

        public void onUiOrientationChanged() {
            if (this.mCallbacks.size() != 0) {
                updateEnterViewPosition();
            }
        }

        private void updateEnterViewPosition() {
            if (this.mEnterView != null && this.mSupportEnter) {
                MarginLayoutParams params = (MarginLayoutParams) this.mEnterView.getLayoutParams();
                if (params != null) {
                    params.bottomMargin = this.mFragment.getResources().getDimensionPixelSize(R.dimen.specify_type_enter_margin_bottom);
                    this.mEnterView.setLayoutParams(params);
                }
            }
        }

        private void updateEnterView() {
            if (this.mCallbacks.size() != 0) {
                updateEnterView(getCurrentItem());
            }
        }

        public void updateItem(BaseDataItem item) {
            if (this.mCallbacks.size() != 0) {
                if (item == null || !item.isImage() || item.hasFace() || TextUtils.isEmpty(item.getOriginalPath()) || !PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations() & this.mOperationMask, 512)) {
                    onRecognized(null);
                } else if (item.isSpecialTypeRecognized()) {
                    onRecognized(item);
                } else {
                    submitRecognizeTask(item);
                }
            }
        }

        private void submitRecognizeTask(BaseDataItem dataItem) {
            if (this.mRecognitionTask == null) {
                this.mRecognitionTask = new RecognitionTask(this.mRecognitionCallback);
            }
            this.mRecognitionTask.execute(dataItem);
        }

        private void onRecognized(BaseDataItem dataItem) {
            if (this.mFragment != null) {
                int size = this.mCallbacks.size();
                for (int i = 0; i < size; i++) {
                    Callback callback = (Callback) this.mCallbacks.valueAt(i);
                    boolean z = dataItem != null && dataItem.isSpecialType(this.mCallbacks.keyAt(i));
                    callback.onRecognized(dataItem, z);
                }
                updateEnterView(dataItem);
            }
        }

        private void updateEnterView(BaseDataItem dataItem) {
            if (this.mFragment != null && this.mSupportEnter) {
                int resId = 0;
                Callback callback = getCallback(dataItem);
                if (callback != null) {
                    resId = callback.getEnterDrawableId();
                }
                if (resId > 0 && this.mFragment.isActionBarVisible()) {
                    this.mEnterView.setImageResource(resId);
                    if (this.mEnterView.getVisibility() == 8) {
                        if (this.mEnterShowAnim == null) {
                            this.mEnterShowAnim = AnimationUtils.loadAnimation(this.mFragment.getActivity(), R.anim.special_type_enter_in);
                        }
                        this.mEnterView.startAnimation(this.mEnterShowAnim);
                        this.mEnterView.setVisibility(0);
                    }
                } else if (this.mEnterView.getVisibility() == 0) {
                    if (this.mEnterHideAnim == null) {
                        this.mEnterHideAnim = AnimationUtils.loadAnimation(this.mFragment.getActivity(), R.anim.special_type_enter_out);
                    }
                    this.mEnterView.startAnimation(this.mEnterHideAnim);
                    this.mEnterView.setVisibility(8);
                }
            }
        }

        public void onClick(View view) {
            BaseDataItem currentItem = getCurrentItem();
            if (currentItem != null && !TextUtils.isEmpty(currentItem.getOriginalPath())) {
                if (this.mFragment.needDismissKeyGuard()) {
                    this.mFragment.dismissKeyGuard();
                }
                Callback callback = getCallback(currentItem);
                if (callback != null) {
                    callback.onEnterClick(currentItem);
                }
            }
        }

        private Callback getCallback(BaseDataItem dataItem) {
            if (dataItem == null || dataItem.getSpecialTypeFlags() <= 0) {
                return null;
            }
            int size = this.mCallbacks.size();
            for (int i = 0; i < size; i++) {
                if (dataItem.isSpecialType(this.mCallbacks.keyAt(i))) {
                    return (Callback) this.mCallbacks.valueAt(i);
                }
            }
            return null;
        }

        private BaseDataItem getCurrentItem() {
            if (this.mFragment == null) {
                return null;
            }
            return this.mFragment.mAdapter.getDataItem(this.mFragment.mPager.getCurrentItem());
        }

        public void onDestroy() {
            this.mEnterView = null;
            this.mFragment = null;
            this.mCallbacks.clear();
            if (this.mRecognitionTask != null) {
                this.mRecognitionTask.release();
                this.mRecognitionTask = null;
            }
        }
    }

    static class ThemeManager {
        private IMultiThemeView mHostView;

        ThemeManager(IMultiThemeView hostView) {
            this.mHostView = hostView;
        }

        public void setLightTheme(boolean transit, boolean quickly) {
            if (this.mHostView == null) {
                return;
            }
            if (quickly) {
                this.mHostView.setTheme(Theme.LIGHT, transit ? ThemeTransition.FADE_IN : ThemeTransition.NONE, new CubicEaseOutInterpolator(), (long) ((View) this.mHostView).getContext().getResources().getInteger(R.integer.photo_background_in_quick_duration));
            } else {
                this.mHostView.setTheme(Theme.LIGHT, transit ? ThemeTransition.FADE_IN : ThemeTransition.NONE);
            }
        }

        public void setDarkTheme(boolean transit, boolean quickly) {
            if (this.mHostView == null) {
                return;
            }
            if (quickly) {
                this.mHostView.setTheme(Theme.DARK, transit ? ThemeTransition.FADE_OUT : ThemeTransition.NONE, new CubicEaseOutInterpolator(), (long) ((View) this.mHostView).getContext().getResources().getInteger(R.integer.photo_background_out_quick_duration));
            } else {
                this.mHostView.setTheme(Theme.DARK, transit ? ThemeTransition.FADE_OUT : ThemeTransition.NONE);
            }
        }

        public void setBackgroundAlpha(float alpha) {
            if (this.mHostView != null) {
                this.mHostView.setBackgroundAlpha(alpha);
            }
        }
    }

    private static class VideoPlayerManager {
        private WeakReference<PhotoPageFragment> mFragmentRef;
        private Future<Void> mFuture;

        /* synthetic */ VideoPlayerManager(PhotoPageFragment x0, AnonymousClass1 x1) {
            this(x0);
        }

        private VideoPlayerManager(PhotoPageFragment fragment) {
            this.mFragmentRef = new WeakReference(fragment);
        }

        public void onActivityResult(Intent intent) {
            if (intent != null && getFragment() != null) {
                Uri uri = intent.getData();
                if (uri != null) {
                    final String path = uri.getPath();
                    if (!TextUtils.isEmpty(path)) {
                        if (this.mFuture != null) {
                            this.mFuture.cancel();
                        }
                        this.mFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                            public Void run(JobContext jc) {
                                PhotoPageFragment fragment = VideoPlayerManager.this.getFragment();
                                if (!(fragment == null || jc.isCancelled())) {
                                    MediaScanner.scanSingleFile(fragment.getActivity(), path);
                                }
                                return null;
                            }
                        }, new FutureHandler<Void>() {
                            public void onPostExecute(Future<Void> future) {
                                PhotoPageFragment fragment = VideoPlayerManager.this.getFragment();
                                if (fragment != null && !future.isCancelled()) {
                                    BaseDataSet dataSet = fragment.mAdapter.getDataSet();
                                    if (dataSet != null) {
                                        dataSet.addNewFile(path, fragment.mPager.getCurrentItem() + 1);
                                    }
                                    fragment.getArguments().putString("photo_focused_path", path);
                                    fragment.onContentChanged();
                                }
                            }
                        });
                    }
                }
            }
        }

        private PhotoPageFragment getFragment() {
            return this.mFragmentRef != null ? (PhotoPageFragment) this.mFragmentRef.get() : null;
        }

        public void onDestroy() {
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }

    private class VoiceAssistantReceiver extends BroadcastReceiver {
        private VoiceAssistantReceiver() {
        }

        /* synthetic */ VoiceAssistantReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (PhotoPageFragment.this.mChoiceManager != null && !PhotoPageFragment.this.mChoiceManager.isSlipped()) {
                BaseDataItem dataItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                Intent target = new Intent("android.intent.action.SEND");
                if (dataItem.isVideo()) {
                    target.setType("video/*");
                } else {
                    target.setType("image/*");
                }
                String packageName = intent.getStringExtra("assistant_target_package");
                String className = intent.getStringExtra("assistant_target_class");
                boolean beauty = intent.getBooleanExtra("assistant_need_beauty", false);
                if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(className)) {
                    target.setComponent(new ComponentName(packageName, className));
                    List<ResolveInfo> resolveInfos = PhotoPageFragment.this.mActivity.getPackageManager().queryIntentActivities(target, 65536);
                    if (BaseMiscUtil.isValid(resolveInfos) && resolveInfos.size() == 1) {
                        target.putExtra("assistant_need_beauty", beauty);
                        PhotoPageFragment.this.mChoiceManager.sendCurrentToShare(target);
                    }
                }
            }
        }
    }

    public static PhotoPageFragment newInstance(Uri uri, String type, Bundle data, int theme) {
        if (data == null) {
            data = new Bundle();
        }
        data.putInt("key_theme", theme);
        if (uri != null) {
            data.putString("photo_uri", uri.toString());
        }
        if (type != null) {
            data.putString(Data.MIME_TYPE, type);
        }
        PhotoPageFragment fragment = new PhotoPageFragment();
        fragment.setArguments(data);
        return fragment;
    }

    public void onCreate(Bundle savedInstanceState) {
        boolean argValid = parseArguments();
        super.onCreate(savedInstanceState);
        if (argValid) {
            if (isFromCamera()) {
                if (this.mStartWhenLocked) {
                    this.mActivity.getWindow().addFlags(nexEngine.ExportHEVCHighTierLevel52);
                    this.mScreenReceiver = new ScreenBroadcastReceiver(this, null);
                    ReceiverUtils.registerReceiver(this.mActivity, this.mScreenReceiver, "android.intent.action.SCREEN_OFF");
                }
                this.mPhotoRefreshReceiver = new PhotoRefreshReceiver(this, null);
                IntentFilter filter = new IntentFilter();
                filter.addAction(SystemIntent.ACTION_SAVE_TO_CLOUD_GALLERY);
                LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mPhotoRefreshReceiver, filter);
            }
            this.mIsNightMode = MiscUtil.isNightMode(getActivity());
            return;
        }
        Log.e("PhotoPageFragment", "params error %s", getArguments());
        finish();
    }

    private boolean isFromCamera() {
        return this.isFromCamera;
    }

    private boolean isTransparentTheme() {
        return this.mTheme == 1;
    }

    private boolean parseArguments() {
        Bundle args = getArguments();
        if (args == null || TextUtils.isEmpty(args.getString("photo_uri"))) {
            return false;
        }
        this.isFromCamera = args.getBoolean("from_MiuiCamera", false);
        if (this.isFromCamera) {
            this.mStartWhenLocked = args.getBoolean(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, false);
            boolean z = this.mStartWhenLocked && isSecureKeyguard();
            this.mStartWhenLockedAndSecret = z;
        }
        this.mTheme = args.getInt("key_theme", 0);
        this.mAlwaysShowMenubar = args.getBoolean("photo_always_show_menubar", false);
        this.mFromRecommendFacePage = args.getBoolean("from_recommend_face_page", false);
        this.mPreviewMode = args.getBoolean("photo_preview_mode");
        return true;
    }

    private boolean isSecureKeyguard() {
        return ((KeyguardManager) this.mActivity.getSystemService("keyguard")).isKeyguardSecure();
    }

    protected int getThemeRes() {
        if (isTransparentTheme()) {
            return R.style.f174GalleryTheme.PhotoPage.Transparent;
        }
        return R.style.f173GalleryTheme.PhotoPage;
    }

    public String getTAG() {
        return "PhotoPageFragment";
    }

    protected View getLayout(LayoutInflater inflater, ViewGroup container) {
        View view = PhotoPageDataCache.getInstance().getPageLayout();
        return view != null ? view : LayoutInflater.from(this.mActivity).inflate(R.layout.photo_page, container, false);
    }

    protected void onViewInflated(View root) {
        super.onViewInflated(root);
        configViewLayout(root);
        setHasOptionsMenu(false);
        if (fromRecommendFacePage()) {
            this.mActivity.setRequestedOrientation(1);
        }
        this.mPagerHelper.setOnTapListener(this.mOnSingleTapListener);
        this.mPagerHelper.setOnScaleChangedListener(this.mOnPhotoScaleChangeListener);
        this.mPagerHelper.setOnDisplayRectChangedListener(this.mOnPhotoMatrixChangeListener);
        this.mPagerHelper.setOnDownloadListener(this.mDownloadListener);
        this.mPagerHelper.setOnExitListener(this.mOnExitListener);
        this.mPagerHelper.setOnAlphaChangedListener(this.mAlphaChangedListener);
        ((VerticalSlipLayout) root.findViewById(R.id.slip_layout)).setDraggable(false);
        this.mThemeManager = new ThemeManager((IMultiThemeView) root.findViewById(R.id.photo_layout));
        if (isFromCamera() || isPreviewMode()) {
            this.mThemeManager.setDarkTheme(false, true);
        }
        SystemUiUtil.setLayoutFullScreen(this.mActivity.getWindow().getDecorView(), isShowBarsWhenEntering());
        WindowCompat.setCutoutModeShortEdges(this.mActivity.getWindow());
    }

    private int resolveGravity(int gravity) {
        switch (gravity) {
            case 17:
                return 17;
            case BaiduSceneResult.SWIM /*81*/:
                return 81;
            default:
                return 0;
        }
    }

    private void configViewLayout(View root) {
        Resources res = getResources();
        float shareTitleRatio = res.getFraction(R.fraction.share_title_ratio, 1, 1);
        float sharePagerRatio = res.getFraction(R.fraction.share_pager_ratio, 1, 1);
        float shareChannelRatio = res.getFraction(R.fraction.share_channel_ratio, 1, 1);
        float shareTitlePaddingRatio = res.getFraction(R.fraction.share_title_padding_ratio, 1, 1);
        int shareTitleGravity = resolveGravity(res.getInteger(R.integer.share_title_gravity));
        VerticalSlipLayout slipLayout = (VerticalSlipLayout) root.findViewById(R.id.slip_layout);
        TextView title = (TextView) root.findViewById(R.id.choice_mode_title);
        View choice = root.findViewById(R.id.child_container);
        int viewHeight = Math.max(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int viewWidth = Math.min(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int titleHeight = (int) (((float) viewHeight) * shareTitleRatio);
        int choiceHeight = (int) (((float) viewHeight) * shareChannelRatio);
        title.getLayoutParams().height = titleHeight;
        title.setGravity(shareTitleGravity);
        title.setPadding(0, 0, 0, (int) (((float) titleHeight) * shareTitlePaddingRatio));
        choice.getLayoutParams().height = choiceHeight;
        slipLayout.setFixedSideSlipDistance(titleHeight);
        int widthSlipMargin = res.getDimensionPixelSize(R.dimen.photo_slip_horizontal_margin);
        int pagerMargin = res.getDimensionPixelSize(R.dimen.viewpager_page_margin);
        float widthRatio = 1.0f - ((2.0f * ((float) widthSlipMargin)) / ((float) viewWidth));
        float marginRatio = (1.0f * ((float) res.getDimensionPixelSize(R.dimen.viewpager_slip_page_margin))) / ((float) pagerMargin);
        this.mPager.setHeightSlipRatio(sharePagerRatio);
        this.mPager.setWidthSlipRatio(widthRatio);
        this.mPager.setMarginSlipRatio(marginRatio);
    }

    protected PhotoPageInteractionListener getPhotoPageInteractionListener() {
        return new PhotoPageInteractionListener() {
            public void notifyDataChanged() {
                if (PhotoPageFragment.this.isAdded()) {
                    PhotoPageFragment.this.onContentChanged();
                }
            }

            public void setActionBarVisible(boolean visible) {
                if (PhotoPageFragment.this.isAdded()) {
                    PhotoPageFragment.this.setActionBarVisible(visible);
                }
            }

            public int getActionBarHeight() {
                if (!PhotoPageFragment.this.isAdded() || PhotoPageFragment.this.getActionBar() == null) {
                    return 0;
                }
                return PhotoPageFragment.this.getActionBar().getHeight();
            }

            public int getMenuBarHeight() {
                return PhotoPageFragment.this.isAdded() ? PhotoPageFragment.this.getMenuCollapsedHeight() : 0;
            }
        };
    }

    protected void delayDoAfterTransit() {
        if (!isAdded()) {
            Log.i("PhotoPageFragment", "delayDoAfterTransit but not added");
        } else if (isFromCamera()) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (PhotoPageFragment.this.mActivity != null) {
                        PhotoPageFragment.this.doOnTransitEnd();
                    }
                }
            });
        } else {
            doOnTransitEnd();
        }
    }

    private void doOnTransitEnd() {
        super.delayDoAfterTransit();
        if (isTransparentTheme()) {
            LocalBroadcastManager.getInstance(this.mActivity).sendBroadcast(new Intent("com.miu.gallery.action.ENTER_PHOTO_PAGE"));
        }
        if (isPreviewMode()) {
            setActionBarVisible(false);
            return;
        }
        createBars();
        if (supportProjection()) {
            this.mProjectManager = new ProjectionManager();
        }
        this.mOrientationManager = new OrientationManager();
        this.mNFCManager = new NFCManager(this.mActivity);
        this.mChoiceManager = new ChoiceManager();
        this.mDualCameraManager = new DualCameraManager();
        this.mEditorManager = new EditorManager(this, null);
        this.mSpecialTypeManager = new SpecialTypeManager(this);
        this.mRefocusManager = new RefocusManager(this.mSpecialTypeManager);
        if (SmartVideoJudgeManager.isAvailable()) {
            this.mSmartVideoGuideManager = new SmartVideoGuideManager();
        }
        this.mVideoPlayerManager = new VideoPlayerManager(this, null);
        this.mMotionPhotoManager = new MotionPhotoManager(this.mSpecialTypeManager, this.mTopBar);
        if (isResumed()) {
            doOnResume();
        }
        if (this.mDataLoaded) {
            doDataSetLoaded(this.mAdapter.getDataSet(), true);
            doOnItemChanged(this.mPager.getCurrentItem());
            doOnItemSettled(this.mPager.getCurrentItem());
        }
        if (this.mThemeManager != null) {
            this.mThemeManager.setBackgroundAlpha(1.0f);
        }
    }

    protected ItemViewInfo getItemViewInfo(int pos) {
        return isTransparentTheme() ? PhotoPageDataCache.getInstance().getItemViewInfo(pos) : null;
    }

    private void doDataSetLoaded(BaseDataSet dataSet, boolean firstLoad) {
        this.mDataLoaded = true;
        if (firstLoad && this.mChoiceManager != null) {
            this.mChoiceManager.initSelected(dataSet);
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.updateSet(dataSet);
        }
    }

    protected void onDataSetLoaded(BaseDataSet dataSet, boolean firstLoad) {
        super.onDataSetLoaded(dataSet, firstLoad);
        doDataSetLoaded(dataSet, firstLoad);
    }

    private boolean isShowBarsWhenEntering() {
        String uri = getArguments().getString("photo_uri");
        if ((TextUtils.isEmpty(uri) || !UriUtil.isNetUri(Uri.parse(uri))) && !alwaysShowMenubar() && (!getArguments().getBoolean("com.miui.gallery.extra.show_bars_when_enter", true) || getArguments().getBoolean("com.miui.gallery.extra.photo_enter_choice_mode", false) || isPreviewMode() || isFromCamera())) {
            return false;
        }
        return true;
    }

    public boolean onBackPressed() {
        if (this.mChoiceManager == null || !this.mChoiceManager.onBackPressed()) {
            doExit();
        }
        return true;
    }

    public ImageView getPhotoView() {
        PhotoPageItem item = this.mPagerHelper.getCurrentItem();
        return item != null ? (ImageView) item.findViewById(R.id.photoview) : null;
    }

    protected void onExiting() {
        if (isFromCamera()) {
            getActionBar().setDisplayShowCustomEnabled(false);
        }
        setActionBarVisible(false);
    }

    protected void doExit() {
        if (isTransparentTheme() && !PhotoPageDataCache.getInstance().isItemVisible(this.mPager.getCurrentItem()) && PhotoPageDataCache.getInstance().viewToPosition(this.mPager.getCurrentItem())) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    super.doExit();
                }
            });
        } else {
            super.doExit();
        }
    }

    public void finish() {
        finishActivity(-1);
    }

    private void finishActivity(int resultCode) {
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            if (isTransparentTheme()) {
                Intent i = new Intent("com.miui.gallery.action.EXIT_PHOTO_PAGE");
                i.putExtra("photo_result_code", resultCode);
                LocalBroadcastManager.getInstance(this.mActivity).sendBroadcast(i);
            }
            this.mActivity.finish();
        }
    }

    private void createBars() {
        this.mTopBar = new PhotoPageTopBar(this.mActivity, new OnClickListener() {
            public void onClick(View v) {
                PhotoPageFragment.this.doExit();
            }
        });
        final boolean delayInitMenus = !isShowBarsWhenEntering();
        if (!delayInitMenus) {
            setHasOptionsMenu(true);
        }
        this.mTopBar.getView().addOnLayoutChangeListener(new OnLayoutChangeListener() {
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (PhotoPageFragment.this.isResumed()) {
                    if (delayInitMenus) {
                        PhotoPageFragment.this.setHasOptionsMenu(true);
                    }
                    PhotoPageFragment.this.onBarsCreated();
                    PhotoPageFragment.this.mTopBar.getView().removeOnLayoutChangeListener(this);
                }
            }
        });
        getActionBar().setCustomView(this.mTopBar.getView(), new LayoutParams(-1, -1, 19));
    }

    private void refreshTopBar(BaseDataItem item) {
        if (item != null && this.mTopBar != null) {
            this.mTopBar.setTitle(item.getViewTitle(this.mActivity));
            this.mTopBar.setSubTitle(item.getViewSubTitle(this.mActivity));
            this.mTopBar.setLocation(this.mActivity, item.getLocation());
        }
    }

    private void onBarsCreated() {
        this.mMaskManager = new PhotoMaskManager();
        refreshTopBar(this.mAdapter.getDataItem(this.mPager.getCurrentItem()));
        if (isShowBarsWhenEntering()) {
            ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), false);
            getActionBar().hide();
            ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), true);
            setActionBarVisible(true);
            return;
        }
        ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), false);
        setActionBarVisible(false);
        ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), true);
    }

    private void doOnPause() {
        if (this.mOrientationManager != null) {
            this.mOrientationManager.pause();
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.pause();
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.disableRemoteControl();
        }
        if (this.mVoiceAssistantReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mVoiceAssistantReceiver);
            this.mVoiceAssistantReceiver = null;
        }
    }

    private void doOnResume() {
        if (!isActionBarVisible()) {
            SystemUiUtil.setSystemBarsVisibility(false, this.mActivity.getWindow().getDecorView());
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.resume();
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.resume();
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.enableRemoteControl();
        }
        if (isNeedConfirmPassWord(this.mAdapter.getDataItem(this.mPager.getCurrentItem()))) {
            this.mNeedConfirmPassWord = false;
            LockSettingsHelper.startAuthenticatePasswordActivity((Fragment) this, 27);
        }
        if (this.mVoiceAssistantReceiver == null) {
            this.mVoiceAssistantReceiver = new VoiceAssistantReceiver(this, null);
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mVoiceAssistantReceiver, new IntentFilter("com.miui.gallery.action.VOICE_ASSISTANT_SHARE"));
        }
    }

    public void onPause() {
        super.onPause();
        doOnPause();
    }

    public void onResume() {
        super.onResume();
        doOnResume();
    }

    public void onActivityReenter(int resultCode, Intent data) {
        if (data != null) {
            String editType = data.getStringExtra("extra_photo_edit_type");
            if ("extra_photo_editor_type_common".equals(editType)) {
                if (this.mEditorManager != null) {
                    this.mEditorManager.onActivityReenter(data);
                }
            } else if ("extra_photo_editor_type_refocus".equals(editType)) {
                if (this.mRefocusManager != null) {
                    this.mRefocusManager.onActivityReenter(data);
                }
            } else if ("extra_photo_editor_type_re_pick".equals(editType) && this.mMotionPhotoManager != null) {
                this.mMotionPhotoManager.onActivityReenter(data);
            }
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 24:
                if (this.mProjectManager != null) {
                    this.mProjectManager.exitSlideShow();
                    break;
                }
                break;
            case 27:
                if (resultCode == -1) {
                    this.mNeedConfirmPassWord = false;
                    break;
                } else {
                    finishActivity(resultCode);
                    break;
                }
            case 30:
                if (this.mEditorManager != null) {
                    this.mEditorManager.onActivityResult(resultCode, data);
                }
                if (data != null && data.getBooleanExtra("photo_secret_finish", false)) {
                    finishActivity(0);
                    break;
                } else {
                    this.mNeedConfirmPassWord = false;
                    break;
                }
                break;
            case 37:
                if (this.mDualCameraManager != null) {
                    this.mDualCameraManager.onDualPhotoEdited(data);
                    break;
                }
                break;
            case 38:
                if (resultCode != -1) {
                    finishActivity(resultCode);
                    break;
                } else {
                    this.mNeedConfirmPassWord = false;
                    break;
                }
            case 44:
                if (this.mRefocusManager != null) {
                    this.mRefocusManager.onActivityResult(resultCode, data);
                    break;
                }
                break;
            case 45:
                if (resultCode == -1 && this.mVideoPlayerManager != null) {
                    this.mVideoPlayerManager.onActivityResult(data);
                    setActionBarVisible(true);
                    break;
                }
            case 50:
                if (this.mMotionPhotoManager != null) {
                    this.mMotionPhotoManager.onActivityResult(resultCode, data);
                    break;
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
        this.mPagerHelper.onActivityResult(requestCode, resultCode, data);
    }

    protected void onShared() {
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onShared();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        PhotoPagerSamplingStatHelper.onDestroy();
        if (this.mProjectManager != null) {
            this.mProjectManager.release();
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.release();
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.release();
        }
        if (this.mChoiceManager != null) {
            this.mChoiceManager.release();
        }
        if (this.mRefocusManager != null) {
            this.mRefocusManager.release();
            this.mRefocusManager = null;
        }
        if (this.mSmartVideoGuideManager != null) {
            this.mSmartVideoGuideManager.release();
        }
        if (this.mNFCManager != null) {
            this.mNFCManager.release();
        }
        this.mDataLoaded = false;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        if (isPreviewMode()) {
            return false;
        }
        menu.clear();
        this.mActivity.getMenuInflater().inflate(R.menu.photo_page, menu);
        int operationMask = 0;
        Bundle args = getArguments();
        if (args != null) {
            operationMask = args.getInt("support_operation_mask", -1);
        }
        this.mMenuManager = new MenuManager(menu, operationMask);
        this.mFavoritesManager = new FavoritesManager(menu);
        return true;
    }

    public void onPrepareOptionsMenu(Menu menu) {
        if (this.mMenuManager != null) {
            this.mMenuManager.settleItem(this.mAdapter.getDataItem(this.mPager.getCurrentItem()));
        }
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        this.mMenuManager.onMenuItemClick(item);
        return true;
    }

    public void onMultiWindowModeChanged(boolean isInMultiWindowMode) {
        Log.d("PhotoPageFragment", "isInMultiWindowMode: %b", Boolean.valueOf(isInMultiWindowMode));
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onMultiWindowModeChanged(isInMultiWindowMode);
        }
    }

    private boolean isActionBarVisible() {
        return getActionBar() != null && getActionBar().isShowing();
    }

    private void setActionBarVisible(boolean visible) {
        if (visible != isActionBarVisible()) {
            if (visible) {
                if ((this.mChoiceManager == null || !this.mChoiceManager.isSlipped()) && !isPreviewMode()) {
                    getActionBar().show();
                } else {
                    return;
                }
            } else if (!alwaysShowMenubar()) {
                getActionBar().hide();
            } else {
                return;
            }
            onActionBarVisibilityChanged(visible);
        }
    }

    private void showActionBarView() {
        Log.d("PhotoPageFragment", "showActionBarView");
        if (this.mTopBar != null && !this.mTopBar.isShowing()) {
            this.mTopBar.show();
            showBottomMenu();
            if (this.mMaskManager != null) {
                this.mMaskManager.showMaskImmediately();
            }
        }
    }

    private void hideActionBarView() {
        Log.d("PhotoPageFragment", "hideActionBarView");
        if (this.mTopBar != null && this.mTopBar.isShowing()) {
            this.mTopBar.hide();
            hideBottomMenu();
            if (this.mMaskManager != null) {
                this.mMaskManager.hideMaskImmediately();
            }
        }
    }

    private boolean inPreviewMode() {
        return !isActionBarVisible() && (this.mChoiceManager == null || !this.mChoiceManager.isPendingSlipped());
    }

    private void refreshTheme(boolean quickly) {
        if (this.mThemeManager == null) {
            return;
        }
        if (inPreviewMode()) {
            this.mThemeManager.setDarkTheme(true, quickly);
        } else {
            this.mThemeManager.setLightTheme(true, quickly);
        }
    }

    private void onActionBarVisibilityChanged(boolean visible) {
        int navigationColor = 0;
        if (visible) {
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.showMoreFuncExceptRefocus(true);
            }
            if (this.mFavoritesManager != null) {
                this.mFavoritesManager.show();
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.onActionBarVisibilityChanged(true);
            }
        } else {
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.hideMoreFuncExceptRefocus(true);
            }
            if (!(isExiting() || this.mFavoritesManager == null)) {
                this.mFavoritesManager.hide();
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.onActionBarVisibilityChanged(false);
            }
        }
        if (this.mSpecialTypeManager != null) {
            this.mSpecialTypeManager.onActionBarVisibilityChanged();
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.refreshMask(true);
        }
        if (!isExiting()) {
            refreshTheme(false);
            this.mPagerHelper.onActionBarVisibleChanged(visible, getActionBarHeight());
            SystemUiUtil.setSystemBarsVisibility(visible, this.mActivity.getWindow().getDecorView());
            if (ViewCompat.getSystemWindowInsetBottom(this.mActivity.getWindow().getDecorView()) > 0) {
                if (visible) {
                    navigationColor = this.mIsNightMode ? -16777216 : -1;
                }
                com.miui.gallery.compat.view.WindowCompat.setNavigationBarColor(this.mActivity.getWindow(), navigationColor);
            }
        }
    }

    private int getActionBarHeight() {
        int actionBarHeight = getActionBar().getHeight();
        if (actionBarHeight > 0) {
            return actionBarHeight;
        }
        return MiscUtil.getStatusBarHeight(this.mActivity) + this.mActivity.getResources().getDimensionPixelSize(R.dimen.photo_page_actionbar_height);
    }

    private boolean alwaysShowMenubar() {
        return this.mAlwaysShowMenubar;
    }

    private boolean fromRecommendFacePage() {
        return this.mFromRecommendFacePage;
    }

    private boolean isPreviewMode() {
        return fromRecommendFacePage() || this.mPreviewMode;
    }

    private boolean isNeedConfirmPassWord(BaseDataItem item) {
        return item != null && item.isSecret() && this.mNeedConfirmPassWord;
    }

    public void onStop() {
        this.mNeedConfirmPassWord = true;
        super.onStop();
    }

    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level == 20) {
            Log.d("PhotoPageFragment", "onTrimMemory level:%d", Integer.valueOf(level));
            PhotoReusedBitCache.getInstance().clear();
            TileReusedBitCache.getInstance().clear();
        }
    }

    public String getPageName() {
        return TagYellowPage.PHOTO;
    }

    public void onDestroy() {
        PhotoReusedBitCache.getInstance().initFirstCacheBitmap();
        TileReusedBitCache.getInstance().clear();
        if (this.mScreenReceiver != null) {
            ReceiverUtils.safeUnregisterReceiver(this.mActivity, this.mScreenReceiver);
        }
        if (this.mPhotoRefreshReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mPhotoRefreshReceiver);
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.onDestory();
        }
        if (this.mEditorManager != null) {
            this.mEditorManager.onDestroy();
        }
        if (this.mFavoritesManager != null) {
            this.mFavoritesManager.onDestroy();
        }
        if (this.mVideoPlayerManager != null) {
            this.mVideoPlayerManager.onDestroy();
        }
        if (this.mMotionPhotoManager != null) {
            this.mMotionPhotoManager.onDestroy();
        }
        if (this.mSpecialTypeManager != null) {
            this.mSpecialTypeManager.onDestroy();
        }
        CacheOfAllFacesInOnePhoto.getInstance().clearCache();
        if (isStatUserShowMenuBar()) {
            statUserShowMenuBar();
        }
        super.onDestroy();
    }

    private boolean isStatUserShowMenuBar() {
        return isFromCamera();
    }

    private void statUserShowMenuBar() {
        boolean isUserShowBar = true;
        HashMap<String, String> map = new HashMap(1);
        if (this.mUserShowBarIndex < 0) {
            isUserShowBar = false;
        }
        map.put("isUserShowMenuBar", String.valueOf(isUserShowBar));
        if (isUserShowBar) {
            map.put("showBarIndex", String.valueOf(this.mUserShowBarIndex));
        }
        BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_user_show_menu_bar", map);
    }

    private void doOnItemChanged(int position) {
        BaseDataItem curDataItem = this.mAdapter.getDataItem(position);
        if (curDataItem != null) {
            refreshTopBar(curDataItem);
            if (this.mFavoritesManager != null) {
                this.mFavoritesManager.updateItem(curDataItem);
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.updateItem(curDataItem);
            }
            if (this.mSpecialTypeManager != null) {
                this.mSpecialTypeManager.updateItem(curDataItem);
            }
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.refreshMask(false);
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.updateItem(curDataItem);
        }
    }

    private void doOnItemSettled(int position) {
        BaseDataItem curDataItem = this.mAdapter.getDataItem(position);
        if (curDataItem != null) {
            if (this.mMenuManager != null) {
                this.mMenuManager.settleItem(curDataItem);
            }
            if (this.mProjectManager != null) {
                this.mProjectManager.settleItem(curDataItem, position);
            }
            if (this.mOrientationManager != null) {
                this.mOrientationManager.settleItem(curDataItem);
            }
            if (this.mNFCManager != null) {
                this.mNFCManager.settleItem(curDataItem);
            }
            if (this.mChoiceManager != null) {
                this.mChoiceManager.settleItem(curDataItem);
            }
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.settleItem(curDataItem);
            }
            this.mPagerHelper.onActionBarVisibleChanged(isActionBarVisible(), getActionBarHeight());
            int flags = this.mActivity.getWindow().getAttributes().flags;
            if (curDataItem.isSecret()) {
                if ((flags & 8192) == 0) {
                    Log.d("PhotoPageFragment", "add FLAG_SECURE");
                    this.mActivity.getWindow().addFlags(8192);
                }
            } else if ((flags & 8192) != 0) {
                Log.d("PhotoPageFragment", "clear FLAG_SECURE");
                this.mActivity.getWindow().clearFlags(8192);
            }
            TalkBackUtil.requestAnnouncementEvent(this.mPager, curDataItem.getContentDescription(this.mActivity));
        }
    }

    protected void onItemSettled(int position) {
        super.onItemSettled(position);
        doOnItemSettled(position);
    }

    protected void onItemChanged(int position) {
        super.onItemChanged(position);
        doOnItemChanged(position);
    }

    public void onImageLoadFinish(String uri) {
        if (this.mEditorManager != null) {
            this.mEditorManager.onImageLoadFinish(uri);
        }
        if (this.mRefocusManager != null) {
            this.mRefocusManager.onImageLoadFinish(uri);
        }
        if (this.mMotionPhotoManager != null) {
            this.mMotionPhotoManager.onImageLoadFinish(uri);
        }
    }

    private boolean needDismissKeyGuard() {
        return (!this.mStartWhenLocked || this.mStartWhenLockedAndSecret || this.mHasSendDismissCast) ? false : true;
    }

    private void dismissKeyGuard() {
        this.mHasSendDismissCast = true;
        this.mActivity.sendBroadcast(new Intent("xiaomi.intent.action.SHOW_SECURE_KEYGUARD"));
    }

    private void downloadOrigin() {
        PhotoPageItem pageItem = this.mPagerHelper.getCurrentItem();
        if (pageItem != null) {
            pageItem.downloadOrigin();
        }
    }

    protected void downloadOrigin(final BaseDataItem item, final DownloadCallback downloadCallback) {
        if (NetworkUtils.isActiveNetworkMetered()) {
            DialogUtil.showInfoDialog(this.mActivity, getResources().getString(R.string.download_with_metered_network_msg), getResources().getString(R.string.download_with_metered_network_title), 17039370, 17039360, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogI, int which) {
                    PhotoPageFragment.this.mMenuManager.refreshDownloadItem(null, true, false);
                    PhotoPageFragment.this.doDownloadOrigin(item, DownloadType.ORIGIN_FORCE, downloadCallback);
                }
            }, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    dialog.cancel();
                }
            });
            return;
        }
        this.mMenuManager.refreshDownloadItem(null, true, false);
        doDownloadOrigin(item, DownloadType.ORIGIN, downloadCallback);
    }

    private void doDownloadOrigin(final BaseDataItem item, final DownloadType imageType, final DownloadCallback downloadCallback) {
        OnDownloadListener onDownloadListener = new OnDownloadListener() {
            public void onDownloadComplete(List<BulkDownloadItem> successes, List<BulkDownloadItem> list) {
                if (successes == null || successes.size() < 1) {
                    DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.getResources().getString(R.string.download_retry_message), PhotoPageFragment.this.getResources().getString(R.string.download_retry_title), (int) R.string.download_retry_text, 17039360, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            PhotoPageFragment.this.downloadOrigin(item, downloadCallback);
                        }
                    }, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            PhotoPageFragment.this.mDownloadListener.onLoadingCancelled(item.getDownloadUri(), imageType, null);
                        }
                    });
                    return;
                }
                item.setFilePath(((BulkDownloadItem) successes.get(0)).getDownloadPath());
                downloadCallback.downloadSuccess(((BulkDownloadItem) successes.get(0)).getDownloadPath(), item);
                PhotoPageFragment.this.mDownloadListener.onDownloadComplete(item.getDownloadUri(), imageType, null, item.getOriginalPath());
            }

            public void onCanceled() {
                PhotoPageFragment.this.mDownloadListener.onLoadingCancelled(item.getDownloadUri(), imageType, null);
            }
        };
        BulkDownloadItem downloadItem = new BulkDownloadItem(item.getDownloadUri(), imageType, item.getSize());
        ArrayList<BulkDownloadItem> downloadItems = new ArrayList();
        downloadItems.add(downloadItem);
        DownloadFragment downloadFragment = DownloadFragment.newInstance(downloadItems);
        downloadFragment.setOnDownloadListener(onDownloadListener);
        downloadFragment.showAllowingStateLoss(getFragmentManager(), "DownloadFragment");
    }

    private boolean prohibitOperateProcessingItem(BaseDataItem current) {
        if (!isProcessingMedia(current)) {
            return false;
        }
        ToastUtils.makeText(this.mActivity, (int) R.string.operate_processing_file_error);
        return true;
    }

    private boolean supportProjection() {
        return CTA.canConnectNetwork() || !GalleryUtils.needImpunityDeclaration();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onUiOrientationChanged(newConfig);
        }
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onUiOrientationChanged(newConfig);
        }
        if (this.mSpecialTypeManager != null) {
            this.mSpecialTypeManager.onUiOrientationChanged();
        }
    }

    private boolean activityAlive() {
        return (this.mActivity == null || this.mActivity.isDestroyed() || this.mActivity.isFinishing()) ? false : true;
    }

    private String getItemClickEventCategory(BaseDataItem item) {
        if (item.isSecret()) {
            return "photo_secret";
        }
        return TagYellowPage.PHOTO;
    }
}
