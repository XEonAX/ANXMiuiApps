package com.miui.gallery.search.core.source.server;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.GalleryStatHelper;
import java.util.HashMap;
import java.util.Map;

class HttpUtils {
    private static GsonBuilder sGsonBuilder = new GsonBuilder();

    public static Gson createGson() {
        return sGsonBuilder.create();
    }

    public static void reportTimeoutIfNeeded(ServerSearchRequest request, long timeUsage) {
        if (timeUsage > 2000) {
            Map<String, String> params = new HashMap();
            params.put("URL", request.getUrl());
            if (request.getParams() != null) {
                HashMap<String, String> requestParams = new HashMap(request.getParams());
                requestParams.remove("userId");
                params.put("Params", requestParams.toString());
            }
            params.put("RequestTime", String.valueOf(timeUsage));
            params.put("RequestSeconds", String.valueOf((int) (timeUsage / 1000)));
            params.put("RequestEndTime", String.valueOf(System.currentTimeMillis()));
            SearchStatUtils.reportEvent("from_request", "search_request_time_usage", params);
        }
    }

    public static void reportRequestError(ServerSearchRequest request, ErrorCode errorCode, String errorMessage, Object responseData) {
        if (errorCode.CODE != ErrorCode.BODY_EMPTY.CODE && errorCode.CODE != ErrorCode.NETWORK_NOT_CONNECTED.CODE) {
            GalleryStatHelper.addHttpEvent(request.getUrl(), 0, -1, errorCode.CODE, errorMessage);
            Map<String, String> params = new HashMap();
            params.put("URL", request.getUrl());
            params.put("RequestEndTime", String.valueOf(System.currentTimeMillis()));
            if (request.getParams() != null) {
                HashMap<String, String> requestParams = new HashMap(request.getParams());
                requestParams.remove("userId");
                params.put("Params", requestParams.toString());
            }
            params.put("ErrorCode", String.valueOf(errorCode));
            if (!TextUtils.isEmpty(errorMessage)) {
                params.put("ErrorMessage", errorMessage);
            }
            if (responseData != null) {
                params.put("ResponseData", responseData.toString());
            }
            try {
                SearchStatUtils.reportEvent("from_request", "search_request_error", params);
            } catch (Exception e) {
                SearchLog.e("HttpUtils", "Report data is too large? data [%s], e [%s]", params, e);
            }
        }
    }
}
