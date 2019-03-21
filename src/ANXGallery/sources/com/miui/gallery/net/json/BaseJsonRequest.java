package com.miui.gallery.net.json;

import android.text.TextUtils;
import com.android.volley.Request;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.google.gson.Gson;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.VolleyRequest;
import com.miui.gallery.util.Encode;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public abstract class BaseJsonRequest<T> extends VolleyRequest<JSONObject, T> {
    private Map<String, String> mHeaders;
    private int mMethod = 1;
    private String mUrl = null;

    public BaseJsonRequest(int method, String url) {
        this.mMethod = method;
        this.mUrl = url;
    }

    public final String getUrl() {
        return this.mUrl;
    }

    public void onRequestError(ErrorCode errorCode, String errorMessage, Object responseData) {
        deliverError(errorCode, errorMessage, responseData);
    }

    protected final Request<JSONObject> createVolleyRequest(Listener<JSONObject> listener, ErrorListener errorListener) {
        String url = this.mUrl;
        String urlWithParam = appendUrlParams();
        if (this.mMethod == 0) {
            url = urlWithParam;
        }
        JsonObjectRequest request = new JsonObjectRequest(this.mMethod, url, listener, errorListener);
        if (this.mParams != null) {
            request.setParams(this.mParams);
        }
        if (this.mHeaders != null) {
            request.setHeaders(this.mHeaders);
        }
        request.setCacheKey(generateCacheKey(urlWithParam));
        return request;
    }

    protected static <T> T fromJson(String jsonStr, Type type) {
        return new Gson().fromJson(jsonStr, type);
    }

    private String appendUrlParams() {
        if (this.mUrl == null || this.mParams == null || this.mParams.isEmpty()) {
            return this.mUrl;
        }
        StringBuilder url = new StringBuilder(this.mUrl);
        if (this.mUrl.indexOf(63) <= 0) {
            return url.append("?").append(encodeParameters(this.mParams, Keyczar.DEFAULT_ENCODING)).toString();
        }
        if (!(this.mUrl.endsWith("?") || this.mUrl.endsWith("&"))) {
            url.append("&");
        }
        return url.append(encodeParameters(this.mParams, Keyczar.DEFAULT_ENCODING)).toString();
    }

    private String encodeParameters(Map<String, String> params, String paramsEncoding) {
        StringBuilder encodedParams = new StringBuilder();
        try {
            for (Entry<String, String> entry : params.entrySet()) {
                encodedParams.append(URLEncoder.encode((String) entry.getKey(), paramsEncoding));
                encodedParams.append('=');
                encodedParams.append(URLEncoder.encode((String) entry.getValue(), paramsEncoding));
                encodedParams.append('&');
            }
            return encodedParams.toString();
        } catch (UnsupportedEncodingException uee) {
            throw new RuntimeException("Encoding not supported: " + paramsEncoding, uee);
        }
    }

    private String generateCacheKey(String urlWithParam) {
        if (TextUtils.isEmpty(urlWithParam)) {
            return urlWithParam;
        }
        try {
            return Encode.SHA1Encode(urlWithParam.getBytes(Keyczar.DEFAULT_ENCODING));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return urlWithParam;
        }
    }
}
