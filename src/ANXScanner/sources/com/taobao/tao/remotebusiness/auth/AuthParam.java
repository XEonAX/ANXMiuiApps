package com.taobao.tao.remotebusiness.auth;

public class AuthParam {
    public String bizId;
    public String failInfo;
    public String sid;

    public AuthParam(String str, String str2, String str3) {
        this.sid = str;
        this.bizId = str2;
        this.failInfo = str3;
    }
}
