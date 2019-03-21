package com.nexstreaming.app.common.task;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public class Task {
    public static final Task COMPLETED_TASK = new Task(Event.COMPLETE, Event.SUCCESS);
    public static final int INVALID_TASK_ID = 0;
    public static final TaskError NO_RESULT_AVAILABLE = new TaskError() {
        public Exception getException() {
            return null;
        }

        public String getMessage() {
            return "No result available";
        }

        public String getLocalizedMessage(Context context) {
            return getMessage();
        }
    };
    public static final TaskError TIMEOUT = new TaskError() {
        public Exception getException() {
            return null;
        }

        public String getMessage() {
            return "Timeout";
        }

        public String getLocalizedMessage(Context context) {
            return getMessage();
        }
    };
    public static final TaskError UNKNOWN_ERROR = new TaskError() {
        public Exception getException() {
            return null;
        }

        public String getMessage() {
            return "Unknown";
        }

        public String getLocalizedMessage(Context context) {
            return getMessage();
        }
    };
    private static SparseArray<WeakReference<Task>> sIntIdTaskMap = new SparseArray();
    private static Map<Long, WeakReference<Task>> sLongIdTaskMap = new HashMap();
    private static long sLongTaskId = ((SystemClock.uptimeMillis() & -1) << 32);
    private static int sRegisterCount = 0;
    private static int sTaskId = 0;
    private AtomicBoolean mCancelRequested;
    private boolean mCancellable;
    private Handler mHandler;
    private CountDownLatch mLatch;
    private List<Pair<OnTaskEventListener, Event>> mListeners;
    private final long mLongTaskId;
    private int mMaxProgress;
    private int mProgress;
    private boolean mProgressSignalled;
    private boolean mRegistered;
    private EnumSet<Event> mSignalledEvents;
    private TaskError mTaskError;
    private final int mTaskId;
    private Runnable mTimeoutRunnable;

    public interface TaskError {
        Exception getException();

        String getLocalizedMessage(Context context);

        String getMessage();
    }

    public interface OnTaskEventListener {
        void onTaskEvent(Task task, Event event);
    }

    public interface OnFailListener {
        void onFail(Task task, Event event, TaskError taskError);
    }

    public interface OnProgressListener {
        void onProgress(Task task, Event event, int i, int i2);
    }

    /* renamed from: com.nexstreaming.app.common.task.Task$3 */
    static class AnonymousClass3 implements OnFailListener {
        final /* synthetic */ Task a;

        AnonymousClass3(Task task) {
            this.a = task;
        }

        public void onFail(Task task, Event event, TaskError taskError) {
            this.a.sendFailure(taskError);
        }
    }

    public enum Event {
        SUCCESS,
        FAIL,
        COMPLETE,
        CANCEL,
        PROGRESS,
        RESULT_AVAILABLE,
        UPDATE_OR_RESULT_AVAILABLE
    }

    public static class MultiplexTask extends Task {
        final Task[] tasks;

        public interface OnAllTasksSignalledListener {
            void onAllTasksSignalled(MultiplexTask multiplexTask, Task[] taskArr, Event event);
        }

        /* synthetic */ MultiplexTask(Task[] taskArr, AnonymousClass1 anonymousClass1) {
            this(taskArr);
        }

        private MultiplexTask(Task[] taskArr) {
            this.tasks = taskArr;
        }

        public Task[] getTasks() {
            return this.tasks;
        }

        public Task onAllTasksSignalled(final OnAllTasksSignalledListener onAllTasksSignalledListener) {
            return onEvent(Event.COMPLETE, new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    onAllTasksSignalledListener.onAllTasksSignalled(MultiplexTask.this, MultiplexTask.this.tasks, event);
                }
            });
        }
    }

    public static class ProgressNotAvailableException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public ProgressNotAvailableException(String str, Throwable th) {
            super(str, th);
        }

        public ProgressNotAvailableException(String str) {
            super(str);
        }

        public ProgressNotAvailableException(Throwable th) {
            super(th);
        }
    }

    public static class SimpleTaskError implements TaskError {
        private final Exception mException;
        private final String mMessage;

        public SimpleTaskError(Exception exception, String str) {
            this.mException = exception;
            this.mMessage = str;
        }

        public Exception getException() {
            return this.mException;
        }

        public String getMessage() {
            if (this.mMessage != null) {
                return this.mMessage;
            }
            if (this.mException.getMessage() != null) {
                return this.mException.getMessage();
            }
            return "Unknown";
        }

        public String getLocalizedMessage(Context context) {
            if (this.mMessage != null) {
                return this.mMessage;
            }
            if (this.mException.getLocalizedMessage() != null) {
                return this.mException.getLocalizedMessage();
            }
            if (this.mException.getMessage() != null) {
                return this.mException.getMessage();
            }
            return "Unknown";
        }

        public String toString() {
            if (getException() != null) {
                return "<SimpleTaskError: " + getException().getClass().getName() + ">";
            }
            return "<SimpleTaskError: " + getMessage() + ">";
        }
    }

    public static class TaskErrorException extends Exception {
        private static final long serialVersionUID = 1;
        private final TaskError taskError;

        public TaskErrorException(TaskError taskError) {
            super(taskError.getMessage());
            this.taskError = taskError;
        }

        public TaskErrorException(TaskError taskError, Throwable th) {
            super(taskError.getMessage(), th);
            this.taskError = taskError;
        }

        public TaskError getTaskError() {
            return this.taskError;
        }
    }

    public String toString() {
        Iterator it = this.mSignalledEvents.iterator();
        Object obj = 1;
        String str = "";
        while (it.hasNext()) {
            str = str + (obj != null ? "" : ",") + ((Event) it.next()).name();
            obj = null;
        }
        if (str.length() < 1) {
            str = "none";
        }
        if (this.mProgressSignalled) {
            return "[Task " + this.mTaskId + ": progress=" + this.mProgress + "/" + this.mMaxProgress + " events=" + str + "]";
        }
        return "[Task " + this.mTaskId + ": events=" + str + "]";
    }

    public static TaskError makeTaskError(Exception exception) {
        return new SimpleTaskError(exception, null);
    }

    public static TaskError makeTaskError(String str, Exception exception) {
        return new SimpleTaskError(exception, str);
    }

    public static TaskError makeTaskError(String str) {
        return new SimpleTaskError(null, str);
    }

    public static Task makeFailedTask(Exception exception) {
        Task task = new Task();
        task.sendFailure(new SimpleTaskError(exception, null));
        return task;
    }

    public static Task makeFailedTask(String str, Exception exception) {
        Task task = new Task();
        task.sendFailure(new SimpleTaskError(exception, str));
        return task;
    }

    public static Task makeFailedTask(String str) {
        Task task = new Task();
        task.sendFailure(new SimpleTaskError(null, str));
        return task;
    }

    public static Task makeFailedTask(TaskError taskError) {
        Task task = new Task();
        task.sendFailure(taskError);
        return task;
    }

    public Task setTimeout(long j) {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        if (this.mTimeoutRunnable == null) {
            this.mTimeoutRunnable = new Runnable() {
                public void run() {
                    if (Task.this.isRunning()) {
                        Task.this.sendFailure(Task.TIMEOUT);
                    }
                    Task.this.mTimeoutRunnable = null;
                    Task.this.mHandler = null;
                }
            };
        } else {
            this.mHandler.removeCallbacks(this.mTimeoutRunnable);
        }
        this.mHandler.postDelayed(this.mTimeoutRunnable, j);
        return this;
    }

    public void cancel() {
        if (this.mCancellable) {
            this.mCancelRequested.set(true);
            return;
        }
        throw new RuntimeException("Not a cancellable task");
    }

    public boolean isCancelRequested() {
        if (this.mCancellable) {
            return this.mCancelRequested.get();
        }
        throw new RuntimeException("Not a cancellable task");
    }

    public boolean isCancellable() {
        return this.mCancellable;
    }

    public void setCancellable(boolean z) {
        this.mCancellable = z;
        if (this.mCancellable && this.mCancelRequested == null) {
            this.mCancelRequested = new AtomicBoolean(false);
        } else if (!this.mCancellable) {
            this.mCancelRequested = null;
        }
    }

    public Task() {
        this.mListeners = new LinkedList();
        this.mSignalledEvents = EnumSet.noneOf(Event.class);
        this.mProgress = 0;
        this.mMaxProgress = 0;
        this.mProgressSignalled = false;
        this.mRegistered = false;
        this.mTaskError = null;
        this.mCancellable = false;
        this.mHandler = null;
        this.mTimeoutRunnable = null;
        this.mLatch = null;
        sTaskId++;
        sLongTaskId++;
        if (sTaskId == 0) {
            sTaskId++;
        }
        if (sLongTaskId == 0) {
            sLongTaskId++;
        }
        this.mTaskId = sTaskId;
        this.mLongTaskId = sLongTaskId;
    }

    private Task(Event... eventArr) {
        this();
        signalEvent(eventArr);
    }

    public synchronized void makeWaitable() {
        if (this.mLatch == null) {
            this.mLatch = new CountDownLatch(1);
        }
        if (!isRunning()) {
            signalCompletionEvent();
        }
    }

    public Task awaitTaskCompletion() {
        if (this.mLatch == null) {
            throw new RuntimeException("Not a waitable task");
        } else if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new RuntimeException("Would block on UI thread");
        } else {
            Object obj = null;
            while (true) {
                Object obj2;
                try {
                    obj2 = obj;
                    this.mLatch.await();
                    if (obj2 != null) {
                        Thread.currentThread().interrupt();
                    }
                    return this;
                } catch (InterruptedException e) {
                    obj = 1;
                } catch (Throwable th) {
                    if (obj2 != null) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    private void signalCompletionEvent() {
        if (this.mLatch != null) {
            this.mLatch.countDown();
        }
    }

    public void register() {
        if (!this.mRegistered) {
            sIntIdTaskMap.put(this.mTaskId, new WeakReference(this));
            sLongIdTaskMap.put(Long.valueOf(this.mLongTaskId), new WeakReference(this));
            sRegisterCount++;
            if (sRegisterCount > 32) {
                List<Integer> arrayList = new ArrayList();
                int size = sIntIdTaskMap.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = sIntIdTaskMap.keyAt(i);
                    WeakReference weakReference = (WeakReference) sIntIdTaskMap.valueAt(i);
                    if (weakReference == null || weakReference.get() == null) {
                        arrayList.add(Integer.valueOf(keyAt));
                    }
                }
                for (Integer intValue : arrayList) {
                    sIntIdTaskMap.remove(intValue.intValue());
                }
                List<Long> arrayList2 = new ArrayList();
                for (Entry entry : sLongIdTaskMap.entrySet()) {
                    if (entry.getValue() == null || ((WeakReference) entry.getValue()).get() == null) {
                        arrayList2.add(entry.getKey());
                    }
                }
                for (Long remove : arrayList2) {
                    sLongIdTaskMap.remove(remove);
                }
                sRegisterCount = 0;
            }
            this.mRegistered = true;
        }
    }

    public static Task findTaskById(int i) {
        WeakReference weakReference = (WeakReference) sIntIdTaskMap.get(i);
        if (weakReference == null) {
            return null;
        }
        return (Task) weakReference.get();
    }

    public static Task findTaskByLongId(long j) {
        WeakReference weakReference = (WeakReference) sLongIdTaskMap.get(Long.valueOf(j));
        if (weakReference == null) {
            return null;
        }
        return (Task) weakReference.get();
    }

    public int getTaskId() {
        return this.mTaskId;
    }

    public long getLongTaskId() {
        return this.mLongTaskId;
    }

    public Task onEvent(Event event, OnTaskEventListener onTaskEventListener) {
        if (!(event == null || onTaskEventListener == null)) {
            if (didSignalEvent(event)) {
                onTaskEventListener.onTaskEvent(this, event);
            } else {
                this.mListeners.add(new Pair(onTaskEventListener, event));
            }
        }
        return this;
    }

    public boolean isRepeatableEvent(Event event) {
        return event == Event.PROGRESS || event == Event.UPDATE_OR_RESULT_AVAILABLE;
    }

    public boolean didSignalEvent(Event event) {
        return this.mSignalledEvents.contains(event);
    }

    public Task onSuccess(OnTaskEventListener onTaskEventListener) {
        return onEvent(Event.SUCCESS, onTaskEventListener);
    }

    public Task onFailure(final OnFailListener onFailListener) {
        return onEvent(Event.FAIL, new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                onFailListener.onFail(task, event, Task.this.getTaskError());
            }
        });
    }

    public Task onFailure(final Task task) {
        if (task != this) {
            return onEvent(Event.FAIL, new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    task.sendFailure(Task.this.getTaskError());
                }
            });
        }
        throw new InvalidParameterException();
    }

    public Task onComplete(OnTaskEventListener onTaskEventListener) {
        return onEvent(Event.COMPLETE, onTaskEventListener);
    }

    public Task onCancel(OnTaskEventListener onTaskEventListener) {
        return onEvent(Event.CANCEL, onTaskEventListener);
    }

    public Task onProgress(final OnProgressListener onProgressListener) {
        return onEvent(Event.PROGRESS, new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                onProgressListener.onProgress(task, event, Task.this.getProgress(), Task.this.getMaxProgress());
            }
        });
    }

    public void setProgress(int i, int i2) {
        this.mProgress = i;
        this.mMaxProgress = i2;
        this.mProgressSignalled = true;
        signalOneEvent(Event.PROGRESS);
    }

    public boolean isProgressAvailable() {
        return this.mProgressSignalled;
    }

    public int getProgress() {
        if (this.mProgressSignalled) {
            return this.mProgress;
        }
        throw new ProgressNotAvailableException();
    }

    public int getMaxProgress() {
        if (this.mProgressSignalled) {
            return this.mMaxProgress;
        }
        throw new ProgressNotAvailableException();
    }

    public TaskError getTaskError() {
        if (didSignalEvent(Event.FAIL)) {
            return this.mTaskError == null ? UNKNOWN_ERROR : this.mTaskError;
        } else {
            throw new RuntimeException("Error not available (task did not fail)");
        }
    }

    public void setTaskError(TaskError taskError) {
        this.mTaskError = taskError;
    }

    public void signalEvent(Event... eventArr) {
        for (Event event : eventArr) {
            if (event != Event.PROGRESS) {
                signalOneEvent(event);
            }
        }
    }

    public void sendFailure(TaskError taskError) {
        setTaskError(taskError);
        signalEvent(Event.FAIL);
    }

    public synchronized void removeListenerForFail() {
        Collection arrayList = new ArrayList(8);
        for (Pair pair : this.mListeners) {
            if (pair.second == Event.FAIL) {
                arrayList.add(pair);
            }
        }
        this.mListeners.removeAll(arrayList);
    }

    private synchronized void signalOneEvent(Event event) {
        if (event != null) {
            if (!didSignalEvent(event)) {
                if (didSignalEvent(Event.CANCEL)) {
                    Log.w("Task", "Ingoring attempt to signal a cancelled task.");
                } else if (event == Event.FAIL && didSignalEvent(Event.SUCCESS)) {
                    Log.w("Task", "Ingoring attempt to signal failure on task that already succeeded.");
                } else {
                    if (!(event != Event.COMPLETE || didSignalEvent(Event.SUCCESS) || didSignalEvent(Event.FAIL) || didSignalEvent(Event.CANCEL))) {
                        signalOneEvent(Event.SUCCESS);
                    }
                    if (!isRepeatableEvent(event)) {
                        this.mSignalledEvents.add(event);
                    }
                    Object<Pair> arrayList = new ArrayList(8);
                    for (Pair pair : this.mListeners) {
                        if (pair.second == event) {
                            arrayList.add(pair);
                        }
                    }
                    if (!isRepeatableEvent(event)) {
                        this.mListeners.removeAll(arrayList);
                    }
                    for (Pair pair2 : arrayList) {
                        ((OnTaskEventListener) pair2.first).onTaskEvent(this, event);
                    }
                    if (event == Event.COMPLETE || event == Event.FAIL || event == Event.CANCEL) {
                        signalCompletionEvent();
                    }
                }
            }
        }
    }

    public boolean isRunning() {
        return (didSignalEvent(Event.COMPLETE) || didSignalEvent(Event.FAIL) || didSignalEvent(Event.CANCEL)) ? false : true;
    }

    public boolean isComplete() {
        return didSignalEvent(Event.COMPLETE);
    }

    public static Task combinedTask(Collection<? extends Task> collection) {
        final Task task = new Task();
        final List<Task> arrayList = new ArrayList(collection);
        for (Task task2 : arrayList) {
            task2.onProgress(new OnProgressListener() {
                public void onProgress(Task task, Event event, int i, int i2) {
                    Object obj = null;
                    int i3 = 0;
                    int i4 = 0;
                    for (Task task2 : arrayList) {
                        if (!task2.isProgressAvailable()) {
                            break;
                        }
                        i4 += task2.getProgress();
                        i3 = task2.getMaxProgress() + i3;
                    }
                    int obj2 = 1;
                    if (obj2 != null) {
                        task.setProgress(i4, i3);
                    }
                }
            });
            task2.onComplete(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    int i;
                    for (Task didSignalEvent : arrayList) {
                        if (!didSignalEvent.didSignalEvent(Event.COMPLETE)) {
                            i = 0;
                            break;
                        }
                    }
                    i = 1;
                    if (i != 0) {
                        task.signalEvent(Event.COMPLETE);
                    }
                }
            });
            task2.onSuccess(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    int i;
                    for (Task didSignalEvent : arrayList) {
                        if (!didSignalEvent.didSignalEvent(Event.SUCCESS)) {
                            i = 0;
                            break;
                        }
                    }
                    i = 1;
                    if (i != 0) {
                        task.signalEvent(Event.SUCCESS);
                    }
                }
            });
            task2.onFailure(new AnonymousClass3(task));
        }
        return task;
    }

    public static MultiplexTask waitForAll(final Task... taskArr) {
        int i = 0;
        final MultiplexTask multiplexTask = new MultiplexTask(taskArr, null);
        final Event[] eventArr = new Event[taskArr.length];
        for (int i2 = 0; i2 < taskArr.length; i2++) {
            eventArr[i2] = null;
        }
        OnTaskEventListener anonymousClass4 = new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                int i;
                Event event2 = Event.COMPLETE;
                for (i = 0; i < taskArr.length; i++) {
                    if (taskArr[i] == task) {
                        eventArr[i] = event;
                        break;
                    }
                }
                i = 0;
                while (i < taskArr.length) {
                    if (eventArr[i] != null) {
                        if (eventArr[i] == Event.FAIL) {
                            event2 = Event.FAIL;
                        } else if (eventArr[i] == Event.CANCEL && event2 == Event.COMPLETE) {
                            event2 = Event.CANCEL;
                        }
                        i++;
                    } else {
                        return;
                    }
                }
                multiplexTask.signalEvent(event2);
            }
        };
        int length = taskArr.length;
        while (i < length) {
            Task task = taskArr[i];
            task.onEvent(Event.COMPLETE, anonymousClass4);
            task.onEvent(Event.FAIL, anonymousClass4);
            task.onEvent(Event.CANCEL, anonymousClass4);
            i++;
        }
        return multiplexTask;
    }
}
