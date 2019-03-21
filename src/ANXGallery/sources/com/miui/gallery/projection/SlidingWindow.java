package com.miui.gallery.projection;

import android.text.TextUtils;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.util.Log;
import java.util.Arrays;

/* compiled from: ConnectController */
class SlidingWindow {
    private int mCurrentIndex = 0;
    private boolean mCurrentIndexChanged = true;
    private int mEndIndex;
    private String[] mFiles = new String[151];
    private BaseDataSet mMediaSet;
    private int mStartIndex;
    private int mTotalCount;

    SlidingWindow() {
    }

    public synchronized void setMediaSet(BaseDataSet mediaSet) {
        if (!(this.mMediaSet == mediaSet && mediaSet == null)) {
            if (mediaSet == null || this.mMediaSet != mediaSet) {
                reset();
            }
            this.mMediaSet = mediaSet;
        }
    }

    private void reset() {
        this.mStartIndex = 0;
        this.mEndIndex = 0;
        Arrays.fill(this.mFiles, null);
        this.mCurrentIndex = 0;
        this.mCurrentIndexChanged = true;
    }

    /* JADX WARNING: Missing block: B:24:0x0068, code:
            if (r1 < 0) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized String getPrevious(String filePath, boolean isRecyle) {
        String str = null;
        synchronized (this) {
            if (this.mCurrentIndexChanged) {
                this.mCurrentIndexChanged = false;
                slideWindowTo(this.mCurrentIndex);
            }
            if (this.mTotalCount > 0 && !TextUtils.isEmpty(filePath)) {
                int index = indexOf(filePath);
                if (index == 0) {
                    slideWindowTo(this.mStartIndex);
                    index = indexOf(filePath);
                }
                if (index == -1) {
                    index = this.mCurrentIndex - this.mStartIndex;
                }
                int pre = index - 1;
                if (isRecyle) {
                    if (pre < 0) {
                        pre = this.mFiles.length - 1;
                    }
                }
                Log.i("SlidingWindow", "getPrevious: pre=" + this.mFiles[pre] + ", index=" + pre);
                str = this.mFiles[pre];
            }
        }
        return str;
    }

    /* JADX WARNING: Missing block: B:30:0x0082, code:
            if (r1 >= r5.mFiles.length) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized String getNext(String filePath, boolean isRecyle) {
        String str = null;
        synchronized (this) {
            if (this.mCurrentIndexChanged) {
                this.mCurrentIndexChanged = false;
                slideWindowTo(this.mCurrentIndex);
            }
            if (this.mTotalCount > 0 && !TextUtils.isEmpty(filePath)) {
                int index = indexOf(filePath);
                if (index == -1) {
                    index = this.mCurrentIndex - this.mStartIndex;
                } else if (index == (this.mEndIndex - this.mStartIndex) - 1) {
                    if (this.mEndIndex < this.mTotalCount) {
                        slideWindowTo(this.mEndIndex - 1);
                        index = indexOf(filePath);
                    } else if (isRecyle) {
                        slideWindowTo(0);
                        index = -1;
                    }
                }
                int next = index + 1;
                if (isRecyle) {
                    if (next >= this.mFiles.length) {
                        next = 0;
                    }
                }
                Log.i("SlidingWindow", "getNext: next=" + this.mFiles[next] + ", index=" + next);
                str = this.mFiles[next];
            }
        }
        return str;
    }

    private int indexOf(String filePath) {
        int index = 0;
        if (filePath != null) {
            for (String file : this.mFiles) {
                if (file != null && file.equals(filePath)) {
                    return index;
                }
                index++;
            }
        }
        return -1;
    }

    private void doSlideWindow(int indexSlideTo) {
        if (this.mMediaSet == null) {
            reset();
            return;
        }
        this.mTotalCount = this.mMediaSet.getCount();
        if (this.mTotalCount <= 0) {
            reset();
            return;
        }
        this.mStartIndex = Math.max(indexSlideTo - 75, 0);
        this.mEndIndex = Math.min((indexSlideTo + 75) + 1, this.mTotalCount);
        int bufferIndex = 0;
        for (int index = this.mStartIndex; index < this.mEndIndex; index++) {
            BaseDataItem item = this.mMediaSet.getItem(null, index);
            if (item != null) {
                String path = item.getPathDisplayBetter();
                if (!TextUtils.isEmpty(path)) {
                    this.mFiles[bufferIndex] = path;
                    bufferIndex++;
                }
            }
        }
        Log.i("SlidingWindow", "slideWindow, mStartIndex=" + this.mStartIndex + ", mEndIndex=" + this.mEndIndex);
    }

    private void slideWindowTo(int indexSlideTo) {
        if (this.mMediaSet == null) {
            reset();
            return;
        }
        int count = this.mMediaSet.getCount();
        if (count <= 0) {
            reset();
            return;
        }
        if (indexSlideTo < 0) {
            indexSlideTo = 0;
        } else if (indexSlideTo >= count) {
            indexSlideTo = count - 1;
        }
        if (this.mStartIndex == this.mEndIndex || count != this.mTotalCount || (this.mTotalCount > this.mEndIndex - this.mStartIndex && isWindowDirty(indexSlideTo))) {
            doSlideWindow(indexSlideTo);
        }
    }

    private boolean isWindowDirty(int currentIndex) {
        return (this.mStartIndex > 0 && currentIndex - this.mStartIndex < 50) || (this.mEndIndex < this.mTotalCount && this.mEndIndex - currentIndex < 50);
    }

    public synchronized void onCurrentIndexChanged(int currentIndex) {
        this.mCurrentIndexChanged = (this.mCurrentIndex != currentIndex ? 1 : 0) | this.mCurrentIndexChanged;
        this.mCurrentIndex = currentIndex;
    }
}
