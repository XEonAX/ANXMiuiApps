package com.miui.internal.server;

import android.content.Context;
import android.content.Intent;
import android.content.MiuiIntent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.miui.internal.net.KeyValuePair;
import com.miui.internal.net.URLConnectionPostBuilder;
import com.miui.internal.util.DataUpdateUtils;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.vip.utils.AuthHttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.R;
import miui.hybrid.Response;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.util.AppConstants;
import miui.util.IOUtils;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataUpdateManager {
    public static final String ATTRIBUTES_NAME = "data-update";
    public static final String CHECK_UPDATE_ONLY_WIFI_AVAILABLE = "check_update_only_wifi_available";
    public static final int CHECK_UPDATE_ONLY_WIFI_AVAILABLE_DEFAULT = 1;
    public static final String DATA_UPDATE_RECEIVE = "com.xiaomi.dataUpdate.RECEIVE";
    public static final String DATA_UPDATE_REGISTRATION = "com.xiaomi.dataUpdate.REGISTRATION";
    public static final String EXTRA_SERVICE_NAME = "service_name";
    public static final String EXTRA_WATER_MARK = "water_mark";
    public static final String LAST_UPDATE_TIME = "last_update_time";
    public static final String RECEIVER_META_DATA = "com.xiaomi.dataUpdate";
    private static final String TAG = "DataUpdateManager";
    public static final String URL;
    private static final String hD = "http://api.comm.miui.com";
    private static final String hE = "http://trial.api.comm.miui.com";
    private static final String hF = (DeviceHelper.IS_ALPHA_BUILD ? hE : hD);
    private static final String hG = "f47c473853236172bf1a709714bda7a9";
    private static final int hH = 30000;
    private static final long hI = 604800000;
    private static final boolean hJ = true;
    private Map<String, String> hK;
    private String hL;
    private Context mContext;

    private class DataUpdateResponse {
        public String hM;
        public String hN;
        public String hO;
        public int hP;
        public JSONObject hQ;

        public DataUpdateResponse(String str) throws JSONException {
            JSONObject jSONObject = new JSONObject(str);
            this.hM = jSONObject.getString("result");
            this.hO = jSONObject.getString("description");
            this.hP = jSONObject.getInt(CommonResult.RESULT_CODE);
            if (this.hP == 0) {
                this.hQ = jSONObject.getJSONObject("data");
            } else if (jSONObject.has(FirewallLog.REASON)) {
                this.hN = jSONObject.getString(FirewallLog.REASON);
            }
        }

        public String toString() {
            StringBuilder stringBuilder;
            if (this.hP == 0) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("{code:");
                stringBuilder.append(this.hP);
                stringBuilder.append(", result:");
                stringBuilder.append(this.hM);
                stringBuilder.append(", description:");
                stringBuilder.append(this.hO);
                stringBuilder.append(", data:");
                stringBuilder.append(this.hQ.toString());
                stringBuilder.append("}");
                return stringBuilder.toString();
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("{code:");
            stringBuilder.append(this.hP);
            stringBuilder.append(", result:");
            stringBuilder.append(this.hM);
            stringBuilder.append(", reason:");
            stringBuilder.append(this.hN);
            stringBuilder.append(", description:");
            stringBuilder.append(this.hO);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    private static class Holder {
        static final DataUpdateManager hS = new DataUpdateManager(AppConstants.getCurrentApplication());

        private Holder() {
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(hF);
        stringBuilder.append("/cspmisc/service/version");
        URL = stringBuilder.toString();
    }

    public static String getBaseUrl() {
        return hF;
    }

    public static DataUpdateManager getInstance() {
        return Holder.hS;
    }

    private DataUpdateManager(Context context) {
        this.mContext = context;
    }

    public void update() {
        if (!DeviceHelper.IS_CTA_BUILD && DeviceHelper.isDeviceProvisioned(this.mContext) && S() && T()) {
            V();
        }
    }

    private boolean S() {
        return Math.abs(System.currentTimeMillis() - PreferenceManager.getDefaultSharedPreferences(this.mContext).getLong("last_update_time", 0)) > 604800000;
    }

    private boolean T() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || (U() && connectivityManager.isActiveNetworkMetered())) {
            return false;
        }
        return true;
    }

    private boolean U() {
        if (System.getInt(this.mContext.getContentResolver(), CHECK_UPDATE_ONLY_WIFI_AVAILABLE, 1) == 1) {
            return true;
        }
        return false;
    }

    private void V() {
        W();
        if (this.hK.size() != 0) {
            String str = null;
            try {
                str = X();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (str != null) {
                try {
                    DataUpdateResponse dataUpdateResponse = new DataUpdateResponse(str);
                    Log.d(TAG, dataUpdateResponse.toString());
                    if (dataUpdateResponse.hP == 0) {
                        for (String str2 : this.hK.keySet()) {
                            if (dataUpdateResponse.hQ.has(str2)) {
                                long j = dataUpdateResponse.hQ.getLong(str2);
                                String str3 = (String) this.hK.get(str2);
                                Intent intent = new Intent(DATA_UPDATE_RECEIVE);
                                intent.setPackage(str3);
                                intent.putExtra("water_mark", j);
                                intent.putExtra(EXTRA_SERVICE_NAME, str2);
                                this.mContext.sendBroadcast(intent);
                            }
                        }
                        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
                        long j2 = defaultSharedPreferences.getLong("last_update_time", 0);
                        if (j2 > 0) {
                            String str4 = TAG;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("The distance last update time:");
                            stringBuilder.append(System.currentTimeMillis() - j2);
                            Log.d(str4, stringBuilder.toString());
                        }
                        defaultSharedPreferences.edit().putLong("last_update_time", System.currentTimeMillis()).apply();
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private synchronized void W() {
        if (this.hK == null) {
            this.hK = new HashMap();
            PackageManager packageManager = this.mContext.getPackageManager();
            for (ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(new Intent(DATA_UPDATE_REGISTRATION), 128)) {
                TypedArray obtainAttributes;
                try {
                    int next;
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    XmlResourceParser loadXmlMetaData = activityInfo.loadXmlMetaData(packageManager, RECEIVER_META_DATA);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(loadXmlMetaData);
                    while (true) {
                        next = loadXmlMetaData.next();
                        if (next == 1 || next == 2) {
                        }
                    }
                    if (!ATTRIBUTES_NAME.equals(loadXmlMetaData.getName())) {
                        Log.d(TAG, "Meta-data does not start with data-update tag");
                    }
                    obtainAttributes = packageManager.getResourcesForApplication(activityInfo.applicationInfo).obtainAttributes(asAttributeSet, R.styleable.DataUpdate);
                    try {
                        for (String trim : obtainAttributes.getString(R.styleable.DataUpdate_serviceName).split(",")) {
                            this.hK.put(trim.trim(), activityInfo.packageName);
                        }
                    } catch (IllegalArgumentException e) {
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(activityInfo.packageName);
                        stringBuilder.append(" micloud-push attrs error");
                        Log.d(str, stringBuilder.toString());
                    }
                    obtainAttributes.recycle();
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable th) {
                    obtainAttributes.recycle();
                }
            }
            for (String str2 : this.hK.keySet()) {
                String str3 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("{serviceName:");
                stringBuilder2.append(str2);
                stringBuilder2.append(", packageName:");
                stringBuilder2.append((String) this.hK.get(str2));
                stringBuilder2.append("}");
                Log.d(str3, stringBuilder2.toString());
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0125 A:{SYNTHETIC, Splitter: B:39:0x0125} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0135  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0125 A:{SYNTHETIC, Splitter: B:39:0x0125} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0135  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String X() throws JSONException, IOException {
        Throwable th;
        Map linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("http.useragent", Y());
        linkedHashMap.put("Accept-Language", Locale.getDefault().toString());
        String content = getContent();
        Log.d(TAG, content);
        List linkedList = new LinkedList();
        Map hashMap = new HashMap();
        hashMap.put("content", content);
        linkedList.add(new KeyValuePair("content", content));
        content = DataUpdateUtils.genUrlSign(hashMap, this.mContext.getPackageName(), hG);
        linkedList.add(new KeyValuePair("appkey", this.mContext.getPackageName()));
        linkedList.add(new KeyValuePair("sign", content));
        HttpURLConnection build;
        InputStream inputStream;
        try {
            URLConnectionPostBuilder uRLConnectionPostBuilder = new URLConnectionPostBuilder(URL);
            build = uRLConnectionPostBuilder.setTimeout(hH).setHeadParams(linkedHashMap).setDoInputOutput(true).setRequestMethod(AuthHttpRequest.METHOD_POST).build();
            try {
                uRLConnectionPostBuilder.post(linkedList);
                build.connect();
                if (build.getResponseCode() == Response.CODE_GENERIC_ERROR) {
                    inputStream = build.getInputStream();
                    try {
                        String iOUtils = IOUtils.toString(inputStream);
                        if (iOUtils != null) {
                            JSONObject jSONObject = new JSONObject(iOUtils);
                            if (jSONObject.getString("result").equals(MiuiIntent.COMMAND_ICON_PANEL_OK)) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e) {
                                        Log.e(TAG, e.getMessage());
                                    }
                                }
                                if (build != null) {
                                    build.disconnect();
                                }
                                return iOUtils;
                            } else if (jSONObject.getString("result").equals("error")) {
                                iOUtils = TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append("Failed to send to server, ");
                                stringBuilder.append(jSONObject.getString("description"));
                                stringBuilder.append(",");
                                stringBuilder.append(jSONObject.getInt(CommonResult.RESULT_CODE));
                                Log.i(iOUtils, stringBuilder.toString());
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e2) {
                                Log.e(TAG, e2.getMessage());
                            }
                        }
                        if (build != null) {
                            build.disconnect();
                        }
                        throw th;
                    }
                }
                inputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e22) {
                        Log.e(TAG, e22.getMessage());
                    }
                }
                if (build != null) {
                    build.disconnect();
                }
                return null;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                inputStream = null;
                th = th4;
                if (inputStream != null) {
                }
                if (build != null) {
                }
                throw th;
            }
        } catch (Throwable th5) {
            inputStream = null;
            th = th5;
            build = inputStream;
            if (inputStream != null) {
            }
            if (build != null) {
            }
            throw th;
        }
    }

    private String getContent() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", VERSION.INCREMENTAL);
        jSONObject.put("imei", ((TelephonyManager) this.mContext.getSystemService("phone")).getDeviceId().hashCode());
        JSONArray jSONArray = new JSONArray();
        for (String put : this.hK.keySet()) {
            jSONArray.put(put);
        }
        jSONObject.put("data", jSONArray);
        return jSONObject.toString();
    }

    private String Y() {
        if (this.hL == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Build.MODEL);
            stringBuilder.append("; MIUI/");
            stringBuilder.append(VERSION.INCREMENTAL);
            if (DeviceHelper.IS_ALPHA_BUILD) {
                stringBuilder.append(' ');
                stringBuilder.append("ALPHA");
            }
            this.hL = stringBuilder.toString();
        }
        return this.hL;
    }
}
