package com.miui.gallery.assistant.manager;

import com.miui.gallery.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class AlgorithmExecuteManager {
    private final BlockingQueue<Runnable> mBlockingQueue;
    private final ThreadPoolExecutor mExecutor;
    private final ThreadFactory mThreadFactory;

    private static final class AlgorithmManagerHolder {
        private static final AlgorithmExecuteManager INSTANCE = new AlgorithmExecuteManager();
    }

    /* synthetic */ AlgorithmExecuteManager(AnonymousClass1 x0) {
        this();
    }

    private AlgorithmExecuteManager() {
        this.mBlockingQueue = new PriorityBlockingQueue();
        this.mThreadFactory = new ThreadFactory() {
            private final AtomicInteger mCount = new AtomicInteger();

            public Thread newThread(Runnable r) {
                return new Thread(r, "Algorithm Execute Task#" + this.mCount.getAndIncrement());
            }
        };
        this.mExecutor = new ThreadPoolExecutor(1, 3, 30, TimeUnit.SECONDS, this.mBlockingQueue, this.mThreadFactory);
        this.mExecutor.allowCoreThreadTimeOut(true);
    }

    static AlgorithmExecuteManager getInstance() {
        return AlgorithmManagerHolder.INSTANCE;
    }

    public void enqueue(AlgorithmRequest algorithmRequest) {
        if (algorithmRequest != null) {
            this.mExecutor.execute(algorithmRequest);
            Log.d("AlgorithmExecuteManager", "Execute Queue size: %d", Integer.valueOf(this.mBlockingQueue.size()));
        }
    }
}
