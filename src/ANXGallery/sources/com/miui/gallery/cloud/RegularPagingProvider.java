package com.miui.gallery.cloud;

import android.database.Cursor;

public class RegularPagingProvider {
    private int mCurrentQueryCount;
    protected int mPage;
    private boolean mShouldContinue;
    private int mTotalLimit;
    private int mTotalQueriedCount;

    public RegularPagingProvider() {
        this(Integer.MAX_VALUE);
    }

    public RegularPagingProvider(int totalLimit) {
        this.mShouldContinue = true;
        this.mPage = 0;
        this.mTotalQueriedCount = 0;
        this.mCurrentQueryCount = 0;
        this.mTotalLimit = totalLimit;
    }

    public int getQueryLimit() {
        this.mCurrentQueryCount = Math.min(getLimitGrownSize() * 1000, this.mTotalLimit - this.mTotalQueriedCount);
        return this.mCurrentQueryCount;
    }

    public int getOffset() {
        return this.mTotalQueriedCount;
    }

    public int getLimitGrownSize() {
        return 1;
    }

    public boolean updateShouldContinue(Cursor cursor) {
        if (cursor != null) {
            return updateShouldContinue((long) cursor.getCount());
        }
        this.mShouldContinue = false;
        return this.mShouldContinue;
    }

    public boolean updateShouldContinue(long queriedCount) {
        boolean z = false;
        if (queriedCount == 0) {
            this.mShouldContinue = false;
        }
        this.mTotalQueriedCount += this.mCurrentQueryCount;
        if (queriedCount >= ((long) this.mCurrentQueryCount) && this.mTotalQueriedCount < this.mTotalLimit) {
            z = true;
        }
        this.mShouldContinue = z;
        this.mPage++;
        return this.mShouldContinue;
    }
}
