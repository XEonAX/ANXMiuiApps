package com.miui.gallery.sdk.download.executor;

import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ThreadPoolExecutor extends AbsDownloadExecutor implements FutureListener {
    private final int mCoreSize;
    private Object mExecutorLock;
    private Future[] mFutures;
    private ThreadPool mPool;

    private class Job implements com.miui.gallery.threadpool.ThreadPool.Job {
        private Job() {
        }

        private boolean needContinue(JobContext jc) {
            Log.i("ThreadPoolExecutor", "pendingSize %d, interrupted %s, canceled %s", Integer.valueOf(ThreadPoolExecutor.this.mQueue.getPendingSize()), Boolean.valueOf(Thread.currentThread().isInterrupted()), Boolean.valueOf(jc.isCancelled()));
            return (ThreadPoolExecutor.this.mQueue.getPendingSize() <= 0 || Thread.currentThread().isInterrupted() || jc.isCancelled()) ? false : true;
        }

        public Object run(JobContext jc) {
            while (needContinue(jc)) {
                List<DownloadCommand> commands = ThreadPoolExecutor.this.mQueue.pollToExecute();
                if (commands.size() > 0) {
                    Map<IDownloader, List<DownloadCommand>> map = AbsDownloadExecutor.classifyCommand(commands);
                    if (map != null) {
                        List<DownloadItem> batchItems = new ArrayList();
                        for (Entry<IDownloader, List<DownloadCommand>> entry : map.entrySet()) {
                            List<DownloadCommand> batchCommands = (List) entry.getValue();
                            batchItems.clear();
                            for (DownloadCommand command : batchCommands) {
                                if (DownloadCommand.checkValid(command)) {
                                    batchItems.add(command.getItem());
                                }
                            }
                            AccountInfo info = AccountCache.getAccountInfo();
                            if (info != null) {
                                Log.i("ThreadPoolExecutor", "%s execute size %d", this, Integer.valueOf(batchItems.size()));
                                try {
                                    ((IDownloader) entry.getKey()).download(info.mAccount, info.mToken, batchItems);
                                } finally {
                                    for (DownloadCommand command2 : batchCommands) {
                                        ThreadPoolExecutor.this.mQueue.removeFromExecuting(command2.getKey());
                                    }
                                }
                            } else {
                                Log.e("ThreadPoolExecutor", "execute: account is null");
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            }
            Log.d("ThreadPoolExecutor", "runnable end %s", (Object) this);
            return null;
        }
    }

    public ThreadPoolExecutor(int batchSize, int maxQueueSize) {
        this(2, batchSize, maxQueueSize);
    }

    public ThreadPoolExecutor(int threadSize, int batchSize, int maxQueueSize) {
        super(batchSize, maxQueueSize);
        this.mExecutorLock = new Object();
        this.mCoreSize = threadSize;
        this.mFutures = new Future[this.mCoreSize];
    }

    private void initExecutorIfNeed() {
        synchronized (this.mExecutorLock) {
            if (this.mPool == null || this.mPool.isShutdown()) {
                this.mPool = new ThreadPool(this.mCoreSize, this.mCoreSize);
            }
        }
    }

    protected void dispatch() {
        synchronized (this.mExecutorLock) {
            initExecutorIfNeed();
            dispatchJobs();
        }
    }

    /* JADX WARNING: Missing block: B:32:?, code:
            return 0;
     */
    /* JADX WARNING: Missing block: B:33:?, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean dispatchJobs() {
        boolean dispatched = false;
        synchronized (this.mExecutorLock) {
            if (this.mPool == null || this.mPool.isShutdown()) {
            } else {
                int size = this.mQueue.getPendingSize();
                if (size > 0) {
                    for (int i = 0; i < this.mCoreSize && size > 0; i++) {
                        Future future = this.mFutures[i];
                        if (future == null || future.isCancelled() || future.isDone()) {
                            Object job = new Job();
                            Log.i("ThreadPoolExecutor", "submit runnable %s", job);
                            this.mFutures[i] = this.mPool.submit(job, this);
                            size -= this.mQueue.getBatchSize();
                            dispatched = true;
                        }
                    }
                }
            }
        }
    }

    public void interrupt() {
        synchronized (this.mExecutorLock) {
            int i = 0;
            while (i < this.mCoreSize) {
                try {
                    if (this.mFutures[i] != null) {
                        this.mFutures[i].cancel(0);
                        this.mFutures[i] = null;
                    }
                    i++;
                } catch (Throwable e) {
                    Log.e("ThreadPoolExecutor", e);
                }
            }
            if (this.mPool != null) {
                this.mPool.shutdownNow();
            }
        }
        this.mQueue.interrupt();
    }

    public void onFutureDone(Future future) {
        if (!future.isCancelled()) {
            Log.i("ThreadPoolExecutor", "onFutureDone dispatch %s", Boolean.valueOf(dispatchJobs()));
        }
    }

    protected String getTag() {
        return "ThreadPoolExecutor";
    }
}
