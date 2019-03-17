package com.ali.auth.third.core.model;

public class Session {
    public String avatarUrl;
    public String nick;
    public String openId;
    public String openSid;
    public String topAccessToken;
    public String topAuthCode;
    public String topExpireTime;
    public String userid;

    public String toString() {
        return "nick = " + this.nick + ", ava = " + this.avatarUrl + " , openId=" + this.openId + ", openSid=" + this.openSid + ", topAccessToken=" + this.topAccessToken + ", topAuthCode=" + this.topAuthCode + ",topExpireTime=" + this.topExpireTime;
    }
}
