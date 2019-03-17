package org.android.spdy;

import java.util.Map;

public class SpdyDataProvider {
    byte[] data;
    public boolean finished;
    Map<String, String> postBody;

    public SpdyDataProvider(byte[] data) {
        this.finished = true;
        this.data = data;
        this.postBody = null;
    }

    public SpdyDataProvider(Map<String, String> postBody) {
        this.finished = true;
        this.data = null;
        this.postBody = postBody;
    }
}
