package com.xiaomi.micloudsdk.request.utils;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.micloudsdk.exception.CipherException;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.stat.MiCloudStatManager;
import com.xiaomi.micloudsdk.utils.AESCoder;
import com.xiaomi.micloudsdk.utils.CryptCoder;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;
import org.keyczar.Keyczar;

public class CloudRequestHelper {
    public static String httpPostRequestWithDecodeData(String url, UrlEncodedFormEntity entity, Header cookies, CryptCoder coder) throws CloudServerException, IOException {
        String response = httpPostRequest(url, entity, entity.getContentType().getValue(), cookies, coder, 0);
        if (Log.isLoggable("CloudRequestHelper", 3)) {
            Log.d("CloudRequestHelper", response);
        }
        return response;
    }

    public static String httpPostJSONRequestWithDecodeData(String url, StringEntity entity, Header cookies, CryptCoder coder) throws CloudServerException, IOException {
        String response = httpPostRequest(url, entity, "application/json", cookies, coder, 0);
        if (Log.isLoggable("CloudRequestHelper", 3)) {
            Log.d("CloudRequestHelper", response);
        }
        return response;
    }

    private static String httpPostRequest(String url, HttpEntity entity, String contentType, Header cookies, CryptCoder coder, int redirectCount) throws IOException, CloudServerException {
        HttpPost post = new HttpPost(url);
        if (entity != null) {
            post.setEntity(entity);
        }
        if (!TextUtils.isEmpty(contentType)) {
            post.setHeader("Content-Type", contentType);
        }
        if (cookies != null) {
            post.setHeader(cookies);
        }
        post.setHeader("Accept", "application/json");
        post.setHeader("Accept-Encoding", "gzip");
        if (redirectCount > 0) {
            post.setHeader("X-XIAOMI-REDIRECT-COUNT", redirectCount + "");
        }
        post.setHeader("X-XIAOMI-SUPPORT-REDIRECT", "true, https");
        if (Log.isLoggable("CloudRequestHelper", 3)) {
            Log.d("CloudRequestHelper", "http post url : " + url);
            Log.d("CloudRequestHelper", "http post cookies : " + cookies.toString());
        }
        HttpResponse resp = excuteInternal(post);
        int statusCode = resp.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            try {
                String response = coder.decrypt(decodeGZipToString(resp));
                String redirectUrl = CloudUtils.checkRedirect(response, redirectCount);
                if (TextUtils.isEmpty(redirectUrl)) {
                    return response;
                }
                return httpPostRequest(redirectUrl, entity, contentType, cookies, coder, redirectCount + 1);
            } catch (CipherException e) {
                Log.e("CloudRequestHelper", "MiCloudServerException", e);
                throw new CloudServerException(0, resp);
            }
        } else if (CloudServerException.isMiCloudServerException(statusCode)) {
            Log.e("CloudRequestHelper", "MiCloudServerException: " + statusCode + " " + resp.getStatusLine());
            throw new CloudServerException(statusCode, resp);
        } else {
            Log.e("CloudRequestHelper", "Server error: " + statusCode + " " + resp.getStatusLine());
            throw new IOException("Server error: " + statusCode + " " + resp.getStatusLine());
        }
    }

    public static String httpGetRequestWithDecodeData(String url, Header cookies, CryptCoder coder) throws CloudServerException, IOException {
        String response = httpGetRequest(url, cookies, coder, 0);
        if (Log.isLoggable("CloudRequestHelper", 3)) {
            Log.d("CloudRequestHelper", response);
        }
        return response;
    }

    private static String httpGetRequest(String url, Header cookies, CryptCoder coder, int redirectCount) throws IOException, CloudServerException {
        HttpGet request = new HttpGet(url);
        if (cookies != null) {
            request.setHeader(cookies);
        }
        request.setHeader("Accept", "application/json");
        request.setHeader("Accept-Encoding", "gzip");
        if (redirectCount > 0) {
            request.setHeader("X-XIAOMI-REDIRECT-COUNT", redirectCount + "");
        }
        request.setHeader("X-XIAOMI-SUPPORT-REDIRECT", "true, https");
        if (Log.isLoggable("CloudRequestHelper", 3)) {
            Log.d("CloudRequestHelper", "http get url : " + url);
            Log.d("CloudRequestHelper", "http get cookies : " + cookies.toString());
        }
        HttpResponse resp = excuteInternal(request);
        int statusCode = resp.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            try {
                String response = coder.decrypt(decodeGZipToString(resp));
                String redirectUrl = CloudUtils.checkRedirect(response, redirectCount);
                if (TextUtils.isEmpty(redirectUrl)) {
                    return response;
                }
                return httpGetRequest(redirectUrl, cookies, coder, redirectCount + 1);
            } catch (CipherException e) {
                Log.e("CloudRequestHelper", "MiCloudServerException", e);
                throw new CloudServerException(0, resp);
            }
        } else if (CloudServerException.isMiCloudServerException(statusCode)) {
            Log.e("CloudRequestHelper", "MiCloudServerException: " + statusCode + " " + resp.getStatusLine());
            throw new CloudServerException(statusCode, resp);
        } else {
            Log.e("CloudRequestHelper", "Server error: " + statusCode + " " + resp.getStatusLine());
            throw new IOException("Server error: " + statusCode + " " + resp.getStatusLine());
        }
    }

    private static HttpResponse excuteInternal(HttpRequestBase request) throws IOException {
        try {
            long execStartTime = System.currentTimeMillis();
            HttpResponse resp = HttpUtils.getHttpClient().execute(request);
            long timeCost = System.currentTimeMillis() - execStartTime;
            long size = 0;
            if (resp.getEntity() != null) {
                size = resp.getEntity().getContentLength();
            }
            MiCloudStatManager.getInstance().addHttpEvent(request.getURI().toString(), timeCost, size, resp.getStatusLine().getStatusCode(), null);
            return resp;
        } catch (IOException e) {
            MiCloudStatManager.getInstance().addHttpEvent(request.getURI().toString(), -1, 0, -1, e.getClass().getSimpleName());
            throw e;
        }
    }

    static InputStream decodeGZip(HttpResponse resp) throws IllegalStateException, IOException {
        Header contentEncoding = resp.getFirstHeader("Content-Encoding");
        if (contentEncoding == null || !contentEncoding.getValue().equalsIgnoreCase("gzip")) {
            return resp.getEntity().getContent();
        }
        return new GZIPInputStream(resp.getEntity().getContent());
    }

    static String decodeGZipToString(HttpResponse resp) throws IllegalStateException, IOException {
        InputStream is = decodeGZip(resp);
        try {
            String inputStreamToString = inputStreamToString(is);
            return inputStreamToString;
        } finally {
            if (is != null) {
                is.close();
            }
        }
    }

    public static String inputStreamToString(InputStream in) throws IOException {
        StringBuffer buffer = new StringBuffer();
        BufferedReader reader = new BufferedReader(new InputStreamReader(in, Keyczar.DEFAULT_ENCODING));
        char[] data = new char[2048];
        while (true) {
            int count = reader.read(data, 0, 2048);
            if (count == -1) {
                return buffer.toString();
            }
            buffer.append(data, 0, count);
        }
    }

    public static boolean isV4Url(String url) {
        return url.indexOf("/v4") != -1;
    }

    public static CryptCoder getCryptCoder(String url, String security) {
        return isV4Url(url) ? new CloudAESWithIVCoder(security) : new AESCoder(security);
    }

    public static String encodeData(String url, String security, String data) {
        if (TextUtils.isEmpty(security)) {
            throw new IllegalArgumentException("security is empty.");
        } else if (TextUtils.isEmpty(data)) {
            return "";
        } else {
            try {
                return getCryptCoder(url, security).encrypt(data);
            } catch (CipherException e) {
                Log.e("CloudRequestHelper", "encodeData failed:" + data, e);
                return "";
            }
        }
    }
}
