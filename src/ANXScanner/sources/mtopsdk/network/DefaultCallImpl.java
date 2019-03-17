package mtopsdk.network;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.network.cookie.CookieManager;
import mtopsdk.network.domain.Request;
import mtopsdk.network.domain.RequestBody;
import mtopsdk.network.domain.Response;
import mtopsdk.network.domain.Response.Builder;
import mtopsdk.network.domain.ResponseBody;
import mtopsdk.network.util.Constants.Protocol;
import mtopsdk.network.util.NetworkUtils;
import org.apache.http.conn.ConnectTimeoutException;

public class DefaultCallImpl implements Call {
    private static final int CONNECT_TIMEOUT_MILLIS = 15000;
    private static final int READ_TIMEOUT_MILLIS = 15000;
    private static final String TAG = "mtopsdk.DefaultCallImpl";
    volatile boolean canceled;
    ExecutorService executorService;
    Future future;
    Request mRequest;

    class AsyncCallTask implements Runnable {
        NetworkCallback callback;
        Request request;

        public AsyncCallTask(Request request, NetworkCallback networkCallback) {
            this.request = request;
            this.callback = networkCallback;
        }

        public void run() {
            try {
                if (DefaultCallImpl.this.canceled) {
                    TBSdkLog.d(DefaultCallImpl.TAG, "call task is canceled.");
                    this.callback.onCancel(DefaultCallImpl.this);
                    return;
                }
                Response execute = DefaultCallImpl.this.execute();
                if (execute == null) {
                    this.callback.onFailure(DefaultCallImpl.this, new Exception("response is null"));
                } else {
                    this.callback.onResponse(DefaultCallImpl.this, execute);
                }
            } catch (CancellationException e) {
                this.callback.onCancel(DefaultCallImpl.this);
            } catch (InterruptedException e2) {
                this.callback.onCancel(DefaultCallImpl.this);
            } catch (Throwable e3) {
                this.callback.onFailure(DefaultCallImpl.this, e3);
                TBSdkLog.e(DefaultCallImpl.TAG, "do call.execute failed.", e3);
            }
        }
    }

    public DefaultCallImpl(Request request, ExecutorService executorService) {
        this.mRequest = request;
        this.executorService = executorService;
    }

    public Request request() {
        return this.mRequest;
    }

    public Response execute() throws InterruptedException {
        Response response;
        int i = 0;
        Request request = request();
        String str = null;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i >= request.retryTimes()) {
                response = null;
                break;
            }
            try {
                HttpURLConnection openConnection = openConnection(request);
                prepareRequest(openConnection, request);
                response = readResponse(openConnection, request);
                break;
            } catch (UnknownHostException e) {
                i2 = -1;
                str = e.getMessage();
                i = i3;
            } catch (SocketTimeoutException e2) {
                i2 = -2;
                str = e2.getMessage();
                i = i3;
            } catch (ConnectTimeoutException e3) {
                i2 = -3;
                str = e3.getMessage();
                i = i3;
            } catch (SSLHandshakeException e4) {
                i2 = -4;
                str = e4.getMessage();
                i = i3;
            } catch (SSLException e5) {
                i2 = -5;
                str = e5.getMessage();
                i = i3;
            } catch (ConnectException e6) {
                i2 = -6;
                str = e6.getMessage();
                i = i3;
            } catch (Exception e7) {
                i2 = -7;
                str = e7.getMessage();
                i = i3;
            }
        }
        if (response == null) {
            return new Builder().request(request).code(i2).message(str).build();
        }
        return response;
    }

    public void enqueue(NetworkCallback networkCallback) {
        if (this.executorService != null) {
            try {
                this.future = this.executorService.submit(new AsyncCallTask(request(), networkCallback));
                return;
            } catch (Exception e) {
                networkCallback.onFailure(this, e);
                return;
            }
        }
        networkCallback.onFailure(this, new Exception("miss executorService in CallImpl "));
    }

    public void cancel() {
        TBSdkLog.d(TAG, "try to cancel call");
        this.canceled = true;
        if (this.future != null) {
            this.future.cancel(true);
        }
    }

    HttpURLConnection openConnection(Request request) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(request.url()).openConnection();
        httpURLConnection.setConnectTimeout(request.connectTimeoutMills());
        httpURLConnection.setReadTimeout(request.readTimeoutMills());
        return httpURLConnection;
    }

    void prepareRequest(HttpURLConnection httpURLConnection, Request request) throws IOException {
        httpURLConnection.setRequestMethod(request.method());
        for (Entry entry : request.headers().entrySet()) {
            if (!((String) entry.getKey()).equalsIgnoreCase("Cookie")) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!StringUtils.isBlank(CookieManager.getCookie(request.url()))) {
            httpURLConnection.addRequestProperty("Cookie", CookieManager.getCookie(request.url()));
        }
        if ("POST".equalsIgnoreCase(request.method())) {
            httpURLConnection.setDoOutput(true);
        }
        RequestBody body = request.body();
        if (body != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty(Protocol.CONTENT_TYPE, body.contentType());
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                httpURLConnection.addRequestProperty(Protocol.CONTENT_LENGTH, String.valueOf(contentLength));
            }
            Closeable outputStream = httpURLConnection.getOutputStream();
            try {
                body.writeTo(outputStream);
            } catch (Throwable e) {
                TBSdkLog.e(TAG, "write outputstream error.", e);
            } finally {
                NetworkUtils.closeQuietly(outputStream);
            }
        }
    }

    Response readResponse(HttpURLConnection httpURLConnection, Request request) throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            TBSdkLog.d(TAG, "[readResponse]call task is canceled.");
            throw new CancellationException("call canceled");
        }
        InputStream errorStream;
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        if (responseMessage == null) {
            responseMessage = "";
        }
        Map headerFields = httpURLConnection.getHeaderFields();
        storeCookies(request.url(), headerFields);
        final String contentType = httpURLConnection.getContentType();
        final int contentLength = httpURLConnection.getContentLength();
        boolean checkContentEncodingGZip = NetworkUtils.checkContentEncodingGZip(headerFields);
        if (responseCode >= 400) {
            errorStream = httpURLConnection.getErrorStream();
        } else if (checkContentEncodingGZip) {
            errorStream = new GZIPInputStream(httpURLConnection.getInputStream());
        } else {
            errorStream = httpURLConnection.getInputStream();
        }
        ResponseBody anonymousClass1 = new ResponseBody() {
            public String contentType() {
                return contentType;
            }

            public long contentLength() throws IOException {
                return (long) contentLength;
            }

            public InputStream byteStream() {
                return errorStream;
            }
        };
        if (Thread.currentThread().isInterrupted()) {
            TBSdkLog.d(TAG, "[readResponse]call task is canceled.");
            throw new CancellationException("call canceled");
        }
        anonymousClass1.getBytes();
        return new Builder().request(request).code(responseCode).message(responseMessage).headers(headerFields).body(anonymousClass1).build();
    }

    public void storeCookies(String str, Map<String, List<String>> map) {
        if (str != null && map != null) {
            try {
                for (Entry entry : map.entrySet()) {
                    String str2 = (String) entry.getKey();
                    if (str2 != null && (str2.equalsIgnoreCase("Set-Cookie") || str2.equalsIgnoreCase("Set-Cookie2"))) {
                        for (String cookie : (List) entry.getValue()) {
                            CookieManager.setCookie(str, cookie);
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
