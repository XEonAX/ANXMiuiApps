package com.nexstreaming.app.common.task;

import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnFailListener;
import com.nexstreaming.app.common.task.Task.OnProgressListener;
import com.nexstreaming.app.common.task.Task.OnTaskEventListener;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.app.common.task.Task.TaskErrorException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ResultTask<T> extends Task {
    private T mResult = null;
    private long mResultTime;

    public interface OnResultAvailableListener<T> {
        void onResultAvailable(ResultTask<T> resultTask, Event event, T t);
    }

    public ResultTask<T> setTimeout(long j) {
        super.setTimeout(j);
        return this;
    }

    public ResultTask<T> onFailure(OnFailListener onFailListener) {
        super.onFailure(onFailListener);
        return this;
    }

    public ResultTask<T> onCancel(OnTaskEventListener onTaskEventListener) {
        super.onCancel(onTaskEventListener);
        return this;
    }

    public ResultTask<T> onComplete(OnTaskEventListener onTaskEventListener) {
        super.onComplete(onTaskEventListener);
        return this;
    }

    public ResultTask<T> onProgress(OnProgressListener onProgressListener) {
        super.onProgress(onProgressListener);
        return this;
    }

    public ResultTask<T> onSuccess(OnTaskEventListener onTaskEventListener) {
        super.onSuccess(onTaskEventListener);
        return this;
    }

    public long getTimeSinceResult() {
        if (didSignalEvent(Event.RESULT_AVAILABLE)) {
            return (System.nanoTime() - this.mResultTime) / 1000000;
        }
        return -1;
    }

    public void setResult(T t) {
        int i = this.mResult != t ? 1 : 0;
        this.mResult = t;
        this.mResultTime = System.nanoTime();
        signalEvent(Event.RESULT_AVAILABLE);
        if (i != 0) {
            signalEvent(Event.UPDATE_OR_RESULT_AVAILABLE);
        }
    }

    public T getResult() {
        if (didSignalEvent(Event.RESULT_AVAILABLE)) {
            return this.mResult;
        }
        throw new RuntimeException("Result not available");
    }

    public void sendResult(T t) {
        setResult(t);
        super.signalEvent(Event.RESULT_AVAILABLE, Event.SUCCESS, Event.COMPLETE);
    }

    public ResultTask<T> onResultAvailable(final OnResultAvailableListener<T> onResultAvailableListener) {
        onEvent(Event.RESULT_AVAILABLE, new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                ResultTask resultTask = (ResultTask) task;
                onResultAvailableListener.onResultAvailable(resultTask, event, resultTask.getResult());
                ResultTask.this.removeListenerForFail();
            }
        });
        return this;
    }

    public ResultTask<T> onUpdateOrResultAvailable(final OnResultAvailableListener<T> onResultAvailableListener) {
        onEvent(Event.UPDATE_OR_RESULT_AVAILABLE, new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                ResultTask resultTask = (ResultTask) task;
                onResultAvailableListener.onResultAvailable(resultTask, event, resultTask.getResult());
            }
        });
        if (didSignalEvent(Event.RESULT_AVAILABLE)) {
            onResultAvailableListener.onResultAvailable(this, Event.UPDATE_OR_RESULT_AVAILABLE, this.mResult);
        }
        return this;
    }

    public T awaitResult() throws TaskErrorException {
        makeWaitable();
        awaitTaskCompletion();
        if (didSignalEvent(Event.FAIL)) {
            throw new TaskErrorException(getTaskError());
        } else if (didSignalEvent(Event.RESULT_AVAILABLE)) {
            return getResult();
        } else {
            throw new TaskErrorException(Task.NO_RESULT_AVAILABLE);
        }
    }

    public static <T> ResultTask<List<T>> combineResults(ResultTask<Collection<T>>... resultTaskArr) {
        return combineResults(Arrays.asList(resultTaskArr));
    }

    public static <T> ResultTask<T> completedResultTask(T t) {
        ResultTask<T> resultTask = new ResultTask();
        resultTask.sendResult(t);
        return resultTask;
    }

    public static <INDIVIDUAL_RESULT_TYPE, RESULT_COLLECTION extends Collection<INDIVIDUAL_RESULT_TYPE>, TASK_COLLECTION extends Collection<ResultTask<RESULT_COLLECTION>>> ResultTask<List<INDIVIDUAL_RESULT_TYPE>> combineResults(final TASK_COLLECTION task_collection) {
        ResultTask<List<INDIVIDUAL_RESULT_TYPE>> resultTask = new ResultTask();
        final Map hashMap = new HashMap();
        for (ResultTask onResultAvailable : task_collection) {
            onResultAvailable.onResultAvailable(new OnResultAvailableListener<RESULT_COLLECTION>(resultTask) {
                final /* synthetic */ ResultTask a;

                /* renamed from: a */
                public void onResultAvailable(ResultTask<RESULT_COLLECTION> resultTask, Event event, RESULT_COLLECTION result_collection) {
                    if (this.a.isRunning()) {
                        hashMap.put(resultTask, result_collection);
                        if (hashMap.size() >= task_collection.size()) {
                            List arrayList = new ArrayList();
                            for (ResultTask resultTask2 : task_collection) {
                                arrayList.addAll((Collection) hashMap.get(resultTask2));
                            }
                            this.a.sendResult(arrayList);
                        }
                    }
                }
            }).onFailure(new OnFailListener(resultTask) {
                final /* synthetic */ ResultTask a;

                public void onFail(Task task, Event event, TaskError taskError) {
                    this.a.sendFailure(taskError);
                    hashMap.clear();
                }
            });
        }
        return resultTask;
    }

    public static <T> ResultTask<T> failedResultTask(TaskError taskError) {
        ResultTask<T> resultTask = new ResultTask();
        resultTask.sendFailure(taskError);
        return resultTask;
    }
}
