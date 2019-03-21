package com.miui.gallery.cloud;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.StreamUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class NetworkUtils {
    private static boolean DBG = false;

    public enum RequestType {
        POST,
        GET
    }

    private static String getHttpMethod(RequestType type) {
        switch (type) {
            case GET:
                return "GET";
            case POST:
                return "POST";
            default:
                return "";
        }
    }

    public static HttpURLConnection getHttpConn(String url, RequestType method) throws IOException {
        HttpURLConnection conn;
        URL req = new URL(url);
        if (req.getProtocol().equals("https")) {
            conn = (HttpsURLConnection) req.openConnection();
        } else {
            conn = (HttpURLConnection) req.openConnection();
        }
        conn.setRequestMethod(getHttpMethod(method));
        conn.setConnectTimeout(30000);
        conn.setReadTimeout(30000);
        return conn;
    }

    public static HttpClient getHttpClient() {
        HttpClient httpClient = ApplicationHelper.getMiCloudProvider().getHttpClient();
        HttpParams params = httpClient.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 30000);
        HttpConnectionParams.setSoTimeout(params, 30000);
        ConnManagerParams.setTimeout(params, 30000);
        return httpClient;
    }

    private static InputStream handleResult(HttpRequestBase httpRequest, HttpResponse resp, String url, boolean canRetry) throws IllegalStateException, IOException {
        int statusCode = resp.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            return decodeGZip(resp);
        }
        SyncLog.d("NetworkUtils", "Server error: " + statusCode + " " + resp.getStatusLine());
        throw new IOException();
    }

    public static void closeHttpClient(HttpClient client) {
        if (client != null) {
            try {
                ClientConnectionManager connectionManager = client.getConnectionManager();
                if (connectionManager != null) {
                    connectionManager.shutdown();
                }
            } catch (Throwable throwable) {
                SyncLog.e("NetworkUtils", throwable);
            }
        }
    }

    public static InputStream httpPostRequest(HttpClient client, String url, HttpEntity entity, Header cookies) throws ClientProtocolException, IOException, GalleryMiCloudServerException {
        HttpPost post = new HttpPost(url);
        if (entity != null) {
            post.addHeader(entity.getContentType());
            post.setEntity(entity);
        }
        if (cookies != null) {
            post.addHeader(cookies);
        }
        if (!post.containsHeader("Accept-Encoding")) {
            post.addHeader("Accept-Encoding", "gzip");
        }
        if (DBG) {
            SyncLog.d("NetworkUtils", "http post url: %s", (Object) url);
            SyncLog.d("NetworkUtils", "http post cookies: %s", (Object) cookies);
        }
        return handleResult(post, excuteInternal(client, post), url, true);
    }

    public static String httpPostRequestForString(String url, HttpEntity entity, Header cookies) throws ClientProtocolException, IOException, GalleryMiCloudServerException {
        HttpClient client = getHttpClient();
        InputStream is = httpPostRequest(client, url, entity, cookies);
        if (is != null) {
            try {
                String streamUtils = StreamUtils.toString(is);
                return streamUtils;
            } finally {
                if (is != null) {
                    is.close();
                }
                closeHttpClient(client);
            }
        } else {
            if (is != null) {
                is.close();
            }
            closeHttpClient(client);
            return null;
        }
    }

    public static InputStream httpGetRequest(HttpClient client, String url, Header cookies) throws ClientProtocolException, IOException, GalleryMiCloudServerException {
        HttpGet request = new HttpGet(url);
        return handleResult(request, httpGetRequest(client, request, cookies), url, true);
    }

    public static HttpResponse httpGetRequest(HttpClient client, HttpGet request, Header cookies) throws ClientProtocolException, IOException {
        request.addHeader(cookies);
        if (!request.containsHeader("Accept-Encoding")) {
            request.addHeader("Accept-Encoding", "gzip");
        }
        if (DBG) {
            SyncLog.d("NetworkUtils", "http get url : " + request.getURI());
            SyncLog.d("NetworkUtils", "http get cookies : " + cookies);
        }
        return excuteInternal(client, request);
    }

    public static String httpGetRequestForString(String url, Header cookies) throws ClientProtocolException, IOException, GalleryMiCloudServerException {
        HttpClient client = getHttpClient();
        InputStream is = httpGetRequest(client, url, cookies);
        if (is != null) {
            try {
                String streamUtils = StreamUtils.toString(is);
                return streamUtils;
            } finally {
                if (is != null) {
                    is.close();
                }
                closeHttpClient(client);
            }
        } else {
            if (is != null) {
                is.close();
            }
            closeHttpClient(client);
            return null;
        }
    }

    public static InputStream decodeGZip(HttpResponse resp) throws IllegalStateException, IOException {
        Header contentEncoding = resp.getFirstHeader("Content-Encoding");
        if (contentEncoding == null || !contentEncoding.getValue().equalsIgnoreCase("gzip")) {
            return resp.getEntity().getContent();
        }
        return new GZIPInputStream(resp.getEntity().getContent());
    }

    public static boolean isNetworkConnected() {
        ConnectivityManager connManager = (ConnectivityManager) GalleryApp.sGetAndroidContext().getSystemService("connectivity");
        if (connManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connManager.getActiveNetworkInfo();
        if (networkInfo == null || !networkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    public static boolean isActiveNetworkMetered() {
        ConnectivityManager connManager = (ConnectivityManager) GalleryApp.sGetAndroidContext().getSystemService("connectivity");
        if (connManager != null && isNetworkConnected() && connManager.isActiveNetworkMetered()) {
            return true;
        }
        return false;
    }

    public static NetworkInfo getActiveNetworkInfo() {
        ConnectivityManager connManager = (ConnectivityManager) GalleryApp.sGetAndroidContext().getSystemService("connectivity");
        return connManager == null ? null : connManager.getActiveNetworkInfo();
    }

    public static HttpResponse excuteInternal(HttpClient client, HttpRequestBase request) throws IOException {
        try {
            long execStartTime = System.currentTimeMillis();
            HttpResponse resp = client.execute(request);
            long timeCost = System.currentTimeMillis() - execStartTime;
            long size = 0;
            if (resp.getEntity() != null) {
                size = resp.getEntity().getContentLength();
            }
            GalleryStatHelper.addHttpEvent(request.getURI().toString(), timeCost, size, resp.getStatusLine().getStatusCode());
            return resp;
        } catch (IOException e) {
            GalleryStatHelper.addHttpEvent(request.getURI().toString(), e.getClass().getSimpleName());
            throw e;
        }
    }
}
