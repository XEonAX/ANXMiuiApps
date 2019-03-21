package com.miui.gallery.card.ui.detail;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import com.miui.gallery.card.model.BaseMedia;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.SlideShowView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class SlideShowController {
    private final BlockingQueue<ShowItem> mCacheQueue = new LinkedBlockingQueue(2);
    private final int mDuration;
    private Future mGetFuture;
    private final Handler mHandler = new Handler(new Callback() {
        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ShowItem item = msg.obj == null ? null : (ShowItem) msg.obj;
                    if (item != null) {
                        SlideShowController.this.mSlideShowView.next(item.getBitmap(), 0);
                        SlideShowController.this.mHandler.sendEmptyMessageDelayed(2, (long) SlideShowController.this.mDuration);
                        break;
                    }
                    break;
                case 2:
                    SlideShowController.this.loadNextBitmap();
                    break;
            }
            return true;
        }
    });
    private Future mLoadFuture;
    private int mLoadIndex;
    private final Object mLock = new Object();
    private final List<BaseMedia> mMediaInfos;
    private int mShowIndex;
    private final SlideShowView mSlideShowView;

    private class GetJob implements Job<ShowItem> {
        private GetJob() {
        }

        /* synthetic */ GetJob(SlideShowController x0, AnonymousClass1 x1) {
            this();
        }

        public ShowItem run(JobContext jc) {
            ShowItem item = null;
            while (!jc.isCancelled() && item == null) {
                try {
                    item = (ShowItem) SlideShowController.this.mCacheQueue.poll(1000, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Log.i("SlideShowController", "poll interrupted, curSize %d", Integer.valueOf(SlideShowController.this.mCacheQueue.size()));
                    e.printStackTrace();
                }
                if (item == null) {
                    synchronized (SlideShowController.this.mLock) {
                        if (SlideShowController.this.mLoadIndex >= SlideShowController.this.getCount()) {
                            return null;
                        }
                    }
                }
            }
            Log.i("SlideShowController", "getJob cancelled, curSize %d", Integer.valueOf(SlideShowController.this.mCacheQueue.size()));
            if (item != null) {
                SlideShowController.this.mShowIndex = item.getIndex();
            }
            return item;
        }
    }

    private class LoadItem {
        private final int mIndex;
        private final String mUri;

        public LoadItem(String uri, int index) {
            this.mUri = uri;
            this.mIndex = index;
        }
    }

    private class LoadJob implements Job<Void> {
        private final DisplayImageOptions mDisplayOptions = this.mDisplayOptionsBuilder.build();
        private final Builder mDisplayOptionsBuilder = new Builder().syncLoading(true).considerExifParams(true).resetViewBeforeLoading(false).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565);

        LoadJob() {
        }

        private DisplayImageOptions getDisplayOptions(LoadItem item) {
            return this.mDisplayOptions;
        }

        public Void run(JobContext jc) {
            while (!jc.isCancelled()) {
                LoadItem loadItem = SlideShowController.this.getLoadItem();
                if (loadItem == null) {
                    break;
                }
                Bitmap loadedImage = ImageLoader.getInstance().loadImageSync(loadItem.mUri, getDisplayOptions(loadItem));
                if (!(loadedImage == null || loadedImage.isRecycled())) {
                    ShowItem showItem = new ShowItem(loadedImage, loadItem.mIndex);
                    boolean offered = false;
                    while (!jc.isCancelled() && !offered) {
                        try {
                            offered = SlideShowController.this.mCacheQueue.offer(showItem, 1000, TimeUnit.MILLISECONDS);
                            if (jc.isCancelled() && offered) {
                                Log.d("SlideShowController", "Load cancel,remove from mCacheQueue ");
                                SlideShowController.this.mCacheQueue.remove(showItem);
                            }
                        } catch (InterruptedException e) {
                            Log.i("SlideShowController", "offer interrupted, curSize %d", Integer.valueOf(SlideShowController.this.mCacheQueue.size()));
                            e.printStackTrace();
                        }
                    }
                    if (!offered) {
                        Log.i("SlideShowController", "not offered, curSize %d", Integer.valueOf(SlideShowController.this.mCacheQueue.size()));
                        SlideShowController.this.decreaseLoadIndex();
                    }
                }
            }
            Log.i("SlideShowController", "loadJob cancelled, curSize %d", Integer.valueOf(SlideShowController.this.mCacheQueue.size()));
            return null;
        }
    }

    public static class ShowItem {
        private final Bitmap mBit;
        private final int mIndex;

        public ShowItem(Bitmap bit, int index) {
            this.mBit = bit;
            this.mIndex = index;
        }

        public Bitmap getBitmap() {
            return this.mBit;
        }

        public int getIndex() {
            return this.mIndex;
        }
    }

    SlideShowController(SlideShowView slideShowView, int duration) {
        this.mSlideShowView = slideShowView;
        this.mSlideShowView.setScaleOnlyMode(true);
        this.mMediaInfos = new ArrayList();
        this.mDuration = duration;
    }

    public void updateMedias(List<? extends BaseMedia> mediaInfos) {
        boolean z = true;
        if (!BaseMiscUtil.isValid(mediaInfos)) {
            return;
        }
        SlideShowView slideShowView;
        if (this.mMediaInfos.isEmpty()) {
            synchronized (this.mLock) {
                this.mMediaInfos.addAll(mediaInfos);
                this.mLoadIndex = 0;
            }
            cancelLoad();
            slideShowView = this.mSlideShowView;
            if (mediaInfos.size() <= 1) {
                z = false;
            }
            slideShowView.setSlideAnimEnable(z);
            startLoad();
        } else if (this.mMediaInfos.size() != mediaInfos.size()) {
            pause();
            synchronized (this.mLock) {
                this.mMediaInfos.clear();
                this.mMediaInfos.addAll(mediaInfos);
                this.mLoadIndex = 0;
            }
            slideShowView = this.mSlideShowView;
            if (mediaInfos.size() <= 1) {
                z = false;
            }
            slideShowView.setSlideAnimEnable(z);
            this.mCacheQueue.clear();
            resume();
        }
    }

    public void resume() {
        startLoad();
        loadNextBitmap();
    }

    public void pause() {
        cancelLoad();
        cancelGet();
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(1);
        this.mSlideShowView.release();
    }

    private void loadNextBitmap() {
        nextBitmap(new FutureListener<ShowItem>() {
            public void onFutureDone(Future<ShowItem> future) {
                if (!future.isCancelled()) {
                    ShowItem item = (ShowItem) future.get();
                    if (item != null) {
                        SlideShowController.this.mHandler.obtainMessage(1, item).sendToTarget();
                    }
                }
            }
        });
    }

    public int getCount() {
        return this.mMediaInfos.size();
    }

    public void nextBitmap(FutureListener<ShowItem> listener) {
        cancelGet();
        this.mGetFuture = ThreadManager.getMiscPool().submit(new GetJob(this, null), listener);
    }

    private void startLoad() {
        cancelLoad();
        this.mLoadFuture = ThreadManager.getMiscPool().submit(new LoadJob());
    }

    private void cancelGet() {
        if (this.mGetFuture != null) {
            this.mGetFuture.cancel();
            this.mGetFuture = null;
        }
    }

    private void cancelLoad() {
        if (this.mLoadFuture != null) {
            this.mLoadFuture.cancel();
            this.mLoadFuture = null;
        }
    }

    private LoadItem getLoadItem() {
        LoadItem loadItem;
        synchronized (this.mLock) {
            if (this.mLoadIndex < 0) {
                this.mLoadIndex = 0;
            }
            while (this.mLoadIndex >= 0 && this.mLoadIndex < this.mMediaInfos.size()) {
                BaseMedia item = (BaseMedia) this.mMediaInfos.get(this.mLoadIndex);
                if (item != null) {
                    String uri = item.getUri();
                    if (!TextUtils.isEmpty(uri)) {
                        if (Scheme.ofUri(uri) == Scheme.UNKNOWN) {
                            uri = Scheme.FILE.wrap(uri);
                        }
                        loadItem = new LoadItem(uri, this.mLoadIndex);
                        increaseLoadIndex();
                    }
                }
                increaseLoadIndex();
            }
            loadItem = null;
        }
        return loadItem;
    }

    private void increaseLoadIndex() {
        synchronized (this.mLock) {
            int totalCount = this.mMediaInfos.size();
            if (totalCount > 0) {
                this.mLoadIndex++;
                if (this.mLoadIndex == totalCount) {
                    this.mLoadIndex %= totalCount;
                }
            }
        }
    }

    private void decreaseLoadIndex() {
        synchronized (this.mLock) {
            int totalCount = this.mMediaInfos.size();
            if (totalCount > 0) {
                this.mLoadIndex--;
                if (this.mLoadIndex <= 0) {
                    this.mLoadIndex = totalCount - 1;
                }
            }
        }
    }
}
