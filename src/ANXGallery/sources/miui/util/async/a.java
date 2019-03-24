package miui.util.async;

import android.util.Log;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.util.async.Task.Status;
import miui.util.concurrent.ConcurrentRingQueue;
import miui.util.concurrent.Queue;
import miui.util.concurrent.Queue.Predicate;

class a implements Queue<Task<?>> {
    private final TaskManager Kt;
    private final Queue<Task<?>> La;
    private final Queue<Task<?>> Lb;
    private final Queue<Task<?>> Lc;
    private final Semaphore Ld = new Semaphore(0, true);
    private final AtomicBoolean Le = new AtomicBoolean(false);

    public a(TaskManager taskManager, int i) {
        this.Kt = taskManager;
        this.La = new ConcurrentRingQueue(i, true, true);
        this.Lb = new ConcurrentRingQueue(i, true, true);
        this.Lc = new ConcurrentRingQueue(i, true, true);
    }

    /* renamed from: b */
    public boolean put(Task<?> task) {
        boolean put;
        switch (TaskQueue$1.Kj[task.getPriority().ordinal()]) {
            case 1:
                put = this.Lc.put(task);
                break;
            case 2:
                put = this.Lb.put(task);
                break;
            case 3:
                put = this.La.put(task);
                break;
            case 4:
                Log.e("async", "Realtime task must NOT be put in Queue");
                break;
        }
        put = false;
        if (put) {
            task.a(Status.Queued, null);
            this.Ld.release();
        }
        return put;
    }

    private Task<?> dM() {
        Task<?> task = (Task) this.La.get();
        if (task == null) {
            task = (Task) this.Lb.get();
        }
        if (task == null) {
            return (Task) this.Lc.get();
        }
        return task;
    }

    /* renamed from: dN */
    public Task<?> get() {
        Task<?> task;
        if (!this.Kt.isShutdown()) {
            loop0:
            while (true) {
                task = null;
                while (task == null) {
                    try {
                        this.Ld.acquire();
                        if (this.Le.get()) {
                            synchronized (this.Le) {
                                while (this.Le.get()) {
                                    try {
                                        this.Le.wait();
                                    } catch (InterruptedException e) {
                                        this.Ld.release();
                                        return null;
                                    }
                                }
                            }
                        }
                        task = dM();
                        if (task.getStatus() == Status.Canceled) {
                        }
                    } catch (InterruptedException e2) {
                        return null;
                    }
                }
                break loop0;
            }
        }
        task = null;
        while (this.Ld.tryAcquire()) {
            task = dM();
            if (task.getStatus() != Status.Canceled) {
                break;
            }
        }
        return task;
    }

    /* renamed from: a */
    public boolean remove(Task<?> task) {
        if (!this.Ld.tryAcquire()) {
            return false;
        }
        boolean remove = this.La.remove((Object) task);
        if (!remove) {
            remove = this.Lb.remove((Object) task);
        }
        if (!remove) {
            remove = this.Lc.remove((Object) task);
        }
        if (remove) {
            return remove;
        }
        this.Ld.release();
        return remove;
    }

    public int remove(Predicate<Task<?>> predicate) {
        throw new RuntimeException("no support for this method");
    }

    public int clear() {
        int i = 0;
        while (this.Ld.tryAcquire()) {
            if (dM().getStatus() != Status.Canceled) {
                i++;
            }
        }
        return i;
    }

    public boolean isEmpty() {
        return this.Ld.availablePermits() == 0;
    }

    public int getCapacity() {
        return -1;
    }

    public void pause() {
        synchronized (this.Le) {
            this.Le.set(true);
        }
    }

    public void resume() {
        synchronized (this.Le) {
            this.Le.set(false);
            this.Le.notifyAll();
        }
    }
}
