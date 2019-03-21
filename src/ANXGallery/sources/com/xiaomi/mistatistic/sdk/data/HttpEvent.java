package com.xiaomi.mistatistic.sdk.data;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.l;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpEvent {
    private String exceptionName;
    private long firstPacketCost;
    private int flowStatus;
    private String ip;
    private String net;
    private long netFlow;
    private String operator;
    private String reqId;
    private int responseCode;
    private long time;
    private long timeCost;
    private String url;

    public HttpEvent(String str, long j, long j2, int i) {
        this(str, j, j2, i, null);
    }

    public HttpEvent(String str, long j, int i, String str2) {
        this(str, j, 0, i, str2);
    }

    public HttpEvent(String str, long j, long j2, int i, String str2) {
        this.flowStatus = 0;
        this.netFlow = 0;
        this.time = System.currentTimeMillis();
        this.url = str;
        this.timeCost = j;
        this.responseCode = i;
        this.exceptionName = str2;
        this.netFlow = j2;
        setNet();
    }

    public HttpEvent(String str, String str2) {
        this(str, -1, -1, str2);
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setFirstPacketCost(long j) {
        this.firstPacketCost = j;
    }

    public void setNet() {
        Context a = d.a();
        if (a == null) {
            this.net = "NULL";
            return;
        }
        String c = l.c(a);
        if (TextUtils.isEmpty(c)) {
            this.net = "NULL";
            return;
        }
        this.net = c;
        if (!"WIFI".equalsIgnoreCase(c)) {
            try {
                this.operator = ((TelephonyManager) a.getSystemService("phone")).getSimOperator();
            } catch (Throwable e) {
                j.a("setNet exception", e);
            }
        }
    }

    public JSONObject toJSON() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("net", this.net);
        if (this.timeCost > 0) {
            jSONObject.put("cost", this.timeCost);
        }
        if (this.firstPacketCost > 0) {
            jSONObject.put("first_byte_t", this.firstPacketCost);
        }
        if (this.responseCode != -1) {
            jSONObject.put("code", this.responseCode);
        }
        if (!TextUtils.isEmpty(this.exceptionName)) {
            jSONObject.put("exception", this.exceptionName);
        }
        if (!TextUtils.isEmpty(this.operator)) {
            jSONObject.put("op", this.operator);
        }
        if (this.netFlow > 0) {
            jSONObject.put("flow", this.netFlow);
        }
        if (this.flowStatus == 1 || this.flowStatus == 2) {
            jSONObject.put("flow_status", this.flowStatus);
        }
        if (!TextUtils.isEmpty(this.reqId)) {
            jSONObject.put("rid", this.reqId);
        }
        if (!TextUtils.isEmpty(this.ip)) {
            jSONObject.put("dns", this.ip);
        }
        jSONObject.put("t", this.time);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HttpEvent)) {
            return false;
        }
        HttpEvent httpEvent = (HttpEvent) obj;
        if (TextUtils.equals(this.url, httpEvent.url) && TextUtils.equals(this.net, httpEvent.net) && TextUtils.equals(this.exceptionName, httpEvent.exceptionName) && TextUtils.equals(this.ip, httpEvent.ip) && this.responseCode == httpEvent.responseCode && this.timeCost == httpEvent.timeCost && this.time == httpEvent.time && this.netFlow == httpEvent.netFlow && this.flowStatus == httpEvent.flowStatus && TextUtils.equals(this.reqId, httpEvent.reqId) && this.firstPacketCost == httpEvent.firstPacketCost) {
            return true;
        }
        return false;
    }

    public void setRequestId(String str) {
        this.reqId = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }
}
