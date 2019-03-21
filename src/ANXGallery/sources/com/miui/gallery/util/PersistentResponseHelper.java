package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.model.PersistentResponse;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.keyczar.Keyczar;

public class PersistentResponseHelper {
    public static void clearData() {
        GalleryEntityManager.getInstance().delete(PersistentResponse.class, "", null);
    }

    public static void cleanupInvalidRecords() {
        long oneMonthAgo = System.currentTimeMillis() - 2592000000L;
        GalleryEntityManager.getInstance().delete(PersistentResponse.class, "lastVisitTime <= ? ", new String[]{String.valueOf(oneMonthAgo)});
    }

    public static void save(String url, Map<String, String> params, String response, long expireMillis) {
        if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(response)) {
            String urlWithParams = appendUrlParams(url, params);
            long timeMillis = System.currentTimeMillis();
            GalleryEntityManager.getInstance().insertWithOnConflict(new PersistentResponse(urlWithParams, response, timeMillis, timeMillis, expireMillis), 5);
        }
    }

    public static void saveAsync(String url, Map<String, String> params, String response, long expireMillis) {
        final String str = url;
        final Map<String, String> map = params;
        final String str2 = response;
        final long j = expireMillis;
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                PersistentResponseHelper.save(str, map, str2, j);
                return null;
            }
        });
    }

    public static PersistentResponse find(String url, Map<String, String> params) {
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        String urlWithParams = appendUrlParams(url, params);
        long timeMillis = System.currentTimeMillis();
        PersistentResponse response = (PersistentResponse) GalleryEntityManager.getInstance().find(PersistentResponse.class, "url = ?", new String[]{urlWithParams});
        if (response == null) {
            return response;
        }
        response.setLastVisitTime(timeMillis);
        GalleryEntityManager.getInstance().update(response);
        return response;
    }

    private static String appendUrlParams(String url, Map<String, String> params) {
        if (url == null || params == null || params.isEmpty()) {
            return url;
        }
        TreeMap<String, String> sortedParams = new TreeMap();
        sortedParams.putAll(params);
        StringBuilder sb = new StringBuilder(url);
        if (url.indexOf(63) <= 0) {
            return sb.append("?").append(encodeParameters(sortedParams, Keyczar.DEFAULT_ENCODING)).toString();
        }
        if (!(url.endsWith("?") || url.endsWith("&"))) {
            sb.append("&");
        }
        return sb.append(encodeParameters(sortedParams, Keyczar.DEFAULT_ENCODING)).toString();
    }

    private static String encodeParameters(Map<String, String> params, String paramsEncoding) {
        StringBuilder encodedParams = new StringBuilder();
        try {
            for (Entry<String, String> entry : params.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    encodedParams.append(URLEncoder.encode((String) entry.getKey(), paramsEncoding));
                    encodedParams.append('=');
                    encodedParams.append(URLEncoder.encode((String) entry.getValue(), paramsEncoding));
                    encodedParams.append('&');
                }
            }
            return encodedParams.toString();
        } catch (UnsupportedEncodingException uee) {
            throw new RuntimeException("Encoding not supported: " + paramsEncoding, uee);
        }
    }
}
