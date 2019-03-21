package com.miui.gallery.cloud.thread;

import android.os.SystemClock;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.cloud.UpDownloadManager;
import com.miui.gallery.cloud.thread.CommandQueue.OnQueueChangedListener;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class RequestCommandQueue {
    private final int mAllowBatchMax;
    private final Map<String, RequestCommand> mExecutings;
    private final OnItemChangedListener mListener;
    private final ReadWriteLock mLock = new ReentrantReadWriteLock();
    private final CommandQueue<RequestCommand> mPendings;
    private final String mTag;

    public interface OnItemChangedListener {
        void onAddItem(RequestCloudItem requestCloudItem);

        void onRemoveItem(RequestCloudItem requestCloudItem);
    }

    public RequestCommandQueue(int priorityCount, int batchMax, int commandMax, OnItemChangedListener l, String tag) {
        this.mPendings = new CommandQueue(priorityCount, commandMax);
        this.mExecutings = Maps.newHashMap();
        this.mAllowBatchMax = batchMax;
        this.mListener = l;
        this.mTag = tag;
    }

    public int getPengdingSize() {
        lock(false);
        try {
            int size = this.mPendings.size();
            return size;
        } finally {
            unlock(false);
        }
    }

    public int put(List<RequestCommand> commands, boolean atFirst) {
        lock(true);
        try {
            int addCount;
            long now = SystemClock.uptimeMillis();
            List<RequestCommand> filtered = Lists.newArrayList();
            for (RequestCommand cmd : commands) {
                if (!this.mExecutings.containsKey(cmd.getKey())) {
                    filtered.add(cmd);
                }
            }
            OnQueueChangedListener<RequestCommand> l = new OnQueueChangedListener<RequestCommand>() {
                public void onAdd(RequestCommand command) {
                    command.mRequestItem.setStatus(0);
                    RequestCommandQueue.this.onAddCommand(command);
                }

                public void onRemove(RequestCommand command) {
                    command.mRequestItem.compareAndSetStatus(0, 3);
                    RequestCommandQueue.this.onRemoveCommand(command);
                }
            };
            if (atFirst) {
                addCount = this.mPendings.putAtFrist(filtered, now, l);
            } else {
                addCount = this.mPendings.putAtLast(filtered, now, l);
            }
            Log.d(this.mTag, "put: add count=" + addCount + ", atFirst=" + atFirst);
            return addCount;
        } finally {
            unlock(true);
        }
    }

    public void removeFromExecuting(String key) {
        lock(true);
        try {
            RequestCommand cmd = (RequestCommand) this.mExecutings.remove(key);
            if (cmd != null) {
                onRemoveCommand(cmd);
            }
            unlock(true);
        } catch (Throwable th) {
            unlock(true);
        }
    }

    public long pollToExecute(List<RequestCommand> result) {
        lock(true);
        try {
            long minDelay;
            long now = SystemClock.uptimeMillis();
            this.mPendings.poll(result, this.mAllowBatchMax, now);
            if (result.isEmpty()) {
                minDelay = this.mPendings.getMinDelay(now);
            } else {
                minDelay = 0;
                for (RequestCommand cmd : result) {
                    this.mExecutings.put(cmd.getKey(), cmd);
                }
            }
            Log.d(this.mTag, "pollToExecute: remove count=" + result.size() + ", remain count=" + this.mPendings.size());
            return minDelay;
        } finally {
            unlock(true);
        }
    }

    public void cancelAll(boolean abandon) {
        int i = 0;
        while (i < 14) {
            if (!(SyncConditionManager.check(i) == 0 || UpDownloadManager.getThreadType(i) == -1)) {
                cancelAll(i, abandon);
            }
            i++;
        }
    }

    public void cancelAll(int priority, boolean abandon) {
        int status;
        Log.d(this.mTag, "cancelAll: remain count=" + this.mPendings.size() + ", abandon=" + abandon);
        if (abandon) {
            status = 3;
        } else {
            status = 1;
        }
        lock(true);
        try {
            for (RequestCommand cmd : this.mExecutings.values()) {
                if (cmd.mRequestItem.priority == priority) {
                    cmd.mRequestItem.compareAndSetStatus(0, status);
                }
            }
            List<RequestCommand> cmdRemove = new ArrayList();
            for (RequestCommand cmd2 : this.mPendings.values()) {
                if (cmd2.mRequestItem.priority == priority) {
                    cmd2.mRequestItem.compareAndSetStatus(0, status);
                    onRemoveCommand(cmd2);
                    cmdRemove.add(cmd2);
                }
            }
            for (RequestCommand item : cmdRemove) {
                this.mPendings.remove(item.getKey());
            }
        } finally {
            unlock(true);
        }
    }

    public List<RequestCommand> interruptIfNotExecuting(List<RequestCommand> commands) {
        Log.d(this.mTag, "interruptExecuting: executing count=" + this.mExecutings.size());
        List<RequestCommand> result = Lists.newArrayList();
        lock(true);
        try {
            for (RequestCommand cmd : commands) {
                if (this.mExecutings.containsKey(cmd.getKey())) {
                    break;
                }
            }
            for (RequestCommand cmd2 : this.mExecutings.values()) {
                cmd2.mRequestItem.compareAndSetStatus(0, 1);
                onRemoveCommand(cmd2);
                result.add(cmd2);
            }
            this.mExecutings.clear();
            unlock(true);
            return result;
        } finally {
            unlock(true);
        }
    }

    private void lock(boolean write) {
        if (write) {
            this.mLock.writeLock().lock();
        } else {
            this.mLock.readLock().lock();
        }
    }

    private void unlock(boolean write) {
        if (write) {
            this.mLock.writeLock().unlock();
        } else {
            this.mLock.readLock().unlock();
        }
    }

    void onAddCommand(RequestCommand cmd) {
        this.mListener.onAddItem(cmd.mRequestItem);
    }

    void onRemoveCommand(RequestCommand cmd) {
        this.mListener.onRemoveItem(cmd.mRequestItem);
    }

    boolean hasDelayedItem() {
        lock(false);
        try {
            boolean hasDelayedItem = this.mPendings.hasDelayedItem();
            return hasDelayedItem;
        } finally {
            unlock(false);
        }
    }
}
