package com.miui.gallery.net.download;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class GalleryDownloadManager {
    public static final GalleryDownloadManager INSTANCE = new GalleryDownloadManager();
    private BlockingQueue<Runnable> mBlockingQueue = new LinkedBlockingQueue();
    private ThreadPoolExecutor mExecutor = new ThreadPoolExecutor(2, 4, 30, TimeUnit.SECONDS, this.mBlockingQueue, this.mThreadFactory);
    private final Map<Request, DownloadTask> mTasks = new HashMap();
    private ThreadFactory mThreadFactory = new ThreadFactory() {
        private final AtomicInteger mCount = new AtomicInteger();

        public Thread newThread(Runnable r) {
            return new Thread(r, "DownloadTask #" + this.mCount.getAndIncrement());
        }
    };

    public GalleryDownloadManager() {
        this.mExecutor.allowCoreThreadTimeOut(true);
    }

    public boolean enqueue(Request request) {
        DownloadTask task = query(request);
        if (task != null && !task.isDone()) {
            return false;
        }
        task = new DownloadTask(request);
        insert(request, task);
        task.execute(this.mExecutor);
        return true;
    }

    public void cancel(Request request) {
        DownloadTask task = query(request);
        if (task != null) {
            task.cancel(false);
        }
    }

    private void insert(Request request, DownloadTask task) {
        synchronized (this.mTasks) {
            this.mTasks.put(request, task);
        }
    }

    private DownloadTask query(Request request) {
        DownloadTask downloadTask;
        synchronized (this.mTasks) {
            downloadTask = (DownloadTask) this.mTasks.get(request);
        }
        return downloadTask;
    }
}
