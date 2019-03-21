package com.miui.gallery.activity;

import android.content.Context;
import android.database.Cursor;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.adapter.BaseAdapter;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.HomePageFragment;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.Iterator;

public class HomePageStartupHelper {
    private static String TAG = "HomePageStartupHelper";
    private final int MICRO_THUMB_COLUMN_NUMBER = ThumbConfig.get().sMicroThumbColumnsPortrait;
    private final int MICRO_THUMB_PRELOAD_MAX_COUNT = (this.MICRO_THUMB_COLUMN_NUMBER * 6);
    private Attacher mAttacher;
    private Context mContext;
    private Object mCursorLock = new Object();
    private Future mDataLoadFuture;
    private DataLoadListener mDataLoadListener;
    private volatile Cursor mHomePageCursor;
    private volatile boolean mIsDataInitialized = false;
    private volatile boolean mIsDestroyed = false;

    public interface Attacher {
        HomePageStartupHelper getStartupHelper();

        void onStartup();
    }

    public interface DataLoadListener {
        void onDataLoadFinish(Cursor cursor);
    }

    class ImageDisplayItem {
        private long mFileLength;
        private String mFilePath;

        public ImageDisplayItem(String filePath, long fileLength) {
            this.mFilePath = filePath;
            this.mFileLength = fileLength;
        }
    }

    public HomePageStartupHelper(Context context, Attacher attacher) {
        this.mContext = context;
        this.mAttacher = attacher;
    }

    public void onActivityCreate() {
        this.mDataLoadFuture = loadHomePageData();
    }

    private Future loadHomePageData() {
        return ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                try {
                    HomePageStartupHelper.this.mHomePageCursor = HomePageStartupHelper.this.mContext.getContentResolver().query(HomePageFragment.PHOTOS_LOADER_URI, HomePageFragment.PHOTOS_LOADER_PROJECTION, "alias_show_in_homepage=1 AND sha1 NOT NULL", null, "alias_sort_time DESC ");
                } catch (Exception e) {
                    Log.e(HomePageStartupHelper.TAG, "error when load data in home page " + e);
                }
                if (HomePageStartupHelper.this.mIsDestroyed) {
                    HomePageStartupHelper.this.closeCursor();
                    return null;
                }
                ArrayList<Integer> countInGroup = null;
                synchronized (HomePageStartupHelper.this.mCursorLock) {
                    if (!(HomePageStartupHelper.this.mHomePageCursor == null || HomePageStartupHelper.this.mHomePageCursor.isClosed())) {
                        countInGroup = HomePageStartupHelper.this.mHomePageCursor.getExtras().getIntegerArrayList("extra_timeline_item_count_in_group");
                    }
                }
                int preLoadImageCount = HomePageStartupHelper.this.getPreloadImageCount(countInGroup);
                ArrayList<ImageDisplayItem> displayItems = new ArrayList();
                int count = 0;
                while (true) {
                    int count2 = count;
                    count = count2 + 1;
                    if (count2 >= preLoadImageCount) {
                        break;
                    }
                    synchronized (HomePageStartupHelper.this.mCursorLock) {
                        if (HomePageStartupHelper.this.mHomePageCursor == null || HomePageStartupHelper.this.mHomePageCursor.isClosed() || !HomePageStartupHelper.this.mHomePageCursor.moveToNext()) {
                        } else {
                            String filePath = BaseAdapter.getMicroPath(HomePageStartupHelper.this.mHomePageCursor, 12, 5);
                            if (filePath != null) {
                                displayItems.add(new ImageDisplayItem(filePath, HomePageStartupHelper.this.mHomePageCursor.getLong(16)));
                            }
                        }
                    }
                }
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        if (HomePageStartupHelper.this.mDataLoadListener != null && !HomePageStartupHelper.this.mIsDestroyed) {
                            HomePageStartupHelper.this.mDataLoadListener.onDataLoadFinish(HomePageStartupHelper.this.mHomePageCursor);
                        }
                    }
                });
                HomePageStartupHelper.this.mIsDataInitialized = true;
                HomePageStartupHelper.this.preloadHomePageImages(displayItems);
                if (HomePageStartupHelper.this.mIsDestroyed) {
                    HomePageStartupHelper.this.closeCursor();
                }
                return null;
            }
        });
    }

    private int getPreloadImageCount(ArrayList<Integer> groupItemCount) {
        if (!BaseMiscUtil.isValid(groupItemCount)) {
            return 0;
        }
        int preloadCount;
        int totalImageCount = 0;
        int totalEmptyCount = 0;
        int numColumn = this.MICRO_THUMB_COLUMN_NUMBER;
        int maxCount = this.MICRO_THUMB_PRELOAD_MAX_COUNT;
        Iterator it = groupItemCount.iterator();
        while (it.hasNext()) {
            int value = ((Integer) it.next()).intValue();
            totalImageCount += value;
            if (totalImageCount + totalEmptyCount > maxCount) {
                break;
            }
            int remain = value % numColumn;
            if (remain != 0) {
                totalEmptyCount += numColumn - remain;
            }
        }
        if (totalEmptyCount + totalImageCount < maxCount) {
            preloadCount = totalImageCount;
        } else {
            preloadCount = maxCount - totalEmptyCount;
        }
        Log.d(TAG, "preload image count %d", Integer.valueOf(preloadCount));
        return preloadCount;
    }

    private void preloadHomePageImages(ArrayList<ImageDisplayItem> displayItems) {
        if (this.mContext != null && !this.mIsDestroyed && BaseMiscUtil.isValid(displayItems)) {
            ImageLoader.getInstance().resume();
            Builder builder = new Builder().cloneFrom(ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT).highPriority(true);
            Iterator it = displayItems.iterator();
            while (it.hasNext()) {
                ImageDisplayItem item = (ImageDisplayItem) it.next();
                if (this.mIsDestroyed) {
                    Log.w(TAG, "preload home page images break");
                    return;
                }
                if (item.mFileLength > 0) {
                    builder.considerFileLength(true).fileLength(item.mFileLength);
                } else {
                    builder.considerFileLength(false);
                }
                ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(item.mFilePath), ImageLoader.getInstance().createImageAware(null, ThumbConfig.get().sMicroTargetSize, ViewScaleType.CROP), builder.build(), ThumbConfig.get().sMicroTargetSize, null, null, null);
            }
        }
    }

    public void onStartup() {
        if (this.mAttacher != null) {
            this.mAttacher.onStartup();
        }
    }

    public void onActivityDestroy() {
        this.mIsDestroyed = true;
        closeCursor();
        if (this.mAttacher != null) {
            this.mAttacher = null;
        }
        if (this.mDataLoadFuture != null) {
            this.mDataLoadFuture.cancel();
            this.mDataLoadFuture = null;
        }
    }

    private void closeCursor() {
        synchronized (this.mCursorLock) {
            if (this.mHomePageCursor != null) {
                this.mHomePageCursor.close();
            }
        }
    }

    public void setDataLoaderListener(DataLoadListener listener) {
        if (this.mIsDataInitialized) {
            listener.onDataLoadFinish(this.mHomePageCursor);
            return;
        }
        Log.w(TAG, "preload home page cursor failed");
        this.mDataLoadListener = listener;
    }
}
