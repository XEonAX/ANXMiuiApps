package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.Config.BigPhotoConfig;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.PhotoPageAdapter;
import com.miui.gallery.adapter.PhotoPageAdapter.ChoiceModeInterface;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.compat.view.ViewCompat;
import com.miui.gallery.error.BaseErrorCodeTranslator;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.error.core.ErrorTranslateCallback;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.provider.ProcessingMedia;
import com.miui.gallery.sdk.SyncStatus;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadItemStatus;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.PhotoPageFragmentBase.PhotoPageInteractionListener;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TrimMemoryCallback;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoader.GetStatusCallBack;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudImageLoadingProgressListener;
import com.miui.gallery.util.uil.PhotoReusedBitCache;
import com.miui.gallery.view.animation.AnimationListenerAdapter;
import com.miui.gallery.widget.CircleStrokeProgressBar;
import com.miui.gallery.widget.GalleryDialogFragment;
import com.miui.gallery.widget.slip.ISlipAnimView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.yellowpage.Tag.TagYellowPage;
import uk.co.senab.photoview.PhotoView;
import uk.co.senab.photoview.PhotoViewAttacher.OnBackgroundAlphaChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnExitListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnMatrixChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnRotateListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnScaleChangeListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnViewTapListener;

public abstract class PhotoPageItem extends RelativeLayout implements TrimMemoryCallback, ISlipAnimView, OnMatrixChangedListener {
    private static Builder sDisplayImageOptionsBuilder;
    private static int sMenuBarHeight = -1;
    private static int sStatusBarHeight = -1;
    private static int sStrokeColor = Integer.MIN_VALUE;
    private boolean isActionBarVisible;
    private boolean isAnimEntering;
    private boolean isAnimExiting;
    private boolean isCacheImageLoading;
    private boolean isInitialized;
    private boolean isPaused;
    private boolean isSelected;
    private ImageLoadParams mCacheItem;
    protected CheckManager mCheckManager;
    protected BaseDataItem mDataItem;
    protected DownloadManager mDownloadManager;
    protected EmptyView mEmptyView;
    private OnImageLoadFinishListener mExternalCacheLoadCallback;
    private OnImageLoadFinishListener mExternalImageLoadCallback;
    private AsyncTask mInitTask = null;
    private OnImageLoadFinishListener mInternalCacheLoadCallback;
    private OnImageLoadFinishListener mInternalImageLoadCallback;
    private int mMemoryTrimFlags;
    protected PhotoPageInteractionListener mPhotoPageInteractionListener;
    protected PhotoView mPhotoView;
    private TrimMemoryCallback mTrimMemoryCallback;

    public interface OnImageLoadFinishListener {
        void onImageLoadFinish(boolean z, String str);
    }

    public interface TransitionListener extends uk.co.senab.photoview.PhotoViewAttacher.TransitionListener {
    }

    protected abstract class AbsPhotoRectAwareManager implements OnRotateListener {
        private boolean isDrawableDisplayInside;
        private boolean isRotating;
        protected int mMargin;

        public abstract void adjustLocation(boolean z, RectF rectF, boolean z2);

        protected abstract void changeVisibilityForSpecialScene();

        protected AbsPhotoRectAwareManager() {
        }

        public void onActionModeChanged(boolean inActionMode) {
            Log.d("PhotoPageItem", "onActionModeChanged %s", Boolean.valueOf(inActionMode));
            changeVisibilityForSpecialScene();
        }

        public void onRotateStateChanged(boolean rotating) {
            Log.d("PhotoPageItem", "onRotateStateChanged %s", Boolean.valueOf(rotating));
            changeVisibilityForSpecialScene();
        }

        public void onScaleInsideChanged(boolean inside) {
            Log.d("PhotoPageItem", "onScaleInsideChanged %s", Boolean.valueOf(inside));
            changeVisibilityForSpecialScene();
        }

        protected Animation generateShowAnimation() {
            AnimationSet set = new AnimationSet(true);
            Animation scale = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
            Animation alpha = new AlphaAnimation(0.0f, 1.0f);
            set.addAnimation(scale);
            set.addAnimation(alpha);
            set.setInterpolator(new CubicEaseOutInterpolator());
            set.setDuration(300);
            return set;
        }

        protected Animation generateHideAnimation() {
            AnimationSet set = new AnimationSet(true);
            Animation scale = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f, 1, 0.5f, 1, 0.5f);
            Animation alpha = new AlphaAnimation(1.0f, 0.0f);
            set.addAnimation(scale);
            set.addAnimation(alpha);
            set.setInterpolator(new CubicEaseOutInterpolator());
            set.setDuration(200);
            return set;
        }

        protected boolean isRotating() {
            return this.isRotating;
        }

        protected boolean isDrawableDisplayInside() {
            return this.isDrawableDisplayInside;
        }

        public final void onMatrixChanged(RectF rect) {
            boolean isInside = false;
            if (rect != null) {
                RectF baseRect = PhotoPageItem.this.mPhotoView.getBaseDisplayRect();
                if (baseRect == null || rect.width() + 5.0f >= baseRect.width()) {
                    isInside = false;
                } else {
                    isInside = true;
                }
            }
            if (isInside != this.isDrawableDisplayInside) {
                this.isDrawableDisplayInside = isInside;
                onScaleInsideChanged(isInside);
            }
            adjustLocation(PhotoPageItem.this.isActionBarVisible(), rect, false);
        }

        protected int getAdjustAnimDuration(boolean isActionBarVisible) {
            return isActionBarVisible ? 350 : 250;
        }

        protected Interpolator getAdjustAnimInterpolator(boolean isActionBarVisible) {
            return isActionBarVisible ? new CubicEaseOutInterpolator() : new CubicEaseInInterpolator();
        }

        protected float getMaxTranslationY() {
            return (float) (PhotoPageItem.this.getHeight() / 2);
        }

        protected float getMaxTranslationX() {
            return (float) (PhotoPageItem.this.getWidth() / 2);
        }

        public void onRotate(float degreesDelta, float currentDegree, float focusX, float focusY) {
        }

        public final void onRotateBegin(float fromDegrees) {
            this.isRotating = true;
            onRotateStateChanged(this.isRotating);
        }

        public final void onRotateEnd(float toDegrees) {
            this.isRotating = false;
            onRotateStateChanged(this.isRotating);
            ArrayMap<String, String> param = new ArrayMap(1);
            param.put("toDegree", String.valueOf(toDegrees));
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "manual_rotate", param);
        }

        protected int getVerticalMargin() {
            if (this.mMargin == 0) {
                this.mMargin = PhotoPageItem.this.getContext().getResources().getDimensionPixelSize(R.dimen.download_progress_margin);
            }
            return this.mMargin;
        }

        protected int getHorizontalMargin() {
            return (PhotoPageItem.this.getContext().getResources().getConfiguration().orientation == 2 ? ViewCompat.getSystemWindowInsetRight(PhotoPageItem.this) : 0) + getVerticalMargin();
        }

        public void onSelected() {
            PhotoPageItem.this.mPhotoView.setOnRotateListener(this);
        }

        public void onUnSelected() {
            PhotoPageItem.this.mPhotoView.setOnRotateListener(null);
        }

        public void release() {
            this.isRotating = false;
            this.isDrawableDisplayInside = false;
        }
    }

    protected class DownloadManager extends AbsPhotoRectAwareManager {
        private boolean isUserDownload;
        private float mAdjustX;
        private float mAdjustY;
        private Animator mAnimator;
        private View mDownloadError;
        private ProgressBar mDownloadProgress;
        private View mDownloadRoot;
        private DownloadType mDownloadingType;
        private DownloadErrorDisplayer mErrorDisplayer;
        private CloudImageLoadingListener mExternalListener;
        private boolean mHasShowError;
        private boolean mHasShowProgress;
        private CloudImageLoadingListener mLoadingListener = new CloudImageLoadingListener() {
            public void onLoadingStarted(Uri uri, DownloadType type, View view) {
                DownloadManager.this.onLoadStart(type);
                if (DownloadManager.this.mExternalListener != null) {
                    DownloadManager.this.mExternalListener.onLoadingStarted(uri, type, view);
                }
            }

            public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
                DownloadManager.this.onLoadFail(type, code);
                if (DownloadManager.this.mExternalListener != null) {
                    DownloadManager.this.mExternalListener.onLoadingFailed(uri, type, view, code);
                }
            }

            public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
                DownloadManager.this.onLoaded(type, loadedImage);
                if (DownloadManager.this.mExternalListener != null) {
                    DownloadManager.this.mExternalListener.onLoadingComplete(uri, type, view, loadedImage);
                }
            }

            public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
                DownloadManager.this.onDownloaded(type, filePath);
                if (DownloadManager.this.mExternalListener != null) {
                    DownloadManager.this.mExternalListener.onDownloadComplete(uri, type, view, filePath);
                }
            }

            public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
                DownloadManager.this.onCancel(type);
                if (DownloadManager.this.mExternalListener != null) {
                    DownloadManager.this.mExternalListener.onLoadingCancelled(uri, type, view);
                }
            }
        };
        private CloudImageLoadingProgressListener mProgressListener = new CloudImageLoadingProgressListener() {
            public void onProgressUpdate(Uri uri, DownloadType type, View view, int current, int total) {
                DownloadManager.this.onDownloading(type, current, total);
            }
        };

        protected class DownloadErrorDisplayer implements ErrorActionCallback, ErrorTranslateCallback {
            private GalleryDialogFragment mErrorDialog;
            private ErrorTip mErrorTip;
            private BaseErrorCodeTranslator mErrorTranslator = new BaseErrorCodeTranslator();

            public void handleError(ErrorCode code) {
                this.mErrorTranslator.translate(PhotoPageItem.this.getContext(), code, this);
            }

            public void onTranslate(ErrorTip tip) {
                this.mErrorTip = tip;
            }

            public boolean display(Context context) {
                return display(context, this.mErrorTip);
            }

            public final boolean display(final Context context, final ErrorTip tip) {
                if (tip == null) {
                    return false;
                }
                if (this.mErrorDialog != null) {
                    this.mErrorDialog.dismissAllowingStateLoss();
                    this.mErrorDialog = null;
                }
                if (tip.getCode() == ErrorCode.NO_CTA_PERMISSION) {
                    AgreementsUtils.showNetworkingAgreement((Activity) context, new OnAgreementInvokedListener() {
                        public void onAgreementInvoked(boolean agreed) {
                            if (agreed) {
                                DownloadErrorDisplayer.this.onAction(ErrorCode.NO_CTA_PERMISSION, false);
                            }
                        }
                    });
                } else if (TextUtils.isEmpty(tip.getActionStr(context))) {
                    ToastUtils.makeText(context, tip.getTitle(context));
                } else {
                    this.mErrorDialog = new AlertDialogFragment.Builder().setTitle(tip.getTitle(context)).setMessage(tip.getMessage(context)).setNegativeButton(PhotoPageItem.this.getResources().getString(R.string.cancel), new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.cancel();
                        }
                    }).setPositiveButton(tip.getActionStr(context), new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            tip.action(context, DownloadErrorDisplayer.this);
                        }
                    }).create();
                }
                if (this.mErrorDialog != null) {
                    this.mErrorDialog.showAllowingStateLoss(((Activity) context).getFragmentManager(), "error");
                }
                DownloadManager.this.statClickError(DownloadManager.this.mDownloadingType, tip);
                return true;
            }

            public void onAction(ErrorCode code, boolean handled) {
                if (!handled) {
                    switch (AnonymousClass4.$SwitchMap$com$miui$gallery$error$core$ErrorCode[code.ordinal()]) {
                        case 1:
                        case 2:
                            DownloadManager.this.downloadOrigin();
                            break;
                        case 3:
                            DownloadManager.this.downloadOrigin(DownloadType.ORIGIN_FORCE);
                            break;
                        case 4:
                            if (CTA.canConnectNetwork()) {
                                DownloadManager.this.processDownload();
                                break;
                            }
                            break;
                    }
                }
                DownloadManager.this.statActionError(DownloadManager.this.mDownloadingType, this.mErrorTip);
            }
        }

        protected DownloadManager() {
            super();
        }

        private void initDownloadLayout() {
            this.mDownloadRoot = LayoutInflater.from(PhotoPageItem.this.getContext()).inflate(R.layout.photo_page_download_progress, PhotoPageItem.this, false);
            LayoutParams lp = new LayoutParams(-2, -2);
            lp.addRule(11);
            lp.addRule(12);
            PhotoPageItem.this.addView(this.mDownloadRoot, lp);
        }

        protected final DownloadType getCurDownloadType() {
            return this.mDownloadingType;
        }

        protected ProgressBar getProgressBar() {
            if (this.mDownloadProgress == null) {
                this.mDownloadProgress = initProgressBar();
            }
            return this.mDownloadProgress;
        }

        private ProgressBar initProgressBar() {
            if (this.mDownloadRoot == null) {
                initDownloadLayout();
            }
            CircleStrokeProgressBar progressBar = (CircleStrokeProgressBar) this.mDownloadRoot.findViewById(R.id.download_progress);
            progressBar.setDrawablesForLevels(new int[]{R.drawable.photo_download_progress_bg}, new int[]{R.drawable.photo_download_progress_second}, null);
            progressBar.setMiddleStrokeColors(new int[]{PhotoPageItem.this.getResources().getColor(R.color.download_progress_shadow_color)}, (float) PhotoPageItem.this.getResources().getDimensionPixelSize(R.dimen.download_progress_shadow_radius_big));
            progressBar.setVisibility(8);
            return progressBar;
        }

        protected View getErrorView() {
            if (this.mDownloadError == null) {
                this.mDownloadError = initErrorView();
            }
            return this.mDownloadError;
        }

        private View initErrorView() {
            if (this.mDownloadRoot == null) {
                initDownloadLayout();
            }
            View error = this.mDownloadRoot.findViewById(R.id.download_error);
            error.setVisibility(8);
            error.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    if (DownloadManager.this.mErrorDisplayer != null) {
                        DownloadManager.this.mErrorDisplayer.display(PhotoPageItem.this.getContext());
                    }
                }
            });
            return error;
        }

        public void setCloudImageLoadingListener(CloudImageLoadingListener listener) {
            this.mExternalListener = listener;
        }

        private void onLoadStart(DownloadType type) {
            doOnLoadStart(type);
        }

        private void onLoadFail(DownloadType type, ErrorCode code) {
            if (needRefreshUI(type) && !filterError(code)) {
                if (this.mErrorDisplayer == null) {
                    this.mErrorDisplayer = createErrorDisplayer();
                }
                this.mErrorDisplayer.handleError(code);
                showErrorView(true);
                statShowError(type, code);
            }
            this.isUserDownload = false;
            doOnLoadFail(type, code);
            PhotoPageItem.this.onImageLoadFinish(code);
        }

        private void onDownloaded(DownloadType type, String filePath) {
            if (PhotoPageItem.this.mDataItem != null) {
                if (CloudImageLoader.getInstance().isOrigin(type)) {
                    PhotoPageItem.this.mDataItem.setFilePath(filePath);
                } else {
                    PhotoPageItem.this.mDataItem.setThumbPath(filePath);
                }
            }
            if (needRefreshUI(type)) {
                hideProgress(true);
            }
            doOnDownloaded(type, filePath);
        }

        private void onLoaded(DownloadType type, Bitmap bitmap) {
            this.isUserDownload = false;
            doOnLoaded(type, bitmap);
            PhotoPageItem.this.onImageLoadFinish(ErrorCode.NO_ERROR);
        }

        private void onCancel(DownloadType type) {
            if (needRefreshUI(type)) {
                hideProgress(true);
            }
            this.isUserDownload = false;
            doOnCancel(type);
        }

        private void onDownloading(DownloadType type, int current, int total) {
            if (needRefreshUI(type)) {
                setProgress((long) current, (long) total);
            }
            doOnDownloading(type, current, total);
        }

        protected void doOnLoadStart(DownloadType type) {
        }

        protected void doOnLoadFail(DownloadType type, ErrorCode code) {
        }

        protected void doOnDownloaded(DownloadType type, String filePath) {
        }

        protected void doOnLoaded(DownloadType type, Bitmap loadedImage) {
        }

        protected void doOnCancel(DownloadType type) {
        }

        protected void doOnDownloading(DownloadType type, int current, int total) {
        }

        protected void doOnProgressVisibilityChanged(boolean visible) {
        }

        protected boolean filterError(ErrorCode code) {
            return false;
        }

        protected void changeVisibilityForSpecialScene() {
            if (!needShowDownloadView()) {
                hideProgress(true);
                hideErrorView(true);
            } else if (PhotoPageItem.this.isPagerSelected()) {
                processDownload();
            }
        }

        private void setProgress(long current, long total) {
            ProgressBar progressBar = getProgressBar();
            if (progressBar != null && total > 0 && current <= total) {
                progressBar.setProgress((int) (((float) progressBar.getMax()) * ((1.0f * ((float) current)) / ((float) total))));
            }
        }

        protected boolean needShowDownloadView() {
            return (PhotoPageItem.this.isInActionMode() || isRotating() || isDrawableDisplayInside()) ? false : true;
        }

        private boolean showProgress(boolean anim) {
            if (needShowDownloadView()) {
                this.mHasShowProgress = true;
                ProgressBar progressBar = getProgressBar();
                if (!(progressBar == null || progressBar.getVisibility() == 0)) {
                    setProgress(0, 1);
                    hideErrorView(false);
                    progressBar.clearAnimation();
                    progressBar.setVisibility(0);
                    adjustProgressBarLocation(PhotoPageItem.this.isActionBarVisible(), PhotoPageItem.this.mPhotoView.getDisplayRect(), false);
                    if (anim) {
                        progressBar.startAnimation(generateShowAnimation());
                    }
                    doOnProgressVisibilityChanged(true);
                    return true;
                }
            }
            return false;
        }

        private boolean hideProgress(boolean anim) {
            if (!this.mHasShowProgress) {
                return false;
            }
            ProgressBar progressBar = getProgressBar();
            if (progressBar == null || progressBar.getVisibility() == 8) {
                return false;
            }
            progressBar.clearAnimation();
            if (anim) {
                Animation animation = generateHideAnimation();
                animation.setAnimationListener(new AnimationListenerAdapter() {
                    public void onAnimationEnd(Animation animation) {
                        ProgressBar progressBar = DownloadManager.this.getProgressBar();
                        if (progressBar != null) {
                            progressBar.setVisibility(8);
                            DownloadManager.this.doOnProgressVisibilityChanged(false);
                        }
                    }
                });
                progressBar.startAnimation(animation);
            } else {
                progressBar.setVisibility(8);
                doOnProgressVisibilityChanged(false);
            }
            return true;
        }

        protected CharSequence getErrorTip() {
            return null;
        }

        private boolean showErrorView(boolean anim) {
            if (needShowDownloadView()) {
                this.mHasShowError = true;
                View error = getErrorView();
                if (!(error == null || error.getVisibility() == 0)) {
                    hideProgress(false);
                    error.clearAnimation();
                    error.setVisibility(0);
                    adjustErrorViewLocation(PhotoPageItem.this.isActionBarVisible(), PhotoPageItem.this.mPhotoView.getDisplayRect(), false);
                    if (anim) {
                        error.startAnimation(generateShowAnimation());
                    }
                    if (!this.isUserDownload) {
                        return true;
                    }
                    CharSequence tip = getErrorTip();
                    if (TextUtils.isEmpty(tip)) {
                        return true;
                    }
                    ToastUtils.makeText(PhotoPageItem.this.getContext(), tip);
                    return true;
                }
            }
            return false;
        }

        private boolean hideErrorView(boolean anim) {
            if (this.mHasShowError) {
                View error = getErrorView();
                if (!(error == null || error.getVisibility() == 8)) {
                    error.clearAnimation();
                    if (anim) {
                        Animation animation = generateHideAnimation();
                        animation.setAnimationListener(new AnimationListenerAdapter() {
                            public void onAnimationEnd(Animation animation) {
                                View error = DownloadManager.this.getErrorView();
                                if (error != null) {
                                    error.setVisibility(8);
                                }
                            }
                        });
                        error.startAnimation(animation);
                    } else {
                        error.setVisibility(8);
                    }
                    return true;
                }
            }
            return false;
        }

        private void cancelAnim() {
            if (this.mAnimator != null && this.mAnimator.isRunning()) {
                this.mAnimator.cancel();
                this.mAnimator = null;
            }
        }

        private void doAdjustLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            float imageEdgeX;
            cancelAnim();
            float menuBarEdge = isActionBarVisible ? (float) PhotoPageItem.this.getMenuBarHeight() : 0.0f;
            float imageEdgeY = imageRect != null ? imageRect.bottom : (float) PhotoPageItem.this.getHeight();
            if (imageRect != null) {
                imageEdgeX = imageRect.right;
            } else {
                imageEdgeX = (float) PhotoPageItem.this.getWidth();
            }
            float tarY = 0.0f - Math.min(getMaxTranslationY(), Math.max(menuBarEdge, ((float) PhotoPageItem.this.getHeight()) - imageEdgeY) + ((float) getVerticalMargin()));
            float tarX = 0.0f - Math.min(getMaxTranslationX(), Math.max(((float) PhotoPageItem.this.getWidth()) - imageEdgeX, 0.0f) + ((float) getHorizontalMargin()));
            if (this.mAdjustY != tarY || this.mAdjustX != tarX) {
                this.mAdjustX = tarX;
                this.mAdjustY = tarY;
                if (anim) {
                    AnimatorSet set = new AnimatorSet();
                    Animator animatorY = ObjectAnimator.ofFloat(this.mDownloadRoot, "TranslationY", new float[]{this.mDownloadRoot.getTranslationY(), tarY});
                    Animator animatorX = ObjectAnimator.ofFloat(this.mDownloadRoot, "TranslationX", new float[]{this.mDownloadRoot.getTranslationX(), tarX});
                    set.playTogether(new Animator[]{animatorX, animatorY});
                    set.setDuration((long) getAdjustAnimDuration(isActionBarVisible));
                    set.setInterpolator(getAdjustAnimInterpolator(isActionBarVisible));
                    this.mAnimator = set;
                    this.mAnimator.start();
                    return;
                }
                this.mDownloadRoot.setTranslationY(tarY);
                this.mDownloadRoot.setTranslationX(tarX);
            }
        }

        public final void adjustLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            adjustProgressBarLocation(isActionBarVisible, imageRect, anim);
            adjustErrorViewLocation(isActionBarVisible, imageRect, anim);
        }

        protected void adjustProgressBarLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            if (this.mHasShowProgress) {
                ProgressBar progressBar = getProgressBar();
                if (progressBar != null && progressBar.getVisibility() == 0) {
                    doAdjustLocation(isActionBarVisible, imageRect, anim);
                }
            }
        }

        protected void adjustErrorViewLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            if (this.mHasShowError) {
                View errorView = getErrorView();
                if (errorView != null && errorView.getVisibility() == 0) {
                    doAdjustLocation(isActionBarVisible, imageRect, anim);
                }
            }
        }

        public void onSelected() {
            super.onSelected();
            processDownload();
        }

        public void onUnSelected() {
            hideProgress(false);
            hideErrorView(false);
            super.onUnSelected();
        }

        public void release() {
            onUnSelected();
            super.release();
            this.mDownloadingType = null;
            this.mExternalListener = null;
            this.mAdjustX = 0.0f;
            this.mAdjustY = 0.0f;
            this.mHasShowProgress = false;
            this.mHasShowError = false;
            this.mErrorDisplayer = null;
        }

        protected void processDownload() {
            if (PhotoPageItem.this.mDataItem != null && PhotoPageItem.this.mDataItem.getDownloadUri() != null && TextUtils.isEmpty(PhotoPageItem.this.mDataItem.getOriginalPath())) {
                DownloadType downloadType;
                if (CloudImageLoader.getInstance().isRequesting(PhotoPageItem.this.mDataItem.getDownloadUri(), DownloadType.ORIGIN_FORCE)) {
                    downloadType = DownloadType.ORIGIN_FORCE;
                } else {
                    downloadType = DownloadType.ORIGIN;
                }
                if (downloadType == DownloadType.ORIGIN_FORCE || CloudImageLoader.getInstance().isRequesting(PhotoPageItem.this.mDataItem.getDownloadUri(), downloadType)) {
                    downloadOrigin(downloadType);
                    if (this.mExternalListener != null) {
                        this.mExternalListener.onLoadingStarted(PhotoPageItem.this.mDataItem.getDownloadUri(), downloadType, PhotoPageItem.this.mPhotoView);
                        return;
                    }
                    return;
                }
                CloudImageLoader.getInstance().getStatusAsync(PhotoPageItem.this.mDataItem.getDownloadUri(), downloadType, new GetStatusCallBack() {
                    public void onStatusGotten(DownloadItemStatus status) {
                        if (!DownloadManager.this.needRefreshUI(DownloadManager.this.mDownloadingType)) {
                            return;
                        }
                        if (status.isDownloading()) {
                            DownloadManager.this.downloadOrigin(downloadType);
                            if (DownloadManager.this.mExternalListener != null) {
                                DownloadManager.this.mExternalListener.onLoadingStarted(PhotoPageItem.this.mDataItem.getDownloadUri(), downloadType, PhotoPageItem.this.mPhotoView);
                            }
                        } else if (status.getStatus() == SyncStatus.STATUS_SUCCESS) {
                            PhotoPageItem.this.mDataItem.setFilePath(status.getDownloadedPath());
                            PhotoPageItem.this.swapItem(PhotoPageItem.this.mDataItem);
                            if (DownloadManager.this.mExternalListener != null) {
                                DownloadManager.this.mExternalListener.onDownloadComplete(PhotoPageItem.this.mDataItem.getDownloadUri(), downloadType, PhotoPageItem.this.mPhotoView, status.getDownloadedPath());
                            }
                        } else {
                            DownloadManager.this.processThumbnail();
                        }
                    }
                });
            }
        }

        private void processThumbnail() {
            if (PhotoPageItem.this.mDataItem != null && TextUtils.isEmpty(PhotoPageItem.this.mDataItem.getThumnailPath()) && TextUtils.isEmpty(PhotoPageItem.this.mDataItem.getOriginalPath())) {
                CloudImageLoader.getInstance().getStatusAsync(PhotoPageItem.this.mDataItem.getDownloadUri(), DownloadType.THUMBNAIL, new GetStatusCallBack() {
                    public void onStatusGotten(DownloadItemStatus status) {
                        if (!DownloadManager.this.needRefreshUI(DownloadManager.this.mDownloadingType)) {
                            return;
                        }
                        if (status.getStatus() == SyncStatus.STATUS_SUCCESS) {
                            PhotoPageItem.this.mDataItem.setThumbPath(status.getDownloadedPath());
                            PhotoPageItem.this.swapItem(PhotoPageItem.this.mDataItem);
                            return;
                        }
                        DownloadManager.this.mDownloadingType = DownloadType.THUMBNAIL;
                        DownloadManager.this.hideErrorView(false);
                        DownloadManager.this.showProgress(true);
                        CloudImageLoader.getInstance().displayImage(PhotoPageItem.this.mDataItem.getDownloadUri(), DownloadManager.this.mDownloadingType, PhotoPageItem.this.mPhotoView, PhotoPageItem.this.getDisplayImageOptions(false), PhotoPageItem.this.mDataItem.getBigPhotoImageSize(), DownloadManager.this.mLoadingListener, DownloadManager.this.mProgressListener);
                    }
                });
            }
        }

        public void downloadOrigin(DownloadType type) {
            if (PhotoPageItem.this.mDataItem != null) {
                hideProgress(false);
                hideErrorView(false);
                CloudImageLoader.getInstance().cancel(PhotoPageItem.this.mDataItem.getDownloadUri(), DownloadType.THUMBNAIL);
                this.mDownloadingType = type;
                showProgress(true);
                CloudImageLoader.getInstance().displayImage(PhotoPageItem.this.mDataItem.getDownloadUri(), this.mDownloadingType, PhotoPageItem.this.mPhotoView, PhotoPageItem.this.getDisplayImageOptions(false), PhotoPageItem.this.mDataItem.getBigPhotoImageSize(), this.mLoadingListener, this.mProgressListener);
            }
        }

        public void downloadOrigin() {
            if (PhotoPageItem.this.mDataItem == null) {
                Log.w("PhotoPageItem", "data is null while downloading original file");
                return;
            }
            this.isUserDownload = true;
            if (NetworkUtils.isActiveNetworkMetered()) {
                DialogUtil.showInfoDialog(PhotoPageItem.this.getContext(), PhotoPageItem.this.getResources().getString(R.string.download_with_metered_network_msg), PhotoPageItem.this.getResources().getString(R.string.download_with_metered_network_title), 17039370, 17039360, new OnClickListener() {
                    public void onClick(DialogInterface dialogI, int which) {
                        DownloadManager.this.downloadOrigin(DownloadType.ORIGIN_FORCE);
                    }
                }, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.cancel();
                    }
                });
            } else {
                downloadOrigin(DownloadType.ORIGIN);
            }
        }

        private boolean needRefreshUI(DownloadType type) {
            return PhotoPageItem.this.mDataItem != null && PhotoPageItem.this.isPagerSelected() && type == this.mDownloadingType;
        }

        protected DownloadErrorDisplayer createErrorDisplayer() {
            return new DownloadErrorDisplayer();
        }

        private void statShowError(DownloadType type, ErrorCode code) {
            HashMap<String, String> params = new HashMap();
            params.put("errorcode", code.toString());
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, String.format(Locale.US, "photo_download_show_error_%s", new Object[]{type}), params);
        }

        private void statClickError(DownloadType type, ErrorTip tip) {
            HashMap<String, String> params = new HashMap();
            params.put("errorTip", tip.toString());
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, String.format(Locale.US, "photo_download_click_error_%s", new Object[]{type}), params);
        }

        private void statActionError(DownloadType type, ErrorTip tip) {
            HashMap<String, String> params = new HashMap();
            params.put("errorTip", tip.toString());
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, String.format(Locale.US, "photo_download_click_error_action_%s", new Object[]{type}), params);
        }
    }

    protected class CheckManager implements View.OnClickListener {
        protected View mCheckOriginLayout;
        protected View mCheckRenderLayout;
        protected View mCheckRoot;
        protected CheckBox mOriginCheckBox;
        protected ChoiceModeInterface mOriginInterface;
        protected TextView mOriginText;
        protected CheckBox mSelectCheckBox;
        protected ChoiceModeInterface mSelectInterface;
        protected View mSelectLayout;
        private boolean mVisiblePending;

        protected CheckManager() {
        }

        protected void ensureInflated() {
            if (this.mCheckRoot == null) {
                this.mCheckRoot = ((ViewStub) PhotoPageItem.this.findViewById(R.id.page_item_check)).inflate();
                this.mSelectLayout = this.mCheckRoot.findViewById(R.id.check_select_layout);
                this.mSelectCheckBox = (CheckBox) this.mCheckRoot.findViewById(R.id.check_select);
                this.mCheckOriginLayout = this.mCheckRoot.findViewById(R.id.check_origin_layout);
                this.mOriginText = (TextView) this.mCheckRoot.findViewById(R.id.check_origin_text);
                this.mOriginCheckBox = (CheckBox) this.mCheckRoot.findViewById(R.id.check_origin);
                this.mCheckRenderLayout = PhotoPageItem.this.findViewById(R.id.check_render_layout);
            }
        }

        public final void onMatrixChanged(RectF rect) {
            relayout(rect);
        }

        private void relayout(RectF rect) {
            if (rect != null && inAction()) {
                int l = 0;
                int t = 0;
                int r = PhotoPageItem.this.getWidth();
                int b = PhotoPageItem.this.getHeight();
                if (rect.width() > PhotoPageAdapter.getMinSlideWidth() && rect.height() > PhotoPageAdapter.getMinSlideHeight()) {
                    l = (int) Math.max(0.0f, rect.left);
                    t = (int) Math.max(0.0f, rect.top);
                    r = (int) Math.min((float) PhotoPageItem.this.getWidth(), rect.right);
                    b = (int) Math.min((float) PhotoPageItem.this.getHeight(), rect.bottom);
                }
                ensureInflated();
                if (this.mCheckRoot.isLaidOut()) {
                    this.mCheckRoot.layout(l, t, r, b);
                }
                Log.i("PhotoPageItem", "relayout l[%d], t[%d], r[%d], b[%d]  isLaidOut %s", Integer.valueOf(l), Integer.valueOf(t), Integer.valueOf(r), Integer.valueOf(b), Boolean.valueOf(this.mCheckRoot.isLaidOut()));
                if (this.mCheckRoot.getVisibility() != 0 && this.mVisiblePending) {
                    this.mVisiblePending = false;
                    setCheckRootVisible(true);
                }
            }
        }

        public void startCheck(ChoiceModeInterface... interfaces) {
            ensureInflated();
            this.mCheckRoot.setOnClickListener(this);
            this.mSelectLayout.setOnClickListener(this);
            this.mCheckOriginLayout.setOnClickListener(this);
            if (this.mCheckRoot.getVisibility() != 0) {
                if (PhotoPageItem.this.mPhotoView.getDisplayRect() == null) {
                    this.mVisiblePending = true;
                } else {
                    setCheckRootVisible(true);
                    relayout(PhotoPageItem.this.mPhotoView.getDisplayRect());
                }
            }
            refreshCheck(interfaces);
        }

        protected boolean inAction() {
            return (this.mCheckRoot != null && this.mCheckRoot.getVisibility() == 0) || this.mVisiblePending;
        }

        public void onAlphaChanged(float alpha) {
            ensureInflated();
            this.mCheckRoot.setAlpha(alpha);
        }

        private void setCheckRootVisible(boolean visible) {
            if (visible) {
                this.mCheckRoot.setVisibility(0);
            } else {
                this.mCheckRoot.setVisibility(8);
            }
        }

        public void endCheck() {
            ensureInflated();
            this.mCheckOriginLayout.setOnClickListener(null);
            this.mSelectLayout.setOnClickListener(null);
            this.mCheckRenderLayout.setOnClickListener(null);
            dispatchInterfaces(new ChoiceModeInterface[0]);
            this.mVisiblePending = false;
            if (this.mCheckRoot.getVisibility() == 0) {
                onAlphaChanged(1.0f);
                setCheckRootVisible(false);
            }
            this.mCheckRoot.setContentDescription(null);
        }

        protected void toggleCheckBox(CheckBox checkbox, ChoiceModeInterface modeInterface) {
            boolean z = true;
            if (PhotoPageItem.this.mDataItem != null) {
                boolean checked = checkbox.isChecked();
                if (modeInterface != null) {
                    modeInterface.onItemCheckedChanged(((Integer) PhotoPageItem.this.getTag(R.id.tag_item_position)).intValue(), PhotoPageItem.this.mDataItem.getKey(), !checked);
                }
                if (checked) {
                    z = false;
                }
                setCheckBoxState(checkbox, z);
                TalkBackUtil.requestAnnouncementEvent(checkbox, PhotoPageItem.this.getResources().getString(!checked ? R.string.checked : R.string.unchecked));
            }
        }

        protected void setCheckBoxState(CheckBox checkBox, boolean checked) {
            checkBox.setChecked(checked);
            switch (checkBox.getId()) {
                case R.id.check_origin /*2131886594*/:
                    this.mCheckOriginLayout.setContentDescription(formatContentDescriptionWithCheckState(this.mOriginText.getText(), checked));
                    return;
                case R.id.check_render /*2131886597*/:
                    this.mCheckRenderLayout.setContentDescription(formatContentDescriptionWithCheckState(PhotoPageItem.this.getResources().getString(R.string.fast_share_auto_render), checked));
                    return;
                case R.id.check_select /*2131886600*/:
                    String contentDesc = formatContentDescriptionWithCheckState(PhotoPageItem.this.mDataItem.getContentDescription(PhotoPageItem.this.getContext()), checked);
                    this.mSelectLayout.setContentDescription(contentDesc);
                    this.mCheckRoot.setContentDescription(contentDesc);
                    return;
                default:
                    return;
            }
        }

        public String getContentDescription() {
            if (PhotoPageItem.this.mDataItem == null || this.mSelectInterface == null) {
                return null;
            }
            return PhotoPageItem.this.getResources().getString(this.mSelectInterface.isChecked(PhotoPageItem.this.mDataItem.getKey()) ? R.string.checked_something : R.string.unchecked_something, new Object[]{PhotoPageItem.this.mDataItem.getContentDescription(PhotoPageItem.this.getContext())});
        }

        private String formatContentDescriptionWithCheckState(CharSequence contentDesc, boolean checked) {
            if (contentDesc == null) {
                return PhotoPageItem.this.getResources().getString(checked ? R.string.checked : R.string.unchecked);
            }
            return PhotoPageItem.this.getResources().getString(checked ? R.string.checked_something : R.string.unchecked_something, new Object[]{contentDesc});
        }

        private boolean originChecked() {
            return PhotoPageItem.this.mDataItem.isVideo() || PhotoPageItem.this.mDataItem.isGif() || !TextUtils.isEmpty(PhotoPageItem.this.mDataItem.getOriginalPath());
        }

        protected void dispatchInterfaces(ChoiceModeInterface... interfaces) {
            ChoiceModeInterface choiceModeInterface = null;
            if (interfaces != null) {
                this.mOriginInterface = interfaces.length > 0 ? interfaces[0] : null;
                if (interfaces.length > 1) {
                    choiceModeInterface = interfaces[1];
                }
                this.mSelectInterface = choiceModeInterface;
                return;
            }
            this.mOriginInterface = null;
            this.mSelectInterface = null;
        }

        public void refreshCheck(ChoiceModeInterface... interfaces) {
            ensureInflated();
            dispatchInterfaces(interfaces);
            if (PhotoPageItem.this.mDataItem != null) {
                this.mCheckRoot.setContentDescription(PhotoPageItem.this.getContentDescriptionForTalkBack());
                setCheckBoxState(this.mSelectCheckBox, this.mSelectInterface.isChecked(PhotoPageItem.this.mDataItem.getKey()));
                setCheckBoxState(this.mOriginCheckBox, this.mOriginInterface.isChecked(PhotoPageItem.this.mDataItem.getKey()));
                this.mOriginText.setText(PhotoPageItem.this.getResources().getString(R.string.select_origin_tip, new Object[]{FormatUtil.formatFileSize(PhotoPageItem.this.getContext(), PhotoPageItem.this.mDataItem.getSize())}));
                if (originChecked()) {
                    this.mCheckOriginLayout.setOnClickListener(null);
                    this.mCheckOriginLayout.setVisibility(8);
                    this.mOriginInterface.setChecked(((Integer) PhotoPageItem.this.getTag(R.id.tag_item_position)).intValue(), PhotoPageItem.this.mDataItem.getKey(), true);
                    return;
                }
                this.mCheckOriginLayout.setOnClickListener(this);
                this.mCheckOriginLayout.setVisibility(0);
            }
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.check_layout /*2131886592*/:
                case R.id.check_select_layout /*2131886599*/:
                    toggleCheckBox(this.mSelectCheckBox, this.mSelectInterface);
                    return;
                case R.id.check_origin_layout /*2131886593*/:
                    toggleCheckBox(this.mOriginCheckBox, this.mOriginInterface);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: com.miui.gallery.ui.PhotoPageItem$4 */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$miui$gallery$error$core$ErrorCode = new int[ErrorCode.values().length];

        static {
            try {
                $SwitchMap$com$miui$gallery$error$core$ErrorCode[ErrorCode.THUMBNAIL_BUILD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$miui$gallery$error$core$ErrorCode[ErrorCode.WRITE_EXIF_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$miui$gallery$error$core$ErrorCode[ErrorCode.NO_WIFI_CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$miui$gallery$error$core$ErrorCode[ErrorCode.NO_CTA_PERMISSION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    protected final class EmptyView {
        private int mEmptyBackground;
        private TextView mEmptyView;

        protected EmptyView() {
        }

        private void initView() {
            if (this.mEmptyView == null) {
                this.mEmptyView = new TextView(PhotoPageItem.this.getContext());
                this.mEmptyView.setTextColor(PhotoPageItem.this.getResources().getColor(R.color.photo_page_empty_text));
                this.mEmptyView.setTextSize(0, (float) PhotoPageItem.this.getResources().getDimensionPixelSize(R.dimen.photo_empty_text));
                this.mEmptyView.setGravity(17);
                this.mEmptyView.setCompoundDrawablePadding(PhotoPageItem.this.getResources().getDimensionPixelSize(R.dimen.photo_empty_drawable_padding));
                LayoutParams params = new LayoutParams(-2, -2);
                params.addRule(13);
                PhotoPageItem.this.addView(this.mEmptyView, 0, params);
                this.mEmptyBackground = PhotoPageItem.this.getResources().getColor(R.color.photo_page_empty_background);
            }
        }

        public void setVisible(boolean visible) {
            if (visible) {
                initView();
                this.mEmptyView.setVisibility(0);
                PhotoPageItem.this.setBackgroundColor(this.mEmptyBackground);
            } else if (this.mEmptyView != null) {
                this.mEmptyView.setVisibility(4);
                PhotoPageItem.this.setBackground(null);
            }
        }

        public void setIcon(Drawable drawable) {
            if (drawable != null || this.mEmptyView != null) {
                initView();
                this.mEmptyView.setCompoundDrawablesWithIntrinsicBounds(null, drawable, null, null);
            }
        }

        public void setTip(CharSequence ss) {
            if (!TextUtils.isEmpty(ss) || this.mEmptyView != null) {
                initView();
                this.mEmptyView.setText(ss);
            }
        }
    }

    private static class ImageLoadFinishListener implements ImageLoadingListener {
        private WeakReference<OnImageLoadFinishListener> mCallbackRef;

        public ImageLoadFinishListener(OnImageLoadFinishListener callback) {
            this.mCallbackRef = new WeakReference(callback);
        }

        public void onLoadingStarted(String imageUri, View view) {
        }

        public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
            onLoadFinish(false, imageUri);
        }

        public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
            onLoadFinish(false, imageUri);
        }

        public void onLoadingCancelled(String imageUri, View view) {
            onLoadFinish(true, imageUri);
        }

        protected void onLoadFinish(boolean cancelled, String uri) {
            if (this.mCallbackRef != null) {
                OnImageLoadFinishListener listener = (OnImageLoadFinishListener) this.mCallbackRef.get();
                if (listener != null) {
                    listener.onImageLoadFinish(cancelled, uri);
                }
            }
        }
    }

    private class InitTask extends AsyncTask<Void, Void, BaseDataItem> {
        private long mClock;

        private InitTask() {
        }

        /* synthetic */ InitTask(PhotoPageItem x0, AnonymousClass1 x1) {
            this();
        }

        protected BaseDataItem doInBackground(Void... params) {
            if (isCancelled()) {
                return null;
            }
            this.mClock = System.currentTimeMillis();
            BaseDataItem item = PhotoPageItem.this.mDataItem;
            if (item == null) {
                return item;
            }
            item.reloadCache();
            if (isCancelled()) {
                return null;
            }
            return item;
        }

        protected void onPostExecute(BaseDataItem baseDataItem) {
            Log.d("PhotoPageItem", "init costs %d, task is cancelled: %b", Long.valueOf(System.currentTimeMillis() - this.mClock), Boolean.valueOf(isCancelled()));
            if (!isCancelled() && baseDataItem == PhotoPageItem.this.mDataItem) {
                PhotoPageItem.this.displayImage(baseDataItem);
                PhotoPageItem.this.onPostInitialized();
            }
        }
    }

    private static class PhotoDisplayer implements BitmapDisplayer {
        private PhotoDisplayer() {
        }

        /* synthetic */ PhotoDisplayer(AnonymousClass1 x0) {
            this();
        }

        public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
            View view = imageAware.getWrappedView();
            if (view != null) {
                PhotoView photo = (PhotoView) view;
                photo.setImageBitmap(bitmap, photo.getDrawable() != null);
                return;
            }
            Log.w("PhotoPageItem", "PhotoDisplayer view is null");
        }
    }

    public PhotoPageItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        if (sDisplayImageOptionsBuilder == null) {
            sDisplayImageOptionsBuilder = new Builder().cloneFrom(BigPhotoConfig.BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT).handler(ThreadManager.getMainHandler()).displayer(new PhotoDisplayer());
        }
        if (sStrokeColor == Integer.MIN_VALUE) {
            sStrokeColor = getResources().getColor(R.color.black_20_transparent);
        }
    }

    public void setPhotoPageCallback(PhotoPageInteractionListener listener) {
        this.mPhotoPageInteractionListener = listener;
    }

    public ImageLoadParams getCacheItem() {
        return this.mCacheItem;
    }

    public void setCacheItem(ImageLoadParams item, OnImageLoadFinishListener listener) {
        this.mCacheItem = item;
        if (item != null) {
            this.isCacheImageLoading = true;
            this.mExternalCacheLoadCallback = listener;
            Builder builder = new Builder();
            builder.cloneFrom(ThumbConfig.THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT);
            builder.syncLoadFromThumbCache(false);
            builder.cacheInMemory(true);
            displayCacheImage(item, builder, getCacheImageLoadingListener());
        }
    }

    public void loadCacheImage(ImageLoadParams item) {
        if (item != null && this.mPhotoView.getDrawable() == null) {
            Builder builder = new Builder();
            builder.cloneFrom(ThumbConfig.THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT);
            builder.loadFromMemoryOnly(true);
            builder.cacheInMemory(true);
            displayCacheImage(item, builder, null);
        }
    }

    private void displayCacheImage(ImageLoadParams item, Builder builder, ImageLoadingListener listener) {
        String uri = item.getPath();
        if (Scheme.ofUri(uri) == Scheme.UNKNOWN) {
            uri = Scheme.FILE.wrap(uri);
            item.setPath(uri);
        }
        ImageLoader.getInstance().displayImage(uri, new ImageViewAware(this.mPhotoView, false), getCacheDisplayImageOptions(item, builder), item.getTargetSize(), listener, null, item.getRegionRectF());
    }

    protected DisplayImageOptions getCacheDisplayImageOptions(ImageLoadParams item, Builder builder) {
        if (item.isSecret()) {
            builder.secretKey(item.getSecretKey());
        }
        if (item.getFileLength() > 0) {
            builder.considerFileLength(true).fileLength(item.getFileLength());
        } else {
            builder.considerFileLength(false);
        }
        return builder.build();
    }

    public TrimMemoryCallback getTrimMemoryCallback() {
        return this.mTrimMemoryCallback;
    }

    public void setTrimMemoryCallback(TrimMemoryCallback trimMemoryCallback) {
        this.mTrimMemoryCallback = trimMemoryCallback;
    }

    private ImageLoadFinishListener getImageLoadingListener() {
        if (this.mInternalImageLoadCallback == null) {
            this.mInternalImageLoadCallback = new OnImageLoadFinishListener() {
                public void onImageLoadFinish(boolean cancelled, String uri) {
                    if (!cancelled) {
                        PhotoPageItem.this.onImageLoadFinish(ErrorCode.DECODE_ERROR);
                    }
                    if (PhotoPageItem.this.mExternalImageLoadCallback != null) {
                        PhotoPageItem.this.mExternalImageLoadCallback.onImageLoadFinish(cancelled, uri);
                    }
                }
            };
        }
        return new ImageLoadFinishListener(this.mInternalImageLoadCallback);
    }

    private ImageLoadingListener getCacheImageLoadingListener() {
        if (this.mInternalCacheLoadCallback == null) {
            this.mInternalCacheLoadCallback = new OnImageLoadFinishListener() {
                public void onImageLoadFinish(final boolean cancelled, final String uri) {
                    PhotoPageItem.this.onCacheImageLoadFinish(cancelled);
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            if (PhotoPageItem.this.mExternalCacheLoadCallback != null) {
                                PhotoPageItem.this.mExternalCacheLoadCallback.onImageLoadFinish(cancelled, uri);
                            }
                        }
                    });
                }
            };
        }
        return new ImageLoadFinishListener(this.mInternalCacheLoadCallback);
    }

    public void onTrimMemory(int flag) {
        Log.d("PhotoPageItem", "onTrimMemory flag: %d, before: %d", Integer.valueOf(flag), Integer.valueOf(this.mMemoryTrimFlags));
        if (this.mMemoryTrimFlags == 0) {
            Log.d("PhotoPageItem", "trimMemory: %s", this.mDataItem != null ? Long.valueOf(this.mDataItem.getKey()) : Integer.toHexString(hashCode()));
            ImageLoader.getInstance().cancelDisplayTask(this.mPhotoView);
            recycleBitmap();
        }
        this.mMemoryTrimFlags |= flag;
    }

    public void onStopTrimMemory(int flag) {
        Log.d("PhotoPageItem", "onStopTrimMemory flag: %d, before: %d", Integer.valueOf(flag), Integer.valueOf(this.mMemoryTrimFlags));
        if ((this.mMemoryTrimFlags & flag) > 0) {
            this.mMemoryTrimFlags &= flag ^ -1;
            if (this.mMemoryTrimFlags == 0) {
                Log.d("PhotoPageItem", "reloadData: %s", this.mDataItem != null ? Long.valueOf(this.mDataItem.getKey()) : Integer.toHexString(hashCode()));
                refreshItem();
            }
        }
    }

    protected void onImageLoadFinish(ErrorCode code) {
        if (this.mPhotoView.getDrawable() == null) {
            Resources res = getResources();
            CharSequence ss = null;
            Drawable icon = null;
            if (!(code == null || code == ErrorCode.NO_ERROR)) {
                if (code != ErrorCode.DECODE_ERROR) {
                    ss = res.getString(R.string.error_download_tip);
                    icon = getResources().getDrawable(R.drawable.icon_empty_photo);
                } else if (this.mDataItem == null || !TextUtils.isEmpty(this.mDataItem.getOriginalPath())) {
                    ss = res.getString(R.string.error_decode_tip);
                }
            }
            this.mEmptyView.setTip(ss);
            this.mEmptyView.setIcon(icon);
            this.mEmptyView.setVisible(true);
            return;
        }
        this.mEmptyView.setVisible(false);
    }

    protected void onCacheImageLoadFinish(boolean cancelled) {
        this.isCacheImageLoading = false;
        if (!cancelled) {
            swapItem(this.mDataItem);
        }
    }

    protected void updateFeatures() {
        if (this.mPhotoView != null && this.mDataItem != null) {
            boolean z;
            boolean rotatable;
            PhotoView photoView = this.mPhotoView;
            if (this.mDataItem.isVideo()) {
                z = false;
            } else {
                z = true;
            }
            photoView.setZoomable(z);
            if (this.mDataItem.isGif() || this.mDataItem.isVideo()) {
                rotatable = false;
            } else {
                rotatable = true;
            }
            this.mPhotoView.setRotatable(rotatable);
        }
    }

    public void refreshItem() {
        swapItem(this.mDataItem);
    }

    public void swapItem(BaseDataItem item) {
        if (this.mDataItem != null && (item == null || !item.equals(this.mDataItem))) {
            recycleBitmap();
        }
        this.mDataItem = item;
        if (!this.isCacheImageLoading) {
            if (this.mDataItem != null) {
                executeInitTask();
                setContentDescription(getContentDescriptionForTalkBack());
            }
            updateFeatures();
        }
    }

    protected final void displayImage(BaseDataItem item) {
        if (this.mMemoryTrimFlags != 0) {
            return;
        }
        if (!this.isCacheImageLoading || !isMediaInProcessing()) {
            boolean isMicro = false;
            String uri = item.getOriginalPath();
            if (!isPathValidate(uri)) {
                uri = item.getThumnailPath();
            }
            if (!isPathValidate(uri)) {
                uri = item.getMicroPath();
                isMicro = true;
            }
            if (!TextUtils.isEmpty(uri)) {
                if (isMicro || isPathValidate(uri)) {
                    ImageSize microImageSize;
                    if (uri.startsWith(File.separator)) {
                        uri = Scheme.FILE.wrap(uri);
                    }
                    DisplayImageOptions displayImageOptions = getDisplayImageOptions(isMicro);
                    if (isMicro || isMediaInProcessing()) {
                        microImageSize = item.getMicroImageSize();
                    } else {
                        microImageSize = null;
                    }
                    displayImage(uri, displayImageOptions, microImageSize, getImageLoadingListener(), null);
                }
            }
        }
    }

    private void executeInitTask() {
        this.isInitialized = false;
        if (this.mInitTask != null) {
            this.mInitTask.cancel(false);
        }
        this.mInitTask = new InitTask(this, null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    protected void onPostInitialized() {
        this.isInitialized = true;
        if (canDoSelected()) {
            doOnSelected(false, false, true);
        }
    }

    protected void displayImage(String uri, DisplayImageOptions options, ImageSize imageSize, ImageLoadingListener loadingListener, ImageLoadingProgressListener progressListener) {
        ImageLoader.getInstance().displayImage(uri, new ImageViewAware(this.mPhotoView), options, imageSize, loadingListener, progressListener);
    }

    protected DisplayImageOptions getDisplayImageOptions(boolean loadThumbnail) {
        if (this.mDataItem.isSecret()) {
            sDisplayImageOptionsBuilder.secretKey(this.mDataItem.getSecretKey());
            sDisplayImageOptionsBuilder.cacheBigPhoto(false);
        } else {
            sDisplayImageOptionsBuilder.secretKey(null);
            sDisplayImageOptionsBuilder.cacheBigPhoto(!loadThumbnail);
        }
        sDisplayImageOptionsBuilder.loadThumbnail(loadThumbnail);
        if (!TextUtils.isEmpty(this.mDataItem.getOriginalPath())) {
            Scheme scheme = Scheme.ofUri(this.mDataItem.getOriginalPath());
            if (!(scheme == Scheme.FILE || scheme == Scheme.UNKNOWN)) {
                sDisplayImageOptionsBuilder.cacheBigPhoto(false);
            }
        }
        if (this.mDataItem.getSize() > 0) {
            sDisplayImageOptionsBuilder.fileLength(this.mDataItem.getSize());
            sDisplayImageOptionsBuilder.considerFileLength(true);
        } else {
            sDisplayImageOptionsBuilder.considerFileLength(false);
        }
        return sDisplayImageOptionsBuilder.build();
    }

    private boolean isPathValidate(String path) {
        return !TextUtils.isEmpty(path);
    }

    public BaseDataItem getDataItem() {
        return this.mDataItem;
    }

    protected void recycleBitmap() {
        Drawable drawable = this.mPhotoView.getDrawable();
        if (drawable != null) {
            this.mPhotoView.setImageDrawable(null);
            if (drawable instanceof BitmapDrawable) {
                Bitmap cachedBitmap = null;
                if (this.mCacheItem != null) {
                    cachedBitmap = ImageLoader.getInstance().loadFromMemoryCache(this.mCacheItem.getPath(), this.mCacheItem.getTargetSize(), null, ThumbConfig.THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT);
                }
                Bitmap bit = ((BitmapDrawable) drawable).getBitmap();
                if (cachedBitmap != bit) {
                    PhotoReusedBitCache.getInstance().put(bit);
                }
            }
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mPhotoView = (PhotoView) findViewById(R.id.photoview);
        this.mDownloadManager = createDownloadManager();
        this.mCheckManager = createCheckManager();
        this.mEmptyView = new EmptyView();
    }

    protected CheckManager createCheckManager() {
        return new CheckManager();
    }

    protected void onDetachedFromWindow() {
        ImageLoader.getInstance().cancelDisplayTask(this.mPhotoView);
        recycleBitmap();
        removeOnMatrixChangeListener(this);
        this.mDownloadManager.release();
        this.mCheckManager.endCheck();
        if (this.mInitTask != null) {
            this.mInitTask.cancel(false);
            this.mInitTask = null;
        }
        this.mEmptyView.setVisible(false);
        this.mCacheItem = null;
        this.mDataItem = null;
        setContentDescription(null);
        this.mPhotoPageInteractionListener = null;
        this.mInternalCacheLoadCallback = null;
        this.mInternalImageLoadCallback = null;
        this.mExternalCacheLoadCallback = null;
        this.mExternalImageLoadCallback = null;
        this.isSelected = false;
        this.isInitialized = false;
        this.isActionBarVisible = false;
        this.isAnimEntering = false;
        this.isAnimExiting = false;
        this.isCacheImageLoading = false;
        this.mMemoryTrimFlags = 0;
        this.isPaused = false;
        super.onDetachedFromWindow();
    }

    protected boolean isInitialized() {
        return this.isInitialized;
    }

    protected boolean isAnimEntering() {
        return this.isAnimEntering;
    }

    protected boolean isAnimExiting() {
        return this.isAnimExiting;
    }

    public final void onSelected(boolean resumed) {
        if (!this.isSelected) {
            this.isSelected = true;
            if (canDoSelected()) {
                doOnSelected(resumed, false, false);
            }
            addOnMatrixChangeListener(this);
        }
    }

    private boolean canDoSelected() {
        boolean can = isPagerSelected() && !isAnimEntering() && isInitialized();
        if (!can && isPagerSelected()) {
            Log.d("PhotoPageItem", "canDoSelected %s, isAnimEntering %s, isInitialized %s", Boolean.valueOf(can), Boolean.valueOf(isAnimEntering()), Boolean.valueOf(isInitialized()));
        }
        return can;
    }

    protected void doOnSelected(boolean resumed, boolean enter, boolean init) {
        Log.d("PhotoPageItem", "doOnSelected pos: %s, resumed: %s", getTag(R.id.tag_item_position), Boolean.valueOf(resumed));
        if (resumed && this.mCheckManager.inAction()) {
            this.mDownloadManager.onUnSelected();
        } else {
            this.mDownloadManager.onSelected();
        }
    }

    public final void onUnSelected(boolean paused) {
        if (this.isSelected) {
            this.isSelected = false;
            doOnUnSelected(paused);
            removeOnMatrixChangeListener(this);
        }
    }

    protected void doOnUnSelected(boolean paused) {
        this.mDownloadManager.onUnSelected();
    }

    protected void onPageScrollDragging() {
    }

    protected void onPageScrollIdle() {
    }

    public final void onMatrixChanged(RectF rect) {
        if (!isAnimEntering() && !isAnimExiting()) {
            this.mDownloadManager.onMatrixChanged(rect);
            this.mCheckManager.onMatrixChanged(rect);
            doOnMatrixChanged(rect);
        }
    }

    protected void doOnMatrixChanged(RectF rect) {
    }

    protected void onResume() {
        this.isPaused = false;
    }

    protected void onPause() {
        this.isPaused = true;
    }

    protected boolean isPaused() {
        return this.isPaused;
    }

    protected boolean isPagerSelected() {
        return this.isSelected;
    }

    public void setOnImageLoadFinishListener(OnImageLoadFinishListener listener) {
        this.mExternalImageLoadCallback = listener;
    }

    public void setOnViewTapListener(OnViewTapListener listener) {
        this.mPhotoView.setOnViewTapListener(listener);
    }

    public void setOnExitListener(OnExitListener listener) {
        this.mPhotoView.setOnExitListener(listener);
    }

    public void setOnScaleChangeListener(OnScaleChangeListener listener) {
        this.mPhotoView.setOnScaleChangeListener(listener);
    }

    public void addOnMatrixChangeListener(OnMatrixChangedListener listener) {
        this.mPhotoView.addOnMatrixChangeListener(listener);
    }

    public void removeOnMatrixChangeListener(OnMatrixChangedListener listener) {
        this.mPhotoView.removeOnMatrixChangeListener(listener);
    }

    public void setOnBackgroundAlphaChangedListener(OnBackgroundAlphaChangedListener listener) {
        this.mPhotoView.setOnBackgroundAlphaChangedListener(listener);
    }

    public void downloadOrigin() {
        if (this.mDataItem != null) {
            this.mDownloadManager.downloadOrigin();
        }
    }

    public void setCloudImageLoadingListener(CloudImageLoadingListener listener) {
        this.mDownloadManager.setCloudImageLoadingListener(listener);
    }

    public void animEnter(ItemViewInfo enterInfo, final TransitionListener listener) {
        TransitionListener tempListener = new TransitionListener() {
            public void onTransitEnd() {
                listener.onTransitEnd();
                PhotoPageItem.this.isAnimEntering = false;
                if (PhotoPageItem.this.canDoSelected()) {
                    PhotoPageItem.this.doOnSelected(false, true, false);
                }
            }
        };
        this.isAnimEntering = true;
        this.mPhotoView.animEnter(enterInfo, tempListener);
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        this.isAnimExiting = true;
        this.mPhotoView.animExit(exitInfo, listener);
        this.mDownloadManager.release();
    }

    protected DownloadManager createDownloadManager() {
        return new DownloadManager();
    }

    public void startActionMode(ChoiceModeInterface originInterface, ChoiceModeInterface selectInterface, ChoiceModeInterface renderInterface) {
        if (this.mCheckManager.inAction()) {
            this.mCheckManager.refreshCheck(originInterface, selectInterface, renderInterface);
            return;
        }
        this.mCheckManager.startCheck(originInterface, selectInterface, renderInterface);
        onActionModeChanged(true);
    }

    public void finishActionMode() {
        if (this.mCheckManager.inAction()) {
            this.mCheckManager.endCheck();
            onActionModeChanged(false);
        }
    }

    private void onActionModeChanged(boolean inAction) {
        if (inAction) {
            this.mPhotoView.setZoomable(false);
            this.mPhotoView.setStroke(sStrokeColor, 1);
        } else {
            this.mPhotoView.setStroke(0, 0);
            if (this.mPhotoView.getDrawable() != null) {
                displayImage(this.mDataItem);
            }
            updateFeatures();
        }
        this.mDownloadManager.onActionModeChanged(inAction);
    }

    protected boolean isInActionMode() {
        return this.mCheckManager.inAction();
    }

    public void onSlipping(float progress) {
        if (isPagerSelected()) {
            this.mCheckManager.onAlphaChanged(progress);
        }
    }

    public void setProcessingMedia(ProcessingMedia processingMedia) {
    }

    public ProcessingMedia getProcessingMedia() {
        return null;
    }

    protected boolean isMediaInProcessing() {
        return false;
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.mCheckManager.inAction()) {
            this.mCheckManager.relayout(this.mPhotoView.getDisplayRect());
        }
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    public void onActionBarVisibleChanged(Boolean visible, int actionBarHeight) {
        this.isActionBarVisible = visible.booleanValue();
        this.mDownloadManager.adjustLocation(visible.booleanValue(), this.mPhotoView.getDisplayRect(), true);
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.mDownloadManager.adjustLocation(isActionBarVisible(), this.mPhotoView.getDisplayRect(), false);
    }

    public void onActivityTransition() {
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    protected final boolean isActionBarVisible() {
        return this.isActionBarVisible;
    }

    protected int getActionBarHeight() {
        int actionBarHeight = this.mPhotoPageInteractionListener.getActionBarHeight();
        if (actionBarHeight > 0) {
            return actionBarHeight;
        }
        if (sStatusBarHeight == -1) {
            sStatusBarHeight = MiscUtil.getStatusBarHeight(getContext());
        }
        return sStatusBarHeight + getContext().getResources().getDimensionPixelSize(R.dimen.photo_page_actionbar_height);
    }

    protected int getMenuBarHeight() {
        if (sMenuBarHeight == -1) {
            sMenuBarHeight = this.mPhotoPageInteractionListener.getMenuBarHeight();
        }
        return sMenuBarHeight + ViewCompat.getSystemWindowInsetBottom(this);
    }

    protected String getContentDescriptionForTalkBack() {
        if (this.mDataItem == null) {
            return null;
        }
        if (!isInActionMode() || this.mCheckManager == null) {
            return this.mDataItem.getContentDescription(getContext());
        }
        return this.mCheckManager.getContentDescription();
    }
}
