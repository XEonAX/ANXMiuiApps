package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.keyczar.Keyczar;

/* compiled from: NetworkUtils */
public abstract class l {
    private static boolean a;

    /* compiled from: NetworkUtils */
    public interface b {
        void a(String str);
    }

    /* compiled from: NetworkUtils */
    public static final class a extends FilterInputStream {
        private boolean a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.a) {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    return read;
                }
            }
            this.a = true;
            return -1;
        }
    }

    public static void a() {
        a = m.a(d.a(), "enable_network_connection", true);
    }

    public static boolean b() {
        return a;
    }

    public static boolean a(Context context) {
        if (context != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnectedOrConnecting();
                }
            } catch (Throwable e) {
                j.a("isNetworkConnected", e);
            }
        }
        return false;
    }

    public static boolean b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                return 1 == activeNetworkInfo.getType();
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static String c(Context context) {
        if (b(context)) {
            return "WIFI";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return "";
                }
                return (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0073 A:{SYNTHETIC, Splitter: B:19:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078 A:{Catch:{ IOException -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0073 A:{SYNTHETIC, Splitter: B:19:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078 A:{Catch:{ IOException -> 0x0114 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(Context context, String str, Map<String, String> map, b bVar) throws IOException {
        Throwable e;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        if (!b()) {
            j.d("NET", "Network connection is disabled.");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The url is empty.");
        } else {
            OutputStream outputStream;
            try {
                HttpURLConnection a = a(context, new URL(t.a(context, str)));
                a.setConnectTimeout(10000);
                a.setReadTimeout(15000);
                a.setRequestMethod("POST");
                a.setRequestProperty("Connection", "close");
                j.b("NET", String.format("paramsMap:%s", new Object[]{map}));
                a((Map) map);
                String b = b((Map) map);
                if (b.isEmpty()) {
                    throw new IllegalArgumentException("The content being uploaded is empty.");
                }
                a.setDoOutput(true);
                byte[] bytes = b.getBytes();
                outputStream = a.getOutputStream();
                try {
                    String readLine;
                    outputStream.write(bytes, 0, bytes.length);
                    outputStream.flush();
                    outputStream.close();
                    OutputStream outputStream2 = null;
                    int responseCode = a.getResponseCode();
                    j.b("NET", String.format("url:%s, responseCode:%d", new Object[]{readLine, Integer.valueOf(responseCode)}));
                    BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(new a(a.getInputStream())));
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        String property = System.getProperty("line.separator");
                        for (readLine = bufferedReader3.readLine(); readLine != null; readLine = bufferedReader3.readLine()) {
                            stringBuffer.append(readLine);
                            stringBuffer.append(property);
                        }
                        bVar.a(stringBuffer.toString());
                        bufferedReader3.close();
                        BufferedReader bufferedReader4 = null;
                        if (null != null) {
                            try {
                                outputStream2.close();
                            } catch (Throwable e2) {
                                j.a("NET", "doHttpPost final exception", e2);
                                return;
                            }
                        }
                        if (null != null) {
                            bufferedReader4.close();
                        }
                    } catch (IOException e3) {
                        e2 = e3;
                        bufferedReader = bufferedReader3;
                        outputStream = null;
                        bufferedReader2 = bufferedReader;
                        try {
                            Log.d("NET", "IOException:", e2);
                            throw e2;
                        } catch (Throwable th) {
                            e2 = th;
                            if (outputStream != null) {
                            }
                            if (bufferedReader2 != null) {
                            }
                            throw e2;
                        }
                    } catch (Throwable th2) {
                        e2 = th2;
                        bufferedReader = bufferedReader3;
                        outputStream = null;
                        bufferedReader2 = bufferedReader;
                        if (outputStream != null) {
                        }
                        if (bufferedReader2 != null) {
                        }
                        throw e2;
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    Log.d("NET", "IOException:", e2);
                    throw e2;
                } catch (Throwable th3) {
                    e2 = th3;
                    Log.d("NET", "Throwable:", e2);
                    throw new IOException(e2.getMessage());
                }
            } catch (IOException e5) {
                e2 = e5;
                outputStream = null;
                Log.d("NET", "IOException:", e2);
                throw e2;
            } catch (Throwable th4) {
                e2 = th4;
                outputStream = null;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable e6) {
                        j.a("NET", "doHttpPost final exception", e6);
                        throw e2;
                    }
                }
                if (bufferedReader2 != null) {
                    bufferedReader2.close();
                }
                throw e2;
            }
        }
    }

    protected static void a(Map<String, String> map) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            HashMap hashMap = new HashMap();
            if (map != null) {
                List<String> arrayList = new ArrayList(map.keySet());
                Collections.sort(arrayList);
                if (!arrayList.isEmpty()) {
                    for (String str : arrayList) {
                        stringBuilder.append(str + ((String) map.get(str)));
                    }
                }
            }
            stringBuilder.append("mistats_sdkconfig_jafej!@#)(*e@!#");
            map.put("sign", t.b(stringBuilder.toString()).toLowerCase(Locale.getDefault()));
        } catch (Throwable e) {
            j.a("NET", "sign exception:", e);
        }
    }

    public static String b(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer deleteCharAt;
        StringBuffer stringBuffer = new StringBuffer();
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    stringBuffer.append(URLEncoder.encode((String) entry.getKey(), Keyczar.DEFAULT_ENCODING));
                    stringBuffer.append("=");
                    stringBuffer.append(URLEncoder.encode((String) entry.getValue(), Keyczar.DEFAULT_ENCODING));
                    stringBuffer.append("&");
                } catch (UnsupportedEncodingException e) {
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            deleteCharAt = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        } else {
            deleteCharAt = stringBuffer;
        }
        return deleteCharAt.toString();
    }

    public static HttpURLConnection a(Context context, URL url) throws IOException {
        if (!"http".equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (e(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!d(context)) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(a(url)).openConnection();
        httpURLConnection.addRequestProperty("X-Online-Host", url.getHost());
        return httpURLConnection;
    }

    public static String a(URL url) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(url.getProtocol()).append("://").append("10.0.0.172").append(url.getPath());
        if (!TextUtils.isEmpty(url.getQuery())) {
            stringBuilder.append("?").append(url.getQuery());
        }
        return stringBuilder.toString();
    }

    public static boolean d(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || extraInfo.contains("ctwap")) {
                    return false;
                }
                return extraInfo.regionMatches(true, extraInfo.length() - 3, "wap", 0, 3);
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean e(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3) {
                    return false;
                }
                return extraInfo.contains("ctwap");
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static void a(String str, Map<String, String> map, b bVar) throws IOException {
        Context a = d.a();
        if (CustomSettings.isDataUploadingEnabled()) {
            if (map != null) {
                map.put("bc", BuildSetting.getMiuiBuildCode());
            }
            if (!CustomSettings.isUseSystemUploadingService()) {
                a(a, str, map, bVar);
                return;
            } else if (c()) {
                try {
                    b(a, str, map, bVar);
                    return;
                } catch (Exception e) {
                    throw new IOException("exception thrown from IPC." + e.getMessage());
                }
            } else {
                bVar.a(null);
                j.a("NET", "Uploading via sys service, metered network connected, skip");
                return;
            }
        }
        j.d("NET", "upload is disabled.");
        bVar.a("");
    }

    @SuppressLint({"NewApi"})
    public static boolean c() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) d.a().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            if (activeNetworkInfo.getType() == 1) {
                return true;
            }
            if (VERSION.SDK_INT < 16) {
                return false;
            }
            return !connectivityManager.isActiveNetworkMetered();
        } catch (Throwable e) {
            j.a("NET", "isUnmeteredNetworkConnected exception", e);
            return false;
        }
    }

    public static void b(final Context context, final String str, final Map<String, String> map, final b bVar) {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.HttpService");
            if (!context.bindService(intent, new ServiceConnection() {
                private boolean e = false;

                public void onServiceDisconnected(ComponentName componentName) {
                    j.a("NET", "error while perform IPC connection.", null);
                    if (!this.e) {
                        bVar.a(null);
                        j.a("NET", "disconnected, remote http post hasn't not processed");
                    }
                }

                public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
                    r.b.execute(new Runnable() {
                        public void run() {
                            try {
                                bVar.a(com.xiaomi.xmsf.push.service.a.a.a(iBinder).a(t.a(context, str), map));
                                AnonymousClass1.this.e = true;
                                j.a("NET", "connected, do remote http post");
                                context.unbindService(this);
                            } catch (Throwable th) {
                                j.a("NET", "error while uploading the logs by IPC.", th);
                                bVar.a(null);
                                AnonymousClass1.this.e = true;
                            }
                        }
                    });
                }
            }, 1)) {
                j.a("NET", "Failed to bind IHttpService.");
                bVar.a(null);
            }
        } catch (Throwable e) {
            j.a("NET", "uploadDataThroughSystemService", e);
            bVar.a(null);
        }
    }

    public static String f(Context context) {
        try {
            if (t.g(context)) {
                return g(context);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return "2G";
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return "3G";
                    case 13:
                    case 18:
                    case 19:
                        return "4G";
                    default:
                        return "unknown";
                }
            }
            return "unknown";
        } catch (Throwable e) {
            j.a("NET", "getNetworkType exception", e);
        }
    }

    public static String g(Context context) {
        String str = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(9);
                if (networkInfo != null && networkInfo.isConnected()) {
                    return "WIFI" + h(context);
                }
                if (networkInfo2 != null && networkInfo2.isConnected()) {
                    return "ETHERNET";
                }
            }
        } catch (Throwable e) {
            j.a("NET", "getNetworkType exception", e);
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0099 A:{Catch:{ Exception -> 0x009e }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x008c A:{Catch:{ Exception -> 0x009e }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String h(Context context) {
        String str = "";
        int frequency;
        if (VERSION.SDK_INT >= 22) {
            try {
                String str2;
                frequency = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getFrequency();
                if (a(frequency)) {
                    str2 = "5G";
                } else if (b(frequency)) {
                    str2 = "2G";
                } else {
                    str2 = str;
                }
                return str2;
            } catch (Throwable e) {
                j.a("NET", "getWififreband NoSuchMethodError", e);
                return str;
            } catch (Throwable e2) {
                j.a("NET", "getWififreband exception", e2);
                return str;
            }
        }
        try {
            Object obj;
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            String ssid = wifiManager.getConnectionInfo().getSSID();
            String substring = ssid.substring(1, ssid.length() - 1);
            if (ssid != null && ssid.length() > 2) {
                for (ScanResult scanResult : wifiManager.getScanResults()) {
                    if (scanResult.SSID.equals(substring)) {
                        if (a(scanResult.frequency)) {
                            obj = 2;
                        } else if (b(scanResult.frequency)) {
                            frequency = 1;
                        }
                        if (obj != 2) {
                            return "5G";
                        }
                        if (obj == 1) {
                            return "2G";
                        }
                        return str;
                    }
                }
            }
            frequency = -1;
            if (obj != 2) {
            }
        } catch (Throwable e22) {
            j.a("NET", "getWififreband exception", e22);
            return str;
        }
    }

    private static boolean a(int i) {
        return i > 4900 && i < 5900;
    }

    private static boolean b(int i) {
        return i > 2400 && i < 2500;
    }

    public static int i(Context context) {
        String f = f(context);
        if (TextUtils.isEmpty(f) || f.equals("unknown")) {
            return 0;
        }
        if (f.equals("2G")) {
            return 1;
        }
        if (f.equals("3G")) {
            return 2;
        }
        if (f.equals("4G")) {
            return 4;
        }
        if (f.startsWith("WIFI")) {
            return 8;
        }
        if (f.equals("ETHERNET")) {
            return 16;
        }
        return 0;
    }
}
