package miui.net.http;

public interface RetryStrategy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    boolean retry(Throwable th);
}
