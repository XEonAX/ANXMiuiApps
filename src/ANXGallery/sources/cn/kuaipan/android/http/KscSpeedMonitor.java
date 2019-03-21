package cn.kuaipan.android.http;

public class KscSpeedMonitor {
    private final String mHost;
    private long mLatestUpdate = KscSpeedManager.current();
    private final KscSpeedManager mManager;

    public KscSpeedMonitor(KscSpeedManager speedManager, String host) {
        this.mManager = speedManager;
        this.mHost = host;
    }

    public void recode(long start, long end, long size) {
        if (this.mManager != null) {
            this.mManager.recoder(this.mHost, start, end, (float) size);
            if (end > this.mLatestUpdate) {
                this.mLatestUpdate = end;
            }
        }
    }

    public void recode(long size) {
        if (this.mManager != null) {
            long current = KscSpeedManager.current();
            this.mManager.recoder(this.mHost, this.mLatestUpdate, current, (float) size);
            this.mLatestUpdate = current;
        }
    }
}
