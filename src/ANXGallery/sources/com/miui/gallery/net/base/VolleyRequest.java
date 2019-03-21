package com.miui.gallery.net.base;

import android.os.Looper;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.VolleyError;
import com.miui.gallery.net.HttpManager;
import com.miui.gallery.threadpool.ThreadManager;
import java.util.concurrent.CountDownLatch;

public abstract class VolleyRequest<T, E> extends BaseRequest<E> implements ErrorListener, Listener<T> {
    private Request<T> mRequest;
    private CountDownLatch mSyncExecuteLock = null;

    protected abstract Request<T> createVolleyRequest(Listener<T> listener, ErrorListener errorListener);

    protected abstract void handleResponse(T t);

    public void execute() {
        this.mRequest = createVolleyRequest(this, this);
        if (this.mRequest != null) {
            this.mRequest.setRetryPolicy(new DefaultRetryPolicy(10000, 1, 1.0f));
            this.mRequest.setShouldCache(isUseCache());
            Object tag = getTag();
            if (this.mRequest.getTag() == null && tag != null) {
                this.mRequest.setTag(tag);
            }
            HttpManager.getInstance().addToRequestQueue(this.mRequest);
        }
    }

    public Object[] executeSync() throws RequestError {
        if (Looper.myLooper() == Looper.getMainLooper() || Looper.myLooper() == ThreadManager.getRequestThreadLooper()) {
            throw new RuntimeException("executeSync could not call on main thread or request thread.");
        }
        this.mSyncExecuteLock = new CountDownLatch(1);
        execute();
        try {
            if (this.mSyncExecuteLock != null) {
                this.mSyncExecuteLock.await();
            }
        } catch (InterruptedException e) {
        }
        if (this.mRequestError == null) {
            return this.mResponse;
        }
        throw this.mRequestError;
    }

    private void releaseSyncExecuteLock() {
        if (this.mSyncExecuteLock != null) {
            this.mSyncExecuteLock.countDown();
            this.mSyncExecuteLock = null;
        }
    }

    public final void cancel() {
        releaseSyncExecuteLock();
        setOnResponseListener(null);
        if (this.mRequest != null) {
            this.mRequest.cancel();
        }
    }

    public final void onResponse(T response) {
        handleResponse(response);
        releaseSyncExecuteLock();
        if (this.mRequest instanceof Cacheable) {
            Cacheable cache = this.mRequest;
            if (this.mCacheExpires > 0 && !cache.isFromCache()) {
                HttpManager.getInstance().putToCache(this.mRequest.getCacheKey(), cache.getData(), this.mCacheExpires, this.mCacheSoftTtl);
            }
        }
    }

    public final void onErrorResponse(VolleyError error) {
        ErrorCode code = ErrorCode.NET_ERROR;
        if (error instanceof RequestError) {
            code = ((RequestError) error).getErrorCode();
        }
        Throwable cause = error.getCause();
        if (cause == null) {
            cause = error;
        }
        handleError(code, cause.getMessage(), cause);
        releaseSyncExecuteLock();
    }

    protected final void handleError(ErrorCode errorCode, String errorMessage, Object responseData) {
        this.mCacheExpires = -1;
        onRequestError(errorCode, errorMessage, responseData);
    }
}
