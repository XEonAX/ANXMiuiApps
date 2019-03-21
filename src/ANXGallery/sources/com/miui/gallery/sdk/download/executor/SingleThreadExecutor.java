package com.miui.gallery.sdk.download.executor;

import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.util.Log;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class SingleThreadExecutor extends AbsDownloadExecutor {
    private boolean mPendingDispatch = false;
    private Object mWorkLock = new Object();
    private Thread mWorker;

    private class Job implements Runnable {
        private Job() {
        }

        private boolean needContinue() {
            if (!Thread.currentThread().isInterrupted() && SingleThreadExecutor.this.mQueue.getPendingSize() > 0) {
                return true;
            }
            return false;
        }

        public void run() {
            try {
                runInner();
            } finally {
                SingleThreadExecutor.this.onTaskEnd();
            }
        }

        private void runInner() {
            while (needContinue()) {
                List<DownloadCommand> commands = SingleThreadExecutor.this.mQueue.pollToExecute();
                if (commands.size() > 0) {
                    Map<IDownloader, List<DownloadCommand>> map = AbsDownloadExecutor.classifyCommand(commands);
                    if (map != null) {
                        List<DownloadItem> batchItems = new LinkedList();
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
                                Log.i("SingleThreadExecutor", "%s execute size %d", this, Integer.valueOf(batchItems.size()));
                                try {
                                    ((IDownloader) entry.getKey()).download(info.mAccount, info.mToken, batchItems);
                                } finally {
                                    for (DownloadCommand command2 : batchCommands) {
                                        SingleThreadExecutor.this.mQueue.removeFromExecuting(command2.getKey());
                                    }
                                }
                            } else {
                                Log.e("SingleThreadExecutor", "execute: account is null");
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    public SingleThreadExecutor(int batchSize, int maxQueueSize) {
        super(batchSize, maxQueueSize);
    }

    protected void dispatch() {
        ensureWork();
    }

    private void ensureWork() {
        synchronized (this.mWorkLock) {
            if (this.mWorker == null) {
                this.mWorker = new Thread(new Job(), getTag());
                this.mWorker.setPriority(4);
                this.mWorker.start();
            } else if (this.mWorker.isInterrupted() || !this.mWorker.isAlive()) {
                this.mPendingDispatch = true;
            }
        }
    }

    public void interrupt() {
        synchronized (this.mWorkLock) {
            if (this.mWorker != null) {
                this.mWorker.interrupt();
            }
        }
        this.mQueue.interrupt();
    }

    public boolean cancel(DownloadItem item) {
        int status = this.mQueue.cancel(item.getKey());
        if (status == 1) {
            interrupt();
        }
        if (status != -1) {
            return true;
        }
        return false;
    }

    private void onTaskEnd() {
        synchronized (this.mWorkLock) {
            if (this.mWorker != null) {
                this.mWorker = null;
            }
            if (this.mPendingDispatch && this.mQueue.getPendingSize() > 0) {
                Log.d("SingleThreadExecutor", "onTaskEnd need dispatch");
                this.mPendingDispatch = false;
                dispatch();
            }
        }
    }

    protected String getTag() {
        return "SingleThreadExecutor";
    }
}
