package com.miui.internal.net;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Map;

public abstract class URLConnectionBuilder {
    protected static final String TAG = "URLConnectionBuilder";
    protected HttpURLConnection urlConnection;

    private URLConnectionBuilder(URL url) throws IOException {
        this.urlConnection = (HttpURLConnection) url.openConnection();
    }

    public URLConnectionBuilder(String str) throws IOException {
        this(new URL(str));
    }

    public HttpURLConnection build() throws IOException {
        return this.urlConnection;
    }

    public URLConnectionBuilder setConnectTimeout(int i) {
        this.urlConnection.setConnectTimeout(i);
        return this;
    }

    public URLConnectionBuilder setReadTimeout(int i) {
        this.urlConnection.setReadTimeout(i);
        return this;
    }

    public URLConnectionBuilder setTimeout(int i) {
        setConnectTimeout(i);
        setReadTimeout(i);
        return this;
    }

    public URLConnectionBuilder setDoInput(boolean z) {
        this.urlConnection.setDoInput(z);
        return this;
    }

    public URLConnectionBuilder setDoOutput(boolean z) {
        this.urlConnection.setDoOutput(z);
        return this;
    }

    public URLConnectionBuilder setHeadParams(Map<String, String> map) {
        for (String str : map.keySet()) {
            this.urlConnection.setRequestProperty(str, (String) map.get(str));
        }
        return this;
    }

    public URLConnectionBuilder setRequestMethod(String str) throws ProtocolException {
        this.urlConnection.setRequestMethod(str);
        return this;
    }

    public URLConnectionBuilder setDoInputOutput(boolean z) {
        setDoInput(true);
        setDoOutput(true);
        return this;
    }
}
