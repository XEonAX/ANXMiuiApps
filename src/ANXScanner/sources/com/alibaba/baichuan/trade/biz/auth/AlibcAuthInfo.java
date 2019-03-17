package com.alibaba.baichuan.trade.biz.auth;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import com.alibaba.baichuan.trade.common.utils.cache.CacheUtils;
import org.json.JSONObject;

public class AlibcAuthInfo {
    private String a;
    private long b;
    private long c;

    private static class a {
        public static AlibcAuthInfo a = new AlibcAuthInfo();
    }

    private AlibcAuthInfo() {
        this.a = "";
        this.b = -1;
        this.c = -1;
        a();
    }

    private void a() {
        JSONObject jsonObject = JSONUtils.getJsonObject(CacheUtils.getDecryptedCache("BC_AuthToken"));
        if (jsonObject != null) {
            this.a = JSONUtils.optString(jsonObject, "AuthToken");
            this.b = JSONUtils.optLong(jsonObject, "TokenExpires").longValue();
            this.c = JSONUtils.optLong(jsonObject, "RefreshTime").longValue();
        }
    }

    private String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("AuthToken", this.a);
            jSONObject.put("TokenExpires", this.b);
            jSONObject.put("RefreshTime", this.c);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static AlibcAuthInfo getInstance() {
        return a.a;
    }

    public boolean checkAuthToken() {
        return !TextUtils.isEmpty(this.a) && this.b >= System.currentTimeMillis();
    }

    public synchronized boolean cleanToken() {
        this.a = null;
        this.b = -1;
        this.c = -1;
        CacheUtils.asyncPutEncryptedCache("BC_AuthToken", getInstance().b());
        return true;
    }

    public String getAuthOldToken() {
        return this.a;
    }

    public String getAuthToken() {
        if (checkAuthToken() && this.c + 86400000 < System.currentTimeMillis()) {
            AlibcAuth.authRefresh();
            AlibcLogger.e("alibc", "authRefresh");
        }
        return this.a;
    }

    public synchronized void setToken(String str, long j) {
        AlibcLogger.e("alibc", "setToken " + str);
        this.a = str;
        this.b = System.currentTimeMillis() + (1000 * j);
        this.c = System.currentTimeMillis();
        CacheUtils.asyncPutEncryptedCache("BC_AuthToken", getInstance().b());
    }
}
