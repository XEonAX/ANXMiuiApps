package org.android.spdy;

public class SpdyStreamContext {
    public Spdycb callBack;
    public Object streamContext;
    public int streamId;

    SpdyStreamContext(Object ut) {
        this.streamContext = ut;
        this.callBack = null;
        this.streamId = -1;
    }

    SpdyStreamContext(Object ut, Spdycb cb) {
        this.streamContext = ut;
        this.callBack = cb;
    }

    static int getContext(Object obj) {
        if (obj == null || !(obj instanceof Integer)) {
            return 0;
        }
        return ((Integer) obj).intValue();
    }
}
