package com.xiaomi.stat;

public class HttpEvent {
    private int a;
    private long b;
    private long c;
    private String d;
    private String e;

    public HttpEvent(String url, long timeCost) {
        this(url, timeCost, -1, null);
    }

    public HttpEvent(String url, long timeCost, long netFlow) {
        this(url, timeCost, netFlow, -1, null);
    }

    public HttpEvent(String url, long timeCost, long netFlow, int responseCode) {
        this(url, timeCost, netFlow, responseCode, null);
    }

    public HttpEvent(String url, long timeCost, String exceptionName) {
        this(url, timeCost, -1, exceptionName);
    }

    public HttpEvent(String url, long timeCost, int responseCode, String exceptionName) {
        this(url, timeCost, 0, responseCode, exceptionName);
    }

    public HttpEvent(String url, long timeCost, long netFlow, int responseCode, String exceptionName) {
        this.c = 0;
        this.d = url;
        this.b = timeCost;
        this.a = responseCode;
        this.e = exceptionName;
        this.c = netFlow;
    }

    public int getResponseCode() {
        return this.a;
    }

    public long getTimeCost() {
        return this.b;
    }

    public long getNetFlow() {
        return this.c;
    }

    public String getUrl() {
        return this.d;
    }

    public String getExceptionName() {
        return this.e;
    }
}
