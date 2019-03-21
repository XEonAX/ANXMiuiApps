package com.xiaomi.opensdk.exception;

import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import org.apache.http.conn.ConnectTimeoutException;

public class RetriableException extends Exception {
    private static final long serialVersionUID = 1;
    private final int ERRORCODE_NOT_DEFINE = -1;
    private final String mDescription;
    private int mErrorCode = -1;
    private final long mRetrytime;

    public RetriableException(String description, long retryTime) {
        this.mDescription = description;
        this.mRetrytime = retryTime;
    }

    public String toString() {
        String result = getClass().getSimpleName();
        if (this.mDescription != null) {
            return result + ": " + this.mDescription + ", retry after " + (this.mRetrytime / 1000) + " seconds";
        }
        return result;
    }

    public static boolean isRetriableException(Throwable t) {
        if ((t instanceof ConnectException) || (t instanceof ConnectTimeoutException) || (t instanceof SocketException) || (t instanceof SocketTimeoutException) || (t instanceof UnknownHostException) || (t instanceof SSLException)) {
            return true;
        }
        return false;
    }
}
