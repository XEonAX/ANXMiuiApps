package com.xiaomi.scanner.module.amazoncloudconfig;

import android.os.AsyncTask;
import android.support.annotation.NonNull;
import com.alipay.sdk.packet.d;
import com.taobao.ma.common.constants.MaConstants;
import com.xiaomi.scanner.BuildConfig;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.amazoncloudconfig.CloudConfigNetworking.HttpListener;
import com.xiaomi.scanner.util.DeviceUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class CloudConfigTask extends AsyncTask<Void, Void, Void> {
    private static final String ACTION_DATA_REPORT = "imp_b_back_ad_event";
    private static final String EVENT_REPORT_URL = "https://api.setting.intl.miui.com/setting/v1/config";
    public static final String MIUISCANNER_PACKAGE_NAME = "com.xiaomi.scanner";
    private static final String PARAM_KEY_APP_ID = "app_id";
    private static final String PARAM_KEY_APP_VERSION = "version_name";
    private static final String PARAM_KEY_CIDS = "cids";
    private static final String PARAM_KEY_LANGUAGE = "l";
    private static final String PARAM_KEY_MIUI_VERSION = "miui_version";
    private static final String PARAM_KEY_PACKAGE = "pkg";
    private static final String PARAM_KEY_REGION = "r";
    private static final String PARAM_KEY_SERVER_CODE = "server_code";
    private static final String PARAM_KEY_TIMESTAMP = "timestamp";
    private static final String PARAM_VALUE_APP_ID = "GLOBAL_MISCANNER";
    private static final String PARAM_VALUE_CIDS = "scanner_switch";
    private static final String PARAM_VALUE_SERVER_CODE = "100";
    private static final String PRODUCTION_SCANNER_API_HOST = "https://api.setting.intl.miui.com";
    private static final String SECRET_KEY = "1a142cb487bcb06f";
    private static final String SIGN_SALT = "4fd450ec3389b623d119a62b5c574ee7";
    private static final Tag TAG = new Tag("CloudConfigTask");
    private WeakReference<CloudConfigResponse> mCloudConfigResponse = null;

    public interface CloudConfigResponse {
        void onError();

        void onResponse(boolean z);
    }

    public CloudConfigTask(CloudConfigResponse cloudConfigResponse) {
        this.mCloudConfigResponse = new WeakReference(cloudConfigResponse);
    }

    private String getUrl() {
        return EVENT_REPORT_URL;
    }

    protected Void doInBackground(Void... arg0) {
        Log.d(TAG, "Cloud config call doInBackground");
        reportAction();
        return null;
    }

    private void reportAction() {
        String language = Locale.getDefault().getLanguage();
        Map<String, String> params = new HashMap();
        params.put("timestamp", String.valueOf(System.currentTimeMillis()));
        params.put(PARAM_KEY_APP_VERSION, String.valueOf(BuildConfig.VERSION_NAME));
        params.put(PARAM_KEY_SERVER_CODE, PARAM_VALUE_SERVER_CODE);
        params.put("app_id", PARAM_VALUE_APP_ID);
        params.put(PARAM_KEY_CIDS, PARAM_VALUE_CIDS);
        params.put(PARAM_KEY_REGION, DeviceUtil.getRegion());
        params.put(PARAM_KEY_PACKAGE, "com.xiaomi.scanner");
        params.put(PARAM_KEY_LANGUAGE, language);
        params.put(PARAM_KEY_MIUI_VERSION, DeviceUtil.getMiuiVersion());
        String url = CloudConfigHelper.wrapperUriWithParameter(getUrl(), SIGN_SALT, params);
        if (url == null) {
            Log.w(TAG, "reportAction - url is null");
        } else {
            CloudConfigNetworking.post(url, CloudConfigHelper.encryptionBody(SECRET_KEY, (String) params.get("timestamp"), ACTION_DATA_REPORT), new HttpListener() {
                public void onResponse(int responseCode, HashMap<String, String> hashMap, InputStream result, String encode, int contentLength) {
                    Log.d(CloudConfigTask.TAG, "Network response received onResponse");
                    CloudConfigTask.this.parseResponse(achieveResponse(result));
                }

                @NonNull
                private String achieveResponse(InputStream result) {
                    BufferedReader in = new BufferedReader(new InputStreamReader(result));
                    StringBuffer response = new StringBuffer();
                    while (true) {
                        try {
                            String inputLine = in.readLine();
                            if (inputLine != null) {
                                response.append(inputLine);
                            }
                        } catch (IOException e) {
                            Log.e(CloudConfigTask.TAG, "achieveResponse while parsing - " + e.getMessage());
                            CloudConfigTask.this.error();
                        }
                        try {
                            break;
                        } catch (IOException e2) {
                            Log.e(CloudConfigTask.TAG, "achieveResponse while parsing - " + e2.getMessage());
                            CloudConfigTask.this.error();
                        }
                    }
                    in.close();
                    return response.toString();
                }

                public void onError(int responseCode, CloudConfigNetworkError error) {
                    CloudConfigTask.this.error();
                    Log.d(CloudConfigTask.TAG, "Network response filed " + error);
                }
            });
        }
    }

    private void error() {
        CloudConfigResponse res = (CloudConfigResponse) this.mCloudConfigResponse.get();
        if (res != null) {
            res.onError();
        }
    }

    private void parseResponse(String response) {
        CloudConfigResponse res = (CloudConfigResponse) this.mCloudConfigResponse.get();
        if (res != null) {
            try {
                res.onResponse(new JSONObject(response).optJSONObject(d.k).optJSONArray("list").optJSONObject(0).optJSONObject(MaConstants.UT_PARAM_KEY_CONTENT).optBoolean("enable_switch"));
            } catch (Exception e) {
                Log.e(TAG, "amazon assistant cloud config parserResponse - " + e.getMessage());
                error();
            }
        }
    }
}
