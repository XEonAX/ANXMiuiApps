package com.taobao.applink.c;

import android.text.TextUtils;
import android.util.Log;
import com.taobao.applink.TBAppLinkSDK;
import com.taobao.applink.util.TBAppLinkUtil;
import com.taobao.applink.util.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class b {
    private static volatile b b = null;
    private String a = TBAppLinkSDK.getInstance().sOpenParam.mAppkey;
    private Map c = new HashMap();
    private a d = c();

    public interface a {
        void a(a aVar);
    }

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (b == null) {
                b = new b();
            }
            bVar = b;
        }
        return bVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:84:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0077 A:{SYNTHETIC, Splitter: B:21:0x0077} */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01f9 A:{ExcHandler: all (r2_24 'th' java.lang.Throwable), Splitter: B:4:0x0021} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01eb  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01f0 A:{SYNTHETIC, Splitter: B:70:0x01f0} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0077 A:{SYNTHETIC, Splitter: B:21:0x0077} */
    /* JADX WARNING: Removed duplicated region for block: B:84:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01eb  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01f0 A:{SYNTHETIC, Splitter: B:70:0x01f0} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:15:0x0051, code:
            r10 = r1;
            r1 = r0;
            r0 = r10;
     */
    /* JADX WARNING: Missing block: B:19:0x0072, code:
            r1.disconnect();
     */
    /* JADX WARNING: Missing block: B:22:?, code:
            r0.close();
     */
    /* JADX WARNING: Missing block: B:63:0x01e1, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:64:0x01e2, code:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:68:0x01eb, code:
            r2.disconnect();
     */
    /* JADX WARNING: Missing block: B:71:?, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:73:0x01f4, code:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:74:0x01f5, code:
            r1.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:75:0x01f9, code:
            r2 = move-exception;
     */
    /* JADX WARNING: Missing block: B:76:0x01fa, code:
            r10 = r2;
            r2 = r0;
            r0 = r10;
     */
    /* JADX WARNING: Missing block: B:83:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:84:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:91:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(a aVar) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        InputStream inputStream2 = null;
        String format = String.format(TBAppLinkUtil.CONFIG_BASE_URL_ONLINE, new Object[]{this.a});
        Log.d("flush url", format);
        StringBuffer stringBuffer;
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(format).openConnection();
            try {
                httpURLConnection3.setConnectTimeout(5000);
                httpURLConnection3.setReadTimeout(5000);
                if (httpURLConnection3.getResponseCode() == 200) {
                    inputStream2 = httpURLConnection3.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                    StringBuilder stringBuilder = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuilder.append(readLine);
                    }
                    Log.d("flush config", stringBuilder.toString());
                    JSONObject jSONObject = new JSONObject(stringBuilder.toString());
                    if (this.d == null) {
                        this.d = new a();
                    }
                    this.d.a(jSONObject);
                    if (this.d.a()) {
                        jSONObject = jSONObject.optJSONObject("appLinkConfig");
                        if (jSONObject == null) {
                            stringBuffer = new StringBuffer();
                            stringBuffer.append("isSuccess=0").append("&configExist=0");
                            b(TBAppLinkUtil.getConfigUrl(), null, stringBuffer.toString());
                            if (httpURLConnection3 != null) {
                                httpURLConnection3.disconnect();
                            }
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                    return;
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    return;
                                }
                            }
                            return;
                        }
                        this.d.d = jSONObject.optLong("exp");
                        this.d.b = jSONObject.optString(TBAppLinkUtil.TAOBAO_SCHEME);
                        this.d.c = jSONObject.optString(TBAppLinkUtil.TMALL_SCHEME);
                        this.d.f = jSONObject.optString("sign");
                        if (this.c == null) {
                            this.c = new HashMap();
                        }
                        this.c.remove(this.a.toString());
                        this.c.put(this.a.toString(), Long.valueOf(System.currentTimeMillis() + (this.d.d * 1000)));
                        if (aVar != null) {
                            aVar.a(this.d);
                        }
                        stringBuffer = new StringBuffer();
                        stringBuffer.append("isSuccess=1").append("&configExist=1").append("&appkeyExist=1").append("&taobao_scheme=").append(this.d.b).append("&tmall_scheme=").append(this.d.c).append("&sug=").append(this.d.e).append("&sign=").append(this.d.f).append("&exp=").append(this.d.d);
                        b(TBAppLinkUtil.getConfigUrl(), null, stringBuffer.toString());
                    } else {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append("isSuccess=1").append("&configExist=0");
                        b(TBAppLinkUtil.getConfigUrl(), null, stringBuffer.toString());
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                                return;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                }
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                InputStream inputStream3 = inputStream2;
                httpURLConnection = httpURLConnection3;
                inputStream = inputStream3;
                try {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append("isSuccess=0").append("&configExist=0");
                    b(TBAppLinkUtil.getConfigUrl(), null, stringBuffer.toString());
                    if (httpURLConnection != null) {
                    }
                    if (inputStream != null) {
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    httpURLConnection2 = httpURLConnection;
                    inputStream2 = inputStream;
                    th = th3;
                    if (httpURLConnection2 != null) {
                    }
                    if (inputStream2 != null) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
            }
        } catch (Exception e4) {
            inputStream = inputStream2;
            stringBuffer = new StringBuffer();
            stringBuffer.append("isSuccess=0").append("&configExist=0");
            b(TBAppLinkUtil.getConfigUrl(), null, stringBuffer.toString());
            if (httpURLConnection != null) {
            }
            if (inputStream != null) {
            }
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection2 = inputStream2;
            if (httpURLConnection2 != null) {
            }
            if (inputStream2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x015a  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x015f A:{SYNTHETIC, Splitter: B:43:0x015f} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x016b A:{ExcHandler: all (r1_13 'th' java.lang.Throwable), Splitter: B:12:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x015a  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x015f A:{SYNTHETIC, Splitter: B:43:0x015f} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:48:0x016b, code:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:49:0x016c, code:
            r6 = r1;
            r1 = r0;
            r0 = r6;
     */
    /* JADX WARNING: Missing block: B:54:0x017b, code:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:55:0x017c, code:
            r6 = r1;
            r1 = r2;
            r2 = r0;
            r0 = r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(String str, String str2, String str3) {
        OutputStream outputStream;
        HttpURLConnection httpURLConnection;
        Throwable th;
        HttpURLConnection httpURLConnection2;
        OutputStream outputStream2 = null;
        StringBuffer stringBuffer = new StringBuffer();
        System.currentTimeMillis();
        stringBuffer.append("logtype=2&wappkey=").append(this.a).append("&").append("packagename=").append(com.taobao.applink.b.a.a(TBAppLinkUtil.getApplication())).append("&").append("os=").append("android").append("&").append("&t=").append("&sdkversion=").append(TBAppLinkUtil.SDKVERSION);
        if (!TextUtils.isEmpty(str3)) {
            stringBuffer.append("&").append(str3);
        }
        if (!TextUtils.isEmpty(str2)) {
            stringBuffer.append("&type=").append(str2);
        }
        if (!TextUtils.isEmpty(TBAppLinkSDK.getInstance().sOpenParam.mTtid)) {
            stringBuffer.append("&ttid=").append(TBAppLinkSDK.getInstance().sOpenParam.mTtid);
        }
        Log.d("flush content", stringBuffer.toString());
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(str + "?" + stringBuffer.toString()).openConnection();
            try {
                httpURLConnection3.setRequestMethod("POST");
                httpURLConnection3.setDoOutput(true);
                httpURLConnection3.setDoInput(true);
                httpURLConnection3.setConnectTimeout(5000);
                httpURLConnection3.setReadTimeout(5000);
                outputStream2 = httpURLConnection3.getOutputStream();
                outputStream2.write(URLEncoder.encode(stringBuffer.toString(), "UTF-8").getBytes());
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection3.getInputStream()));
                String str4 = "";
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    str4 = str4 + "\n" + readLine;
                }
                Log.d("flush response", str4);
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                if (outputStream2 != null) {
                    try {
                        outputStream2.flush();
                        outputStream2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = outputStream2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            if (outputStream2 != null) {
                try {
                    outputStream2.flush();
                    outputStream2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            throw th;
        }
    }

    private a c() {
        a aVar = new a();
        aVar.b = TBAppLinkUtil.BASE_URL;
        aVar.c = TBAppLinkUtil.TMALL_BASE_SCHEME_URL;
        return aVar;
    }

    public void a(a aVar) {
        try {
            new c(this, aVar).execute(new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2, String str3) {
        if (!e.a(str)) {
            synchronized (this) {
                try {
                    new d(this, str, str2, str3).execute(new Void[0]);
                } catch (Exception e) {
                    Log.d("flush exception", e.getStackTrace().toString());
                }
            }
            return;
        }
        return;
    }

    public boolean a(String str) {
        return this.c.containsKey(str) ? ((Long) this.c.get(str)).longValue() - System.currentTimeMillis() < 1000 : true;
    }

    public a b() {
        if (a(this.a)) {
            a(null);
        }
        return this.d;
    }
}
