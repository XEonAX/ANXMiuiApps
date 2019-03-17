package com.ali.auth.third.core.model;

public class AccountContract {
    String a;
    String b;
    String c;
    String d;
    String e;

    public AccountContract(String str, String str2, String str3, String str4) {
        this.a = str3;
        this.d = str2;
        this.b = str4;
        this.c = str;
    }

    public String getHash() {
        return this.c;
    }

    public String getHash_key() {
        return this.e;
    }

    public String getNick() {
        return this.b;
    }

    public String getOpenid() {
        return this.d;
    }

    public String getUserid() {
        return this.a;
    }

    public void setHash(String str) {
        this.c = str;
    }

    public void setHash_key(String str) {
        this.e = str;
    }

    public void setNick(String str) {
        this.b = str;
    }

    public void setOpenid(String str) {
        this.d = str;
    }

    public void setUserid(String str) {
        this.a = str;
    }
}
