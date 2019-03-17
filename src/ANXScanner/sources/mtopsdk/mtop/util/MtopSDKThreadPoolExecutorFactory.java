package mtopsdk.mtop.util;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;

public class MtopSDKThreadPoolExecutorFactory {
    private static final int CALLBACK_EXECUTOR_SIZE = 2;
    private static final int DEFAULT_CORE_POOL_SIZE = 3;
    private static final int KEEP_ALIVE_TIME = 1;
    private static final int QUEENSIZE = 128;
    private static final int REQUEST_CORE_POOL_SIZE = 4;
    private static final String TAG = "mtopsdk.MtopSDKThreadPoolExecutorFactory";
    private static volatile ExecutorService[] callbackExecutors;
    private static int priority = 10;
    private static volatile ThreadPoolExecutor requestExecutor;
    private static volatile ThreadPoolExecutor threadPoolExecutor;

    static class MtopSDKThreadFactory implements ThreadFactory {
        private final AtomicInteger mCount = new AtomicInteger();
        private int priority = 10;
        private String type = "";

        public MtopSDKThreadFactory(int i) {
            this.priority = i;
        }

        public MtopSDKThreadFactory(int i, String str) {
            this.priority = i;
            this.type = str;
        }

        public Thread newThread(Runnable runnable) {
            StringBuilder stringBuilder = new StringBuilder(32);
            stringBuilder.append("MTOPSDK ");
            if (StringUtils.isNotBlank(this.type)) {
                stringBuilder.append(this.type).append(" ");
            } else {
                stringBuilder.append("DefaultPool ");
            }
            stringBuilder.append("Thread:").append(this.mCount.getAndIncrement());
            return new Thread(runnable, stringBuilder.toString()) {
                public void run() {
                    Process.setThreadPriority(MtopSDKThreadFactory.this.priority);
                    super.run();
                }
            };
        }
    }

    public static ThreadPoolExecutor getDefaultThreadPoolExecutor() {
        if (threadPoolExecutor == null) {
            synchronized (MtopSDKThreadPoolExecutorFactory.class) {
                if (threadPoolExecutor == null) {
                    threadPoolExecutor = createExecutor(3, 3, 1, 128, new MtopSDKThreadFactory(priority));
                }
            }
        }
        return threadPoolExecutor;
    }

    public static ThreadPoolExecutor getRequestThreadPoolExecutor() {
        if (requestExecutor == null) {
            synchronized (MtopSDKThreadPoolExecutorFactory.class) {
                if (requestExecutor == null) {
                    requestExecutor = createExecutor(4, 4, 1, 0, new MtopSDKThreadFactory(priority, "RequestPool"));
                }
            }
        }
        return requestExecutor;
    }

    public static ExecutorService[] getCallbackExecutorServices() {
        if (callbackExecutors == null) {
            synchronized (MtopSDKThreadPoolExecutorFactory.class) {
                if (callbackExecutors == null) {
                    callbackExecutors = new ExecutorService[2];
                    for (int i = 0; i < 2; i++) {
                        callbackExecutors[i] = Executors.newSingleThreadExecutor(new MtopSDKThreadFactory(priority, "CallbackPool" + i));
                    }
                }
            }
        }
        return callbackExecutors;
    }

    public static void setDefaultThreadPoolExecutor(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor != null) {
            threadPoolExecutor = threadPoolExecutor;
        }
    }

    public static void setCallbackExecutorServices(ExecutorService[] executorServiceArr) {
        if (executorServiceArr != null && executorServiceArr.length > 0) {
            callbackExecutors = executorServiceArr;
        }
    }

    public static void setRequestThreadPoolExecutor(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor != null) {
            requestExecutor = threadPoolExecutor;
        }
    }

    public static Future<?> submit(Runnable runnable) {
        Future<?> future = null;
        try {
            return getDefaultThreadPoolExecutor().submit(runnable);
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[submit]submit runnable to Mtop Default ThreadPool error ---" + th.toString());
            return future;
        }
    }

    public static Future<?> submitCallbackTask(int i, Runnable runnable) {
        Future<?> future = null;
        try {
            return getCallbackExecutorServices()[Math.abs(i % getCallbackExecutorServices().length)].submit(runnable);
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[submitCallbackTask]submit runnable to Mtop Callback ThreadPool error ---" + th.toString());
            return future;
        }
    }

    public static Future<?> submitRequestTask(Runnable runnable) {
        Future<?> future = null;
        try {
            return getRequestThreadPoolExecutor().submit(runnable);
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[submitRequestTask]submit runnable to Mtop Request ThreadPool error ---" + th.toString());
            return future;
        }
    }

    public static ThreadPoolExecutor createExecutor(int i, int i2, int i3, int i4, ThreadFactory threadFactory) {
        BlockingQueue linkedBlockingQueue;
        if (i4 > 0) {
            linkedBlockingQueue = new LinkedBlockingQueue(i4);
        } else {
            linkedBlockingQueue = new LinkedBlockingQueue();
        }
        return new ThreadPoolExecutor(i, i2, (long) i3, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory);
    }
}
