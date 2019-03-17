package com.alimama.tunion.trade.convert;

import java.util.Map;

public class TUnionMediaParams {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;

    public Map<String, String> getExtra() {
        return this.d;
    }

    public void setExtra(Map<String, String> map) {
        this.d = map;
    }

    public String getAdzoneId() {
        return this.a;
    }

    public void setAdzoneId(String str) {
        this.a = str;
    }

    public String getSubpid() {
        return this.b;
    }

    public void setSubpid(String str) {
        this.b = str;
    }

    public String getUnid() {
        return this.c;
    }

    public void setUnid(String str) {
        this.c = str;
    }
}
