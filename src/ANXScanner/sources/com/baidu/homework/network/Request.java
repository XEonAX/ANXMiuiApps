package com.baidu.homework.network;

import java.util.HashMap;

public abstract class Request {
    private boolean isCanceled;
    private HashMap<String, String> params;
    private final String url;

    public Request(String str, HashMap<String, String> hashMap) {
        HashMap hashMap2;
        this.url = str;
        if (hashMap2 == null) {
            hashMap2 = new HashMap();
        }
        this.params = hashMap2;
    }

    public void cancel() {
        this.isCanceled = true;
    }

    public byte[] getBody() {
        return null;
    }

    public abstract String getContentType();

    public HashMap<String, String> getParams() {
        return this.params;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isCanceled() {
        return this.isCanceled;
    }
}
