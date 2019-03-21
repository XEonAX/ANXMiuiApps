package com.xiaomi.push.service;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.concurrent.RejectedExecutionException;

public class JobScheduler {
    private static long currentTime;
    private static long lastTime = currentTime;
    private static long timerId;
    private final FinalizerHelper finalizer;
    private final SchedulerImpl impl;

    public static abstract class Job implements Runnable {
        protected int type;

        public Job(int type) {
            this.type = type;
        }
    }

    private static final class FinalizerHelper {
        private final SchedulerImpl impl;

        FinalizerHelper(SchedulerImpl impl) {
            this.impl = impl;
        }

        protected void finalize() throws Throwable {
            try {
                synchronized (this.impl) {
                    this.impl.finished = true;
                    this.impl.notify();
                }
                super.finalize();
            } catch (Throwable th) {
                super.finalize();
            }
        }
    }

    private static final class SchedulerImpl extends Thread {
        private boolean cancelled;
        private long current_sleep_duration = 50;
        private volatile boolean executing = false;
        private boolean finished;
        private volatile long lastJob = 0;
        private TimerHeap tasks = new TimerHeap();

        private static final class TimerHeap {
            private int DEFAULT_HEAP_SIZE;
            private int deletedCancelledNumber;
            private int size;
            private TaskWraper[] timers;

            private TimerHeap() {
                this.DEFAULT_HEAP_SIZE = 256;
                this.timers = new TaskWraper[this.DEFAULT_HEAP_SIZE];
                this.size = 0;
                this.deletedCancelledNumber = 0;
            }

            public TaskWraper minimum() {
                return this.timers[0];
            }

            public boolean isEmpty() {
                return this.size == 0;
            }

            public void insert(TaskWraper task) {
                if (this.timers.length == this.size) {
                    TaskWraper[] appendedTimers = new TaskWraper[(this.size * 2)];
                    System.arraycopy(this.timers, 0, appendedTimers, 0, this.size);
                    this.timers = appendedTimers;
                }
                TaskWraper[] taskWraperArr = this.timers;
                int i = this.size;
                this.size = i + 1;
                taskWraperArr[i] = task;
                upHeap();
            }

            public boolean hasJob(int type) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].type == type) {
                        return true;
                    }
                }
                return false;
            }

            public void removeJobs(int type) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].type == type) {
                        this.timers[i].cancel();
                    }
                }
                deleteIfCancelled();
            }

            public void removeJobs(int type, Job job) {
                for (int i = 0; i < this.size; i++) {
                    if (this.timers[i].job == job) {
                        this.timers[i].cancel();
                    }
                }
                deleteIfCancelled();
            }

            public void delete(int pos) {
                if (pos >= 0 && pos < this.size) {
                    TaskWraper[] taskWraperArr = this.timers;
                    TaskWraper[] taskWraperArr2 = this.timers;
                    int i = this.size - 1;
                    this.size = i;
                    taskWraperArr[pos] = taskWraperArr2[i];
                    this.timers[this.size] = null;
                    downHeap(pos);
                }
            }

            private void upHeap() {
                int current = this.size - 1;
                while (true) {
                    int parent = (current - 1) / 2;
                    if (this.timers[current].when < this.timers[parent].when) {
                        TaskWraper tmp = this.timers[current];
                        this.timers[current] = this.timers[parent];
                        this.timers[parent] = tmp;
                        current = parent;
                    } else {
                        return;
                    }
                }
            }

            private void downHeap(int pos) {
                int current = pos;
                while (true) {
                    int child = (current * 2) + 1;
                    if (child < this.size && this.size > 0) {
                        if (child + 1 < this.size && this.timers[child + 1].when < this.timers[child].when) {
                            child++;
                        }
                        if (this.timers[current].when >= this.timers[child].when) {
                            TaskWraper tmp = this.timers[current];
                            this.timers[current] = this.timers[child];
                            this.timers[child] = tmp;
                            current = child;
                        } else {
                            return;
                        }
                    }
                    return;
                }
            }

            public void reset() {
                this.timers = new TaskWraper[this.DEFAULT_HEAP_SIZE];
                this.size = 0;
            }

            public void deleteIfCancelled() {
                int i = 0;
                while (i < this.size) {
                    if (this.timers[i].cancelled) {
                        this.deletedCancelledNumber++;
                        delete(i);
                        i--;
                    }
                    i++;
                }
            }

            private int getTask(TaskWraper task) {
                for (int i = 0; i < this.timers.length; i++) {
                    if (this.timers[i] == task) {
                        return i;
                    }
                }
                return -1;
            }
        }

        SchedulerImpl(String name, boolean isDaemon) {
            setName(name);
            setDaemon(isDaemon);
            start();
        }

        /* JADX WARNING: Missing block: B:71:?, code:
            r14.lastJob = android.os.SystemClock.uptimeMillis();
            r14.executing = true;
            r3.job.run();
            r14.executing = false;
     */
        /* JADX WARNING: Missing block: B:73:0x00b7, code:
            if (true != false) goto L_0x0000;
     */
        /* JADX WARNING: Missing block: B:74:0x00b9, code:
            monitor-enter(r14);
     */
        /* JADX WARNING: Missing block: B:77:?, code:
            r14.cancelled = true;
     */
        /* JADX WARNING: Missing block: B:78:0x00bd, code:
            monitor-exit(r14);
     */
        /* JADX WARNING: Missing block: B:89:0x00c7, code:
            if (false == false) goto L_0x00c9;
     */
        /* JADX WARNING: Missing block: B:90:0x00c9, code:
            monitor-enter(r14);
     */
        /* JADX WARNING: Missing block: B:93:?, code:
            r14.cancelled = true;
     */
        /* JADX WARNING: Missing block: B:114:0x0000, code:
            continue;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            while (true) {
                synchronized (this) {
                    if (this.cancelled) {
                        return;
                    } else if (!this.tasks.isEmpty()) {
                        long currentTime = JobScheduler.getCurrentTime();
                        TaskWraper task = this.tasks.minimum();
                        synchronized (task.lock) {
                            if (task.cancelled) {
                                this.tasks.delete(0);
                            } else {
                                long timeToSleep = task.when - currentTime;
                                if (timeToSleep > 0) {
                                    if (timeToSleep > this.current_sleep_duration) {
                                        timeToSleep = this.current_sleep_duration;
                                    }
                                    this.current_sleep_duration += 50;
                                    if (this.current_sleep_duration > 500) {
                                        this.current_sleep_duration = 500;
                                    }
                                    try {
                                        wait(timeToSleep);
                                    } catch (InterruptedException e) {
                                    }
                                } else {
                                    this.current_sleep_duration = 50;
                                    synchronized (task.lock) {
                                        int pos = 0;
                                        if (this.tasks.minimum().when != task.when) {
                                            pos = this.tasks.getTask(task);
                                        }
                                        if (task.cancelled) {
                                            this.tasks.delete(this.tasks.getTask(task));
                                        } else {
                                            task.setScheduledTime(task.when);
                                            this.tasks.delete(pos);
                                            task.when = 0;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (this.finished) {
                        return;
                    } else {
                        try {
                            wait();
                        } catch (InterruptedException e2) {
                        }
                    }
                }
            }
            while (true) {
            }
        }

        private void insertTask(TaskWraper newTask) {
            this.tasks.insert(newTask);
            notify();
        }

        public synchronized void cancel() {
            this.cancelled = true;
            this.tasks.reset();
            notify();
        }

        public boolean isBlocked() {
            return this.executing && SystemClock.uptimeMillis() - this.lastJob > 600000;
        }
    }

    static class TaskWraper {
        boolean cancelled;
        Job job;
        final Object lock = new Object();
        private long scheduledTime;
        int type;
        long when;

        TaskWraper() {
        }

        void setScheduledTime(long time) {
            synchronized (this.lock) {
                this.scheduledTime = time;
            }
        }

        public boolean cancel() {
            boolean willRun = true;
            synchronized (this.lock) {
                if (this.cancelled || this.when <= 0) {
                    willRun = false;
                }
                this.cancelled = true;
            }
            return willRun;
        }
    }

    static {
        long j = 0;
        if (SystemClock.elapsedRealtime() > 0) {
            j = SystemClock.elapsedRealtime();
        }
        currentTime = j;
    }

    static synchronized long getCurrentTime() {
        long j;
        synchronized (JobScheduler.class) {
            long now = SystemClock.elapsedRealtime();
            if (now > lastTime) {
                currentTime += now - lastTime;
            }
            lastTime = now;
            j = currentTime;
        }
        return j;
    }

    private static synchronized long nextId() {
        long j;
        synchronized (JobScheduler.class) {
            j = timerId;
            timerId = 1 + j;
        }
        return j;
    }

    public JobScheduler(String name, boolean isDaemon) {
        if (name == null) {
            throw new NullPointerException("name == null");
        }
        this.impl = new SchedulerImpl(name, isDaemon);
        this.finalizer = new FinalizerHelper(this.impl);
    }

    public JobScheduler(String name) {
        this(name, false);
    }

    public JobScheduler(boolean isDaemon) {
        this("Timer-" + nextId(), isDaemon);
    }

    public JobScheduler() {
        this(false);
    }

    public void quit() {
        this.impl.cancel();
    }

    public boolean hasJob(int type) {
        boolean hasJob;
        synchronized (this.impl) {
            hasJob = this.impl.tasks.hasJob(type);
        }
        return hasJob;
    }

    public void removeJobs(int jobType) {
        synchronized (this.impl) {
            this.impl.tasks.removeJobs(jobType);
        }
    }

    public void removeAllJobs() {
        synchronized (this.impl) {
            this.impl.tasks.reset();
        }
    }

    public void removeJobs(int jobType, Job job) {
        synchronized (this.impl) {
            this.impl.tasks.removeJobs(jobType, job);
        }
    }

    public boolean isBlocked() {
        return this.impl.isBlocked();
    }

    public void executeJobNow(Job job) {
        if (MyLog.getLogLevel() >= 1 || Thread.currentThread() == this.impl) {
            job.run();
        } else {
            MyLog.e("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    public void executeJobDelayed(Job task, long delay) {
        if (delay < 0) {
            throw new IllegalArgumentException("delay < 0: " + delay);
        }
        scheduleImpl(task, delay);
    }

    private void scheduleImpl(Job job, long delay) {
        synchronized (this.impl) {
            if (this.impl.cancelled) {
                throw new IllegalStateException("Timer was canceled");
            }
            long when = delay + getCurrentTime();
            if (when < 0) {
                throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + when);
            }
            TaskWraper task = new TaskWraper();
            task.type = job.type;
            task.job = job;
            task.when = when;
            this.impl.insertTask(task);
        }
    }
}
