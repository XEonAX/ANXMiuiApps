package com.ali.auth.third.core.rpc;

import android.text.TextUtils;
import com.ali.auth.third.core.config.Environment;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.InternalSession;
import com.ali.auth.third.core.rpc.protocol.RpcException;
import com.ali.auth.third.core.rpc.protocol.b;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.IOUtils;
import com.ali.auth.third.core.util.RSAKey;
import com.ali.auth.third.core.util.Rsa;
import com.alipay.sdk.util.j;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Locale;
import mtopsdk.common.util.SymbolExpUtil;
import mtopsdk.network.util.Constants.Protocol;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    private static final String a = a.class.getSimpleName();

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a4 A:{Splitter: B:1:0x000a, ExcHandler: java.lang.Exception (r0_13 'e' java.lang.Exception)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:21:0x00a4, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:22:0x00a5, code:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:23:0x00af, code:
            throw new com.ali.auth.third.core.rpc.protocol.RpcException("net work error");
     */
    /* JADX WARNING: Missing block: B:28:0x00bc, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:29:0x00bd, code:
            r1 = r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String a(InputStream inputStream, String str) throws UnsupportedEncodingException {
        JSONException e;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        String str2 = null;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (JSONException e2) {
                e = e2;
            } catch (Exception e3) {
            }
        }
        String str3 = new String(byteArrayOutputStream.toByteArray(), str);
        String a = b.a();
        SDKLogger.e(a, "raw response = " + str3);
        str2 = com.ali.auth.third.core.rpc.a.a.a().b(str3, a);
        SDKLogger.e(a, "decrypt gateway response=" + str2);
        JSONObject jSONObject = new JSONObject(str2);
        int i = jSONObject.getInt(j.a);
        if (i == 1000) {
            return jSONObject.getString("result");
        }
        throw new RpcException(Integer.valueOf(i), j.b);
        throw new RpcException(Integer.valueOf(10), new StringBuilder().append("response  =").append(str2).append(SymbolExpUtil.SYMBOL_COLON).append(e).toString() == null ? "" : e.getMessage());
    }

    public static String a(String str) {
        return SymbolExpUtil.CHARSET_UTF8;
    }

    public static String a(String str, String str2) {
        Object rsaPubkey = RSAKey.getRsaPubkey();
        if (TextUtils.isEmpty(rsaPubkey)) {
            throw new IllegalArgumentException("get rsa from server failed!!!");
        }
        String encrypt = Rsa.encrypt(str, rsaPubkey);
        String str3 = null;
        try {
            str3 = com.ali.auth.third.core.rpc.a.a.a().a(str2, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return String.format(Locale.getDefault(), "%08X%s%08X%s", new Object[]{Integer.valueOf(encrypt.length()), encrypt, Integer.valueOf(str3.length()), str3});
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e4 A:{SYNTHETIC, Splitter: B:36:0x00e4} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e4 A:{SYNTHETIC, Splitter: B:36:0x00e4} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e4 A:{SYNTHETIC, Splitter: B:36:0x00e4} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(String str, String str2, String str3) {
        Throwable th;
        Closeable closeable;
        Object obj;
        Closeable closeable2 = null;
        SDKLogger.d(a, "post target = " + str + " params" + str3);
        HttpURLConnection httpURLConnection;
        try {
            Closeable outputStreamWriter;
            httpURLConnection = KernelContext.getEnvironment() == Environment.PRE ? (HttpURLConnection) new URL("http://hz.pre.tbusergw.taobao.net/gw.do").openConnection() : KernelContext.getEnvironment() == Environment.TEST ? (HttpURLConnection) new URL("http://hz.tbusergw.taobao.net/gw.do").openConnection() : (HttpURLConnection) new URL("https://mgw.m.taobao.com/gw.do").openConnection();
            try {
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty(Protocol.CONTENT_TYPE, "application/x-www-form-urlencoded");
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                InternalSession internalSession = CredentialManager.INSTANCE.getInternalSession();
                if (!(internalSession.user == null || TextUtils.isEmpty(internalSession.user.userId))) {
                    httpURLConnection.setRequestProperty("userid", internalSession.user.userId);
                }
                outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(closeable2);
                if (httpURLConnection != null) {
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception e) {
                    }
                }
                throw th;
            }
            try {
                outputStreamWriter.write(b(str, str2, str3));
                outputStreamWriter.flush();
                a(httpURLConnection.getResponseCode());
                String a = a(httpURLConnection.getInputStream(), a(httpURLConnection.getContentType()));
                IOUtils.closeQuietly(outputStreamWriter);
                if (httpURLConnection != null) {
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception e2) {
                    }
                }
                return a;
            } catch (Throwable th3) {
                th = th3;
                closeable2 = outputStreamWriter;
                IOUtils.closeQuietly(closeable2);
                if (httpURLConnection != null) {
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            IOUtils.closeQuietly(closeable2);
            if (httpURLConnection != null) {
            }
            throw th;
        }
    }

    private static void a(int i) {
        if (i != 200) {
            throw new RuntimeException("http request exception, response code: " + i);
        }
    }

    public static String b(String str, String str2, String str3) {
        String a = com.ali.auth.third.core.rpc.protocol.a.a(16);
        b.a(a);
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("id=1&");
            stringBuilder.append("apiName=" + str + "&");
            stringBuilder.append("apiVersion=" + str2 + "&");
            stringBuilder.append("requestData=" + URLEncoder.encode(a(a, str3), "UTF-8"));
            stringBuilder.append("&symType=AES");
            return stringBuilder.toString();
        } catch (Throwable e) {
            SDKLogger.e(a, e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
