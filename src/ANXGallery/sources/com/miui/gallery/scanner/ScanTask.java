package com.miui.gallery.scanner;

import com.miui.gallery.threadpool.ThreadPool.Job;

public abstract class ScanTask implements Job<Void>, Comparable<ScanTask> {
    private final boolean mForceScan;
    private final boolean mForeground;
    private final long mNewTime = System.currentTimeMillis();
    private final int mPriority;

    public ScanTask(int priority, boolean foreground) {
        this.mPriority = priority;
        this.mForeground = foreground;
        this.mForceScan = false;
    }

    public ScanTask(int priority, boolean foreground, boolean forceScan) {
        this.mPriority = priority;
        this.mForeground = foreground;
        this.mForceScan = forceScan;
    }

    public long getNewTime() {
        return this.mNewTime;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public boolean isForeground() {
        return this.mForeground;
    }

    protected boolean canRunningInBackground() {
        return false;
    }

    public boolean isForceScan() {
        return this.mForceScan;
    }

    public int compareTo(ScanTask another) {
        if (another == null) {
            return -1;
        }
        if (this == another) {
            return 0;
        }
        int priority = this.mPriority - another.getPriority();
        return priority == 0 ? Long.valueOf(this.mNewTime).compareTo(Long.valueOf(another.getNewTime())) : priority;
    }
}
