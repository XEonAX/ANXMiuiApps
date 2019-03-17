package org.android.spdy;

import android.util.Log;

public class NetTimeGaurd {
    public static final int CREATE = 0;
    public static final int ERROR = 2;
    public static final int PING = 1;
    public static final int STREAM = 3;
    private static final long calltime = 10;
    private static final long total = 50;
    private static long[] totaltime = new long[4];

    static void start(int level) {
        if (SpdyAgent.enableTimeGaurd) {
            totaltime[level] = 0;
        }
    }

    static long begin() {
        if (SpdyAgent.enableTimeGaurd) {
            return System.currentTimeMillis();
        }
        return 0;
    }

    static void end(String msg, int level, long begin) {
        if (SpdyAgent.enableTimeGaurd) {
            long time = System.currentTimeMillis() - begin;
            totaltime[level] = totaltime[level] + time;
            Log.i("NetTimeGaurd", "NetTimeGaurd[end]" + msg + " time=" + time + " total=" + totaltime[level]);
            if (time > calltime) {
                throw new SpdyErrorException("CallBack:" + msg + " timeconsuming:" + time + "  mustlessthan:" + calltime, -1);
            }
        }
    }

    static void finish(int level) {
        if (SpdyAgent.enableTimeGaurd) {
            Log.i("NetTimeGaurd", "NetTimeGaurd[finish]:time=" + totaltime[level]);
            if (totaltime[level] > total) {
                throw new SpdyErrorException("CallBack totaltimeconsuming:" + totaltime[level] + "  mustlessthan:" + total, -1);
            }
        }
    }
}
