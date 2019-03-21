package com.xiaomi.micloudsdk.request.utils;

import android.util.Log;
import com.xiaomi.micloudsdk.request.CloudHttpClient;
import com.xiaomi.micloudsdk.utils.CloudCoder;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.keyczar.Keyczar;

public class HttpUtils {
    private static boolean DBG = false;

    public enum HttpMethod {
        GET,
        POST,
        POST_JSON,
        DELETE
    }

    public static HttpClient getHttpClient() {
        HttpClient httpClient = CloudHttpClient.newInstance();
        HttpParams params = httpClient.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 30000);
        HttpConnectionParams.setSoTimeout(params, 30000);
        ConnManagerParams.setTimeout(params, 30000);
        return httpClient;
    }

    public static String appendUrl(String origin, List<NameValuePair> nameValuePairs) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        if (origin == null) {
            throw new NullPointerException("origin is not allowed null");
        }
        StringBuilder urlBuilder = new StringBuilder(origin);
        if (!origin.contains("?")) {
            urlBuilder.append("?");
        }
        for (int i = 0; i < nameValuePairs.size(); i++) {
            if (i != 0) {
                urlBuilder.append("&");
            }
            String name = ((NameValuePair) nameValuePairs.get(i)).getName();
            String value = ((NameValuePair) nameValuePairs.get(i)).getValue();
            urlBuilder.append(name);
            urlBuilder.append("=");
            urlBuilder.append(URLEncoder.encode(value, Keyczar.DEFAULT_ENCODING));
        }
        String url = urlBuilder.toString();
        if (DBG) {
            Log.d("HttpUtils", "result url length is: " + url.length());
        }
        return url;
    }

    public static String getSignature(HttpMethod httpMethod, String url, ArrayList<NameValuePair> paramList, String security) throws UnsupportedEncodingException {
        TreeMap<String, String> params = new TreeMap();
        if (paramList != null) {
            Iterator it = paramList.iterator();
            while (it.hasNext()) {
                NameValuePair pair = (NameValuePair) it.next();
                params.put(pair.getName(), pair.getValue());
            }
        }
        return CloudCoder.generateSignature(httpMethod.name(), url, params, security);
    }
}
