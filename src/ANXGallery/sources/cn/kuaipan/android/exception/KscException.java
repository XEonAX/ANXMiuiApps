package cn.kuaipan.android.exception;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.HttpHostConnectException;

public class KscException extends Exception implements IKscError {
    private static final long serialVersionUID = 7461260166746901326L;
    protected final String detailMessage;
    private final int errCode;

    public KscException(int errCode, String detail) {
        this(errCode, detail, null);
    }

    public KscException(int errCode, String detail, Throwable t) {
        super("ErrCode: " + errCode + (detail == null ? "" : "\n" + detail), getSerial(t));
        this.errCode = errCode;
        this.detailMessage = detail;
    }

    public int getErrorCode() {
        return this.errCode;
    }

    public String getSimpleMessage() {
        String result = getClass().getName() + "(ErrCode: " + this.errCode + ")";
        if (this.detailMessage == null || this.detailMessage.length() >= 100) {
            return result;
        }
        return result + ": " + this.detailMessage;
    }

    public static KscException newException(Throwable t, String detailState) throws InterruptedException {
        if (t instanceof KscException) {
            return (KscException) t;
        }
        ErrorHelper.handleInterruptException(t);
        if (t instanceof ConnectException) {
            return new NetworkException(504111, detailState, t);
        }
        if (t instanceof SocketException) {
            return new NetworkException(504000, detailState, t);
        }
        if (t instanceof SocketTimeoutException) {
            return new NetworkException(504400, detailState, t);
        }
        if (t instanceof ConnectTimeoutException) {
            return new NetworkException(504110, detailState, t);
        }
        if (t instanceof ClientProtocolException) {
            return new NetworkException(504500, detailState, t);
        }
        if (t instanceof UnknownHostException) {
            return new NetworkException(504501, detailState, t);
        }
        if (t instanceof InvalidKeyException) {
            return new KscException(500009, detailState, t);
        }
        if (t instanceof FileNotFoundException) {
            return new KscException(403001, detailState, t);
        }
        if (t instanceof IOException) {
            return new KscException(403000, detailState, t);
        }
        if (!(t instanceof RuntimeException)) {
            return new KscException(403999, detailState, t);
        }
        throw ((RuntimeException) t);
    }

    static Throwable getSerial(Throwable t) {
        if (t == null) {
            return t;
        }
        Throwable result = t;
        if (t instanceof HttpHostConnectException) {
            result = new HttpHostConnectExceptionWrapper((HttpHostConnectException) t);
        }
        return result;
    }
}
