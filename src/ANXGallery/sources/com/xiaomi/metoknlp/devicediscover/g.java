package com.xiaomi.metoknlp.devicediscover;

/* compiled from: DiscoverService */
class g implements o {
    private String M;
    private long N;
    final /* synthetic */ m a;
    private long mDuration;

    private g(m mVar) {
        this.a = mVar;
    }

    /* synthetic */ g(m mVar, a aVar) {
        this(mVar);
    }

    public long getStart() {
        return this.N;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void a(String str, long j, long j2) {
        this.M = str;
        this.N = j;
        this.mDuration = j2;
        this.a.mHandler.obtainMessage(1).sendToTarget();
    }
}
