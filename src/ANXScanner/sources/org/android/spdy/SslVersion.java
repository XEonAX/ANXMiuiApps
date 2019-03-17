package org.android.spdy;

public enum SslVersion {
    SLIGHT_VERSION_V1(0);
    
    private int code;

    private SslVersion(int code) {
        this.code = code;
    }

    int getint() {
        return this.code;
    }
}
