package okhttp3.internal.http;

import com.ali.auth.third.core.rpc.protocol.RpcException.ErrorCode;
import com.alibaba.wireless.security.SecExceptionCode;
import com.xiaomi.scanner.module.amazoncloudconfig.CloudConfigNetworking;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import mtopsdk.network.util.Constants.Protocol;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.android.spdy.SpdyRequest;

public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private volatile StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient client, boolean forWebSocket) {
        this.client = client;
        this.forWebSocket = forWebSocket;
    }

    public void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public void setCallStackTrace(Object callStackTrace) {
        this.callStackTrace = callStackTrace;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }

    public Response intercept(Chain chain) throws IOException {
        Request request = chain.request();
        RealInterceptorChain realChain = (RealInterceptorChain) chain;
        Call call = realChain.call();
        EventListener eventListener = realChain.eventListener();
        StreamAllocation streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request.url()), call, eventListener, this.callStackTrace);
        this.streamAllocation = streamAllocation;
        int followUpCount = 0;
        Response priorResponse = null;
        while (!this.canceled) {
            try {
                Response response = realChain.proceed(request, streamAllocation, null, null);
                if (false) {
                    streamAllocation.streamFailed(null);
                    streamAllocation.release();
                }
                if (priorResponse != null) {
                    response = response.newBuilder().priorResponse(priorResponse.newBuilder().body(null).build()).build();
                }
                Request followUp = followUpRequest(response, streamAllocation.route());
                if (followUp == null) {
                    if (!this.forWebSocket) {
                        streamAllocation.release();
                    }
                    return response;
                }
                Util.closeQuietly(response.body());
                followUpCount++;
                if (followUpCount > 20) {
                    streamAllocation.release();
                    throw new ProtocolException("Too many follow-up requests: " + followUpCount);
                } else if (followUp.body() instanceof UnrepeatableRequestBody) {
                    streamAllocation.release();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", response.code());
                } else {
                    if (!sameConnection(response, followUp.url())) {
                        streamAllocation.release();
                        streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(followUp.url()), call, eventListener, this.callStackTrace);
                        this.streamAllocation = streamAllocation;
                    } else if (streamAllocation.codec() != null) {
                        throw new IllegalStateException("Closing the body of " + response + " didn't close its backing stream. Bad interceptor?");
                    }
                    request = followUp;
                    priorResponse = response;
                }
            } catch (RouteException e) {
                if (!recover(e.getLastConnectException(), streamAllocation, false, request)) {
                    throw e.getLastConnectException();
                } else if (false) {
                    streamAllocation.streamFailed(null);
                    streamAllocation.release();
                }
            } catch (IOException e2) {
                if (!recover(e2, streamAllocation, !(e2 instanceof ConnectionShutdownException), request)) {
                    throw e2;
                } else if (false) {
                    streamAllocation.streamFailed(null);
                    streamAllocation.release();
                }
            } catch (Throwable th) {
                if (true) {
                    streamAllocation.streamFailed(null);
                    streamAllocation.release();
                }
            }
        }
        streamAllocation.release();
        throw new IOException("Canceled");
    }

    private Address createAddress(HttpUrl url) {
        SSLSocketFactory sslSocketFactory = null;
        HostnameVerifier hostnameVerifier = null;
        CertificatePinner certificatePinner = null;
        if (url.isHttps()) {
            sslSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        }
        return new Address(url.host(), url.port(), this.client.dns(), this.client.socketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private boolean recover(IOException e, StreamAllocation streamAllocation, boolean requestSendStarted, Request userRequest) {
        streamAllocation.streamFailed(e);
        if (!this.client.retryOnConnectionFailure()) {
            return false;
        }
        if ((!requestSendStarted || !(userRequest.body() instanceof UnrepeatableRequestBody)) && isRecoverable(e, requestSendStarted) && streamAllocation.hasMoreRoutes()) {
            return true;
        }
        return false;
    }

    private boolean isRecoverable(IOException e, boolean requestSendStarted) {
        boolean z = true;
        if (e instanceof ProtocolException) {
            return false;
        }
        if (e instanceof InterruptedIOException) {
            if (!(e instanceof SocketTimeoutException) || requestSendStarted) {
                z = false;
            }
            return z;
        } else if (((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException)) {
            return false;
        } else {
            return true;
        }
    }

    private Request followUpRequest(Response userResponse, Route route) throws IOException {
        RequestBody requestBody = null;
        if (userResponse == null) {
            throw new IllegalStateException();
        }
        int responseCode = userResponse.code();
        String method = userResponse.request().method();
        switch (responseCode) {
            case SecExceptionCode.SEC_ERROR_STA_ENC /*300*/:
            case 301:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!(method.equals(SpdyRequest.GET_METHOD) || method.equals("HEAD"))) {
                    return null;
                }
            case 401:
                return this.client.authenticator().authenticate(route, userResponse);
            case 407:
                Proxy selectedProxy;
                if (route != null) {
                    selectedProxy = route.proxy();
                } else {
                    selectedProxy = this.client.proxy();
                }
                if (selectedProxy.type() == Type.HTTP) {
                    return this.client.proxyAuthenticator().authenticate(route, userResponse);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            case ErrorCode.API_UNAUTHORIZED /*408*/:
                if (!this.client.retryOnConnectionFailure() || (userResponse.request().body() instanceof UnrepeatableRequestBody)) {
                    return null;
                }
                if ((userResponse.priorResponse() == null || userResponse.priorResponse().code() != ErrorCode.API_UNAUTHORIZED) && retryAfter(userResponse, 0) <= 0) {
                    return userResponse.request();
                }
                return null;
            case 503:
                if ((userResponse.priorResponse() == null || userResponse.priorResponse().code() != 503) && retryAfter(userResponse, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) == 0) {
                    return userResponse.request();
                }
                return null;
            default:
                return null;
        }
        if (!this.client.followRedirects()) {
            return null;
        }
        String location = userResponse.header(CloudConfigNetworking.LOCATION);
        if (location == null) {
            return null;
        }
        HttpUrl url = userResponse.request().url().resolve(location);
        if (url == null) {
            return null;
        }
        if (!url.scheme().equals(userResponse.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Builder requestBuilder = userResponse.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            boolean maintainBody = HttpMethod.redirectsWithBody(method);
            if (HttpMethod.redirectsToGet(method)) {
                requestBuilder.method(SpdyRequest.GET_METHOD, null);
            } else {
                if (maintainBody) {
                    requestBody = userResponse.request().body();
                }
                requestBuilder.method(method, requestBody);
            }
            if (!maintainBody) {
                requestBuilder.removeHeader("Transfer-Encoding");
                requestBuilder.removeHeader(Protocol.CONTENT_LENGTH);
                requestBuilder.removeHeader(Protocol.CONTENT_TYPE);
            }
        }
        if (!sameConnection(userResponse, url)) {
            requestBuilder.removeHeader("Authorization");
        }
        return requestBuilder.url(url).build();
    }

    private int retryAfter(Response userResponse, int defaultDelay) {
        String header = userResponse.header("Retry-After");
        if (header == null) {
            return defaultDelay;
        }
        if (header.matches("\\d+")) {
            return Integer.valueOf(header).intValue();
        }
        return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    private boolean sameConnection(Response response, HttpUrl followUp) {
        HttpUrl url = response.request().url();
        return url.host().equals(followUp.host()) && url.port() == followUp.port() && url.scheme().equals(followUp.scheme());
    }
}
