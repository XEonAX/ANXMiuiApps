package com.alibaba.baichuan.trade.common.adapter.mtop;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Map;

public class NetworkRequest implements Serializable {
    private static final long serialVersionUID = 3052085037769716049L;
    public String accessToken;
    public String apiName;
    public String apiVersion = "1.0";
    public String authParams = "";
    public Map<String, String> extHeaders;
    public boolean isPost = true;
    public boolean isVip;
    public boolean needAuth = false;
    public boolean needCache = false;
    public boolean needLogin = false;
    public boolean needWua = false;
    public String openAppKey;
    public Map<String, Serializable> paramMap;
    public int requestType;
    public int timeOut = -1;

    public boolean check() {
        return (TextUtils.isEmpty(this.apiName) || TextUtils.isEmpty(this.apiVersion)) ? false : true;
    }

    public String toString() {
        return "NetworkRequest [apiName=" + this.apiName + ", apiVersion=" + this.apiVersion + ", params=" + this.paramMap + ", openAppKey=" + this.openAppKey + ", accessToken=" + this.accessToken + ", needAuth=" + this.needAuth + ", needWua=" + this.needWua + "]";
    }
}
