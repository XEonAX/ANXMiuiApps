package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.CancelListener;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.gifdecoder.NSGifDecode;
import com.miui.gallery.util.gifdecoder.NSGifDecode.GifFrameUpdateListener;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.view.animation.AnimationListenerAdapter;
import com.miui.gallery.widget.CircleStrokeProgressBar;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhotoPageGifItem extends PhotoPageItem {
    private int mActionBarHeight;
    private Future mGifFuture;
    private GifFrameUpdateListener mGifListener;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1000:
                    Bitmap bitmap = msg.obj;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        Matrix matrix = PhotoPageGifItem.this.mPhotoView.getSuppMatrix();
                        PhotoPageGifItem.this.mPhotoView.setImageBitmap(bitmap);
                        PhotoPageGifItem.this.mPhotoView.setDisplayMatrix(matrix);
                        return;
                    }
                    return;
                case 1001:
                    if (PhotoPageGifItem.this.mDataItem != null) {
                        PhotoPageGifItem.this.mDataItem.setFilePath(null);
                    }
                    PhotoPageGifItem.this.setPlayIconVisible(true);
                    PhotoPageGifItem.this.setIndicatorVisible(true, true);
                    return;
                default:
                    return;
            }
        }
    };
    private View mIndicator;
    private int mIndicatorMargin;
    private View mPlayIcon;

    private class GifDownloadManager extends DownloadManager {
        private ProgressBar mOriginProgressBar;

        private GifDownloadManager() {
            super();
        }

        /* synthetic */ GifDownloadManager(PhotoPageGifItem x0, AnonymousClass1 x1) {
            this();
        }

        protected void doOnDownloaded(DownloadType type, String filePath) {
            super.doOnDownloaded(type, filePath);
            if (PhotoPageGifItem.this.isPagerSelected()) {
                PhotoPageGifItem.this.tryPlayGif();
            }
        }

        protected void doOnProgressVisibilityChanged(boolean visible) {
            super.doOnProgressVisibilityChanged(visible);
            if (CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                PhotoPageGifItem.this.setPlayIconVisible(!visible);
                if (visible) {
                    PhotoPageGifItem.this.mEmptyView.setVisible(false);
                }
            }
        }

        private ProgressBar initOriginProgressBar() {
            CircleStrokeProgressBar progressBar = new CircleStrokeProgressBar(PhotoPageGifItem.this.getContext());
            progressBar.setDrawablesForLevels(new int[]{R.drawable.photo_download_progress_bg_big}, new int[]{R.drawable.photo_download_progress_second_big}, null);
            progressBar.setMiddleStrokeColors(new int[]{PhotoPageGifItem.this.getResources().getColor(R.color.download_progress_shadow_color)}, (float) PhotoPageGifItem.this.getResources().getDimensionPixelSize(R.dimen.download_progress_shadow_radius));
            LayoutParams lp = new LayoutParams(-2, -2);
            lp.addRule(13);
            lp.addRule(13);
            progressBar.setVisibility(8);
            PhotoPageGifItem.this.addView(progressBar, lp);
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
                return !isDrawableDisplayInside();
            } else {
                return super.needShowDownloadView();
            }
        }

        protected CharSequence getErrorTip() {
            if (!CloudImageLoader.getInstance().isOrigin(getCurDownloadType())) {
                return super.getErrorTip();
            }
            return PhotoPageGifItem.this.getResources().getString(R.string.download_error_format, new Object[]{PhotoPageGifItem.this.getResources().getString(R.string.origin_gif_name)});
        }
    }

    private class GifJob implements Job {
        private NSGifDecode mDecoder;
        private Handler mHandler;
        private BaseDataItem mItem;

        GifJob(BaseDataItem item, Handler handler) {
            this.mItem = item;
            this.mHandler = handler;
        }

        private void cancel() {
            if (this.mDecoder != null) {
                this.mDecoder.setListener(null);
                this.mDecoder.cancel();
                this.mDecoder = null;
            }
        }

        private void start(JobContext jc) {
            if (jc.isCancelled()) {
                cancel();
            } else if (this.mDecoder != null) {
                this.mDecoder.setListener(PhotoPageGifItem.this.getGifUpdateListener());
                this.mDecoder.run();
            }
        }

        public Object run(JobContext jc) {
            if (this.mItem == null || !this.mItem.checkOriginalFileExist()) {
                cancel();
                if (this.mHandler != null) {
                    this.mHandler.obtainMessage(1001).sendToTarget();
                }
            } else {
                jc.setCancelListener(new CancelListener() {
                    public void onCancel() {
                        GifJob.this.cancel();
                    }
                });
                if (this.mItem != null) {
                    this.mDecoder = this.mItem.createNSGifDecoder(jc);
                    start(jc);
                }
            }
            return null;
        }
    }

    static {
        try {
            System.loadLibrary("MiuiGalleryNSGIF");
        } catch (Object e) {
            Log.e("PhotoPageGifItem", "load jni failed.", e);
        }
    }

    public PhotoPageGifItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    private void initPlayIcon() {
        ImageView playIcon = new ImageView(getContext());
        playIcon.setImageDrawable(getResources().getDrawable(R.drawable.video_icon));
        playIcon.setContentDescription(getResources().getString(R.string.play_gif_desc));
        LayoutParams lp = new LayoutParams(-2, -2);
        lp.addRule(13);
        addView(playIcon, lp);
        this.mPlayIcon = playIcon;
        this.mPlayIcon.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                PhotoPageGifItem.this.downloadOrigin();
            }
        });
    }

    private void initIndicator() {
        ImageView indicator = new ImageView(getContext());
        indicator.setImageDrawable(getResources().getDrawable(R.drawable.gif_indicator));
        LayoutParams lp = new LayoutParams(-2, -2);
        lp.addRule(9);
        lp.addRule(10);
        indicator.setVisibility(8);
        addView(indicator, lp);
        this.mIndicator = indicator;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    protected void doOnMatrixChanged(RectF rect) {
        super.doOnMatrixChanged(rect);
        adjustIndicatorLocation();
    }

    public void onActionBarVisibleChanged(Boolean visible, int actionBarHeight) {
        super.onActionBarVisibleChanged(visible, actionBarHeight);
        this.mActionBarHeight = actionBarHeight;
        setIndicatorVisible(visible.booleanValue(), true);
    }

    private int getIndicatorMargin() {
        if (this.mIndicatorMargin == 0) {
            this.mIndicatorMargin = getResources().getDimensionPixelSize(R.dimen.gif_indicator_margin);
        }
        return this.mIndicatorMargin;
    }

    private void adjustIndicatorLocation() {
        if (this.mIndicator != null && this.mIndicator.getVisibility() == 0) {
            RectF displayRect = this.mPhotoView.getDisplayRect();
            if (displayRect != null) {
                float translationX = (float) getIndicatorMargin();
                float translationY = Math.max(displayRect.top, isActionBarVisible() ? (float) this.mActionBarHeight : 0.0f) + ((float) getIndicatorMargin());
                if (this.mIndicator.getTranslationX() != translationX || this.mIndicator.getTranslationY() != translationY) {
                    Log.d("PhotoPageGifItem", "setTranslation x %s, y %s", Float.valueOf(translationX), Float.valueOf(translationY));
                    this.mIndicator.setTranslationX(translationX);
                    this.mIndicator.setTranslationY(translationY);
                }
            }
        }
    }

    protected Animation generateShowAnimation() {
        Animation alpha = new AlphaAnimation(0.0f, 1.0f);
        alpha.setInterpolator(new CubicEaseOutInterpolator());
        alpha.setDuration(300);
        return alpha;
    }

    protected Animation generateHideAnimation() {
        Animation alpha = new AlphaAnimation(1.0f, 0.0f);
        alpha.setInterpolator(new CubicEaseOutInterpolator());
        alpha.setDuration(200);
        return alpha;
    }

    private boolean isOriginFileExist() {
        return (this.mDataItem == null || TextUtils.isEmpty(this.mDataItem.getOriginalPath())) ? false : true;
    }

    private boolean needShowIndicator() {
        return (this.mDataItem == null || isOriginFileExist() || isAnimExiting() || !isActionBarVisible()) ? false : true;
    }

    private void setIndicatorVisible(boolean visible, boolean anim) {
        if (visible && needShowIndicator()) {
            if (this.mIndicator == null) {
                initIndicator();
            }
            if (this.mIndicator.getVisibility() != 0) {
                this.mIndicator.clearAnimation();
                this.mIndicator.setVisibility(0);
                adjustIndicatorLocation();
                if (anim) {
                    this.mIndicator.startAnimation(generateShowAnimation());
                }
            }
        } else if (this.mIndicator != null && this.mIndicator.getVisibility() != 8) {
            this.mIndicator.clearAnimation();
            if (anim) {
                Animation animation = generateHideAnimation();
                animation.setAnimationListener(new AnimationListenerAdapter() {
                    public void onAnimationEnd(Animation animation) {
                        if (PhotoPageGifItem.this.mIndicator != null) {
                            PhotoPageGifItem.this.mIndicator.setVisibility(8);
                        }
                    }
                });
                this.mIndicator.startAnimation(animation);
                return;
            }
            this.mIndicator.setVisibility(8);
        }
    }

    private boolean needShowPlayIcon() {
        return (isOriginFileExist() || isAnimExiting()) ? false : true;
    }

    private void setPlayIconVisible(boolean visible) {
        if (visible && needShowPlayIcon()) {
            if (this.mPlayIcon == null) {
                initPlayIcon();
            }
            this.mPlayIcon.setVisibility(0);
        } else if (this.mPlayIcon != null) {
            this.mPlayIcon.setVisibility(8);
        }
    }

    public GifFrameUpdateListener getGifUpdateListener() {
        if (this.mGifListener == null) {
            this.mGifListener = new GifFrameUpdateListener() {
                public void onUpdateGifFrame(Bitmap frame) {
                    PhotoPageGifItem.this.mHandler.obtainMessage(1000, frame).sendToTarget();
                }
            };
        }
        return this.mGifListener;
    }

    private void cancelGifDecoder() {
        if (this.mGifFuture != null) {
            this.mGifFuture.cancel();
            this.mGifFuture = null;
        }
        this.mHandler.removeMessages(1000);
    }

    protected void doOnSelected(boolean resumed, boolean enter, boolean init) {
        tryPlayGif();
        super.doOnSelected(resumed, enter, init);
    }

    private void tryPlayGif() {
        cancelGifDecoder();
        if (isOriginFileExist()) {
            setPlayIconVisible(false);
            setIndicatorVisible(false, false);
            this.mGifFuture = ThreadManager.getMiscPool().submit(new GifJob(this.mDataItem, this.mHandler));
            return;
        }
        setPlayIconVisible(true);
        setIndicatorVisible(true, false);
    }

    protected void doOnUnSelected(boolean paused) {
        super.doOnUnSelected(paused);
        cancelGifDecoder();
        setIndicatorVisible(false, false);
        setPlayIconVisible(false);
    }

    protected void onDetachedFromWindow() {
        cancelGifDecoder();
        super.onDetachedFromWindow();
    }

    protected DownloadManager createDownloadManager() {
        return new GifDownloadManager(this, null);
    }

    public void animEnter(ItemViewInfo enterInfo, final TransitionListener listener) {
        TransitionListener tempListener = new TransitionListener() {
            public void onTransitEnd() {
                listener.onTransitEnd();
            }
        };
        setPlayIconVisible(false);
        setIndicatorVisible(false, false);
        super.animEnter(enterInfo, tempListener);
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        cancelGifDecoder();
        setPlayIconVisible(false);
        setIndicatorVisible(false, false);
        super.animExit(exitInfo, listener);
    }
}
