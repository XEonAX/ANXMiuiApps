package com.miui.gallery.cloud.control;

import android.text.TextUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.util.SyncLog;
import java.util.LinkedList;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ServerTagCache {
    private static final int MAX_CAPACITY = CloudControlStrategyHelper.getSyncStrategy().getMaxTempOperationServerTagCapacity();
    private final ReadWriteLock mLock;
    private final LinkedList<String> mPushTags;

    private static class Singleton {
        private static final ServerTagCache SINSTANCE = new ServerTagCache();
    }

    private ServerTagCache() {
        this.mPushTags = new LinkedList();
        this.mLock = new ReentrantReadWriteLock();
    }

    public static ServerTagCache getInstance() {
        return Singleton.SINSTANCE;
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

    public boolean contains(String serverTag) {
        lock(false);
        try {
            boolean contains = this.mPushTags.contains(serverTag);
            return contains;
        } finally {
            unlock(false);
        }
    }

    public boolean add(String serverTag) {
        lock(true);
        try {
            if (TextUtils.isEmpty(serverTag)) {
                unlock(true);
                return false;
            }
            SyncLog.d("ServerTagCache", "add server tag: %s", (Object) serverTag);
            this.mPushTags.addFirst(serverTag);
            trim();
            return true;
        } finally {
            unlock(true);
        }
    }

    private void trim() {
        while (this.mPushTags.size() > MAX_CAPACITY) {
            this.mPushTags.removeLast();
        }
    }
}
