package org.android.spdy;

public class SpdyErrorException extends RuntimeException {
    private static final long serialVersionUID = 4422888579699220045L;
    private int error = 0;

    public SpdyErrorException(int errCode) {
        this.error = errCode;
    }

    public SpdyErrorException(String detailMessage, int errCode) {
        super(detailMessage);
        this.error = errCode;
    }

    public SpdyErrorException(String detailMessage, Throwable throwable, int errCode) {
        super(detailMessage, throwable);
        this.error = errCode;
    }

    public SpdyErrorException(Throwable throwable, int errCode) {
        super(throwable);
        this.error = errCode;
    }

    public int SpdyErrorGetCode() {
        return this.error;
    }
}
