package com.miui.gallery.adapter;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class SlideShowAdapter {
    private ImageLoadParams mCacheItem;
    private BlockingQueue<ShowItem> mCacheQueue = new LinkedBlockingQueue(3);
    private BaseDataSet mDataSet;
    private Future mGetFuture;
    private Future mLoadFuture;
    private int mLoadIndex;
    private Object mLock = new Object();
    private int mShowIndex;

    private class GetJob implements Job<ShowItem> {
        private GetJob() {
        }

        public ShowItem run(JobContext jc) {
            ShowItem item = null;
            while (!jc.isCancelled() && item == null) {
                try {
                    item = (ShowItem) SlideShowAdapter.this.mCacheQueue.poll(1000, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Log.i("SlideShowAdapter", "poll interrupted, curSize %d", Integer.valueOf(SlideShowAdapter.this.mCacheQueue.size()));
                    e.printStackTrace();
                }
                if (item == null) {
                    synchronized (SlideShowAdapter.this.mLock) {
                        if (SlideShowAdapter.this.mLoadIndex >= SlideShowAdapter.this.getCount() && SlideShowAdapter.this.mDataSet != null) {
                            return null;
                        }
                    }
                }
            }
            Log.i("SlideShowAdapter", "getJob cancelled, curSize %d", Integer.valueOf(SlideShowAdapter.this.mCacheQueue.size()));
            if (item != null) {
                SlideShowAdapter.this.mShowIndex = item.getIndex();
            }
            return item;
        }
    }

    private class LoadItem {
        private int mIndex;
        private byte[] mSecretKey;
        private String mUri;

        public LoadItem(String uri, int index, byte[] secretKey) {
            this.mUri = uri;
            this.mIndex = index;
            this.mSecretKey = secretKey;
        }

        public boolean isSecret() {
            return this.mSecretKey != null && this.mSecretKey.length > 0;
        }

        public byte[] getSecretKey() {
            return this.mSecretKey;
        }
    }

    private class LoadJob implements Job<Void> {
        private DisplayImageOptions mDisplayOptions = this.mDisplayOptionsBuilder.build();
        private Builder mDisplayOptionsBuilder = new Builder().syncLoading(true).considerExifParams(true).resetViewBeforeLoading(false).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565);

        LoadJob() {
        }

        private DisplayImageOptions getDisplayOptions(LoadItem item) {
            if (item.isSecret()) {
                return this.mDisplayOptionsBuilder.secretKey(item.getSecretKey()).build();
            }
            return this.mDisplayOptions;
        }

        public Void run(JobContext jc) {
            while (!jc.isCancelled()) {
                LoadItem loadItem = SlideShowAdapter.this.getLoadItem();
                if (loadItem == null) {
                    break;
                }
                Bitmap loadedImage = ImageLoader.getInstance().loadImageSync(loadItem.mUri, getDisplayOptions(loadItem));
                if (!(loadedImage == null || loadedImage.isRecycled())) {
                    ShowItem showItem = new ShowItem(loadedImage, loadItem.mIndex);
                    boolean offered = false;
                    while (!jc.isCancelled() && !offered) {
                        try {
                            offered = SlideShowAdapter.this.mCacheQueue.offer(showItem, 1000, TimeUnit.MILLISECONDS);
                        } catch (InterruptedException e) {
                            Log.i("SlideShowAdapter", "offer interrupted, curSize %d", Integer.valueOf(SlideShowAdapter.this.mCacheQueue.size()));
                            e.printStackTrace();
                        }
                    }
                    if (offered) {
                        continue;
                    } else {
                        Log.i("SlideShowAdapter", "not offered, curSize %d", Integer.valueOf(SlideShowAdapter.this.mCacheQueue.size()));
                        synchronized (SlideShowAdapter.this.mLock) {
                            SlideShowAdapter.access$306(SlideShowAdapter.this);
                        }
                    }
                }
            }
            Log.i("SlideShowAdapter", "loadJob cancelled, curSize %d", Integer.valueOf(SlideShowAdapter.this.mCacheQueue.size()));
            return null;
        }
    }

    public static class ShowItem {
        private Bitmap mBit;
        private int mIndex;

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

        public boolean isValid() {
            return (this.mBit == null || this.mBit.isRecycled()) ? false : true;
        }
    }

    static /* synthetic */ int access$306(SlideShowAdapter x0) {
        int i = x0.mLoadIndex - 1;
        x0.mLoadIndex = i;
        return i;
    }

    public SlideShowAdapter(ImageLoadParams initCache, int initIndex) {
        this.mCacheItem = initCache;
        this.mLoadIndex = initIndex;
    }

    public void changeDataSet(BaseDataSet dataSet, int initPos) {
        synchronized (this.mLock) {
            this.mDataSet = dataSet;
            this.mLoadIndex = initPos;
        }
        cancelLoad();
        this.mCacheQueue.clear();
        startLoad();
    }

    public int getShowIndex() {
        return this.mShowIndex;
    }

    public BaseDataItem getBaseDataItem(int posotion) {
        return this.mDataSet != null ? this.mDataSet.getItem(null, posotion) : null;
    }

    public int getCount() {
        return this.mDataSet != null ? this.mDataSet.getCount() : 0;
    }

    public void nextBitmap(FutureListener<ShowItem> listener) {
        cancelGet();
        this.mGetFuture = ThreadManager.getMiscPool().submit(new GetJob(), listener);
    }

    private void startLoad() {
        cancelLoad();
        this.mLoadFuture = ThreadManager.getMiscPool().submit(new LoadJob());
    }

    public void resume() {
        startLoad();
    }

    public void pause() {
        cancelLoad();
        cancelGet();
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
        LoadItem loadItem = null;
        synchronized (this.mLock) {
            if (this.mDataSet != null) {
                while (this.mLoadIndex >= 0 && this.mLoadIndex < this.mDataSet.getCount()) {
                    BaseDataItem item = this.mDataSet.getItem(null, this.mLoadIndex);
                    if (item != null) {
                        String uri = item.getPathDisplayBetter();
                        if (!TextUtils.isEmpty(uri)) {
                            if (Scheme.ofUri(uri) == Scheme.UNKNOWN) {
                                uri = Scheme.FILE.wrap(uri);
                            }
                            this.mLoadIndex++;
                            loadItem = new LoadItem(uri, this.mLoadIndex - 1, item.getSecretKey());
                        }
                    }
                    this.mLoadIndex++;
                }
            } else {
                if (this.mCacheItem != null && this.mCacheItem.match(null, this.mLoadIndex)) {
                    this.mLoadIndex++;
                    loadItem = new LoadItem(this.mCacheItem.getPath(), this.mLoadIndex - 1, this.mCacheItem.getSecretKey());
                }
            }
        }
        return loadItem;
    }
}
