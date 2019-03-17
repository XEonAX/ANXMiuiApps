package com.ali.auth.third.core.model;

import java.util.Map;

public class InternalSession {
    public String autoLoginToken;
    public long expireIn;
    public String[] externalCookies;
    public String loginId;
    public long loginTime;
    public String mobile;
    public Map<String, Object> otherInfo;
    public String sid;
    public String topAccessToken;
    public String topAuthCode;
    public String topExpireTime;
    public User user;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("InternalSession [sid=");
        stringBuilder.append(this.sid);
        stringBuilder.append(", expireIn=");
        stringBuilder.append(this.expireIn);
        stringBuilder.append(", loginTime=");
        stringBuilder.append(this.loginTime);
        stringBuilder.append(", autoLoginToken=");
        stringBuilder.append(this.autoLoginToken);
        stringBuilder.append(",topAccessToken=");
        stringBuilder.append(this.topAccessToken);
        stringBuilder.append(",topAuthCode");
        stringBuilder.append(this.topAuthCode);
        stringBuilder.append(",topExpireTime");
        stringBuilder.append(this.topExpireTime);
        stringBuilder.append(", user=");
        stringBuilder.append(this.user.toString());
        stringBuilder.append(", otherInfo=");
        stringBuilder.append(this.otherInfo);
        stringBuilder.append(", cookies=");
        if (this.externalCookies != null) {
            for (String append : this.externalCookies) {
                stringBuilder.append(append);
            }
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
