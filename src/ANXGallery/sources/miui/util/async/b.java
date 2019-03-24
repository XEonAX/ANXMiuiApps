package miui.util.async;

import miui.util.async.Task.Status;
import miui.util.cache.Cache;

class b extends Thread {
    private volatile boolean KS = false;
    private final a KT;
    private final TaskManager Kt;

    public b(TaskManager taskManager, a aVar, int i) {
        this.Kt = taskManager;
        this.KT = aVar;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("TaskThread-");
        stringBuilder.append(i);
        setName(stringBuilder.toString());
    }

    public static void a(TaskManager taskManager, Task<?> task) {
        Thread taskThread$1 = new TaskThread$1(taskManager, task);
        taskThread$1.setName("TaskThread-RealTime");
        taskThread$1.start();
    }

    public void shutdown() {
        this.KS = true;
        interrupt();
    }

    public void run() {
        a aVar = this.KT;
        while (!this.KS) {
            Task dN = aVar.get();
            if (dN != null) {
                a(this.Kt, this, dN);
                setPriority(5);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0046  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(TaskManager taskManager, Thread thread, Task<?> task) {
        Exception e;
        Cacheable cacheable;
        if (taskManager != null && task != null) {
            Object doLoad;
            Cache dK;
            task.a(Status.Executing, null);
            task.a(thread);
            try {
                doLoad = task.doLoad();
                try {
                    task.a(Status.Done, doLoad == null ? new NullPointerException("result is null") : doLoad);
                } catch (Exception e2) {
                    e = e2;
                    task.a(Status.Done, new TaskExecutingException(e));
                    dK = taskManager.dK();
                    cacheable = (Cacheable) task;
                    if (cacheable.getCacheKey() != null) {
                    }
                    task.a(null);
                }
            } catch (Exception e3) {
                e = e3;
                doLoad = null;
                task.a(Status.Done, new TaskExecutingException(e));
                dK = taskManager.dK();
                cacheable = (Cacheable) task;
                if (cacheable.getCacheKey() != null) {
                }
                task.a(null);
            }
            dK = taskManager.dK();
            if (!(dK == null || doLoad == null || !(task instanceof Cacheable))) {
                cacheable = (Cacheable) task;
                if (cacheable.getCacheKey() != null) {
                    dK.put(cacheable.getCacheKey(), doLoad, cacheable.sizeOf(doLoad));
                }
            }
            task.a(null);
        }
    }
}
