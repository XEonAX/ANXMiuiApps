package com.miui.gallery.net.base;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseRequest<T> implements ResponseErrorHandler {
    private static ResponseErrorHandler mAppResponseErrorHandler;
    protected long mCacheExpires = -1;
    protected long mCacheSoftTtl = -1;
    private ResponseDispatcher mListenerDispatcher = null;
    protected Map<String, String> mParams;
    protected RequestError mRequestError;
    protected Object[] mResponse;
    private Object mTag = null;
    private boolean mUseCache = false;

    public abstract void execute();

    public abstract Object[] executeSync() throws RequestError;

    public abstract void onRequestError(ErrorCode errorCode, String str, Object obj);

    public final BaseRequest<T> setOnResponseListener(ResponseListener listener) {
        this.mListenerDispatcher = new ResponseDispatcher(listener);
        return this;
    }

    protected void deliverResponse(Object... response) {
        this.mResponse = response;
        if (this.mListenerDispatcher != null) {
            this.mListenerDispatcher.onResponse(response);
        }
    }

    protected void deliverError(ErrorCode errorCode, String errorMessage, Object responseData) {
        this.mRequestError = new RequestError(errorCode, errorMessage, responseData);
        if (this.mListenerDispatcher != null) {
            this.mListenerDispatcher.onResponseError(errorCode, errorMessage, responseData);
        }
        if (mAppResponseErrorHandler != null) {
            mAppResponseErrorHandler.onRequestError(errorCode, errorMessage, responseData);
        }
    }

    public final BaseRequest<T> addParam(String name, String value) {
        if (!TextUtils.isEmpty(name)) {
            if (this.mParams == null) {
                this.mParams = new HashMap();
            }
            if (value == null) {
                value = "";
            }
            this.mParams.put(name, value);
        }
        return this;
    }

    public final BaseRequest<T> setUseCache(boolean useCache) {
        this.mUseCache = useCache;
        return this;
    }

    protected final boolean isUseCache() {
        return this.mUseCache;
    }

    public final BaseRequest<T> setCacheExpires(long expires) {
        this.mCacheExpires = expires;
        return this;
    }

    public final BaseRequest<T> setCacheSoftTtl(long softTtl) {
        this.mCacheSoftTtl = softTtl;
        return this;
    }

    public final <T> T simpleExecuteSync() throws RequestError {
        Object[] results = executeSync();
        if (results == null || results.length <= 0) {
            return null;
        }
        return results[0];
    }

    public final void execute(ResponseListener listener) {
        setOnResponseListener(listener);
        execute();
    }

    public Map<String, String> getParams() {
        return this.mParams;
    }

    public BaseRequest<T> setTag(Object tag) {
        this.mTag = tag;
        return this;
    }

    public Object getTag() {
        return this.mTag;
    }
}
