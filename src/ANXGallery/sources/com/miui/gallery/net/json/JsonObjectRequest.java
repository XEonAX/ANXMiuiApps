package com.miui.gallery.net.json;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.toolbox.HttpHeaderParser;
import com.miui.gallery.net.base.Cacheable;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonObjectRequest extends Request<JSONObject> implements Cacheable {
    private String mCacheKey = null;
    private volatile byte[] mData = null;
    private Map<String, String> mHeaders = null;
    private volatile boolean mIsFromCache = false;
    private Listener<JSONObject> mListener;
    private Map<String, String> mParams = null;

    public JsonObjectRequest(int method, String url, Listener<JSONObject> listener, ErrorListener errorListener) {
        super(method, url, errorListener);
        this.mListener = listener;
    }

    public void setParams(Map<String, String> params) {
        this.mParams = params;
    }

    public Map<String, String> getParams() throws AuthFailureError {
        return this.mParams != null ? this.mParams : super.getParams();
    }

    public void setHeaders(Map<String, String> headers) {
        this.mHeaders = headers;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return this.mHeaders != null ? this.mHeaders : super.getHeaders();
    }

    protected void deliverResponse(JSONObject response) {
        if (this.mListener != null) {
            this.mListener.onResponse(response);
        }
    }

    protected Response<JSONObject> parseNetworkResponse(NetworkResponse response) {
        try {
            this.mIsFromCache = response.headers.containsKey("From-Cache");
            this.mData = response.data;
            return Response.success(new JSONObject(new String(response.data, parseCharset(response.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders(response));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException e2) {
            return Response.error(new ParseError(e2));
        }
    }

    public static String parseCharset(Map<String, String> headers, String defaultCharset) {
        String contentType = (String) headers.get("Content-Type");
        if (contentType == null) {
            return defaultCharset;
        }
        String[] params = contentType.split(";");
        for (int i = 1; i < params.length; i++) {
            String[] pair = params[i].trim().split("=");
            if (pair.length == 2 && pair[0].equals("charset")) {
                return pair[1];
            }
        }
        return defaultCharset;
    }

    public String getCacheKey() {
        return this.mCacheKey == null ? super.getCacheKey() : this.mCacheKey;
    }

    public byte[] getData() {
        return this.mData;
    }

    public boolean isFromCache() {
        return this.mIsFromCache;
    }

    public void setCacheKey(String key) {
        this.mCacheKey = key;
    }
}
