package com.miui.gallery.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MiuiIntent;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.adapter.PhotoPageAdapter.ChoiceModeInterface;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.projection.ConnectController;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.widget.AntiDoubleClickListener;
import com.miui.gallery.widget.CircleStrokeProgressBar;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.Map;
import miui.provider.Weather.WeatherBaseColumns;

public class PhotoPageVideoItem extends PhotoPageItem {
    private AntiDoubleClickListener mAntiDoubleClickListener = new AntiDoubleClickListener() {
        public void onAntiDoubleClick(View v) {
            if (PhotoPageVideoItem.this.mDataItem == null) {
                return;
            }
            if (TextUtils.isEmpty(PhotoPageVideoItem.this.mDataItem.getOriginalPath())) {
                PhotoPageVideoItem.this.handNoFileExist();
            } else {
                PhotoPageVideoItem.this.playVideo();
            }
        }
    };
    private View mVideoIcon;
    private Runnable mVideoItemRunnable;

    protected class VideoCheckManager extends CheckManager {
        protected TextView mVideoSmallText;

        protected VideoCheckManager() {
            super();
        }

        protected void ensureInflated() {
            super.ensureInflated();
            this.mVideoSmallText = (TextView) PhotoPageVideoItem.this.findViewById(R.id.video_small_icon_duration);
        }

        public void startCheck(ChoiceModeInterface... interfaces) {
            super.startCheck(interfaces);
            PhotoPageVideoItem.this.mVideoIcon.setAlpha(0.0f);
            if (PhotoPageVideoItem.this.mDataItem != null) {
                this.mVideoSmallText.setVisibility(0);
                this.mVideoSmallText.setText(FormatUtil.formatVideoDuration((long) PhotoPageVideoItem.this.mDataItem.getDuration()));
            }
        }

        public void refreshCheck(ChoiceModeInterface... interfaces) {
            super.refreshCheck(interfaces);
            if (PhotoPageVideoItem.this.mDataItem != null) {
                this.mVideoSmallText.setVisibility(0);
                this.mVideoSmallText.setText(FormatUtil.formatVideoDuration((long) PhotoPageVideoItem.this.mDataItem.getDuration()));
                return;
            }
            this.mVideoSmallText.setVisibility(8);
        }

        public void endCheck() {
            super.endCheck();
            PhotoPageVideoItem.this.mVideoIcon.setAlpha(1.0f);
            this.mVideoSmallText.setVisibility(8);
        }
    }

    private class VideoDownloadManager extends DownloadManager {
        private ProgressBar mOriginProgressBar;

        private VideoDownloadManager() {
            super();
        }

        /* synthetic */ VideoDownloadManager(PhotoPageVideoItem x0, AnonymousClass1 x1) {
            this();
        }

        protected void doOnDownloaded(DownloadType type, String filePath) {
            super.doOnDownloaded(type, filePath);
            if (CloudImageLoader.getInstance().isOrigin(type) && PhotoPageVideoItem.this.canPlay()) {
                PhotoPageVideoItem.this.playVideo();
            }
        }

        protected void doOnProgressVisibilityChanged(boolean visible) {
            boolean z = true;
            super.doOnProgressVisibilityChanged(visible);
            if (CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                boolean isPendingPlay = !visible && PhotoPageVideoItem.this.canPlay();
                PhotoPageVideoItem photoPageVideoItem;
                if (isPendingPlay) {
                    photoPageVideoItem = PhotoPageVideoItem.this;
                    if (visible) {
                        z = false;
                    }
                    photoPageVideoItem.setVideoItemVisibleDelay(z);
                } else {
                    photoPageVideoItem = PhotoPageVideoItem.this;
                    if (visible) {
                        z = false;
                    }
                    photoPageVideoItem.setVideoItemVisible(z);
                }
                if (visible) {
                    PhotoPageVideoItem.this.mEmptyView.setVisible(false);
                }
            }
        }

        private ProgressBar initOriginProgressBar() {
            CircleStrokeProgressBar progressBar = new CircleStrokeProgressBar(PhotoPageVideoItem.this.getContext());
            progressBar.setDrawablesForLevels(new int[]{R.drawable.photo_download_progress_bg_big}, new int[]{R.drawable.photo_download_progress_second_big}, null);
            progressBar.setMiddleStrokeColors(new int[]{PhotoPageVideoItem.this.getResources().getColor(R.color.download_progress_shadow_color)}, (float) PhotoPageVideoItem.this.getResources().getDimensionPixelSize(R.dimen.download_progress_shadow_radius));
            LayoutParams lp = new LayoutParams(-2, -2);
            lp.addRule(13);
            lp.addRule(13);
            progressBar.setVisibility(8);
            PhotoPageVideoItem.this.addView(progressBar, lp);
            return progressBar;
        }

        protected ProgressBar getProgressBar() {
            if (!CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                return super.getProgressBar();
            }
            if (this.mOriginProgressBar == null) {
                this.mOriginProgressBar = initOriginProgressBar();
            }
            return this.mOriginProgressBar;
        }

        protected void adjustProgressBarLocation(boolean isActionBarVisible, RectF imageRect, boolean anim) {
            if (!CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                super.adjustProgressBarLocation(isActionBarVisible, imageRect, anim);
            }
        }

        protected boolean needShowDownloadView() {
            if (CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                return (PhotoPageVideoItem.this.isInActionMode() || isDrawableDisplayInside()) ? false : true;
            } else {
                return super.needShowDownloadView();
            }
        }

        protected boolean filterError(ErrorCode code) {
            return code == ErrorCode.DECODE_ERROR && PhotoPageVideoItem.this.mPhotoView.getDrawable() != null;
        }

        protected CharSequence getErrorTip() {
            if (!CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                return super.getErrorTip();
            }
            return PhotoPageVideoItem.this.getResources().getString(R.string.download_error_format, new Object[]{PhotoPageVideoItem.this.getResources().getString(R.string.origin_video_name)});
        }

        public boolean isProgressVisible() {
            return this.mOriginProgressBar != null && this.mOriginProgressBar.getVisibility() == 0;
        }
    }

    class VideoItemRunnable implements Runnable {
        private final boolean visible;

        public VideoItemRunnable(boolean visible) {
            this.visible = visible;
        }

        public void run() {
            PhotoPageVideoItem.this.doSetVideoItemVisible(this.visible);
        }
    }

    public PhotoPageVideoItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void onSlipping(float progress) {
        super.onSlipping(progress);
        this.mVideoIcon.setAlpha(1.0f - progress);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mVideoIcon = findViewById(R.id.video_icon);
        this.mVideoIcon.setOnClickListener(this.mAntiDoubleClickListener);
    }

    protected void onImageLoadFinish(ErrorCode code) {
        super.onImageLoadFinish(code);
        setVideoItemVisible(this.mPhotoView.getDrawable() != null);
    }

    protected CheckManager createCheckManager() {
        return new VideoCheckManager();
    }

    private void handNoFileExist() {
        if (this.mDataItem == null || this.mDataItem.getDownloadUri() == null) {
            ToastUtils.makeText(getContext(), (int) R.string.video_not_exist);
        } else {
            downloadOrigin();
        }
    }

    protected void doOnSelected(boolean resumed, boolean enter, boolean init) {
        super.doOnSelected(resumed, enter, init);
    }

    protected void doOnUnSelected(boolean paused) {
        super.doOnUnSelected(paused);
    }

    private void playVideo() {
        if (TextUtils.isEmpty(ConnectController.getInstance().getCurConnectedDevice())) {
            boolean showGalleryWhenLocked = false;
            int requestOrientation = 0;
            if (getContext() instanceof Activity) {
                Intent i = ((BaseActivity) getContext()).getIntent();
                if (i != null) {
                    showGalleryWhenLocked = i.getBooleanExtra(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, false);
                } else {
                    showGalleryWhenLocked = false;
                }
                requestOrientation = ((BaseActivity) getContext()).getRequestedOrientation();
            }
            if (this.mPhotoPageInteractionListener != null) {
                this.mPhotoPageInteractionListener.setActionBarVisible(false);
            }
            IntentUtil.playVideo(getContext(), Uri.fromFile(new File(this.mDataItem.getOriginalPath())), this.mDataItem.getMimeType(), showGalleryWhenLocked, requestOrientation);
            Map<String, String> params = new ArrayMap();
            params.put(nexExportFormat.TAG_FORMAT_PATH, StorageUtils.getRelativePath(getContext(), this.mDataItem.getOriginalPath()));
            params.put("duration", String.valueOf(this.mDataItem.getDuration()));
            params.put(WeatherBaseColumns.TIMESTAMP, String.valueOf(System.currentTimeMillis()));
            GalleryStatHelper.recordCountEvent("external_intent", "play_video", params);
            return;
        }
        ProjectVideoFragment.showProjectVideoFragment((BaseActivity) getContext(), this.mDataItem);
    }

    private boolean needShowPlayIcon() {
        return !isAnimExiting() && ((this.mDownloadManager == null || !((VideoDownloadManager) this.mDownloadManager).isProgressVisible()) && !(this.mPhotoView.getDrawable() == null && (this.mDataItem == null || TextUtils.isEmpty(this.mDataItem.getOriginalPath()))));
    }

    private void cancelVideoItemRunnable() {
        if (this.mVideoItemRunnable != null) {
            ThreadManager.getMainHandler().removeCallbacks(this.mVideoItemRunnable);
        }
    }

    private void setVideoItemVisible(boolean visible) {
        cancelVideoItemRunnable();
        doSetVideoItemVisible(visible);
    }

    private void setVideoItemVisibleDelay(boolean visible) {
        cancelVideoItemRunnable();
        this.mVideoItemRunnable = new VideoItemRunnable(visible);
        ThreadManager.getMainHandler().postDelayed(this.mVideoItemRunnable, 200);
    }

    private void doSetVideoItemVisible(boolean visible) {
        if (visible && needShowPlayIcon()) {
            this.mVideoIcon.setVisibility(0);
        } else {
            this.mVideoIcon.setVisibility(8);
        }
    }

    protected void onDetachedFromWindow() {
        cancelVideoItemRunnable();
        super.onDetachedFromWindow();
    }

    public void animEnter(ItemViewInfo enterInfo, final TransitionListener listener) {
        TransitionListener tempListener = new TransitionListener() {
            public void onTransitEnd() {
                PhotoPageVideoItem.this.setVideoItemVisible(true);
                listener.onTransitEnd();
            }
        };
        setVideoItemVisible(false);
        super.animEnter(enterInfo, tempListener);
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        setVideoItemVisible(false);
        super.animExit(exitInfo, listener);
    }

    protected void doOnMatrixChanged(RectF rect) {
        super.doOnMatrixChanged(rect);
        float[] centerPoint = new float[]{(float) (getWidth() / 2), (float) (getHeight() / 2)};
        this.mPhotoView.getSuppMatrix().mapPoints(centerPoint);
        this.mVideoIcon.setTranslationX(centerPoint[0] - ((float) (getWidth() / 2)));
        this.mVideoIcon.setTranslationY(centerPoint[1] - ((float) (getHeight() / 2)));
    }

    protected DownloadManager createDownloadManager() {
        return new VideoDownloadManager(this, null);
    }

    private boolean canPlay() {
        return this.mDataItem != null && !TextUtils.isEmpty(this.mDataItem.getOriginalPath()) && isPagerSelected() && hasWindowFocus();
    }
}
