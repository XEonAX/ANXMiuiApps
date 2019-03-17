package com.uploader.implement.a.a;

import android.text.TextUtils;
import android.util.Pair;
import com.ali.auth.third.login.LoginConstants;
import com.uploader.implement.a.c.b;
import com.uploader.implement.a.e;
import com.uploader.implement.a.f;
import com.uploader.implement.a.h;
import com.uploader.implement.b.a.g;
import com.uploader.implement.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: DeclareUploadActionRequest */
public class a implements e {
    g a;
    final String b;
    final long c;
    final Pair<String, Integer> d;
    final c e;
    final int f = hashCode();
    final h g;

    public a(c config) throws Exception {
        this.e = config;
        this.d = config.a.b();
        this.b = config.a.g();
        this.c = config.a.f();
        this.g = new h(null, 0, 0, 0, d(), null, null, null);
    }

    /* renamed from: c */
    public g a() {
        if (this.a != null) {
            return this.a;
        }
        StringBuilder requestUrl = new StringBuilder(32);
        if (((Integer) this.d.second).intValue() == 443) {
            requestUrl.append("https://").append((String) this.d.first).append(SymbolExpUtil.SYMBOL_COLON).append(this.d.second);
        } else {
            requestUrl.append("http://").append((String) this.d.first);
        }
        requestUrl.append("/dispatchUpload.api");
        g target = new g((String) this.d.first, ((Integer) this.d.second).intValue(), requestUrl.toString(), this.b);
        this.a = target;
        return target;
    }

    public h b() {
        return this.g;
    }

    public Pair<f, Integer> a(Map<String, String> header, byte[] data, int offset, int length) {
        if (header == null || data == null) {
            return new Pair(null, Integer.valueOf(0));
        }
        try {
            return new Pair(b(header, data, offset, length), Integer.valueOf(length));
        } catch (Exception e) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "DeclareUploadActionRequest", e.toString());
            }
            return new Pair(null, Integer.valueOf(-1));
        }
    }

    private f b(Map<String, String> header, byte[] data, int offset, int length) throws Exception {
        if (header.get("x-arup-error-code") != null) {
            return new com.uploader.implement.a.b.a(5, header);
        }
        String content = null;
        if (data != null) {
            content = new String(data, offset, length);
        }
        header.put("divided_length", Integer.toString(length));
        return new com.uploader.implement.a.b.a(1, header, a(content));
    }

    private final Map<String, String> d() throws Exception {
        String appKey = this.e.b.getCurrentElement().appKey;
        String utdid = this.e.b.getUtdid();
        String userId = this.e.b.getUserId();
        String appVersion = this.e.b.getAppVersion();
        String timestamp = String.valueOf(this.c + (System.currentTimeMillis() / 1000));
        Map headers = new HashMap();
        headers.put("content-type", "application/json;charset=utf-8");
        headers.put("x-arup-version", "2.1");
        headers.put(com.alipay.sdk.cons.c.f, b.b(this.b));
        headers.put("x-arup-appkey", b.b(appKey));
        headers.put("x-arup-appversion", b.b(appVersion));
        headers.put("x-arup-device-id", b.b(utdid));
        if (!TextUtils.isEmpty(userId)) {
            headers.put("x-arup-userinfo", b.b(userId));
        }
        headers.put("x-arup-timestamp", b.b(timestamp));
        StringBuilder input = new StringBuilder(128);
        input.append("/dispatchUpload.api").append("&");
        input.append(appKey).append("&");
        input.append(appVersion).append("&");
        input.append(utdid).append("&");
        input.append(timestamp);
        String sign = this.e.b.signature(input.toString());
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "DeclareUploadActionRequest", "compute api sign:" + sign + ", input=" + input);
        }
        if (TextUtils.isEmpty(sign)) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "DeclareUploadActionRequest", "compute api sign failed.");
            }
            throw new Exception("compute api sign failed.");
        }
        headers.put("x-arup-sign", b.b(sign));
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "DeclareUploadActionRequest", " create declare header:" + headers.toString());
        }
        return headers;
    }

    private Object[] a(String content) throws Exception {
        int i;
        JSONObject object;
        JSONObject result = new JSONObject(content);
        JSONArray array = result.getJSONArray("apiServerList");
        ArrayList declareServerList = new ArrayList(array.length());
        for (i = array.length() - 1; i >= 0; i--) {
            object = array.getJSONObject(i);
            declareServerList.add(0, new Pair(object.getString(LoginConstants.IP), Integer.valueOf(object.getInt("port"))));
        }
        array = result.getJSONArray("uploadServerList");
        ArrayList uploadServerList = new ArrayList();
        for (i = array.length() - 1; i >= 0; i--) {
            object = array.getJSONObject(i);
            uploadServerList.add(0, new Pair(Boolean.valueOf(object.getBoolean("encrypt")), new Pair(object.getString(LoginConstants.IP), Integer.valueOf(object.getInt("port")))));
        }
        return new Object[]{result.getString("token"), Long.valueOf(result.getLong("expires")), declareServerList, uploadServerList};
    }
}
