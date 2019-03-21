package com.miui.gallery.search.core.source.server;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.miui.gallery.cloud.HostManager.Search;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.MiscUtil;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

public class ServerSearchRequest extends BaseGalleryRequest {
    private boolean mReportError;
    private long mRequestCreateTime;
    private ResponseResult mResponseResult;

    public static class Builder {
        private int mMethod = 1001;
        private String mQueryAppendPath;
        private Map<String, String> mQueryParams;
        private String mQueryPathPrefix = Search.getSearchUrlHost();
        private boolean mReportError = true;
        private ResponseListener mResponseListener;
        private Type mResultDataType = JsonObject.class;
        private boolean mUseCache = false;
        private String mUserId;
        private String mUserPath;

        public Map<String, String> getQueryParams() {
            return this.mQueryParams;
        }

        public String getQueryPath() {
            StringBuilder stringBuilder = new StringBuilder(this.mQueryPathPrefix);
            if (!TextUtils.isEmpty(this.mUserPath)) {
                stringBuilder.append("/").append(this.mUserPath);
            }
            if (!TextUtils.isEmpty(this.mQueryAppendPath)) {
                stringBuilder.append("/").append(this.mQueryAppendPath);
            }
            return stringBuilder.toString();
        }

        public Builder setQueryAppendPath(String queryAppendPath) {
            this.mQueryAppendPath = queryAppendPath;
            return this;
        }

        public Builder setUserPath(String userPath) {
            this.mUserPath = userPath;
            return this;
        }

        public Builder setUserId(String userId) {
            this.mUserId = userId;
            return this;
        }

        public String getUserId() {
            return this.mUserId;
        }

        public static String getDefaultUserPath(String userId) {
            if (TextUtils.isEmpty(userId)) {
                return null;
            }
            return "user";
        }

        public Builder setQueryPathPrefix(String queryPathPrefix) {
            this.mQueryPathPrefix = queryPathPrefix;
            return this;
        }

        public Builder addQueryParams(Map<String, String> queryParams) {
            if (queryParams != null) {
                if (this.mQueryParams == null) {
                    this.mQueryParams = new HashMap();
                }
                this.mQueryParams.putAll(queryParams);
            }
            return this;
        }

        public Builder addQueryParam(String key, String value) {
            if (key != null) {
                if (this.mQueryParams == null) {
                    this.mQueryParams = new HashMap();
                }
                this.mQueryParams.put(key, value);
            }
            return this;
        }

        public Builder setResultDataType(Type resultDataType) {
            this.mResultDataType = resultDataType;
            return this;
        }

        public Builder setMethod(int method) {
            this.mMethod = method;
            return this;
        }

        public int getMethod() {
            return this.mMethod;
        }

        public Builder setUseCache(boolean useCache) {
            this.mUseCache = useCache;
            return this;
        }

        public Builder setReportError(boolean reportError) {
            this.mReportError = reportError;
            return this;
        }

        public boolean reportError() {
            return this.mReportError;
        }

        public ServerSearchRequest build() {
            return new ServerSearchRequest(this);
        }
    }

    public static class ResponseResult {
        private Object mData;
        private Type mDataType;
        private String mRawData;

        public ResponseResult(Type dataType) {
            this.mDataType = dataType;
        }

        public void setData(String jsonData) {
            if (this.mDataType != null) {
                this.mData = HttpUtils.createGson().fromJson(jsonData, this.mDataType);
            } else {
                this.mData = jsonData;
            }
            this.mRawData = jsonData;
        }

        public String getRawData() {
            return this.mRawData;
        }

        public Object getData() {
            return this.mData;
        }
    }

    private ServerSearchRequest(Builder builder) {
        super(builder.getMethod(), builder.getQueryPath());
        if (builder.getUserId() != null) {
            addParam("userId", builder.getUserId());
        }
        addParam("clientVersion", String.valueOf(MiscUtil.getAppVersionCode()));
        addParam("language", Locale.getDefault().toString());
        if (builder.getQueryParams() != null) {
            for (Entry<String, String> entry : builder.getQueryParams().entrySet()) {
                addParam((String) entry.getKey(), (String) entry.getValue());
            }
        }
        setOnResponseListener(builder.mResponseListener);
        setUseCache(builder.mUseCache);
        this.mReportError = builder.reportError();
        this.mResponseResult = new ResponseResult(builder.mResultDataType);
        this.mRequestCreateTime = SystemClock.elapsedRealtime();
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        super.onRequestSuccess(data);
        if (this.mRequestCreateTime > 0 && this.mReportError) {
            HttpUtils.reportTimeoutIfNeeded(this, SystemClock.elapsedRealtime() - this.mRequestCreateTime);
        }
        if (data != null) {
            this.mResponseResult.setData(data.toString());
            if (this.mResponseResult.getData() != null && (this.mResponseResult.getData() instanceof Cacheable)) {
                setCacheExpires(((Cacheable) this.mResponseResult.getData()).getExpireMills());
                SearchLog.d("ServerSearchRequest", "set expire time %dms for request %s", Long.valueOf(((Cacheable) this.mResponseResult.getData()).getExpireMills()), getUrl());
            }
            deliverResponse(this.mResponseResult.getData());
            return;
        }
        deliverError(ErrorCode.BODY_EMPTY, null, null);
    }

    public void onRequestError(ErrorCode errorCode, String errorMessage, Object responseData) {
        deliverError(errorCode, errorMessage, responseData);
    }

    protected void deliverResponse(Object... response) {
        super.deliverResponse(response);
    }

    protected void deliverError(ErrorCode errorCode, String errorMessage, Object responseData) {
        if (this.mReportError) {
            HttpUtils.reportRequestError(this, errorCode, errorMessage, responseData);
        }
        super.deliverError(errorCode, errorMessage, responseData);
    }

    public Object getResponseData() {
        return this.mResponseResult.getData();
    }

    public String getResponseRawData() {
        return this.mResponseResult.getRawData();
    }
}
