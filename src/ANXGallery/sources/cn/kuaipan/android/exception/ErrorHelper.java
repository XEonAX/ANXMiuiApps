package cn.kuaipan.android.exception;

import cn.kuaipan.android.http.KscHttpResponse;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.ConnectionPendingException;
import javax.net.ssl.SSLException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.HttpException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.conn.ConnectTimeoutException;

public class ErrorHelper {
    public static boolean isNetworkException(Throwable e) {
        if (e == null) {
            return false;
        }
        if ((e instanceof IKscError) && e.getCause() != null) {
            e = e.getCause();
        }
        if ((e instanceof SocketException) || (e instanceof ConnectTimeoutException) || (e instanceof ConnectionPendingException) || (e instanceof SocketTimeoutException) || (e instanceof ConnectionClosedException) || (e instanceof HttpRetryException) || (e instanceof NoHttpResponseException) || (e instanceof ProtocolException) || (e instanceof ClientProtocolException) || (e instanceof SSLException) || (e instanceof UnknownHostException) || (e instanceof UnknownServiceException) || (e instanceof HttpException) || (e instanceof NetworkException)) {
            return true;
        }
        return false;
    }

    public static InterruptedException isInterrupted(Throwable e) {
        if (e == null) {
            return null;
        }
        if (e instanceof InterruptedException) {
            return (InterruptedException) e;
        }
        if (e instanceof ClosedByInterruptException) {
            return (InterruptedException) new InterruptedException().initCause(e);
        }
        if (!(e instanceof InterruptedIOException) || (e instanceof ConnectTimeoutException) || (e instanceof SocketTimeoutException)) {
            return null;
        }
        return (InterruptedException) new InterruptedException().initCause(e);
    }

    public static void handleInterruptException(Throwable e) throws InterruptedException {
        if (e != null) {
            if (e instanceof InterruptedException) {
                throw ((InterruptedException) e);
            } else if (e instanceof ClosedByInterruptException) {
                throw ((InterruptedException) new InterruptedException().initCause(e));
            } else if ((e instanceof InterruptedIOException) && !(e instanceof ConnectTimeoutException) && !(e instanceof SocketTimeoutException)) {
                throw ((InterruptedException) new InterruptedException().initCause(e));
            }
        }
    }

    public static void throwError(KscHttpResponse response) throws KscException, InterruptedException {
        Throwable t = response == null ? null : response.getError();
        if (t == null) {
            return;
        }
        if (t instanceof RuntimeException) {
            throw ((RuntimeException) t);
        }
        String str;
        if (response == null) {
            str = "No response.";
        } else {
            str = response.dump();
        }
        throw KscException.newException(t, str);
    }
}
