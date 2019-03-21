package com.xiaomi.micloudsdk.file;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.request.utils.Request;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import com.xiaomi.opensdk.file.model.CommitParameter;
import com.xiaomi.opensdk.file.model.RequestUploadParameter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class MiCloudFileRequestor<T> {
    protected abstract Map<String, String> getCommitUploadParams(T t, CommitParameter commitParameter) throws JSONException;

    protected abstract String getCommitUploadURL(T t, CommitParameter commitParameter);

    protected abstract Map<String, String> getRequestDownloadParams(T t) throws JSONException;

    protected abstract String getRequestDownloadURL(T t);

    protected abstract Map<String, String> getRequestUploadParams(T t, RequestUploadParameter requestUploadParameter) throws JSONException;

    protected abstract String getRequestUploadURL(T t, RequestUploadParameter requestUploadParameter);

    protected abstract T handleCommitUploadResult(T t, JSONObject jSONObject) throws UnretriableException, RetriableException, AuthenticationException;

    protected abstract boolean handleRequestDownloadResultJson(T t, JSONObject jSONObject) throws UnretriableException, RetriableException, AuthenticationException;

    protected abstract T handleRequestUploadResultJson(T t, JSONObject jSONObject) throws UnretriableException, RetriableException, AuthenticationException;

    public MiCloudFileRequestor(Context context) {
        Request.init(context);
    }

    public JSONObject requestUpload(T remoteInfo, RequestUploadParameter requestUploadParameter) throws RetriableException, UnretriableException, AuthenticationException {
        String requestUploadUrl = getRequestUploadURL(remoteInfo, requestUploadParameter);
        if (TextUtils.isEmpty(requestUploadUrl)) {
            throw new UnretriableException("requestUploadUrl is null or empty.");
        }
        try {
            Map<String, String> params = getRequestUploadParams(remoteInfo, requestUploadParameter);
            if (params != null) {
                return new JSONObject(getHttpResopnse(requestUploadUrl, params, true));
            }
            throw new UnretriableException("getRequestUploadParams() can't return null.");
        } catch (JSONException e) {
            throw new UnretriableException("Http 200 返回的不是JSON格式:" + e);
        } catch (JSONException e2) {
            throw new UnretriableException("error in getRequestUploadParams():" + e2);
        }
    }

    public JSONObject commitUpload(T remoteInfo, CommitParameter commitParameter) throws RetriableException, UnretriableException, AuthenticationException {
        String commitUrl = getCommitUploadURL(remoteInfo, commitParameter);
        if (TextUtils.isEmpty(commitUrl)) {
            throw new UnretriableException("commitUploadUrl is null or empty.");
        }
        try {
            Map<String, String> params = getCommitUploadParams(remoteInfo, commitParameter);
            if (params != null) {
                return new JSONObject(getHttpResopnse(commitUrl, params, true));
            }
            throw new UnretriableException("getCommitUploadParams() can't return null.");
        } catch (JSONException e) {
            throw new UnretriableException("Http 200 返回的不是JSON格式:" + e);
        } catch (JSONException e2) {
            throw new UnretriableException("error in getCommitUploadParams():" + e2);
        }
    }

    public JSONObject requestDownload(T remoteInfo) throws RetriableException, UnretriableException, AuthenticationException {
        String requestDownloadUrl = getRequestDownloadURL(remoteInfo);
        if (TextUtils.isEmpty(requestDownloadUrl)) {
            throw new UnretriableException("requestDownloadUrl is null or empty.");
        }
        try {
            Map<String, String> params = getRequestDownloadParams(remoteInfo);
            if (params != null) {
                return new JSONObject(getHttpResopnse(requestDownloadUrl, params, false));
            }
            throw new UnretriableException("getRequestDownloadParams() can't return null.");
        } catch (JSONException e) {
            throw new UnretriableException("Http 200 返回的不是JSON格式:" + e);
        } catch (JSONException e2) {
            throw new UnretriableException("error in getRequestDownloadParams():" + e2);
        }
    }

    private String getHttpResopnse(String url, Map<String, String> params, boolean isUsePost) throws UnretriableException, RetriableException, AuthenticationException {
        try {
            String resultString;
            if (Log.isLoggable("MiCloudFileRequestor", 3)) {
                Log.d("MiCloudFileRequestor", "url:" + url + "\nparmas:" + params);
            }
            if (isUsePost) {
                resultString = Request.securePost(url, params);
            } else {
                resultString = Request.secureGet(url, params);
            }
            if (Log.isLoggable("MiCloudFileRequestor", 3)) {
                Log.d("MiCloudFileRequestor", "resultString:" + resultString);
            }
            return resultString;
        } catch (UnsupportedEncodingException e) {
            Log.e("MiCloudFileRequestor", "requestServer error", e);
            throw new UnretriableException("requestServer error:" + e);
        } catch (IllegalBlockSizeException e2) {
            Log.e("MiCloudFileRequestor", "requestServer error", e2);
            throw new UnretriableException("requestServer error:" + e2);
        } catch (BadPaddingException e3) {
            Log.e("MiCloudFileRequestor", "requestServer error", e3);
            throw new UnretriableException("requestServer error:" + e3);
        } catch (ClientProtocolException e4) {
            Log.e("MiCloudFileRequestor", "requestServer error", e4);
            throw new UnretriableException("requestServer error:" + e4);
        } catch (IOException e5) {
            Log.e("MiCloudFileRequestor", "requestServer error", e5);
            if (RetriableException.isRetriableException(e5)) {
                throw new RetriableException("IOException:" + e5, 300000);
            }
            throw new UnretriableException("requestServer error:" + e5);
        } catch (CloudServerException e6) {
            switch (e6.getStatusCode()) {
                case 401:
                case 403:
                    throw new AuthenticationException();
                case 500:
                    throw new RetriableException("IOException:" + e6, 300000);
                case 503:
                    throw new RetriableException("IOException:" + e6, (long) e6.retryTime);
                default:
                    throw new UnretriableException("requestServer error:" + e6);
            }
        }
    }
}
