package com.miui.gallery.cloud.syncstate;

import java.util.Objects;

public class DirtyCount {
    private int mOversizedImageCount;
    private int mOversizedVideoCount;
    private int mSyncableImageCount;
    private int mSyncableVideoCount;

    public void setSyncableImageCount(int syncableImageCount) {
        this.mSyncableImageCount = syncableImageCount;
    }

    public void setSyncableVideoCount(int syncableVideoCount) {
        this.mSyncableVideoCount = syncableVideoCount;
    }

    public void setOversizedImageCount(int oversizedImageCount) {
        this.mOversizedImageCount = oversizedImageCount;
    }

    public void setOversizedVideoCount(int oversizedVideoCount) {
        this.mOversizedVideoCount = oversizedVideoCount;
    }

    public int getSyncableCount() {
        return this.mSyncableImageCount + this.mSyncableVideoCount;
    }

    public int getOversizedCount() {
        return this.mOversizedImageCount + this.mOversizedVideoCount;
    }

    public int getTotalImageCount() {
        return this.mSyncableImageCount + this.mOversizedImageCount;
    }

    public int getTotalVideoCount() {
        return this.mSyncableVideoCount + this.mOversizedVideoCount;
    }

    public DirtyCount plus(DirtyCount dirtyCount) {
        if (dirtyCount != null) {
            this.mSyncableImageCount += dirtyCount.mSyncableImageCount;
            this.mSyncableVideoCount += dirtyCount.mSyncableVideoCount;
            this.mOversizedImageCount += dirtyCount.mOversizedImageCount;
            this.mOversizedVideoCount += dirtyCount.mOversizedVideoCount;
        }
        return this;
    }

    public int hashCode() {
        return Objects.hash(new Object[]{Integer.valueOf(this.mSyncableImageCount), Integer.valueOf(this.mSyncableVideoCount), Integer.valueOf(this.mOversizedImageCount), Integer.valueOf(this.mOversizedVideoCount)});
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof DirtyCount)) {
            return false;
        }
        DirtyCount other = (DirtyCount) obj;
        if (this.mSyncableImageCount == other.mSyncableImageCount && this.mSyncableVideoCount == other.mSyncableVideoCount && this.mOversizedImageCount == other.mOversizedImageCount && this.mOversizedVideoCount == other.mOversizedVideoCount) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "DirtyCount{mSyncableImageCount=" + this.mSyncableImageCount + ", mSyncableVideoCount=" + this.mSyncableVideoCount + ", mOversizedImageCount=" + this.mOversizedImageCount + ", mOversizedVideoCount=" + this.mOversizedVideoCount + '}';
    }
}
