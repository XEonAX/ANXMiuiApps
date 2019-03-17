package com.xiaomi.scanner.module.code.utils;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.study.utils.DigestUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

public class URLInspector extends AsyncTask<String, Object, Integer> {
    private static String APP_KEY = "k-81118";
    private static String PHISH_URL = "http://srv.sec.miui.com/securityCheck/urlCheck";
    public static final int RISK_PHISH = 1;
    public static final int RISK_SAFETY = 0;
    public static final int RISK_UNKNOWN = -1;
    public static final int RISK_UNSAFETY = 2;
    private static String SECRET_KEY = "7e7d57c9c1ca73a42c1dea420901b8c6";
    private static final Tag TAG = new Tag("URLInspector");
    private static String UUID = "5cdd8678-cddf-4269-ab73-48387445bba8";
    protected OnInspectedListener mOnReceivedDataListener = null;

    public interface OnInspectedListener {
        void onInspected(int i);
    }

    public void setOnReceivedDataListener(OnInspectedListener l) {
        this.mOnReceivedDataListener = l;
    }

    protected Integer doInBackground(String... params) {
        int ret = -1;
        if (params != null && params.length >= 1) {
            if (TextUtils.isEmpty(params[0])) {
                Log.w(TAG, "null url");
                return Integer.valueOf(-1);
            }
            try {
                ret = parserJson(getHTML(PHISH_URL + String.format("?url=%s", new Object[]{url}) + "&sign=" + DigestUtils.digestMD5Hex(Base64.encode(String.format("url=%s&%s", new Object[]{params[0], UUID}).toString().getBytes(), 2)), 1000000000));
            } catch (IOException e) {
                Log.e(TAG, "IOException", e);
            }
        }
        return Integer.valueOf(ret);
    }

    protected void onPostExecute(Integer v) {
        if (this.mOnReceivedDataListener != null) {
            this.mOnReceivedDataListener.onInspected(v.intValue());
        }
    }

    public static String getHTML(String url, int timeout) throws IOException {
        String result;
        HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
        conn.setConnectTimeout(timeout);
        conn.setReadTimeout(timeout);
        InputStream inputStream = null;
        try {
            inputStream = conn.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
            result = reader.readLine();
            while (true) {
                String line = reader.readLine();
                if (line == null) {
                    break;
                }
                result = result + line;
            }
            inputStream.close();
            conn.disconnect();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e) {
            Log.e(TAG, "Exception", e);
            result = null;
            conn.disconnect();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            conn.disconnect();
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return result;
    }

    private int parserJson(String json) {
        if (TextUtils.isEmpty(json)) {
            return -1;
        }
        try {
            JSONObject ret = new JSONObject(json);
            if (ret == null || ret.optInt("success") != 1) {
                return -1;
            }
            return ret.optInt("phish");
        } catch (JSONException e) {
            Log.e(TAG, "JSONException", e);
            return -1;
        }
    }
}
