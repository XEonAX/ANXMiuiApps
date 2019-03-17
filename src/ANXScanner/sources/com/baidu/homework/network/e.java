package com.baidu.homework.network;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.alipay.sdk.cons.b;
import com.alipay.sdk.packet.d;
import com.baidu.homework.api.ZybAPI;
import com.baidu.homework.common.a;
import com.baidu.homework.common.net.core.AntiSpam;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import mtopsdk.network.util.Constants.Protocol;
import org.json.JSONObject;

public final class e {
    private static boolean a;
    private static volatile boolean b = false;
    private static volatile a c;

    static {
        a = false;
        try {
            System.loadLibrary("anti_spam");
            a = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized String a(String str) {
        synchronized (e.class) {
            if (c != null) {
                try {
                    str = new String(c.b(b(str)));
                } catch (Exception e) {
                    e.printStackTrace();
                    str = "";
                }
            }
        }
        return str;
    }

    public static JSONObject a(Context context, Request request) {
        return a(false, context, request);
    }

    private static JSONObject a(boolean z, Context context, Request request) {
        if (!(b || z)) {
            b(context);
        }
        URL url = new URL(request.getUrl());
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setInstanceFollowRedirects(true);
        if (b.a.equals(url.getProtocol())) {
            try {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(a.a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!z) {
            a(context, request.getParams());
        }
        byte[] body = request.getBody();
        if (body != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.addRequestProperty(Protocol.CONTENT_TYPE, request.getContentType());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(body);
            dataOutputStream.close();
        }
        if (httpURLConnection.getResponseCode() != 200) {
            throw new IOException("网络传输异常");
        }
        a.a(context, System.currentTimeMillis() - httpURLConnection.getDate());
        InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
        StringBuilder stringBuilder = new StringBuilder();
        char[] cArr = new char[128];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                break;
            }
            stringBuilder.append(cArr, 0, read);
        }
        inputStreamReader.close();
        try {
            JSONObject jSONObject = new JSONObject(stringBuilder.toString());
            try {
                if (jSONObject.getInt("errNo") == 6) {
                    a(context);
                    Log.e("Network", "Antispam Error");
                }
                return jSONObject;
            } catch (Throwable e2) {
                e2.printStackTrace();
                throw new IOException("数据格式异常", e2);
            }
        } catch (Throwable e22) {
            e22.printStackTrace();
            throw new IOException("数据格式异常", e22);
        }
    }

    private static synchronized void a(Context context) {
        synchronized (e.class) {
            a.a(context, "", "");
            c = null;
            b = false;
        }
    }

    private static synchronized void a(Context context, String str, String str2) {
        synchronized (e.class) {
            a.a(context, str, str2);
            c = new a(AntiSpam.nativeGetKey(AlibcJsResult.NO_PERMISSION));
            b = true;
        }
    }

    private static void a(Context context, HashMap<String, String> hashMap) {
        String valueOf = String.valueOf((System.currentTimeMillis() - a.e(context)) / 1000);
        hashMap.put("cuid", com.baidu.homework.common.b.a(context));
        hashMap.put("uid", a.d(context));
        hashMap.put("appid", a.a(context));
        hashMap.put("_t_", valueOf);
        hashMap.put("vc", AlibcJsResult.NO_PERMISSION);
        hashMap.put("vcname", String.valueOf(ZybAPI.VCNAME));
        Iterable arrayList = new ArrayList();
        for (Entry entry : hashMap.entrySet()) {
            arrayList.add(((String) entry.getKey()) + "=" + entry.getValue());
        }
        Collections.sort(arrayList);
        hashMap.put("sign", AntiSpam.nativeGetSign(Base64.encodeToString(TextUtils.join("", arrayList).getBytes(Charset.forName("UTF-8")), 2)));
    }

    private static synchronized boolean b(Context context) {
        boolean z = true;
        boolean z2 = false;
        synchronized (e.class) {
            if (!a || b) {
                z = z2;
            } else {
                String nativeInitAntispam;
                String str;
                Context applicationContext = context.getApplicationContext();
                String[] b = a.b(applicationContext);
                CharSequence charSequence = b[0];
                CharSequence charSequence2 = b[1];
                if (TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(charSequence2)) {
                    nativeInitAntispam = AntiSpam.nativeInitAntispam(applicationContext, com.baidu.homework.common.b.a(context));
                    HashMap hashMap = new HashMap(2);
                    hashMap.put(d.k, nativeInitAntispam);
                    hashMap.put("vc", AlibcJsResult.NO_PERMISSION);
                    hashMap.put("vcname", String.valueOf(ZybAPI.VCNAME));
                    hashMap.put("cuid", com.baidu.homework.common.b.a(context));
                    hashMap.put("uid", a.d(context));
                    hashMap.put("appid", a.a(context));
                    try {
                        String str2 = nativeInitAntispam;
                        nativeInitAntispam = a(true, context, new c("https://www.zybang.com/napi/user/antispam", hashMap)).getJSONObject(d.k).getString(d.k);
                        str = str2;
                    } catch (Exception e) {
                        e.printStackTrace();
                        z = z2;
                    }
                } else {
                    CharSequence str3 = charSequence;
                    charSequence = charSequence2;
                }
                if (AntiSpam.nativeSetToken(applicationContext, com.baidu.homework.common.b.a(context), str3, nativeInitAntispam)) {
                    a(applicationContext, str3, nativeInitAntispam);
                }
            }
        }
        return z;
    }

    private static byte[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Base64.decode(str, 2);
        } catch (Exception e) {
            e.printStackTrace();
            return str.getBytes();
        }
    }
}
