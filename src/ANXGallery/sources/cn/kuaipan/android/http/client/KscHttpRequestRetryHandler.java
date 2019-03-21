package cn.kuaipan.android.http.client;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.protocol.HttpContext;

public class KscHttpRequestRetryHandler implements HttpRequestRetryHandler {
    private final int errorTimeOut;
    private final boolean requestSentRetryEnabled;
    private final int retryCount;

    public KscHttpRequestRetryHandler(int retryCount, boolean requestSentRetryEnabled, int errorTimeOut) {
        this.retryCount = retryCount;
        this.requestSentRetryEnabled = requestSentRetryEnabled;
        this.errorTimeOut = errorTimeOut;
    }

    public KscHttpRequestRetryHandler() {
        this(3, false, 0);
    }

    public boolean retryRequest(IOException exception, int executionCount, HttpContext context) {
        if (exception == null) {
            throw new IllegalArgumentException("Exception parameter may not be null");
        } else if (context == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else if (executionCount > this.retryCount) {
            return false;
        } else {
            if (exception instanceof NoHttpResponseException) {
                return true;
            }
            if (exception instanceof InterruptedIOException) {
                return false;
            }
            if (exception instanceof UnknownHostException) {
                return false;
            }
            if (exception instanceof SSLHandshakeException) {
                return false;
            }
            Boolean b = (Boolean) context.getAttribute("http.request_sent");
            Long l = (Long) context.getAttribute("ksc.connect_start");
            RequestWrapper wrapper = (RequestWrapper) context.getAttribute("http.request");
            URIRedirector redirector = (URIRedirector) context.getAttribute("ksc.connect_redirector");
            boolean sent = b != null && b.booleanValue();
            long start = l != null ? l.longValue() : 0;
            long current = SystemClock.elapsedRealtime();
            if (sent && ((!this.requestSentRetryEnabled || !wrapper.isRepeatable()) && (!(exception instanceof SocketException) || current - start > ((long) this.errorTimeOut)))) {
                return false;
            }
            if (redirector != null) {
                return redirector.redirect(context);
            }
            return true;
        }
    }
}
