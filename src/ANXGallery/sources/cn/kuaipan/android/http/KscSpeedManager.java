package cn.kuaipan.android.http;

import android.os.SystemClock;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map.Entry;

public class KscSpeedManager {
    private long mLatestEraseTime = 0;
    private final int mRecodeDuration;
    private final HashMap<String, SparseArray<Float>> mRecordMap = new HashMap();

    KscSpeedManager(int recodeDuration) {
        if (recodeDuration < 0) {
            recodeDuration = 600;
        }
        this.mRecodeDuration = Math.min(3600, Math.max(300, recodeDuration));
    }

    public KscSpeedMonitor getMoniter(String host) {
        return new KscSpeedMonitor(this, host);
    }

    public synchronized void recoder(String host, long start, long end, float size) {
        if (end >= start && size >= 0.0f) {
            long sSec = start / 1000;
            long eSec = end / 1000;
            long dur;
            float header;
            float foot;
            int headerKey;
            int footKey;
            if (eSec == sSec) {
                appendRecoder(host, computeKey(start), size);
            } else if (eSec - sSec <= 1) {
                dur = end - start;
                header = (((float) (1000 - (start % 1000))) * size) / ((float) dur);
                foot = (((float) (end % 1000)) * size) / ((float) dur);
                headerKey = computeKey(start);
                footKey = computeKey(end);
                appendRecoder(host, headerKey, header);
                appendRecoder(host, footKey, foot);
            } else {
                dur = end - start;
                header = (((float) (1000 - (start % 1000))) * size) / ((float) dur);
                foot = (((float) (end % 1000)) * size) / ((float) dur);
                float body = ((size - header) - foot) / ((float) ((eSec - sSec) - 1));
                headerKey = computeKey(start);
                footKey = computeKey(end);
                appendRecoder(host, headerKey, header);
                appendRecoder(host, footKey, foot);
                appendRecoders(host, headerKey + 1, footKey - 1, body);
            }
            eraseExpired();
        }
    }

    private void eraseExpired() {
        long current = current();
        if (current - this.mLatestEraseTime > 300000) {
            int endKey = computeKey(current);
            int startKey = endKey - this.mRecodeDuration;
            boolean broken = endKey < startKey;
            LinkedList<String> removeList = new LinkedList();
            for (Entry<String, SparseArray<Float>> entity : this.mRecordMap.entrySet()) {
                String host = (String) entity.getKey();
                SparseArray<Float> recodes = (SparseArray) entity.getValue();
                int index;
                int key;
                if (broken) {
                    index = 0;
                    while (index < recodes.size()) {
                        key = recodes.keyAt(index);
                        if (key > endKey && key < startKey) {
                            recodes.delete(key);
                        } else if (key >= startKey) {
                            break;
                        } else {
                            index++;
                        }
                    }
                } else {
                    index = 0;
                    while (index < recodes.size()) {
                        key = recodes.keyAt(index);
                        if (key > endKey || key < startKey) {
                            recodes.delete(key);
                        } else {
                            index++;
                        }
                    }
                }
                if (recodes.size() <= 0) {
                    removeList.add(host);
                }
            }
            Iterator it = removeList.iterator();
            while (it.hasNext()) {
                this.mRecordMap.remove((String) it.next());
            }
            this.mLatestEraseTime = current;
        }
    }

    private static int computeKey(long start) {
        return (int) ((start / 1000) % 3600000);
    }

    private void appendRecoders(String host, int startKey, int endKey, float size) {
        int key;
        if (endKey >= startKey) {
            for (key = startKey; key <= endKey; key++) {
                appendRecoder(host, key, size);
            }
            return;
        }
        for (key = startKey; key < 3600000; key++) {
            appendRecoder(host, key, size);
        }
        for (key = 0; key <= endKey; key++) {
            appendRecoder(host, key, size);
        }
    }

    private void appendRecoder(String host, int key, float size) {
        SparseArray<Float> recoders = (SparseArray) this.mRecordMap.get(host);
        if (recoders == null) {
            recoders = new SparseArray();
            this.mRecordMap.put(host, recoders);
        }
        recoders.put(key, Float.valueOf(((Float) recoders.get(key, Float.valueOf(0.0f))).floatValue() + size));
        if (host != null) {
            appendRecoder(null, key, size);
        }
    }

    public static long current() {
        return SystemClock.elapsedRealtime();
    }
}
