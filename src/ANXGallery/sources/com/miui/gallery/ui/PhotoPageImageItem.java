package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.meicam.themehelper.BuildConfig;
import com.miui.extraphoto.sdk.BaseEchoListener;
import com.miui.extraphoto.sdk.ExtraPhotoSDK;
import com.miui.extraphoto.sdk.ExtraPhotoWrapper;
import com.miui.gallery.Config.BigPhotoConfig;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.Config.TileConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.PhotoPageAdapter.ChoiceModeInterface;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.editor.photo.sdk.AutoRenderer;
import com.miui.gallery.editor.photo.sdk.AutoRenderer.Callback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.photosapi.ProcessingMetadataQuery.ProgressStatus;
import com.miui.gallery.provider.ProcessingMedia;
import com.miui.gallery.provider.ProcessingMedia.ProcessingMetadata;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.MediaFile;
import com.miui.gallery.util.ProcessingMediaHelper;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.photoview.BitmapRecycleCallback;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TileBitProvider;
import com.miui.gallery.util.photoview.TileBitProviderRegion;
import com.miui.gallery.util.photoview.TileReusedBitCache;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.view.animation.AnimationListenerAdapter;
import com.miui.gallery.widget.CircleStrokeProgressBar;
import com.miui.gallery.widget.GalleryVideoView;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import java.util.HashMap;
import java.util.Locale;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.SineEaseInOutInterpolator;
import miui.yellowpage.Tag.TagYellowPage;
import uk.co.senab.photoview.PhotoView;
import uk.co.senab.photoview.PhotoViewAttacher.OnScaleStageChangedListener;

public class PhotoPageImageItem extends PhotoPageItem {
    private static final boolean DEBUG_ENABLE = Log.isLoggable("PhotoPageImageItem", 3);
    private static BitmapRecycleCallback sBitmapRecycleCallback;
    private AutoRenderer mAutoRenderer;
    private ExtraPhotoEchoManager mEchoManager;
    private HigherDefinitionManager mHigherDefinitionManager;
    private ImageProcessingManager mImageProcessingManager;
    private boolean mIsImageFirstDisplay = true;
    private volatile boolean mIsSupportRegion = true;
    private float mMaxScale = 1.0f;
    private MotionPhotoManager mMotionPhotoManager;
    private RegionDecoderManager mRegionManager;

    private class ExtraPhotoEchoManager {
        private EchoTask mEchoTask;
        private View mLoadingView;

        private class EchoListener extends BaseEchoListener {
            private EchoListener() {
            }

            /* synthetic */ EchoListener(ExtraPhotoEchoManager x0, AnonymousClass1 x1) {
                this();
            }

            public void onStart() {
            }

            public void onEnd(String path, boolean success) {
                if (PhotoPageImageItem.this.isAttachedToWindow()) {
                    ExtraPhotoEchoManager.this.hideLoading();
                    if (success && !TextUtils.isEmpty(path) && PhotoPageImageItem.this.mDataItem != null) {
                        if (path.equalsIgnoreCase(PhotoPageImageItem.this.mDataItem.getOriginalPath())) {
                            PhotoPageImageItem.this.refreshItem();
                            return;
                        } else if (PhotoPageImageItem.this.mPhotoPageInteractionListener != null) {
                            PhotoPageImageItem.this.mPhotoPageInteractionListener.notifyDataChanged();
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                com.miui.gallery.util.Log.w("PhotoPageImageItem", "view has detached from window");
            }
        }

        private class EchoTask extends AsyncTask<Void, Void, Boolean> {
            private EchoListener mEchoListener;
            private String mPath;

            EchoTask(String path) {
                this.mPath = path;
            }

            public void cancel() {
                cancel(false);
                if (this.mEchoListener != null) {
                    ExtraPhotoWrapper.getInstance().unregisterEchoListener(this.mEchoListener);
                    this.mEchoListener = null;
                }
            }

            protected Boolean doInBackground(Void... params) {
                return Boolean.valueOf(ExtraPhotoWrapper.getInstance().needEcho(this.mPath));
            }

            protected void onPostExecute(Boolean needEcho) {
                if (!isCancelled() && needEcho.booleanValue()) {
                    com.miui.gallery.util.Log.i("PhotoPageImageItem", "need echo %s", this.mPath);
                    ExtraPhotoEchoManager.this.showLoading();
                    this.mEchoListener = new EchoListener(ExtraPhotoEchoManager.this, null);
                    ExtraPhotoWrapper.getInstance().echo(this.mPath, this.mEchoListener, true);
                }
            }
        }

        ExtraPhotoEchoManager() {
        }

        protected void ensureInflated() {
            if (this.mLoadingView == null) {
                this.mLoadingView = ((ViewStub) PhotoPageImageItem.this.findViewById(R.id.page_item_loading)).inflate();
            }
        }

        private boolean isExtraImage() {
            return (PhotoPageImageItem.this.mDataItem == null || PhotoPageImageItem.this.mDataItem.getOriginalPath() == null) ? false : true;
        }

        private boolean needEcho() {
            return (PhotoPageImageItem.this.mDataItem == null || DownloadPathHelper.isShareFolderRelativePath(StorageUtils.getRelativePath(PhotoPageImageItem.this.getContext(), PhotoPageImageItem.this.mDataItem.getOriginalPath()))) ? false : true;
        }

        public void onSelected() {
            tryEcho();
        }

        public void onUnSelected() {
            release();
        }

        public void release() {
            if (this.mEchoTask != null) {
                this.mEchoTask.cancel();
            }
            hideLoading();
        }

        private void tryEcho() {
            if (ExtraPhotoWrapper.getInstance().isExtraCamera() && isExtraImage() && needEcho()) {
                if (this.mEchoTask != null) {
                    this.mEchoTask.cancel();
                }
                this.mEchoTask = new EchoTask(PhotoPageImageItem.this.mDataItem.getOriginalPath());
                this.mEchoTask.execute(new Void[0]);
            }
        }

        private void showLoading() {
            ensureInflated();
            if (this.mLoadingView.getVisibility() != 0) {
                this.mLoadingView.setVisibility(0);
            }
        }

        private void hideLoading() {
            if (this.mLoadingView != null && this.mLoadingView.getVisibility() == 0) {
                this.mLoadingView.setVisibility(8);
            }
        }
    }

    private class HigherDefinitionManager {
        private int mCurActionBarHeight;
        private int mDefaultMarginTop;
        private TextView mDefinitionStateView;
        private Handler mHandler;
        private boolean mHasHdViewDisplayed;
        private Runnable mHideDefinitionRunnable;
        private boolean mIsEverEnterHd;
        private boolean mIsHdPhoto;
        private OnScaleStageChangedListener mOnScaleStageChangedListener;
        private MarginLayoutParams mParams;

        private HigherDefinitionManager() {
            this.mHandler = ThreadManager.getMainHandler();
            this.mHideDefinitionRunnable = new Runnable() {
                public void run() {
                    HigherDefinitionManager.this.hideDefinitionText();
                }
            };
            this.mOnScaleStageChangedListener = new OnScaleStageChangedListener() {
                public void onMidScaleStage(boolean isEnter) {
                    if (isEnter) {
                        PhotoPageImageItem.this.mHigherDefinitionManager.changeToMidScale();
                    } else {
                        PhotoPageImageItem.this.mHigherDefinitionManager.exitHigherDefinition();
                    }
                }

                public void onMaxScaleStage(boolean isEnter) {
                    if (isEnter) {
                        PhotoPageImageItem.this.mHigherDefinitionManager.changeToHigherDefinition();
                    } else {
                        PhotoPageImageItem.this.mHigherDefinitionManager.exitHigherDefinition();
                    }
                }
            };
        }

        /* synthetic */ HigherDefinitionManager(PhotoPageImageItem x0, AnonymousClass1 x1) {
            this();
        }

        public void onSelected() {
            int width;
            int height;
            boolean z = false;
            if (PhotoPageImageItem.this.mDataItem == null) {
                width = 0;
                height = 0;
                this.mIsHdPhoto = false;
            } else {
                width = PhotoPageImageItem.this.mDataItem.getWidth();
                height = PhotoPageImageItem.this.mDataItem.getHeight();
                if (!TextUtils.isEmpty(PhotoPageImageItem.this.mDataItem.getOriginalPath()) && Math.max(width, height) >= nexProject.kAutoThemeClipDuration && Math.min(width, height) >= 4000) {
                    z = true;
                }
                this.mIsHdPhoto = z;
            }
            PhotoPageImageItem.this.mPhotoView.setHDState(width, height, this.mIsHdPhoto);
            if (this.mIsHdPhoto) {
                initHdTextView();
                PhotoPageImageItem.this.mPhotoView.setOnScaleStageChangedListener(this.mOnScaleStageChangedListener);
                return;
            }
            PhotoPageImageItem.this.mPhotoView.setOnScaleStageChangedListener(null);
        }

        private void initHdTextView() {
            if (this.mDefinitionStateView == null) {
                LayoutInflater.from(PhotoPageImageItem.this.getContext()).inflate(R.layout.photo_higher_definition_hint_view, PhotoPageImageItem.this, true);
                this.mDefinitionStateView = (TextView) PhotoPageImageItem.this.findViewById(R.id.hd_text_view);
                this.mDefinitionStateView.setVisibility(8);
                this.mParams = (MarginLayoutParams) this.mDefinitionStateView.getLayoutParams();
                this.mDefaultMarginTop = PhotoPageImageItem.this.getResources().getDimensionPixelSize(R.dimen.higher_definition_state_margin_top);
                this.mParams.setMargins(0, this.mDefaultMarginTop + this.mCurActionBarHeight, 0, 0);
                ((LayoutParams) this.mParams).addRule(14, -1);
                this.mDefinitionStateView.requestLayout();
            }
        }

        public void onUnSelected() {
            release();
        }

        public void release() {
            if (this.mDefinitionStateView != null) {
                this.mDefinitionStateView.clearAnimation();
                this.mDefinitionStateView.setVisibility(8);
            }
            this.mHandler.removeCallbacks(this.mHideDefinitionRunnable);
            if (this.mIsHdPhoto) {
                BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_hd_satisfy_count");
                if (this.mIsEverEnterHd) {
                    BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_hd_enter_count");
                }
            }
            this.mIsHdPhoto = false;
            this.mHasHdViewDisplayed = false;
            this.mIsEverEnterHd = false;
            PhotoPageImageItem.this.mPhotoView.setOnScaleStageChangedListener(null);
        }

        private void changeToMidScale() {
            if (this.mDefinitionStateView != null) {
                this.mDefinitionStateView.setText(R.string.double_tap_to_higher_definition);
                showDefinitionText();
            }
        }

        private void changeToHigherDefinition() {
            if (!this.mHasHdViewDisplayed && this.mDefinitionStateView != null) {
                this.mDefinitionStateView.setText(PhotoPageImageItem.this.getResources().getString(R.string.is_higher_definition));
                this.mHasHdViewDisplayed = true;
                this.mIsEverEnterHd = true;
                showDefinitionText();
            }
        }

        private void exitHigherDefinition() {
            this.mHasHdViewDisplayed = false;
            hideDefinitionText();
        }

        private void showDefinitionText() {
            if (this.mDefinitionStateView != null) {
                this.mDefinitionStateView.setVisibility(0);
                this.mHandler.removeCallbacks(this.mHideDefinitionRunnable);
                this.mHandler.postDelayed(this.mHideDefinitionRunnable, 5000);
            }
        }

        private void hideDefinitionText() {
            if (this.mDefinitionStateView != null) {
                this.mDefinitionStateView.setVisibility(8);
            }
        }

        private void translateByActionBarVisibility(int height) {
            if (this.mDefinitionStateView != null) {
                final int marginTop = this.mDefaultMarginTop + this.mCurActionBarHeight;
                if (this.mDefinitionStateView.getVisibility() == 0) {
                    TranslateAnimation anim = new TranslateAnimation(0.0f, 0.0f, 0.0f, (float) height);
                    anim.setDuration((long) PhotoPageImageItem.this.getResources().getInteger(17694721));
                    anim.setInterpolator(new DecelerateInterpolator());
                    anim.setFillAfter(true);
                    anim.setAnimationListener(new AnimationListener() {
                        public void onAnimationStart(Animation animation) {
                        }

                        public void onAnimationEnd(Animation animation) {
                            HigherDefinitionManager.this.mDefinitionStateView.clearAnimation();
                            HigherDefinitionManager.this.mParams.setMargins(0, marginTop, 0, 0);
                            HigherDefinitionManager.this.mDefinitionStateView.requestLayout();
                        }

                        public void onAnimationRepeat(Animation animation) {
                        }
                    });
                    this.mDefinitionStateView.startAnimation(anim);
                    return;
                }
                this.mParams.setMargins(0, marginTop, 0, 0);
                this.mDefinitionStateView.requestLayout();
            }
        }

        public void onActionBarVisibleChanged(Boolean visible, int actionBarHeight) {
            this.mCurActionBarHeight = visible.booleanValue() ? actionBarHeight : 0;
            if (!this.mIsHdPhoto) {
                return;
            }
            if (visible.booleanValue()) {
                translateByActionBarVisibility(actionBarHeight);
            } else {
                translateByActionBarVisibility(-actionBarHeight);
            }
        }
    }

    protected class ImageCheckManager extends CheckManager {
        private OnCheckedChangeListener mCheckStateListener = new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                boolean z = false;
                if (isChecked) {
                    buttonView.setEnabled(false);
                } else {
                    buttonView.setText(R.string.fast_share_auto_render);
                }
                PhotoView photoView = PhotoPageImageItem.this.mPhotoView;
                if (!(isChecked || PhotoPageImageItem.this.isMediaInProcessing())) {
                    z = true;
                }
                photoView.setRegionDecodeEnable(z);
                PhotoPageImageItem.this.refreshItem();
            }
        };
        ImageLoadingListener mPostLoadListener = new ImageLoadingListener() {
            public void onLoadingStarted(String imageUri, View view) {
            }

            public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
            }

            public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                if (PhotoPageImageItem.this.mAutoRenderer != null) {
                    PhotoPageImageItem.this.mAutoRenderer.render(((BitmapDrawable) PhotoPageImageItem.this.mPhotoView.getDrawable()).getBitmap(), ImageCheckManager.this.mRenderCallback);
                } else {
                    com.miui.gallery.util.Log.w("PhotoPageImageItem", "PGEditCoreAPI released");
                }
            }

            public void onLoadingCancelled(String imageUri, View view) {
            }
        };
        private Callback mRenderCallback = new Callback() {
            public void onDone(Bitmap bitmap) {
                if (PhotoPageImageItem.this.mCheckManager != null) {
                    ImageCheckManager manager = PhotoPageImageItem.this.mCheckManager;
                    if (PhotoPageImageItem.this.isAttachedToWindow()) {
                        PhotoPageImageItem.this.mPhotoView.setImageBitmap(bitmap, true);
                        ImageCheckManager.this.ensureInflated();
                        manager.mRenderCheckBox.setText(R.string.fast_share_auto_render_finish);
                    }
                    manager.mRenderCheckBox.setEnabled(true);
                }
            }

            public void onError(int code, Object raw) {
                if (PhotoPageImageItem.this.mCheckManager != null) {
                    PhotoPageImageItem.this.mCheckManager.mRenderCheckBox.setEnabled(true);
                }
            }
        };
        protected CheckBox mRenderCheckBox;
        protected ChoiceModeInterface mRenderInterface;
        protected View mSimilarBestMark;

        protected ImageCheckManager() {
            super();
        }

        protected void ensureInflated() {
            super.ensureInflated();
            this.mSimilarBestMark = PhotoPageImageItem.this.findViewById(R.id.similar_best_mark);
            if (PhotoPageImageItem.this.mDataItem == null || !ImageFeatureCacheManager.getInstance().isBestImage(PhotoPageImageItem.this.mDataItem.getKey(), false)) {
                this.mSimilarBestMark.setVisibility(8);
            } else {
                this.mSimilarBestMark.setVisibility(0);
            }
            this.mRenderCheckBox = (CheckBox) PhotoPageImageItem.this.findViewById(R.id.check_render);
            this.mRenderCheckBox.setClickable(false);
            this.mRenderCheckBox.setFocusable(false);
        }

        protected void dispatchInterfaces(ChoiceModeInterface... interfaces) {
            super.dispatchInterfaces(interfaces);
            ChoiceModeInterface choiceModeInterface = (interfaces == null || interfaces.length <= 2) ? null : interfaces[2];
            this.mRenderInterface = choiceModeInterface;
        }

        public void startCheck(ChoiceModeInterface... originInterfaces) {
            PhotoPageImageItem.this.mAutoRenderer = new AutoRenderer(PhotoPageImageItem.this.getContext());
            super.startCheck(originInterfaces);
            this.mCheckRenderLayout.setOnClickListener(this);
        }

        public void endCheck() {
            super.endCheck();
            this.mRenderCheckBox.setOnCheckedChangeListener(null);
            this.mRenderCheckBox.setChecked(false);
            this.mRenderCheckBox.setText(R.string.fast_share_auto_render);
            PhotoPageImageItem.this.releaseRenderer();
        }

        public void refreshCheck(ChoiceModeInterface... interfaces) {
            super.refreshCheck(interfaces);
            if (PhotoPageImageItem.this.mAutoRenderer != null) {
                this.mCheckRenderLayout.setOnClickListener(this);
                this.mRenderCheckBox.setOnCheckedChangeListener(this.mCheckStateListener);
                this.mRenderCheckBox.setVisibility(0);
                if (this.mRenderInterface == null || PhotoPageImageItem.this.mDataItem == null) {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "renderInterface[%s] or data[%s] not prepared", this.mRenderInterface == null ? "NULL" : this.mRenderInterface, PhotoPageImageItem.this.mDataItem == null ? "NULL" : PhotoPageImageItem.this.mDataItem);
                    return;
                } else {
                    setCheckBoxState(this.mRenderCheckBox, this.mRenderInterface.isChecked(PhotoPageImageItem.this.mDataItem.getKey()));
                    return;
                }
            }
            this.mCheckRenderLayout.setOnClickListener(null);
            this.mRenderCheckBox.setOnCheckedChangeListener(null);
            this.mRenderCheckBox.setVisibility(8);
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.check_render_layout /*2131886596*/:
                    if (PhotoPageImageItem.this.isRenderable() && this.mRenderCheckBox.isEnabled()) {
                        toggleCheckBox(this.mRenderCheckBox, this.mRenderInterface);
                        return;
                    }
                    return;
                default:
                    super.onClick(v);
                    return;
            }
        }

        private boolean renderChecked() {
            return (this.mRenderInterface == null || PhotoPageImageItem.this.mDataItem == null || !this.mRenderInterface.isChecked(PhotoPageImageItem.this.mDataItem.getKey())) ? false : true;
        }
    }

    private class ImageDownloadManager extends DownloadManager {
        private ImageDownloadManager() {
            super();
        }

        /* synthetic */ ImageDownloadManager(PhotoPageImageItem x0, AnonymousClass1 x1) {
            this();
        }

        protected void doOnLoaded(DownloadType type, Bitmap loadedImage) {
            super.doOnLoaded(type, loadedImage);
            if (PhotoPageImageItem.this.mCheckManager != null) {
                ImageCheckManager manager = PhotoPageImageItem.this.mCheckManager;
                if (manager.renderChecked()) {
                    PhotoPageImageItem.this.mAutoRenderer.render(((BitmapDrawable) PhotoPageImageItem.this.mPhotoView.getDrawable()).getBitmap(), manager.mRenderCallback);
                }
            }
        }

        protected void doOnDownloaded(DownloadType type, String filePath) {
            super.doOnDownloaded(type, filePath);
            if (!PhotoPageImageItem.this.isPagerSelected()) {
                return;
            }
            if (CloudImageLoader.getInstance().isOrigin(type)) {
                PhotoPageImageItem.this.mRegionManager.onSelected();
                PhotoPageImageItem.this.mEchoManager.onSelected();
                PhotoPageImageItem.this.mHigherDefinitionManager.onSelected();
                return;
            }
            PhotoPageImageItem.this.mRegionManager.onSelected();
        }
    }

    private class ImageProcessingManager extends AbsPhotoRectAwareManager {
        private float mAdjustX;
        private float mAdjustY;
        private Animator mAnimator;
        private CircleStrokeProgressBar mDeterminateProgress;
        private boolean mHasShowProgress;
        private ProgressBar mIndeterminateProgress;
        private View mLoadingView;
        private Runnable mNextQueryRunnable;
        private ProcessingMedia mProcessingMedia;
        private QueryProgressAsyncTask mQueryTask;

        private final class QueryProgressAsyncTask extends AsyncTask<Void, Void, Integer> {
            private final Context mContext;
            private final Uri mUri;

            QueryProgressAsyncTask(Context context, Uri uri) {
                this.mContext = context;
                this.mUri = uri;
            }

            protected Integer doInBackground(Void... voids) {
                Integer num = null;
                if (!isCancelled()) {
                    Cursor cursor = this.mContext.getContentResolver().query(this.mUri, new String[]{"progress_percentage"}, null, null, null);
                    if (!isCancelled()) {
                        if (cursor != null) {
                            try {
                                if (cursor.moveToFirst()) {
                                    num = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("progress_percentage")));
                                } else {
                                    if (PhotoPageImageItem.DEBUG_ENABLE) {
                                        com.miui.gallery.util.Log.d("PhotoPageImageItem", "Failed to find item for: %s", this.mUri);
                                    }
                                    cursor.close();
                                }
                            } finally {
                                cursor.close();
                            }
                        } else if (PhotoPageImageItem.DEBUG_ENABLE) {
                            com.miui.gallery.util.Log.d("PhotoPageImageItem", "Failed to obtain cursor for: %s", this.mUri);
                        }
                    }
                }
                return num;
            }

            protected void onPostExecute(Integer progressPercentage) {
                if (!isCancelled() && progressPercentage != null) {
                    ImageProcessingManager.this.onProgressPercentageUpdated(this.mUri, progressPercentage.intValue());
                }
            }
        }

        private ImageProcessingManager() {
            super();
        }

        /* synthetic */ ImageProcessingManager(PhotoPageImageItem x0, AnonymousClass1 x1) {
            this();
        }

        protected void ensureInflated() {
            if (this.mLoadingView == null) {
                this.mLoadingView = LayoutInflater.from(PhotoPageImageItem.this.getContext()).inflate(R.layout.photo_page_processing_progress, PhotoPageImageItem.this, false);
                LayoutParams lp = new LayoutParams(-2, -2);
                lp.addRule(10);
                lp.addRule(11);
                this.mDeterminateProgress = (CircleStrokeProgressBar) this.mLoadingView.findViewById(R.id.determinate_progress_bar);
                this.mDeterminateProgress.setDrawablesForLevels(new int[]{R.drawable.photo_download_progress_bg}, new int[]{R.drawable.photo_download_progress_second}, null);
                this.mDeterminateProgress.setMiddleStrokeColors(new int[]{PhotoPageImageItem.this.getResources().getColor(R.color.download_progress_shadow_color)}, (float) PhotoPageImageItem.this.getResources().getDimensionPixelSize(R.dimen.download_progress_shadow_radius_big));
                this.mDeterminateProgress.setVisibility(8);
                this.mIndeterminateProgress = (ProgressBar) this.mLoadingView.findViewById(R.id.indeterminate_progress_bar);
                this.mIndeterminateProgress.setVisibility(8);
                PhotoPageImageItem.this.addView(this.mLoadingView, lp);
            }
        }

        protected int getVerticalMargin() {
            if (this.mMargin == 0) {
                this.mMargin = PhotoPageImageItem.this.getContext().getResources().getDimensionPixelSize(R.dimen.process_progress_margin);
            }
            return this.mMargin;
        }

        private void updateProgress() {
            if (this.mProcessingMedia != null) {
                showLoading(false);
            } else {
                hideLoading(true);
            }
        }

        public void setProcessingMedia(ProcessingMedia processingMedia) {
            this.mProcessingMedia = processingMedia;
            if (PhotoPageImageItem.this.isPagerSelected()) {
                updateProgress();
            }
        }

        public ProcessingMedia getProcessingMedia() {
            return this.mProcessingMedia;
        }

        public void onSelected() {
            super.onSelected();
            updateProgress();
        }

        public void onUnSelected() {
            cancelQueryTask();
            if (this.mNextQueryRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mNextQueryRunnable);
            }
            hideLoading(false);
            super.onUnSelected();
        }

        private boolean isMediaInProcessing() {
            return this.mProcessingMedia != null;
        }

        protected boolean needShowProcessingView() {
            return (PhotoPageImageItem.this.isAnimEntering() || PhotoPageImageItem.this.isAnimExiting() || !isMediaInProcessing() || isRotating() || isDrawableDisplayInside()) ? false : true;
        }

        protected void changeVisibilityForSpecialScene() {
            if (!needShowProcessingView()) {
                hideLoading(true);
            } else if (PhotoPageImageItem.this.isPagerSelected()) {
                updateProgress();
            }
        }

        public void adjustLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            if (this.mHasShowProgress && this.mLoadingView != null && this.mLoadingView.getVisibility() == 0) {
                doAdjustLocation(isActionBarVisible, imageRect, anim);
            }
        }

        private void endAnim() {
            if (this.mAnimator != null && this.mAnimator.isRunning()) {
                this.mAnimator.end();
                this.mAnimator = null;
            }
        }

        private void doAdjustLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            float imageEdgeX;
            endAnim();
            float actionBarEdge = isActionBarVisible ? (float) PhotoPageImageItem.this.getActionBarHeight() : 0.0f;
            float imageEdgeY = imageRect != null ? imageRect.top : 0.0f;
            if (imageRect != null) {
                imageEdgeX = imageRect.right;
            } else {
                imageEdgeX = (float) PhotoPageImageItem.this.getWidth();
            }
            float tarY = Math.min(getMaxTranslationY(), Math.max(actionBarEdge, imageEdgeY) + ((float) getVerticalMargin()));
            float tarX = 0.0f - Math.min(getMaxTranslationX(), Math.max(((float) PhotoPageImageItem.this.getWidth()) - imageEdgeX, 0.0f) + ((float) getHorizontalMargin()));
            if (this.mAdjustY != tarY || this.mAdjustX != tarX) {
                this.mAdjustX = tarX;
                this.mAdjustY = tarY;
                if (anim) {
                    AnimatorSet set = new AnimatorSet();
                    Animator animatorY = ObjectAnimator.ofFloat(this.mLoadingView, "TranslationY", new float[]{this.mLoadingView.getTranslationY(), tarY});
                    Animator animatorX = ObjectAnimator.ofFloat(this.mLoadingView, "TranslationX", new float[]{this.mLoadingView.getTranslationX(), tarX});
                    set.playTogether(new Animator[]{animatorX, animatorY});
                    set.setDuration((long) getAdjustAnimDuration(isActionBarVisible));
                    set.setInterpolator(getAdjustAnimInterpolator(isActionBarVisible));
                    this.mAnimator = set;
                    this.mAnimator.start();
                    return;
                }
                this.mLoadingView.setTranslationY(tarY);
                this.mLoadingView.setTranslationX(tarX);
            }
        }

        private void showLoading(boolean anim) {
            if (needShowProcessingView()) {
                ensureInflated();
                this.mHasShowProgress = true;
                ProcessingMetadata process = this.mProcessingMedia.getProcessingMetadata();
                if (process != null) {
                    if (process.getProgressStatus() == ProgressStatus.DETERMINATE) {
                        this.mIndeterminateProgress.setVisibility(8);
                        this.mDeterminateProgress.setVisibility(0);
                        this.mDeterminateProgress.setMax(100);
                        this.mDeterminateProgress.setProgress(process.getProgressPercentage());
                        fetchNext();
                    } else {
                        this.mDeterminateProgress.setVisibility(8);
                        this.mIndeterminateProgress.setVisibility(0);
                    }
                    this.mLoadingView.clearAnimation();
                    this.mLoadingView.setVisibility(0);
                    doAdjustLocation(PhotoPageImageItem.this.isActionBarVisible(), PhotoPageImageItem.this.mPhotoView.getDisplayRect(), false);
                    if (anim) {
                        this.mLoadingView.startAnimation(generateShowAnimation());
                        return;
                    }
                    return;
                }
                this.mLoadingView.setVisibility(8);
            }
        }

        private void hideLoading(boolean anim) {
            if (this.mLoadingView != null && this.mLoadingView.getVisibility() != 8) {
                this.mLoadingView.setVisibility(8);
                this.mLoadingView.clearAnimation();
                if (anim) {
                    Animation animation = generateHideAnimation();
                    animation.setAnimationListener(new AnimationListenerAdapter() {
                        public void onAnimationEnd(Animation animation) {
                            if (ImageProcessingManager.this.mLoadingView != null) {
                                ImageProcessingManager.this.mLoadingView.setVisibility(8);
                            }
                        }
                    });
                    this.mLoadingView.startAnimation(animation);
                    return;
                }
                this.mLoadingView.setVisibility(8);
            }
        }

        protected Animation generateHideAnimation() {
            Animation alpha = new AlphaAnimation(1.0f, 0.0f);
            alpha.setInterpolator(new CubicEaseOutInterpolator());
            alpha.setDuration(350);
            alpha.setStartOffset(50);
            return alpha;
        }

        private void onProgressPercentageUpdated(Uri uri, int progressPercentage) {
            if (PhotoPageImageItem.DEBUG_ENABLE) {
                com.miui.gallery.util.Log.d("PhotoPageImageItem", "Updating progress for: %s to: %d", uri, Integer.valueOf(progressPercentage));
            }
            if (this.mDeterminateProgress != null) {
                this.mDeterminateProgress.setProgress(progressPercentage);
            }
            if (progressPercentage < 100) {
                ThreadManager.getMainHandler().postDelayed(getNextQueryRunnable(), 100);
            }
        }

        private Runnable getNextQueryRunnable() {
            if (this.mNextQueryRunnable == null) {
                this.mNextQueryRunnable = new Runnable() {
                    public void run() {
                        ImageProcessingManager.this.fetchNext();
                    }
                };
            }
            return this.mNextQueryRunnable;
        }

        private void cancelQueryTask() {
            if (this.mQueryTask != null) {
                this.mQueryTask.cancel(true);
                this.mQueryTask = null;
            }
        }

        private void fetchNext() {
            cancelQueryTask();
            this.mQueryTask = new QueryProgressAsyncTask(PhotoPageImageItem.this.getContext(), this.mProcessingMedia.getUri());
            this.mQueryTask.execute(new Void[0]);
        }
    }

    private class MotionPhotoManager {
        private boolean mAutoPlay;
        private Runnable mAutoStopRunnable;
        private boolean mHasPerformedLongPress;
        private boolean mHasTransition;
        private LayoutParams mLayoutParams;
        private boolean mNeedHapticFeedback;
        private OnCompletionListener mOnCompletionListener;
        private OnErrorListener mOnErrorListener;
        private OnPreparedListener mOnPreparedListener;
        private CheckForLongPress mPendingCheckForLongPress;
        private boolean mPendingStop;
        private boolean mPlayable;
        private boolean mPressed;
        private Runnable mRemoveRunnable;
        private Runnable mStartRunnable;
        private boolean mStarted;
        private GalleryVideoView mVideoView;

        private final class CheckForLongPress implements Runnable {
            private CheckForLongPress() {
            }

            /* synthetic */ CheckForLongPress(MotionPhotoManager x0, AnonymousClass1 x1) {
                this();
            }

            public void run() {
                if (MotionPhotoManager.this.mPressed && PhotoPageImageItem.this.getParent() != null && !PhotoPageImageItem.this.mCheckManager.inAction() && !PhotoPageImageItem.this.mPhotoView.isGestureOperating() && PhotoPageImageItem.this.mPhotoView.getScale() >= 1.0f) {
                    MotionPhotoManager.this.performLongClick();
                    MotionPhotoManager.this.mHasPerformedLongPress = true;
                }
            }
        }

        private MotionPhotoManager() {
            this.mStarted = false;
            this.mPendingStop = false;
            this.mOnErrorListener = new OnErrorListener() {
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    com.miui.gallery.util.Log.w("PhotoPageImageItem", "MotionPhoto play error %d %d", Integer.valueOf(what), Integer.valueOf(extra));
                    MotionPhotoManager.this.removeVideoView("error");
                    return true;
                }
            };
            this.mOnCompletionListener = new OnCompletionListener() {
                public void onCompletion(MediaPlayer mp) {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto play complete");
                    MotionPhotoManager.this.hideVideoView();
                }
            };
            this.mOnPreparedListener = new OnPreparedListener() {
                public void onPrepared(MediaPlayer mp) {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto play prepared");
                    if (MotionPhotoManager.this.mVideoView != null && !MotionPhotoManager.this.mPendingStop) {
                        MotionPhotoManager.this.mVideoView.start();
                        MotionPhotoManager.this.mVideoView.pause();
                        PhotoPageImageItem.this.mPhotoView.setVisibility(8);
                        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                        alphaAnimation.setStartOffset(150);
                        alphaAnimation.setDuration(500);
                        alphaAnimation.setInterpolator(new SineEaseInOutInterpolator());
                        PhotoPageImageItem.this.mPhotoView.startAnimation(alphaAnimation);
                        MotionPhotoManager.this.mVideoView.postDelayed(MotionPhotoManager.this.mStartRunnable, 150);
                    }
                }
            };
            this.mStartRunnable = new Runnable() {
                public void run() {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto start play");
                    if (MotionPhotoManager.this.mVideoView != null) {
                        MotionPhotoManager.this.mStarted = true;
                        MotionPhotoManager.this.mVideoView.start();
                        if (MotionPhotoManager.this.mNeedHapticFeedback) {
                            PhotoPageImageItem.this.performHapticFeedback(1);
                        }
                    }
                }
            };
            this.mRemoveRunnable = new Runnable() {
                public void run() {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto delayRemove");
                    MotionPhotoManager.this.removeVideoView("delayRemove");
                }
            };
            this.mAutoStopRunnable = new Runnable() {
                public void run() {
                    com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto autoStop");
                    MotionPhotoManager.this.stopPlayback();
                }
            };
        }

        /* synthetic */ MotionPhotoManager(PhotoPageImageItem x0, AnonymousClass1 x1) {
            this();
        }

        public void onSelected(boolean resume, boolean enter, boolean init) {
        }

        public void onActionBarOperationClick() {
            com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto onActionBarClick");
            if (isPlayRequested() && !this.mAutoPlay) {
                stopPlayback();
            } else if (startPlay(false, false)) {
                BaseSamplingStatHelper.recordCountEvent("motion_photo", "motion_photo_play_action_bar");
            }
        }

        public void onUnSelected() {
            removeVideoView("unSelected");
        }

        public void onResume() {
            this.mHasTransition = false;
        }

        public void onPause() {
            removeVideoView("onPause");
        }

        public void onActivityTransition() {
            this.mHasTransition = true;
            removeVideoView("onTransition");
        }

        public void onConfigurationChanged() {
            removeVideoView("configChanged");
        }

        public void onPageScrollDragging() {
            if (this.mVideoView != null) {
                com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto pause onDragging");
                this.mPendingStop = true;
                if (this.mVideoView.isPlaying()) {
                    this.mVideoView.pause();
                }
                PhotoPageImageItem.this.mPhotoView.removeCallbacks(this.mAutoStopRunnable);
                this.mVideoView.removeCallbacks(this.mStartRunnable);
                this.mVideoView.removeCallbacks(this.mRemoveRunnable);
            }
        }

        public void onPageScrollIdle() {
            if (this.mPendingStop && this.mVideoView != null) {
                com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto hide onIdle");
                if (this.mStarted) {
                    hideVideoView();
                } else {
                    removeVideoView("onIdle");
                }
            }
            this.mPendingStop = false;
        }

        public void onMatrixChanged() {
            removeVideoView("matrixChanged");
        }

        private boolean isPlayRequested() {
            return this.mVideoView != null;
        }

        private boolean startPlay(boolean autoPlay, boolean needFeedback) {
            boolean z = true;
            if (PhotoPageImageItem.this.isPaused() || this.mHasTransition || PhotoPageImageItem.this.mCheckManager.inAction() || !isItemValid()) {
                return false;
            }
            if (autoPlay) {
                if (isPlayRequested()) {
                    return false;
                }
                return addVideoView(true);
            } else if (this.mVideoView == null || !this.mVideoView.isPlaying()) {
                removeVideoView("MotionPhoto start play");
                boolean result = addVideoView(false);
                if (!(needFeedback && result)) {
                    z = false;
                }
                this.mNeedHapticFeedback = z;
                return result;
            } else {
                com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto cancel auto stop");
                this.mVideoView.removeCallbacks(this.mAutoStopRunnable);
                this.mVideoView.setVolume(1.0f);
                this.mVideoView.requestAudioFocus(2);
                if (needFeedback) {
                    PhotoPageImageItem.this.performHapticFeedback(1);
                }
                this.mAutoPlay = false;
                return true;
            }
        }

        private boolean addVideoView(boolean autoPlay) {
            if (!isItemValid() || isPlayRequested()) {
                return false;
            }
            com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto addVideoView");
            this.mVideoView = new GalleryVideoView(PhotoPageImageItem.this.getContext());
            PhotoPageImageItem.this.mPhotoView.setInterceptTouch(true);
            this.mNeedHapticFeedback = false;
            this.mAutoPlay = autoPlay;
            this.mStarted = false;
            if (this.mLayoutParams == null) {
                this.mLayoutParams = new LayoutParams(-1, -1);
                this.mLayoutParams.addRule(13);
            }
            this.mVideoView.setOnCompletionListener(this.mOnCompletionListener);
            this.mVideoView.setOnErrorListener(this.mOnErrorListener);
            this.mVideoView.setOnPreparedListener(this.mOnPreparedListener);
            if (autoPlay) {
                this.mVideoView.setVolume(0.0f);
                this.mVideoView.setAudioFocusRequest(0);
            } else {
                this.mVideoView.setVolume(1.0f);
                this.mVideoView.setAudioFocusRequest(2);
            }
            Drawable drawable = PhotoPageImageItem.this.mPhotoView.getDrawable();
            if (drawable != null) {
                RectF viewRect = new RectF(0.0f, 0.0f, (float) PhotoPageImageItem.this.mPhotoView.getWidth(), (float) PhotoPageImageItem.this.mPhotoView.getHeight());
                RectF imageRect = new RectF(0.0f, 0.0f, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
                Matrix displayMatrix = PhotoPageImageItem.this.mPhotoView.getDisplayMatrix();
                RectF videoRect = new RectF(imageRect);
                displayMatrix.mapRect(videoRect);
                videoRect.setIntersect(videoRect, viewRect);
                videoRect.offset(-videoRect.left, -videoRect.top);
                Matrix matrix = new Matrix();
                matrix.setRectToRect(videoRect, imageRect, ScaleToFit.FILL);
                matrix.postConcat(displayMatrix);
                matrix.postTranslate(videoRect.centerX() - viewRect.centerX(), videoRect.centerY() - viewRect.centerY());
                this.mVideoView.setTransform(matrix);
                this.mLayoutParams.width = (int) videoRect.width();
                this.mLayoutParams.height = (int) videoRect.height();
            } else {
                this.mVideoView.setTransform(null);
                this.mLayoutParams.width = -1;
                this.mLayoutParams.height = -1;
            }
            this.mVideoView.setVideoFilePath(PhotoPageImageItem.this.mDataItem.getOriginalPath(), PhotoPageImageItem.this.mDataItem.getMotionOffset());
            PhotoPageImageItem.this.addView(this.mVideoView, 0, this.mLayoutParams);
            if (autoPlay) {
                PhotoPageImageItem.this.mPhotoView.postDelayed(this.mAutoStopRunnable, 750);
            }
            return true;
        }

        private void hideVideoView() {
            com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto hideVideoView");
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(500);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setInterpolator(new SineEaseInOutInterpolator());
            PhotoPageImageItem.this.mPhotoView.startAnimation(alphaAnimation);
            PhotoPageImageItem.this.mPhotoView.removeCallbacks(this.mAutoStopRunnable);
            if (this.mVideoView != null) {
                this.mVideoView.removeCallbacks(this.mRemoveRunnable);
                this.mVideoView.postDelayed(this.mRemoveRunnable, 500);
            }
        }

        private void removeVideoView(String tag) {
            if (this.mVideoView != null) {
                com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto removeVideoView %s", (Object) tag);
                this.mPendingStop = false;
                if (this.mVideoView.isPlaying()) {
                    this.mVideoView.stopPlayback();
                }
                this.mVideoView.setOnCompletionListener(null);
                this.mVideoView.setOnErrorListener(null);
                this.mVideoView.setOnPreparedListener(null);
                this.mVideoView.removeCallbacks(this.mRemoveRunnable);
                this.mVideoView.removeCallbacks(this.mStartRunnable);
                PhotoPageImageItem.this.removeView(this.mVideoView);
                this.mVideoView = null;
                PhotoPageImageItem.this.mPhotoView.clearAnimation();
                PhotoPageImageItem.this.mPhotoView.setVisibility(0);
                PhotoPageImageItem.this.mPhotoView.setInterceptTouch(false);
                PhotoPageImageItem.this.mPhotoView.removeCallbacks(this.mAutoStopRunnable);
            }
        }

        private void stopPlayback() {
            com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto stopPlayback");
            if (this.mVideoView == null || !this.mVideoView.isPlaying()) {
                removeVideoView("stopPlayback");
                return;
            }
            this.mVideoView.stopPlayback();
            hideVideoView();
        }

        private boolean isItemValid() {
            return ExtraPhotoSDK.isDeviceSupportMotionPhoto(PhotoPageImageItem.this.getContext()) && PhotoPageImageItem.this.mDataItem != null && !TextUtils.isEmpty(PhotoPageImageItem.this.mDataItem.getOriginalPath()) && PhotoPageImageItem.this.mDataItem.isMotionPhoto() && PhotoPageImageItem.this.mDataItem.getMotionOffset() > 0;
        }

        public void release() {
            this.mHasTransition = false;
            removeVideoView(BuildConfig.BUILD_TYPE);
        }

        public boolean onTouch(MotionEvent event) {
            if (event.getAction() == 0) {
                this.mPlayable = isItemValid();
            }
            if (!this.mPlayable) {
                return false;
            }
            switch (event.getAction()) {
                case 0:
                    this.mHasPerformedLongPress = false;
                    this.mPressed = true;
                    checkForLongClick();
                    return true;
                case 1:
                case 3:
                    this.mPressed = false;
                    if (this.mHasPerformedLongPress) {
                        com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto long press cancel");
                        stopPlayback();
                    }
                    this.mHasPerformedLongPress = false;
                    removeLongPressCallback();
                    break;
            }
            return true;
        }

        private void checkForLongClick() {
            if (this.mPendingCheckForLongPress == null) {
                this.mPendingCheckForLongPress = new CheckForLongPress(this, null);
            }
            PhotoPageImageItem.this.postDelayed(this.mPendingCheckForLongPress, 300);
        }

        private void removeLongPressCallback() {
            if (this.mPendingCheckForLongPress != null) {
                PhotoPageImageItem.this.removeCallbacks(this.mPendingCheckForLongPress);
            }
        }

        private void performLongClick() {
            com.miui.gallery.util.Log.d("PhotoPageImageItem", "MotionPhoto performLongClick");
            if (startPlay(false, true)) {
                BaseSamplingStatHelper.recordCountEvent("motion_photo", "motion_photo_play_press");
            }
        }
    }

    private class RegionDecoderManager implements FutureListener<TileBitProvider> {
        private TileBitProvider mDecoderProvider;
        private String mFileKey;
        private Future mRegionCreateFuture;

        private class RegionCreateJob implements Job<TileBitProvider> {
            private String mLocalPath;
            private byte[] mSecretKey;

            public RegionCreateJob(String localPath, byte[] secretKey) {
                this.mLocalPath = localPath;
                this.mSecretKey = secretKey;
            }

            public TileBitProvider run(JobContext jc) {
                if (FileUtils.isFileExist(this.mLocalPath) && !jc.isCancelled()) {
                    Options options = new Options();
                    options.inJustDecodeBounds = true;
                    BitmapUtils.safeDecodeBitmap(this.mLocalPath, options, this.mSecretKey);
                    if (!TileConfig.needUseTile(options.outWidth, options.outHeight)) {
                        com.miui.gallery.util.Log.i("PhotoPageImageItem", "not need use tile [width %d, height %d]", Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
                    } else if (!jc.isCancelled()) {
                        TileBitProvider tileBitProviderRegion = new TileBitProviderRegion(this.mLocalPath, this.mSecretKey);
                        if (jc.isCancelled()) {
                            tileBitProviderRegion.release();
                            RegionDecoderManager.this.mFileKey = null;
                        } else {
                            RegionDecoderManager.this.mFileKey = RegionDecoderManager.this.genFileKey(this.mLocalPath, FileUtils.getFileSize(this.mLocalPath));
                            return tileBitProviderRegion;
                        }
                    }
                }
                return null;
            }
        }

        private class RegionReleaseJob implements Job<Void> {
            private TileBitProvider mToBeReleasedProvider;

            public RegionReleaseJob(TileBitProvider provider) {
                this.mToBeReleasedProvider = provider;
            }

            public Void run(JobContext jc) {
                this.mToBeReleasedProvider.release();
                com.miui.gallery.util.Log.i("PhotoPageImageItem", "release region");
                this.mToBeReleasedProvider = null;
                return null;
            }
        }

        private RegionDecoderManager() {
        }

        /* synthetic */ RegionDecoderManager(PhotoPageImageItem x0, AnonymousClass1 x1) {
            this();
        }

        private boolean isFileChanged() {
            if (PhotoPageImageItem.this.mDataItem == null) {
                return true;
            }
            String filePath = PhotoPageImageItem.this.mDataItem.getPathDisplayBetter();
            long fileSize = PhotoPageImageItem.this.mDataItem.getDisplayBetterFileSize();
            if (TextUtils.isEmpty(filePath) || !TextUtils.equals(genFileKey(filePath, fileSize), this.mFileKey)) {
                return true;
            }
            return false;
        }

        public void resetRegionDecoderIfNeeded() {
            if (isFileChanged()) {
                PhotoPageImageItem.this.post(new Runnable() {
                    public void run() {
                        RegionDecoderManager.this.create();
                    }
                });
            }
        }

        public void onSelected() {
            create();
        }

        private void create() {
            release();
            if (canSupportRegion()) {
                this.mRegionCreateFuture = ThreadManager.getMiscPool().submit(new RegionCreateJob(PhotoPageImageItem.this.mDataItem.getPathDisplayBetter(), PhotoPageImageItem.this.mDataItem.getSecretKey()), this);
            }
        }

        private void release() {
            if (this.mRegionCreateFuture != null) {
                this.mRegionCreateFuture.cancel();
                this.mRegionCreateFuture = null;
            }
            if (this.mDecoderProvider != null) {
                ThreadManager.getMiscPool().submit(new RegionReleaseJob(this.mDecoderProvider));
                this.mDecoderProvider = null;
            }
            PhotoPageImageItem.this.mPhotoView.releaseTile();
        }

        public void onUnSelected() {
            release();
        }

        private boolean canSupportRegion() {
            return PhotoPageImageItem.this.mIsSupportRegion && PhotoPageImageItem.this.mDataItem != null && BaseFileMimeUtil.isImageFromMimeType(PhotoPageImageItem.this.mDataItem.getMimeType()) && !BaseFileMimeUtil.isGifFromMimeType(PhotoPageImageItem.this.mDataItem.getMimeType());
        }

        public void onFutureDone(final Future<TileBitProvider> future) {
            final TileBitProvider decoderProvider = (TileBitProvider) future.get();
            if (decoderProvider == null) {
                return;
            }
            if (decoderProvider.getImageWidth() > 0) {
                PhotoPageImageItem.this.mIsSupportRegion = true;
                PhotoPageImageItem.this.post(new Runnable() {
                    public void run() {
                        if (!PhotoPageImageItem.this.isPagerSelected() || future.isCancelled()) {
                            decoderProvider.release();
                            return;
                        }
                        com.miui.gallery.util.Log.i("PhotoPageImageItem", "setup region");
                        RegionDecoderManager.this.mDecoderProvider = decoderProvider;
                        PhotoPageImageItem.this.mPhotoView.setupTile(decoderProvider, PhotoPageImageItem.getBitmapRecycleCallback(), PhotoPageImageItem.this.getTrimMemoryCallback());
                    }
                });
                return;
            }
            PhotoPageImageItem.this.mIsSupportRegion = false;
            String originPath = PhotoPageImageItem.this.mDataItem != null ? PhotoPageImageItem.this.mDataItem.getOriginalPath() : null;
            if (!TextUtils.isEmpty(originPath)) {
                com.miui.gallery.util.Log.w("PhotoPageImageItem", "not support region %s", MediaFile.getMimeTypeForFile(originPath));
                ImageLoader.getInstance().cancelDisplayTask(PhotoPageImageItem.this.mPhotoView);
                PhotoPageImageItem.this.post(new Runnable() {
                    public void run() {
                        PhotoPageImageItem.this.displayImage(PhotoPageImageItem.this.mDataItem);
                    }
                });
                HashMap<String, String> params = new HashMap();
                params.put("type", MediaFile.getMimeTypeForFile(originPath));
                BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_not_support_region", params);
            }
        }

        private String genFileKey(String path, long fileSize) {
            if (TextUtils.isEmpty(path)) {
                return null;
            }
            return String.format(Locale.US, "%s_%d", new Object[]{path, Long.valueOf(fileSize)});
        }
    }

    public PhotoPageImageItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mRegionManager = new RegionDecoderManager(this, null);
        this.mEchoManager = new ExtraPhotoEchoManager();
        this.mHigherDefinitionManager = new HigherDefinitionManager(this, null);
        this.mImageProcessingManager = new ImageProcessingManager(this, null);
        this.mMotionPhotoManager = new MotionPhotoManager(this, null);
    }

    protected void onImageLoadFinish(ErrorCode code) {
        super.onImageLoadFinish(code);
        ImageCheckManager checkManager = this.mCheckManager;
        PhotoView photoView = this.mPhotoView;
        boolean z = !isMediaInProcessing() && (checkManager == null || !checkManager.renderChecked());
        photoView.setRegionDecodeEnable(z);
    }

    protected CheckManager createCheckManager() {
        return new ImageCheckManager();
    }

    protected void onDetachedFromWindow() {
        this.mRegionManager.release();
        this.mEchoManager.release();
        this.mHigherDefinitionManager.release();
        this.mMotionPhotoManager.release();
        super.onDetachedFromWindow();
    }

    protected void doOnSelected(boolean resumed, boolean enter, boolean init) {
        super.doOnSelected(resumed, enter, init);
        this.mRegionManager.onSelected();
        this.mEchoManager.onSelected();
        this.mHigherDefinitionManager.onSelected();
        this.mImageProcessingManager.onSelected();
        this.mMotionPhotoManager.onSelected(resumed, enter, init);
    }

    protected void doOnUnSelected(boolean paused) {
        super.doOnUnSelected(paused);
        this.mRegionManager.onUnSelected();
        this.mEchoManager.onUnSelected();
        this.mHigherDefinitionManager.onUnSelected();
        this.mImageProcessingManager.onUnSelected();
        this.mMotionPhotoManager.onUnSelected();
        if (!paused) {
            statMaxScale();
            this.mMaxScale = 1.0f;
        }
    }

    protected void onPageScrollDragging() {
        super.onPageScrollDragging();
        this.mMotionPhotoManager.onPageScrollDragging();
    }

    protected void onPageScrollIdle() {
        super.onPageScrollIdle();
        this.mMotionPhotoManager.onPageScrollIdle();
    }

    private void statMaxScale() {
        BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_item_select_count");
        if (this.mMaxScale > 1.0f) {
            HashMap<String, String> params = new HashMap();
            params.put("maxScale", String.valueOf(this.mMaxScale));
            if (!(this.mDataItem == null || this.mDataItem.getWidth() == 0)) {
                RectF baseRect = this.mPhotoView.getBaseDisplayRect();
                if (baseRect != null) {
                    params.put("maxScaleToOrigin", String.valueOf((this.mMaxScale * baseRect.width()) / ((float) this.mDataItem.getWidth())));
                }
            }
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_max_scale", params);
        }
    }

    public void swapItem(BaseDataItem item) {
        if (item == null || !item.equals(this.mDataItem)) {
            this.mIsImageFirstDisplay = true;
            this.mIsSupportRegion = true;
        }
        super.swapItem(item);
    }

    protected DisplayImageOptions getCacheDisplayImageOptions(ImageLoadParams item, Builder builder) {
        DisplayImageOptions options = super.getCacheDisplayImageOptions(item, builder);
        if (ProcessingMediaHelper.getInstance().isMediaInProcessing(item.getPath())) {
            return ThumbConfig.appendBlurOptions(options);
        }
        return options;
    }

    protected DisplayImageOptions getDisplayImageOptions(boolean loadThumbnail) {
        DisplayImageOptions options = super.getDisplayImageOptions(loadThumbnail);
        if (!this.mIsSupportRegion) {
            options = new Builder().cloneFrom(options).cacheBigPhoto(false).imageScaleType(ImageScaleType.NONE_SAFE).build();
        }
        if (loadThumbnail || !isMediaInProcessing()) {
            return options;
        }
        return BigPhotoConfig.appendBlurOptions(options);
    }

    protected void displayImage(String uri, DisplayImageOptions options, ImageSize imageSize, ImageLoadingListener loadingListener, ImageLoadingProgressListener progressListener) {
        this.mPhotoView.setRegionDecodeEnable(false);
        ImageCheckManager manager = this.mCheckManager;
        if (manager == null || !manager.renderChecked()) {
            ImageLoader.getInstance().displayImage(uri, new ImageViewAware(this.mPhotoView), options, imageSize, loadingListener, progressListener);
        } else {
            ImageLoader.getInstance().displayImage(uri, new ImageViewAware(this.mPhotoView), options, imageSize, manager.mPostLoadListener, progressListener);
        }
        if (isPagerSelected() && !this.mIsImageFirstDisplay) {
            this.mRegionManager.resetRegionDecoderIfNeeded();
        }
        this.mIsImageFirstDisplay = false;
    }

    private static BitmapRecycleCallback getBitmapRecycleCallback() {
        if (sBitmapRecycleCallback == null) {
            sBitmapRecycleCallback = new BitmapRecycleCallback() {
                public void recycle(Bitmap bitmap) {
                    TileReusedBitCache.getInstance().put(bitmap);
                }
            };
        }
        return sBitmapRecycleCallback;
    }

    public void setProcessingMedia(ProcessingMedia processingMedia) {
        super.setProcessingMedia(processingMedia);
        if (this.mImageProcessingManager != null) {
            this.mImageProcessingManager.setProcessingMedia(processingMedia);
        }
    }

    public ProcessingMedia getProcessingMedia() {
        return this.mImageProcessingManager != null ? this.mImageProcessingManager.getProcessingMedia() : null;
    }

    protected DownloadManager createDownloadManager() {
        return new ImageDownloadManager(this, null);
    }

    private boolean isRenderable() {
        return this.mAutoRenderer != null && (this.mPhotoView.getDrawable() instanceof BitmapDrawable);
    }

    private void releaseRenderer() {
        com.miui.gallery.util.Log.d("PhotoPageImageItem", "releasing renderer");
        if (this.mAutoRenderer != null) {
            AutoRenderer api = this.mAutoRenderer;
            this.mAutoRenderer = null;
            api.release();
        }
    }

    public void onActionBarVisibleChanged(Boolean visible, int actionBarHeight) {
        super.onActionBarVisibleChanged(visible, actionBarHeight);
        this.mHigherDefinitionManager.onActionBarVisibleChanged(visible, actionBarHeight);
        this.mImageProcessingManager.adjustLocation(visible.booleanValue(), this.mPhotoView.getDisplayRect(), true);
    }

    protected void onResume() {
        super.onResume();
        this.mMotionPhotoManager.onResume();
    }

    protected void onPause() {
        super.onPause();
        this.mMotionPhotoManager.onPause();
    }

    public void onActivityTransition() {
        super.onActivityTransition();
        this.mMotionPhotoManager.onActivityTransition();
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.mImageProcessingManager.adjustLocation(isActionBarVisible(), this.mPhotoView.getDisplayRect(), false);
        this.mMotionPhotoManager.onConfigurationChanged();
    }

    protected void doOnMatrixChanged(RectF rect) {
        super.doOnMatrixChanged(rect);
        this.mImageProcessingManager.onMatrixChanged(rect);
        this.mMotionPhotoManager.onMatrixChanged();
        RectF baseRect = this.mPhotoView.getBaseDisplayRect();
        if (rect != null && baseRect != null) {
            float scale = rect.width() / baseRect.width();
            if (scale > this.mMaxScale) {
                this.mMaxScale = scale;
            }
        }
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        this.mMotionPhotoManager.onUnSelected();
        super.animExit(exitInfo, listener);
        this.mImageProcessingManager.onUnSelected();
        statMaxScale();
    }

    protected boolean isMediaInProcessing() {
        return this.mImageProcessingManager != null && this.mImageProcessingManager.isMediaInProcessing();
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        boolean dispatchTouchEvent = super.dispatchTouchEvent(ev);
        int i = (this.mMotionPhotoManager == null || !this.mMotionPhotoManager.onTouch(ev)) ? 0 : 1;
        return i | dispatchTouchEvent;
    }

    public void onActionBarOperationClick() {
        this.mMotionPhotoManager.onActionBarOperationClick();
    }
}
