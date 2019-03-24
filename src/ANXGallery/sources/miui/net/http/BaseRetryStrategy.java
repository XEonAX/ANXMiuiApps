package miui.net.http;

import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.net.ssl.SSLException;

public class BaseRetryStrategy implements RetryStrategy {
    private static ArrayList<Class<?>> CA = new ArrayList();
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 3;
    public static final int DEFAULT_TIMEOUT = 10000;
    private int CB;
    private int CC;
    private final int CE;
    private final float CJ;

    static {
        CA.add(InterruptedIOException.class);
        CA.add(SSLException.class);
    }

    public BaseRetryStrategy() {
        this(10000, 3, 1.0f);
    }

    public BaseRetryStrategy(int i, int i2, float f) {
        this.CB = i;
        this.CE = i2;
        this.CJ = f;
    }

    public int getCurrentTimeout() {
        return this.CB;
    }

    public int getCurrentRetryCount() {
        return this.CC;
    }

    public boolean retry(Throwable th) {
        this.CC++;
        this.CB = (int) (((float) this.CB) + (((float) this.CB) * this.CJ));
        if (hasAttemptRemaining() && isUnretryThrowable(th)) {
            return true;
        }
        return false;
    }

    protected boolean hasAttemptRemaining() {
        return this.CC <= this.CE;
    }

    protected boolean isUnretryThrowable(Throwable th) {
        Iterator it = CA.iterator();
        while (it.hasNext()) {
            if (((Class) it.next()).isInstance(th)) {
                return true;
            }
        }
        return false;
    }
}
