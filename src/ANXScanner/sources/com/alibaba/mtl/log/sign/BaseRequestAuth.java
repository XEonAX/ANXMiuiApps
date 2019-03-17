package com.alibaba.mtl.log.sign;

import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.j;

public class BaseRequestAuth implements IRequestAuth {
    private boolean E = false;
    private String X = null;
    private String g = null;

    public String getAppkey() {
        return this.g;
    }

    public String getAppSecret() {
        return this.X;
    }

    public BaseRequestAuth(String aAppkey, String aAppSecret) {
        this.g = aAppkey;
        this.X = aAppSecret;
    }

    public BaseRequestAuth(String aAppkey, String aAppSecret, boolean isEncode) {
        this.g = aAppkey;
        this.X = aAppSecret;
        this.E = isEncode;
    }

    public boolean isEncode() {
        return this.E;
    }

    public String getSign(String toBeSignedStr) {
        if (this.g == null || this.X == null) {
            i.a("BaseRequestAuth", "There is no appkey,please check it!");
            return null;
        } else if (toBeSignedStr != null) {
            return j.toHexString(j.a((toBeSignedStr + this.X).getBytes()));
        } else {
            return null;
        }
    }
}
