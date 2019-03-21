package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.util.SyncLog;
import java.util.List;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.json.JSONObject;

public abstract class RequestOperationBase implements Operation {
    private String TAG;
    protected Context mContext;

    public static final class Request {
        private final int mMethod;
        private final boolean mNeedReRequest;
        private final List<NameValuePair> mParams;
        private final JSONObject mPostData;
        private final int mRetryTimes;
        private final String mUrl;

        public static final class Builder {
            private int mMethod;
            private boolean mNeedReRequest = false;
            private List<NameValuePair> mParams;
            private JSONObject mPostData;
            private int mRetryTimes;
            private String mUrl;

            public Builder setMethod(int method) {
                this.mMethod = method;
                return this;
            }

            public Builder setUrl(String url) {
                this.mUrl = url;
                return this;
            }

            public Builder setParams(List<NameValuePair> params) {
                this.mParams = params;
                return this;
            }

            public Builder setPostData(JSONObject postData) {
                this.mPostData = postData;
                return this;
            }

            public Builder setRetryTimes(int retryTimes) {
                this.mRetryTimes = retryTimes;
                return this;
            }

            public Builder setNeedReRequest(boolean needReRequest) {
                this.mNeedReRequest = needReRequest;
                return this;
            }

            public Request build() {
                return new Request(this);
            }
        }

        private Request(Builder builder) {
            this.mMethod = builder.mMethod;
            this.mUrl = builder.mUrl;
            this.mParams = builder.mParams;
            this.mPostData = builder.mPostData;
            this.mRetryTimes = builder.mRetryTimes;
            this.mNeedReRequest = builder.mNeedReRequest;
        }

        public int getMethod() {
            return this.mMethod;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public List<NameValuePair> getParams() {
            return this.mParams;
        }

        public JSONObject getPostData() {
            return this.mPostData;
        }

        public int getRetryTimes() {
            return this.mRetryTimes;
        }

        public boolean isNeedReRequest() {
            return this.mNeedReRequest;
        }

        private boolean isValid() {
            return (this.mMethod == 1 || this.mMethod == 2) && !TextUtils.isEmpty(this.mUrl);
        }

        public String toString() {
            return String.format(Locale.US, "mMethod %s, mUrl %s", new Object[]{Integer.valueOf(this.mMethod), this.mUrl});
        }
    }

    protected abstract Request buildRequest(Account account, RequestItemBase requestItemBase) throws Exception;

    protected abstract void onRequestError(GallerySyncResult gallerySyncResult, RequestItemBase requestItemBase, JSONObject jSONObject) throws Exception;

    protected abstract void onRequestSuccess(RequestItemBase requestItemBase, JSONObject jSONObject) throws Exception;

    public RequestOperationBase(Context context) {
        this.mContext = context;
    }

    public final GallerySyncResult execute(Account account, GalleryExtendedAuthToken extToken, String ckey, RequestItemBase requestItem) throws Exception {
        long startTime = System.currentTimeMillis();
        GallerySyncResult result = onPreRequest(requestItem);
        if (result != GallerySyncResult.Ok) {
            SyncLog.e(getTag(), "onPreExecute error %s", result);
            return result;
        }
        Request request = buildRequest(account, requestItem);
        if (request == null || !request.isValid()) {
            SyncLog.e(getTag(), "illegal request %s", request);
            return GallerySyncResult.NotRetryError;
        }
        JSONObject response = null;
        if (request.getMethod() == 1) {
            response = CloudUtils.getFromXiaomi(request.getUrl(), request.getParams(), account, extToken, request.getRetryTimes(), request.isNeedReRequest());
        }
        if (request.getMethod() == 2) {
            response = CloudUtils.postToXiaomi(request.getUrl(), request.getParams(), request.getPostData(), account, extToken, request.getRetryTimes(), request.isNeedReRequest());
        }
        if (response == null) {
            SyncLog.e(getTag(), "response null");
            return GallerySyncResult.NotRetryError;
        }
        GallerySyncResult responseResult = CheckResult.checkXMResultCode(response, requestItem, getSpaceFullListener());
        if (responseResult != GallerySyncResult.Ok) {
            onRequestError(responseResult, requestItem, response);
            SyncLog.e(getTag(), "error result %s, retry times %s", responseResult, Integer.valueOf(requestItem.otherRetryTimes));
            return responseResult;
        }
        JSONObject data = response.optJSONObject("data");
        if (data == null) {
            SyncLog.e(getTag(), "response has no data %s", data);
            onRequestError(GallerySyncResult.NotRetryError, requestItem, response);
            return GallerySyncResult.NotRetryError;
        }
        onRequestSuccess(requestItem, data);
        SyncLog.d(getTag(), "execute success, cost %d", Long.valueOf(System.currentTimeMillis() - startTime));
        return GallerySyncResult.Ok;
    }

    protected String getTag() {
        if (this.TAG == null) {
            this.TAG = getClass().getSimpleName();
        }
        return this.TAG;
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        return GallerySyncResult.Ok;
    }

    protected SpaceFullListener getSpaceFullListener() {
        return null;
    }

    public int checkState(RequestItemBase item) {
        return SyncConditionManager.checkForItem(item);
    }
}
