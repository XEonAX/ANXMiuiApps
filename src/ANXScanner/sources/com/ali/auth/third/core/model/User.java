package com.ali.auth.third.core.model;

public class User {
    public String avatarUrl;
    public String cbuLoginId;
    public String deviceTokenKey;
    public String deviceTokenSalt;
    public String email;
    public String memberId;
    public String nick;
    public String openId;
    public String openSid;
    public String userId;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("User [userId=");
        stringBuilder.append(this.userId);
        stringBuilder.append(", openId=");
        stringBuilder.append(this.openId);
        stringBuilder.append(", openSid= ");
        stringBuilder.append(this.openSid);
        stringBuilder.append(", nick=");
        stringBuilder.append(this.nick);
        stringBuilder.append(", email=");
        stringBuilder.append(this.email);
        stringBuilder.append(",cbuloginId=");
        stringBuilder.append(this.cbuLoginId);
        stringBuilder.append(",memberId=");
        stringBuilder.append(this.memberId);
        stringBuilder.append(",deviceTokenKey=");
        stringBuilder.append(this.deviceTokenKey + "");
        stringBuilder.append(",deviceTokenSalt=");
        stringBuilder.append(this.deviceTokenSalt + "");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
