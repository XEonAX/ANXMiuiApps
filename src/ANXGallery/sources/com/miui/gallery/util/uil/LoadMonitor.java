package com.miui.gallery.util.uil;

import com.miui.gallery.util.Log;
import java.text.DecimalFormat;

public class LoadMonitor {
    private static final Recorder[] RECORDERS = new Recorder[2];

    private static class Recorder {
        private static final DecimalFormat TIME_FORMAT = new DecimalFormat("#.00");
        private final int mAssertLine = (this.mBadLine * 5);
        private final int mBadLine;
        private int mCount;
        private final int mFrequency;
        private final int mGoodLine;
        private volatile boolean mIsSync;
        private long mSum;
        private final int mType;
        private int mWarnCount;
        private final int mWarnLine = (this.mBadLine * 2);

        public Recorder(int type, boolean initialSyncValue, int frequency, int goodLine, int badLine) {
            this.mType = type;
            this.mIsSync = initialSyncValue;
            this.mFrequency = frequency;
            this.mGoodLine = goodLine;
            this.mBadLine = badLine;
        }

        public synchronized void record(long cost) {
            int i;
            boolean isSync = this.mIsSync;
            if (isSync) {
                if (cost > ((long) this.mAssertLine)) {
                    setAsync("assert");
                    resetValues();
                } else if (cost > ((long) this.mWarnLine)) {
                    i = this.mWarnCount + 1;
                    this.mWarnCount = i;
                    if (i == 3) {
                        setAsync("warnings");
                        resetValues();
                    }
                } else {
                    this.mWarnCount = 0;
                }
            }
            int line = isSync ? this.mBadLine : this.mGoodLine;
            this.mSum += cost - ((long) line);
            i = this.mCount + 1;
            this.mCount = i;
            if (i == this.mFrequency) {
                long avg = this.mSum / ((long) this.mFrequency);
                Log.d("LoadMonitor", "%s average: %s+ %s nanos", Integer.valueOf(this.mType), Integer.valueOf(line), Long.valueOf(avg));
                if (isSync) {
                    if (avg > 0) {
                        setAsync("avg");
                    }
                } else if (avg < 0) {
                    setSync();
                }
                resetValues();
            }
        }

        private void setAsync(String reason) {
            this.mIsSync = false;
            this.mWarnCount = 0;
            Log.w("LoadMonitor", "%s sync->async | %s", Integer.valueOf(this.mType), reason);
        }

        private void setSync() {
            this.mIsSync = true;
            Log.w("LoadMonitor", "%s async->sync", Integer.valueOf(this.mType));
        }

        private void resetValues() {
            this.mCount = 0;
            this.mSum = 0;
        }

        public boolean isSync() {
            return this.mIsSync;
        }
    }

    static {
        RECORDERS[0] = new Recorder(0, false, 4, 800000, 1500000);
        RECORDERS[1] = new Recorder(1, false, 1, 8000000, 16000000);
    }

    public static boolean isSyncLoadMicro() {
        return RECORDERS[0].isSync();
    }

    public static boolean isSyncLoadThumb() {
        return RECORDERS[1].isSync();
    }

    public static void record(int loadType, long costNanos) {
        RECORDERS[loadType].record(costNanos);
    }
}
