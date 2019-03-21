package com.xiaomi.micloudsdk.request;

import com.xiaomi.micloudsdk.request.utils.CloudUtils;
import java.io.IOException;
import java.util.Locale;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public class CloudHttpClient implements HttpClient {
    private HttpClient mProxy;

    protected CloudHttpClient(HttpClient client) {
        this.mProxy = client;
    }

    public static CloudHttpClient newInstance() {
        return new CloudHttpClient(initClient());
    }

    protected static DefaultHttpClient initClient() {
        DefaultHttpClient client = new DefaultHttpClient();
        HttpProtocolParams.setUserAgent(client.getParams(), CloudUtils.getUserAgent());
        return client;
    }

    public HttpParams getParams() {
        return this.mProxy.getParams();
    }

    public ClientConnectionManager getConnectionManager() {
        return this.mProxy.getConnectionManager();
    }

    public HttpResponse execute(HttpUriRequest request) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(request);
    }

    public HttpResponse execute(HttpUriRequest request, HttpContext context) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(request, context);
    }

    public HttpResponse execute(HttpHost target, HttpRequest request) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(target, request);
    }

    public HttpResponse execute(HttpHost target, HttpRequest request, HttpContext context) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(target, request);
    }

    public <T> T execute(HttpUriRequest request, ResponseHandler<? extends T> responseHandler) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(request, responseHandler);
    }

    public <T> T execute(HttpUriRequest request, ResponseHandler<? extends T> responseHandler, HttpContext context) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(request, responseHandler, context);
    }

    public <T> T execute(HttpHost target, HttpRequest request, ResponseHandler<? extends T> responseHandler) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(target, request, responseHandler);
    }

    public <T> T execute(HttpHost target, HttpRequest request, ResponseHandler<? extends T> responseHandler, HttpContext context) throws IOException, ClientProtocolException {
        addHeader(request);
        return this.mProxy.execute(target, request, responseHandler, context);
    }

    private void addHeader(HttpRequest request) {
        request.addHeader("Accept-Language", Locale.getDefault().toString());
    }
}
