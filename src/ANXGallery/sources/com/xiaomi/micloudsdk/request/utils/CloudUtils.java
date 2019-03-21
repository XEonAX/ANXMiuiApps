package com.xiaomi.micloudsdk.request.utils;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.provider.MiCloudSettings;
import com.xiaomi.micloudsdk.request.utils.RequestConstants.URL;
import com.xiaomi.micloudsdk.utils.JsonUtils;
import com.xiaomi.micloudsdk.utils.NetworkUtils;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class CloudUtils {
    private static final int[] SERVER_RETRY_INTERVALS = new int[]{1000, nexProject.kAutoThemeTransitionDuration, 5000, 10000};
    private static final String URL_RELOCATION_QUERY = (URL.URL_RELOCATION_BASE + "/mic/relocation/v3/user/record");
    private static volatile Map<String, Object> sHostsCacheInner = new HashMap();
    private static volatile boolean sNeedUpdateHosts = TextUtils.isEmpty(getHostList());
    private static Object sUpdateMiCloudHostsLock = new Object();
    private static UpdateStatus sUpdateStatus;

    private enum UpdateStatus {
        UPDATING,
        SUCCESS,
        FAILED
    }

    private static void updateHostCache(Map<String, Object> m) {
        sHostsCacheInner = new HashMap(m);
    }

    private static Map<String, Object> getHostCache() {
        return new HashMap(sHostsCacheInner);
    }

    public static String getUserAgent() {
        return Request.getRequestEnv().getUserAgent();
    }

    public static String checkRedirect(String response, int redirectCount) throws CloudServerException {
        if (redirectCount >= 15) {
            throw new CloudServerException(503, 10034, 10);
        }
        try {
            JSONObject responseJSON = new JSONObject(response);
            if (responseJSON.getInt("code") == 308) {
                if (responseJSON.getJSONObject("data").optBoolean("isPermanent")) {
                    sNeedUpdateHosts = true;
                }
                return responseJSON.getJSONObject("data").getString("redirectUrl");
            } else if (responseJSON.getInt("code") == 503) {
                throw new CloudServerException(503, 503, responseJSON.getJSONObject("data").getInt("retryAfter"));
            } else {
                if (responseJSON.getInt("code") == 10034) {
                    throw new CloudServerException(503, 10034, responseJSON.getJSONObject("data").getInt("retryAfter"));
                }
                return null;
            }
        } catch (JSONException e) {
            Log.e("CloudUtils", "JSONException in checkRedirect():" + response, e);
        }
    }

    public static int isInternationalAccount(boolean needRefresh) {
        if (needRefresh) {
            updateHostCache(new HashMap());
        }
        if (getHostCache().isEmpty()) {
            sNeedUpdateHosts = true;
            try {
                updateMiCloudHosts(needRefresh);
                if (getHostCache().isEmpty()) {
                    return 2;
                }
            } catch (CloudServerException e) {
                Log.e("CloudUtils", "CloudServerException in isInternationalAccount", e);
                return 2;
            }
        }
        for (Entry<String, Object> entry : getHostCache().entrySet()) {
            String k = (String) entry.getKey();
            Object v = entry.getValue();
            if (v instanceof String) {
                String host = Uri.parse((String) v).getHost();
                if (host != null) {
                    return host.equals(k) ? 0 : 1;
                }
            }
        }
        return 2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:163:0x0313 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x02e0 A:{LOOP_END, LOOP:1: B:37:0x0141->B:130:0x02e0, Catch:{ all -> 0x0152, InterruptedException -> 0x0163 }} */
    /* JADX WARNING: Missing block: B:23:0x00af, code:
            if (r9 == false) goto L_0x00b5;
     */
    /* JADX WARNING: Missing block: B:24:0x00b1, code:
            sUpdateStatus = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.UPDATING;
     */
    /* JADX WARNING: Missing block: B:69:?, code:
            r17 = sUpdateMiCloudHostsLock;
     */
    /* JADX WARNING: Missing block: B:70:0x01bc, code:
            monitor-enter(r17);
     */
    /* JADX WARNING: Missing block: B:71:0x01bd, code:
            if (true == false) goto L_0x01ca;
     */
    /* JADX WARNING: Missing block: B:73:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;
     */
    /* JADX WARNING: Missing block: B:74:0x01c1, code:
            sUpdateStatus = r16;
            sUpdateMiCloudHostsLock.notifyAll();
     */
    /* JADX WARNING: Missing block: B:75:0x01c8, code:
            monitor-exit(r17);
     */
    /* JADX WARNING: Missing block: B:76:0x01ca, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;
     */
    /* JADX WARNING: Missing block: B:86:0x01e7, code:
            r7 = r12.getJSONObject("data").getJSONObject("hostList");
     */
    /* JADX WARNING: Missing block: B:87:0x01f5, code:
            if (r7 == null) goto L_0x0232;
     */
    /* JADX WARNING: Missing block: B:88:0x01f7, code:
            android.util.Log.d("CloudUtils", "getHostList set sNeedUpdateHosts to false " + java.lang.Thread.currentThread().getName());
            setHostList(r7.toString());
            updateHostCache(com.xiaomi.micloudsdk.utils.JsonUtils.jsonToMap(r7));
            sNeedUpdateHosts = false;
     */
    /* JADX WARNING: Missing block: B:89:0x022d, code:
            if (android.text.TextUtils.isEmpty(r2) != false) goto L_0x0232;
     */
    /* JADX WARNING: Missing block: B:90:0x022f, code:
            setXiaomiAccountName(r2);
     */
    /* JADX WARNING: Missing block: B:93:?, code:
            r17 = sUpdateMiCloudHostsLock;
     */
    /* JADX WARNING: Missing block: B:94:0x0235, code:
            monitor-enter(r17);
     */
    /* JADX WARNING: Missing block: B:95:0x0236, code:
            if (true == false) goto L_0x0329;
     */
    /* JADX WARNING: Missing block: B:97:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;
     */
    /* JADX WARNING: Missing block: B:98:0x023a, code:
            sUpdateStatus = r16;
            sUpdateMiCloudHostsLock.notifyAll();
     */
    /* JADX WARNING: Missing block: B:99:0x0241, code:
            monitor-exit(r17);
     */
    /* JADX WARNING: Missing block: B:137:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;
     */
    /* JADX WARNING: Missing block: B:167:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:170:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void updateMiCloudHosts(boolean forceUpdateCache) throws CloudServerException {
        Throwable e;
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "enter updateMiCloudHosts, sNeedUpdateHosts: " + sNeedUpdateHosts);
        }
        if (!(getXiaomiAccountName() == null || getXiaomiAccountName().equals(Request.getRequestEnv().getAccountName()))) {
            sNeedUpdateHosts = true;
        }
        if (sNeedUpdateHosts || forceUpdateCache) {
            boolean needDo = true;
            try {
                synchronized (sUpdateMiCloudHostsLock) {
                    while (true) {
                        if (sUpdateStatus != UpdateStatus.UPDATING) {
                            break;
                        }
                        Log.v("CloudUtils", "Waiting for an existing updateMiCloudHosts to finish " + Thread.currentThread().getName());
                        sUpdateMiCloudHostsLock.wait();
                        Log.v("CloudUtils", "The existing updateMiCloudHosts finished " + Thread.currentThread().getName());
                        needDo = sUpdateStatus != UpdateStatus.SUCCESS;
                    }
                    while (true) {
                    }
                }
                if (needDo) {
                    Log.d("CloudUtils", "updateMiCloudHosts " + Thread.currentThread().getName());
                    HashMap<String, String> params = new HashMap();
                    try {
                        String romCountry = (String) Class.forName("miui.os.Build").getDeclaredMethod("getRegion", new Class[0]).invoke(null, new Object[0]);
                        Request.setRegion(romCountry);
                        params.put("romCountry", romCountry);
                    } catch (Exception e2) {
                        Log.e("CloudUtils", "Exception in updateMiCloudHosts()", e2);
                        params.put("romCountry", Request.getRegion());
                    }
                    if (TextUtils.isEmpty((CharSequence) params.get("romCountry"))) {
                        Log.d("CloudUtils", "request romCountry null, thirdparty app");
                        MiCloudSettings.putString(Request.getContext(), "micloud_updatehosts_third_party", "true");
                    } else {
                        Log.d("CloudUtils", "request romCountry not null, system app");
                        MiCloudSettings.putString(Request.getContext(), "micloud_updatehosts_third_party", "false");
                    }
                    JSONObject responseJSON = null;
                    int i = 0;
                    while (true) {
                        JSONObject responseJSON2 = responseJSON;
                        Throwable failureCause = null;
                        if (Thread.currentThread().isInterrupted()) {
                            throw new InterruptedException();
                        }
                        try {
                            String accountName = Request.getRequestEnv().getAccountName();
                            if (TextUtils.isEmpty(accountName)) {
                                break;
                            }
                            responseJSON = new JSONObject(Request.securePost(URL_RELOCATION_QUERY, params));
                            try {
                                if (responseJSON.getInt("code") == 0) {
                                    break;
                                }
                            } catch (JSONException e3) {
                                e = e3;
                                Log.e("CloudUtils", "JSONException in updateMiCloudHosts", e);
                                throw new CloudServerException(0, e);
                            } catch (IllegalBlockSizeException e4) {
                                e = e4;
                                Log.e("CloudUtils", "IllegalBlockSizeException in updateMiCloudHosts", e);
                                throw new CloudServerException(0, e);
                            } catch (BadPaddingException e5) {
                                e = e5;
                                Log.e("CloudUtils", "BadPaddingException in updateMiCloudHosts", e);
                                throw new CloudServerException(0, e);
                            } catch (ClientProtocolException e6) {
                                e = e6;
                                Log.e("CloudUtils", "ClientProtocolException in updateMiCloudHosts", e);
                                throw new CloudServerException(0, e);
                            } catch (IOException e7) {
                                e = e7;
                                Log.e("CloudUtils", "IOException in updateMiCloudHosts", e);
                                if (NetworkUtils.isNetworkAvailable(Request.getContext())) {
                                    failureCause = e;
                                    if (i >= SERVER_RETRY_INTERVALS.length) {
                                    }
                                } else {
                                    Log.d("CloudUtils", "No network in IOException");
                                    throw new CloudServerException(0, e);
                                }
                            }
                            if (i >= SERVER_RETRY_INTERVALS.length) {
                                Log.e("CloudUtils", "Wait " + SERVER_RETRY_INTERVALS[i] + " ms for retry");
                                Thread.sleep((long) SERVER_RETRY_INTERVALS[i]);
                                i++;
                            } else if (failureCause != null) {
                                throw new CloudServerException(0, failureCause);
                            } else {
                                throw new CloudServerException(0);
                            }
                        } catch (JSONException e8) {
                            e = e8;
                            responseJSON = responseJSON2;
                        } catch (IllegalBlockSizeException e9) {
                            e = e9;
                            responseJSON = responseJSON2;
                        } catch (BadPaddingException e10) {
                            e = e10;
                            responseJSON = responseJSON2;
                        } catch (ClientProtocolException e11) {
                            e = e11;
                            responseJSON = responseJSON2;
                        } catch (IOException e12) {
                            e = e12;
                            responseJSON = responseJSON2;
                        }
                    }
                }
            } catch (Throwable e13) {
                Log.e("CloudUtils", "InterruptedException in updateMiCloudHosts", e13);
                throw new CloudServerException(0, e13);
            } catch (Throwable th) {
                synchronized (sUpdateMiCloudHostsLock) {
                    sUpdateStatus = false ? UpdateStatus.SUCCESS : UpdateStatus.FAILED;
                    sUpdateMiCloudHostsLock.notifyAll();
                }
            }
        }
    }

    public static String updateRequestHost(String url, boolean forceUpdateCache) throws CloudServerException {
        updateMiCloudHosts(forceUpdateCache);
        try {
            Log.i("CloudUtils", "Original URL: " + url + ". ");
            java.net.URL originalURL = new java.net.URL(url);
            String newHostWithScheme = getHostWithScheme(originalURL.getHost());
            if (!TextUtils.isEmpty(newHostWithScheme)) {
                Log.i("CloudUtils", "New URL: " + newHostWithScheme + ". ");
                java.net.URL newUrl = new java.net.URL(newHostWithScheme);
                url = new java.net.URL(newUrl.getProtocol(), newUrl.getHost(), originalURL.getFile()).toString();
            }
        } catch (MalformedURLException e) {
            Log.e("CloudUtils", "MalformedURLException in updateHost", e);
        }
        Log.i("CloudUtils", "Final URL: " + url + ". ");
        return url;
    }

    private static String getHostWithScheme(String hostKey) {
        JSONException e;
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "Enter getHost key=" + hostKey);
        }
        String hostValueObj = getHostCache().get(hostKey);
        String hostValue = null;
        if (hostValueObj != null && (hostValueObj instanceof String)) {
            hostValue = hostValueObj;
        }
        if (TextUtils.isEmpty(hostValue)) {
            String hosts = getHostList();
            if (!TextUtils.isEmpty(hosts)) {
                try {
                    JSONObject hostlist = new JSONObject(hosts);
                    try {
                        updateHostCache(JsonUtils.jsonToMap(hostlist));
                        Object hostValueObj2 = getHostCache().get(hostKey);
                        if (hostValueObj2 != null && (hostValueObj2 instanceof String)) {
                            hostValue = (String) hostValueObj2;
                        }
                        if (Log.isLoggable("CloudUtils", 3)) {
                            Log.d("CloudUtils", "find host in SystemSettings/sp return host = " + hostValue);
                        }
                        return hostValue;
                    } catch (JSONException e2) {
                        e = e2;
                        JSONObject jSONObject = hostlist;
                        Log.e("CloudUtils", "JSONException in getHost, return null", e);
                        return null;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    Log.e("CloudUtils", "JSONException in getHost, return null", e);
                    return null;
                }
            } else if (!Log.isLoggable("CloudUtils", 3)) {
                return null;
            } else {
                Log.d("CloudUtils", "Hosts in SystemSettings/sp = null, return null");
                return null;
            }
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "Hit host cache directly return host = " + hostValue);
        }
        return hostValue;
    }

    private static String getHostList() {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "get hostlist from sp");
            }
            return PreferenceManager.getDefaultSharedPreferences(Request.getContext()).getString("pref_micloud_hosts_v2", "");
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "get hostlist from settings");
        }
        return MiCloudSettings.getString(Request.getContext(), "micloud_hosts_v2");
    }

    private static void setHostList(String hosts) {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "set hostlist to sp");
            }
            PreferenceManager.getDefaultSharedPreferences(Request.getContext()).edit().putString("pref_micloud_hosts_v2", hosts).commit();
            return;
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "set hostlist to settings");
        }
        MiCloudSettings.putString(Request.getContext(), "micloud_hosts_v2", hosts);
    }

    public static Account getXiaomiAccount() {
        return getXiaomiAccount(Request.getContext());
    }

    public static Account getXiaomiAccount(Context context) {
        Account[] accounts = AccountManager.get(context).getAccountsByType("com.xiaomi");
        if (accounts.length > 0) {
            return accounts[0];
        }
        return null;
    }

    private static void setXiaomiAccountName(String accountName) {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "set accountName: " + accountName + " to sp");
            }
            PreferenceManager.getDefaultSharedPreferences(Request.getContext()).edit().putString("pref_micloud_accountname_v2", accountName).commit();
            return;
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "set accountName: " + accountName + " to settings");
        }
        MiCloudSettings.putString(Request.getContext(), "micloud_accountname_v2", accountName);
    }

    private static String getXiaomiAccountName() {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "get accountName from sp");
            }
            return PreferenceManager.getDefaultSharedPreferences(Request.getContext()).getString("pref_micloud_accountname_v2", "");
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "get accountName from settings");
        }
        return MiCloudSettings.getString(Request.getContext(), "micloud_accountname_v2");
    }

    private static boolean getPersistHostsFromSp() {
        return "true".equals(MiCloudSettings.getString(Request.getContext(), "micloud_updatehosts_third_party"));
    }
}
