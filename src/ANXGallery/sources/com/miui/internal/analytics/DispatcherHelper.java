package com.miui.internal.analytics;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import com.miui.internal.vip.utils.AuthHttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import miui.hybrid.Response;
import miui.net.ConnectivityHelper;
import miui.util.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DispatcherHelper {
    private static final String A = "policy";
    private static final String APP_ID = "app_id";
    private static final String B = "version_regex";
    private static final String C = "http://app.miui.com/mobile/analytics2.json";
    private static final long D = 100;
    private static final String E = ".*";
    private static final String F = ".*";
    private static final String G = "normal";
    private static final String TAG = "DispatcherHelper";
    private static final String VERSION = "version";
    private static final String u = "servers";
    private static final String v = "server_name";
    private static final String w = "app_name";
    private static final String x = "probability";
    private static final String y = "items";
    private static final String z = "id_regex";
    private DispatcherManager H = new DispatcherManager(this.mContext);
    private CmdLoader I = new NetworkLoader();
    private Context mContext;

    private interface CmdLoader {
        JSONArray d();
    }

    private class DefaultLoader implements CmdLoader {
        private DefaultLoader() {
        }

        public JSONArray d() {
            try {
                return new JSONArray("[{server:\"google\", app_name:\"com.android.fileexplorer\", app_id:\"UA-33608129-1\", items:[{id_regex:\"capacity_total\", policy:\"last\"},{id_regex:\"capacity_used\", policy:\"normal\"}]}]");
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    private class NetworkLoader implements CmdLoader {
        private NetworkLoader() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:64:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:66:0x00b8 A:{SYNTHETIC, Splitter: B:66:0x00b8} */
        /* JADX WARNING: Removed duplicated region for block: B:55:0x009e  */
        /* JADX WARNING: Removed duplicated region for block: B:57:0x00a3 A:{SYNTHETIC, Splitter: B:57:0x00a3} */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x0089  */
        /* JADX WARNING: Removed duplicated region for block: B:48:0x008e A:{SYNTHETIC, Splitter: B:48:0x008e} */
        /* JADX WARNING: Removed duplicated region for block: B:71:0x00c0  */
        /* JADX WARNING: Removed duplicated region for block: B:73:0x00c5 A:{SYNTHETIC, Splitter: B:73:0x00c5} */
        /* JADX WARNING: Removed duplicated region for block: B:64:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:66:0x00b8 A:{SYNTHETIC, Splitter: B:66:0x00b8} */
        /* JADX WARNING: Removed duplicated region for block: B:55:0x009e  */
        /* JADX WARNING: Removed duplicated region for block: B:57:0x00a3 A:{SYNTHETIC, Splitter: B:57:0x00a3} */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x0089  */
        /* JADX WARNING: Removed duplicated region for block: B:48:0x008e A:{SYNTHETIC, Splitter: B:48:0x008e} */
        /* JADX WARNING: Removed duplicated region for block: B:71:0x00c0  */
        /* JADX WARNING: Removed duplicated region for block: B:73:0x00c5 A:{SYNTHETIC, Splitter: B:73:0x00c5} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public JSONArray d() {
            Throwable e;
            Throwable th;
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            try {
                httpURLConnection = (HttpURLConnection) new URL(DispatcherHelper.C).openConnection();
                try {
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setRequestMethod(AuthHttpRequest.METHOD_GET);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() == Response.CODE_GENERIC_ERROR) {
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            String iOUtils = IOUtils.toString(inputStream);
                            if (iOUtils != null) {
                                JSONArray jSONArray = new JSONArray(iOUtils);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e2) {
                                        Log.e(DispatcherHelper.TAG, e2.getMessage());
                                    }
                                }
                                return jSONArray;
                            }
                        } catch (MalformedURLException e3) {
                            e = e3;
                            Log.e(DispatcherHelper.TAG, "MalformedURLException catched when load configuration from server", e);
                            if (httpURLConnection != null) {
                            }
                            if (inputStream != null) {
                            }
                            return null;
                        } catch (IOException e4) {
                            e = e4;
                            Log.e(DispatcherHelper.TAG, "IOException catched when load configuration from server", e);
                            if (httpURLConnection != null) {
                            }
                            if (inputStream != null) {
                            }
                            return null;
                        } catch (JSONException e5) {
                            e = e5;
                            try {
                                Log.e(DispatcherHelper.TAG, "JSONException catched when load configuration from server", e);
                                if (httpURLConnection != null) {
                                }
                                if (inputStream != null) {
                                }
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
                                if (httpURLConnection != null) {
                                }
                                if (inputStream != null) {
                                }
                                throw th;
                            }
                        }
                    }
                    inputStream = null;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            Log.e(DispatcherHelper.TAG, e6.getMessage());
                        }
                    }
                } catch (MalformedURLException e7) {
                    e = e7;
                    inputStream = null;
                    Log.e(DispatcherHelper.TAG, "MalformedURLException catched when load configuration from server", e);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return null;
                } catch (IOException e8) {
                    e = e8;
                    inputStream = null;
                    Log.e(DispatcherHelper.TAG, "IOException catched when load configuration from server", e);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return null;
                } catch (JSONException e9) {
                    e = e9;
                    inputStream = null;
                    Log.e(DispatcherHelper.TAG, "JSONException catched when load configuration from server", e);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return null;
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    inputStream = null;
                    th = th4;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e62) {
                            Log.e(DispatcherHelper.TAG, e62.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (MalformedURLException e10) {
                e = e10;
                httpURLConnection = null;
                inputStream = httpURLConnection;
                Log.e(DispatcherHelper.TAG, "MalformedURLException catched when load configuration from server", e);
                if (httpURLConnection != null) {
                }
                if (inputStream != null) {
                }
                return null;
            } catch (IOException e11) {
                e = e11;
                httpURLConnection = null;
                inputStream = httpURLConnection;
                Log.e(DispatcherHelper.TAG, "IOException catched when load configuration from server", e);
                if (httpURLConnection != null) {
                }
                if (inputStream != null) {
                }
                return null;
            } catch (JSONException e12) {
                e = e12;
                httpURLConnection = null;
                inputStream = httpURLConnection;
                Log.e(DispatcherHelper.TAG, "JSONException catched when load configuration from server", e);
                if (httpURLConnection != null) {
                }
                if (inputStream != null) {
                }
                return null;
            } catch (Throwable th5) {
                inputStream = null;
                th = th5;
                httpURLConnection = inputStream;
                if (httpURLConnection != null) {
                }
                if (inputStream != null) {
                }
                throw th;
            }
            return null;
        }
    }

    public DispatcherHelper(Context context) {
        this.mContext = context;
    }

    public void dispatch() {
        List a;
        if (EventUtils.enableWrite(this.mContext)) {
            JSONArray d = this.I.d();
            if (d != null) {
                int length = d.length();
                for (int i = 0; i < length && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() && EventUtils.enableWrite(this.mContext); i++) {
                    try {
                        JSONObject jSONObject = d.getJSONObject(i);
                        long j = D;
                        String str = ".*";
                        try {
                            j = jSONObject.getLong(x);
                        } catch (JSONException e) {
                        }
                        try {
                            str = jSONObject.getString("version");
                        } catch (JSONException e2) {
                        }
                        if (Pattern.compile(str).matcher(VERSION.INCREMENTAL).matches()) {
                            this.H.switchDispatcher(a(jSONObject.getJSONArray(u)));
                            String string = jSONObject.getString(w);
                            try {
                                a = a(jSONObject.getJSONArray(y), string, str, j);
                            } catch (JSONException e3) {
                                a = new ArrayList();
                                a.add(new Item(".*", "normal", str, j));
                            }
                            this.H.dispatch(string, a);
                        }
                    } catch (Throwable e4) {
                        Log.e(TAG, "JSONException catched when dispatch events", e4);
                    }
                }
            }
        }
    }

    private Map<String, String> a(JSONArray jSONArray) {
        Map<String, String> linkedHashMap = new LinkedHashMap();
        int length = jSONArray.length();
        int i = 0;
        while (i < length) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                linkedHashMap.put(jSONObject.getString(v), jSONObject.getString(APP_ID));
                i++;
            } catch (Throwable e) {
                Log.e(TAG, "JSONException catched when get servers", e);
            }
        }
        return linkedHashMap;
    }

    private List<Item> a(JSONArray jSONArray, String str, String str2, long j) {
        List<Item> arrayList = new ArrayList();
        int length = jSONArray.length();
        int i = 0;
        while (i < length) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                arrayList.add(new Item(jSONObject.getString(z), jSONObject.getString(A), jSONObject.optString(B, str2), jSONObject.optLong(x, j)));
                i++;
            } catch (Throwable e) {
                String str3 = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Failed to compile items regex for app: ");
                stringBuilder.append(str);
                Log.e(str3, stringBuilder.toString(), e);
            } catch (Throwable e2) {
                Log.e(TAG, "JSONException catched when get item register", e2);
            }
        }
        return arrayList;
    }
}
