package com.xiaomi.scanner.util;

import android.graphics.Bitmap;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.google.gson.Gson;
import com.xiaomi.scanner.BuildConfig;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.bean.BusinessCardItem;
import com.xiaomi.scanner.bean.BusinessCardResult;
import com.xiaomi.scanner.bean.PlantResult;
import com.xiaomi.scanner.config.bean.ScanRuleListResult;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.translation.bean.TranslateResult;
import com.xiaomi.scanner.translation.bean.TranslateTextInfo;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.ConnectionPool;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;

public class HttpUtils {
    private static final int HTTP_OK = 200;
    private static final boolean PRODUCT_SERVER = true;
    private static final int REQ_TYPE_JSON = 1;
    private static final int REQ_TYPE_STREAM = 0;
    public static final int SERVER_DATA_OK = 1;
    private static final Tag TAG = new Tag("HttpUtils");
    private static final String TOKEN = "R4LsLwmAboEhZMftgrfQSafuSn4";
    private static Gson gson = new Gson();
    private static OkHttpClient okHttpClient;
    private static int sequence = 0;

    public static abstract class ResponseCallback<T> {
        public Type tType = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

        public abstract void onSuccess(T t);

        public void onFail(int code) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HttpReqType {
    }

    public static class HttpResponse {
        public String data = null;
        int responseCode = -1;

        public String toString() {
            return "code : " + this.responseCode + ", data = " + this.data;
        }
    }

    public static List<BusinessCardItem> syncBusinessFromServer(Bitmap bitmap) {
        HttpResponse response = syncPostFromServer("/api/v1/scanner/businesscard", Utils.getServerByteFromBitmap(bitmap), new Object[0]);
        try {
            if (response.responseCode == 200 && response.data != null) {
                BusinessCardResult result = (BusinessCardResult) gson.fromJson(response.data, BusinessCardResult.class);
                if (!(result == null || result.resultCode != 1 || result.businessCardResult == null)) {
                    return result.businessCardResult.businessCardItems;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "sync business throw error " + e);
        }
        return new ArrayList();
    }

    public static PlantResult syncIdentifyPlantFromServer(Bitmap bitmap) {
        Log.d(TAG, "syncIdentifyPlantFromServer req");
        HttpResponse response = syncPostFromServer("/api/v1/scanner/plant", Utils.getServerByteFromBitmap(bitmap), new Object[0]);
        PlantResult plantResult = null;
        try {
            if (response.responseCode == 200 && response.data != null) {
                plantResult = (PlantResult) gson.fromJson(response.data, PlantResult.class);
            }
        } catch (Exception e) {
            Log.e(TAG, "syncIdentifyPlantFromServer error " + e);
        }
        if (plantResult == null) {
            return new PlantResult();
        }
        return plantResult;
    }

    public static void queryScanRuleConfig(ResponseCallback<ScanRuleListResult> callback) {
        asyncGetFromServer("/api/v1/scanner/configuration", callback, AlibcConstants.ID, "scan_payment_rule");
    }

    public static void asyncRealTimeTranslate(Bitmap bitmap, ResponseCallback<TranslateResult> callback, String srcCode, String desCode, boolean useLocalRotate) {
        asyncPostFromServer("/api/v1/scanner/visiontranslation", callback, Utils.scaleAndToByteFromBitmap(bitmap, 1200), "language", srcCode, "to", desCode, "disableOrientationDetection", Boolean.valueOf(useLocalRotate));
    }

    public static void asyncTranslateText(String text, ResponseCallback<TranslateTextInfo> callback, String from, String to) {
        asyncPostJsonFromServer("/api/v1/scanner/translation/text", callback, UserTrackerConstants.FROM, from, "to", to, "text", text);
    }

    private static OkHttpClient getOkHttpClient() throws Exception {
        if (okHttpClient == null) {
            X509TrustManager trustManager = getSystemDefaultTrustManager();
            SSLContext sc = SSLContext.getInstance("TLS");
            sc.init(getClientKeyManagers(), new TrustManager[]{trustManager}, null);
            okHttpClient = new Builder().connectionPool(new ConnectionPool(5, 10, TimeUnit.SECONDS)).sslSocketFactory(sc.getSocketFactory(), trustManager).connectTimeout(10, TimeUnit.SECONDS).build();
        }
        return okHttpClient;
    }

    private static StringBuilder getServerUrl(String req) {
        StringBuilder builder = new StringBuilder();
        builder.append("https://miscanner.api.xiaomi.net");
        builder.append(req);
        return builder;
    }

    private static X509TrustManager getSystemDefaultTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
            return (X509TrustManager) trustManagers[0];
        }
        throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
    }

    private static KeyManager[] getClientKeyManagers() throws IOException, KeyStoreException, CertificateException, NoSuchAlgorithmException, UnrecoverableKeyException {
        KeyStore keyStore = KeyStore.getInstance("PKCS12");
        InputStream is = ScannerApp.getAndroidContext().getAssets().open("app.pfx");
        keyStore.load(is, Constants.SRE_SECRET.toCharArray());
        is.close();
        KeyManagerFactory kmf = KeyManagerFactory.getInstance("X509");
        kmf.init(keyStore, Constants.SRE_SECRET.toCharArray());
        return kmf.getKeyManagers();
    }

    private static String getRealUrl(String req, Object... params) {
        return getRealUrl(0, req, params);
    }

    private static String getRealUrl(int type, String req, Object... params) {
        StringBuilder reqUrl = getServerUrl(req);
        reqUrl.append("?");
        reqUrl.append("token=").append(TOKEN).append("&");
        if (type == 0) {
            String reqId = UUID.randomUUID().toString();
            reqUrl.append("requestId=").append(reqId).append("&");
            StringBuilder append = reqUrl.append("sequence=");
            int i = sequence + 1;
            sequence = i;
            append.append(i).append("&");
            reqUrl.append("apkVersion=").append(BuildConfig.VERSION_CODE).append("&");
            Log.d(TAG, "http req id = " + reqId + ", req = " + req);
        }
        if (params == null || params.length == 0 || params.length % 2 != 0) {
            return reqUrl.toString();
        }
        for (int i2 = 0; i2 < params.length - 1; i2 += 2) {
            reqUrl.append(params[i2]).append("=").append(params[i2 + 1]).append("&");
        }
        return reqUrl.toString();
    }

    private static <T> void asyncPostFromServer(String req, ResponseCallback<T> callback, byte[] body, Object... params) {
        asyncPostFromServer(req, callback, body, 0, params);
    }

    private static <T> void asyncPostJsonFromServer(String req, ResponseCallback<T> callback, Object... params) {
        asyncPostFromServer(req, callback, null, 1, params);
    }

    private static <T> void asyncPostFromServer(String req, final ResponseCallback<T> callback, byte[] body, int type, Object... params) {
        try {
            getOkHttpClient().newCall(genRequest(req, body, type, params)).enqueue(new Callback() {
                public void onFailure(Call call, IOException e) {
                    HttpUtils.onResponseToMain(-1, null, callback);
                    Log.i(HttpUtils.TAG, "fail -1 " + (e != null ? e.getClass() : ""));
                }

                public void onResponse(Call call, Response response) throws IOException {
                    if (response.isSuccessful()) {
                        HttpUtils.onResponseToMain(response.code(), response.body().string(), callback);
                        return;
                    }
                    HttpUtils.onResponseToMain(response.code(), null, callback);
                    Log.i(HttpUtils.TAG, "fail " + response.code());
                }
            });
        } catch (Throwable e) {
            Log.e(TAG, "syncPostFromServer e:" + e.getClass());
            onResponseToMain(-1, null, callback);
        }
    }

    private static Request genRequest(String req, byte[] body, int type, Object... params) {
        String url;
        if (type == 0) {
            url = getRealUrl(req, params);
            if (body == null || body.length <= 0) {
                return new Request.Builder().url(url).build();
            }
            return new Request.Builder().url(url).post(RequestBody.create(MediaType.parse("application/octet-stream"), body)).build();
        } else if (type == 1) {
            url = getRealUrl(1, req, new Object[0]);
            return new Request.Builder().url(url).post(RequestBody.create(MediaType.parse("application/json"), genJsonContent(params))).build();
        } else {
            return new Request.Builder().url(getRealUrl(req, params)).build();
        }
    }

    private static String genJsonContent(Object[] params) {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("requestId", UUID.randomUUID().toString());
            int i = sequence + 1;
            sequence = i;
            jsonObject.put("sequenceId", i);
            for (int i2 = 0; i2 < params.length - 1; i2 += 2) {
                jsonObject.put((String) params[i2], params[i2 + 1]);
            }
        } catch (Throwable e) {
            Log.e(TAG, "genJsonContent error " + e);
        }
        return jsonObject.toString();
    }

    private static HttpResponse syncPostFromServer(String req, byte[] body, Object... params) {
        return syncPostFromServer(req, 0, body, params);
    }

    private static HttpResponse syncPostJsonFromServer(String req, Object... params) {
        return syncPostFromServer(req, 1, null, params);
    }

    private static HttpResponse syncPostFromServer(String req, int type, byte[] body, Object... params) {
        HttpResponse httpResponse = new HttpResponse();
        try {
            Response response = getOkHttpClient().newCall(genRequest(req, body, type, params)).execute();
            httpResponse.responseCode = response.code();
            if (response.isSuccessful()) {
                httpResponse.data = response.body().string();
            }
            Log.i(TAG, "syncPostFromServer response = " + httpResponse.responseCode);
        } catch (Throwable e) {
            Log.e(TAG, "syncPostFromServer e" + e);
        }
        return httpResponse;
    }

    private static HttpResponse syncGetFromServer(String req, Object... params) {
        HttpResponse httpResponse = new HttpResponse();
        try {
            Response response = getOkHttpClient().newCall(new Request.Builder().url(getRealUrl(req, params)).build()).execute();
            httpResponse.responseCode = response.code();
            if (response.isSuccessful()) {
                httpResponse.data = response.body().string();
            }
            Log.i(TAG, "syncPostFromServer response = " + httpResponse.responseCode);
        } catch (Throwable e) {
            Log.e(TAG, "syncGet e" + e);
        }
        return httpResponse;
    }

    private static <T> void asyncGetFromServer(String req, final ResponseCallback<T> callback, Object... params) {
        try {
            getOkHttpClient().newCall(new Request.Builder().url(getRealUrl(req, params)).build()).enqueue(new Callback() {
                public void onFailure(Call call, IOException e) {
                    HttpUtils.onResponseToMain(-1, null, callback);
                }

                public void onResponse(Call call, Response response) throws IOException {
                    if (response.isSuccessful()) {
                        HttpUtils.onResponseToMain(response.code(), response.body().string(), callback);
                    } else {
                        HttpUtils.onResponseToMain(response.code(), null, callback);
                    }
                }
            });
        } catch (Throwable e) {
            Log.e(TAG, "asyncGet error e" + e.getClass());
            onResponseToMain(-1, null, callback);
        }
    }

    private static <T> void onResponseToMain(final int code, String result, final ResponseCallback<T> callback) {
        if (callback == null) {
            Log.e(TAG, "on Response to main error callback null");
            return;
        }
        T t;
        T t2 = null;
        if (result != null) {
            try {
                t = gson.fromJson(result, callback.tType);
            } catch (Exception e) {
                Log.e(TAG, "onResponseToMain error " + e.getClass());
            }
            ScannerThreadPool.runOnUiThread(new Runnable() {
                public void run() {
                    if (t != null) {
                        callback.onSuccess(t);
                    } else {
                        callback.onFail(code);
                    }
                }
            });
        }
        t = t2;
        ScannerThreadPool.runOnUiThread(/* anonymous class already generated */);
    }
}
