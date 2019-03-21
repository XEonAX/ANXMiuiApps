package com.miui.gallery.sdk.download.executor;

import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.executor.queue.Queue;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class DownloadCommandQueue {
    private final int mAllowBatchMax;
    private final Map<String, DownloadCommand> mExecutings;
    private final ReadWriteLock mLock = new ReentrantReadWriteLock();
    private final Queue<DownloadCommand> mPendings;
    private final String mTag;

    public DownloadCommandQueue(int batchMax, int commandMax, String tag) {
        this.mPendings = new Queue(commandMax);
        this.mExecutings = new HashMap();
        this.mAllowBatchMax = batchMax;
        this.mTag = tag;
    }

    public int getBatchSize() {
        return this.mAllowBatchMax;
    }

    public int getPendingSize() {
        lock(false);
        try {
            int size = this.mPendings.size();
            return size;
        } finally {
            unlock(false);
        }
    }

    public int put(DownloadCommand command, boolean atFirst) {
        return put(Arrays.asList(new DownloadCommand[]{command}), atFirst);
    }

    public int put(List<DownloadCommand> commands, boolean atFirst) {
        lock(true);
        try {
            int addCount;
            List<DownloadCommand> filtered = new ArrayList();
            for (DownloadCommand cmd : commands) {
                if (!this.mExecutings.containsKey(cmd.getKey())) {
                    filtered.add(cmd);
                }
            }
            if (atFirst) {
                addCount = this.mPendings.putAtFirst(filtered);
            } else {
                addCount = this.mPendings.putAtLast(filtered);
            }
            Log.d(this.mTag, "put: add count=%d, atFirst=%s", Integer.valueOf(addCount), Boolean.valueOf(atFirst));
            return addCount;
        } finally {
            unlock(true);
        }
    }

    public DownloadCommand removeFromExecuting(String key) {
        lock(true);
        try {
            DownloadCommand downloadCommand = (DownloadCommand) this.mExecutings.remove(key);
            return downloadCommand;
        } finally {
            unlock(true);
        }
    }

    public DownloadCommand remove(String key) {
        lock(true);
        try {
            DownloadCommand cmd = (DownloadCommand) this.mExecutings.remove(key);
            if (cmd == null) {
                cmd = (DownloadCommand) this.mPendings.remove(key);
            }
            unlock(true);
            return cmd;
        } catch (Throwable th) {
            unlock(true);
        }
    }

    public List<DownloadCommand> pollToExecute() {
        lock(true);
        try {
            List<DownloadCommand> result = this.mPendings.poll(this.mAllowBatchMax);
            if (result != null) {
                for (DownloadCommand cmd : result) {
                    this.mExecutings.put(cmd.getKey(), cmd);
                }
            }
            Log.d(this.mTag, "pollToExecute: remove count=%d, remain count=%d", Integer.valueOf(result.size()), Integer.valueOf(this.mPendings.size()));
            return result;
        } finally {
            unlock(true);
        }
    }

    public int cancel(String key) {
        lock(true);
        int status = -1;
        try {
            DownloadCommand cmd = (DownloadCommand) this.mPendings.remove(key);
            if (cmd != null) {
                status = 0;
            } else {
                cmd = (DownloadCommand) this.mExecutings.remove(key);
                if (cmd != null) {
                    status = 1;
                }
            }
            if (cmd != null && cmd.getItem().compareAnsSetStatus(0, 1)) {
                DownloadItem.callbackCancel(cmd.getItem());
            }
            unlock(true);
            return status;
        } catch (Throwable th) {
            unlock(true);
        }
    }

    public int contains(String key) {
        lock(false);
        try {
            if (this.mPendings.get(key) != null) {
                return 0;
            }
            if (this.mExecutings.get(key) != null) {
                unlock(false);
                return 1;
            }
            unlock(false);
            return -1;
        } finally {
            unlock(false);
        }
    }

    public List<DownloadCommand> cancelAll() {
        lock(true);
        try {
            List<DownloadCommand> list = new ArrayList();
            Collection<DownloadCommand> values = this.mExecutings.values();
            if (values != null) {
                for (DownloadCommand cmd : values) {
                    list.add(cmd);
                }
            }
            this.mExecutings.clear();
            values = this.mPendings.values();
            if (values != null) {
                for (DownloadCommand cmd2 : values) {
                    list.add(cmd2);
                }
            }
            this.mPendings.clear();
            for (DownloadCommand cmd22 : list) {
                if (cmd22.getItem().compareAnsSetStatus(0, 1)) {
                    DownloadItem.callbackCancel(cmd22.getItem());
                }
            }
            return list;
        } finally {
            unlock(true);
        }
    }

    public List<DownloadCommand> interrupt() {
        lock(true);
        try {
            List<DownloadCommand> interrupted = new LinkedList();
            for (DownloadCommand cmd : this.mExecutings.values()) {
                if (cmd.getItem().compareAnsSetStatus(0, 2)) {
                    interrupted.add(cmd);
                }
            }
            this.mExecutings.clear();
            for (DownloadCommand cmd2 : this.mPendings.values()) {
                if (cmd2.getItem().compareAnsSetStatus(0, 2)) {
                    interrupted.add(cmd2);
                }
            }
            this.mPendings.clear();
            List<DownloadCommand> reAdd = new LinkedList();
            for (DownloadCommand cmd22 : interrupted) {
                reAdd.add(new DownloadCommand(cmd22));
            }
            this.mPendings.putAtLast(reAdd);
            return interrupted;
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
}
