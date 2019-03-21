package cn.kuaipan.android.http.client;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.utils.ContextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.protocol.RequestDefaultHeaders;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.NoConnectionReuseStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.RequestConnControl;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.keyczar.Keyczar;

public class KscHttpClient extends DefaultHttpClient {
    private static String sUserAgent;
    private volatile LoggingConfiguration curlConfiguration;
    private final boolean mForKssTransmission;
    private final boolean mKeepAlive;
    private RuntimeException mLeakedException;
    private final boolean mRequestSentRetryEnabled;

    private class CurlLogger implements HttpRequestInterceptor {
        private CurlLogger() {
        }

        /* synthetic */ CurlLogger(KscHttpClient x0, AnonymousClass1 x1) {
            this();
        }

        public void process(HttpRequest request, HttpContext context) throws HttpException, IOException {
            LoggingConfiguration configuration = KscHttpClient.this.curlConfiguration;
            if (request instanceof HttpUriRequest) {
                Log.i("CurlLogger", KscHttpClient.toCurl((HttpUriRequest) request, false));
            }
            if (configuration != null && configuration.isLoggable() && (request instanceof HttpUriRequest)) {
                configuration.println(KscHttpClient.toCurl((HttpUriRequest) request, false));
            }
        }
    }

    private static class LoggingConfiguration {
        private final int level;
        private final String tag;

        private boolean isLoggable() {
            return Log.isLoggable(this.tag, this.level);
        }

        private void println(String message) {
            Log.println(this.level, this.tag, message);
        }
    }

    private class TimeMarker implements HttpRequestInterceptor {
        private TimeMarker() {
        }

        /* synthetic */ TimeMarker(KscHttpClient x0, AnonymousClass1 x1) {
            this();
        }

        public void process(HttpRequest request, HttpContext context) throws HttpException, IOException {
            context.setAttribute("ksc.connect_start", Long.valueOf(SystemClock.elapsedRealtime()));
            List<HttpMessage> messages = (List) context.getAttribute("ksc.message_list");
            if (messages == null) {
                messages = new LinkedList();
                context.setAttribute("ksc.message_list", messages);
            }
            messages.add(request);
        }
    }

    public static KscHttpClient newInstance(String userAgent, boolean keepAlive, boolean requestSentRetryEnabled) {
        HttpParams params = getHttpParams(userAgent);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(ignoreAllCertificate());
        return new KscHttpClient(new ThreadSafeClientConnManager(params, schemeRegistry), params, keepAlive, requestSentRetryEnabled);
    }

    private static Scheme ignoreAllCertificate() {
        TrustManager[] tm = new TrustManager[]{new IgnoreCertificationTrustManger()};
        try {
            SSLContext sslContext = SSLContext.getInstance("TLS");
            sslContext.init(null, tm, null);
            return new Scheme("https", new SSLSocketFactory(sslContext.getSocketFactory()), 443);
        } catch (Exception e) {
            Log.println(7, "KscHttpClient", "System can't support TLS.");
            return null;
        }
    }

    public static KscHttpClient newKssInstance(String userAgent) {
        HttpParams params = getHttpParams(userAgent);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        return new KscHttpClient(new ThreadSafeClientConnManager(params, schemeRegistry), params);
    }

    private static HttpParams getHttpParams(String userAgent) {
        HttpParams params = new BasicHttpParams();
        HttpConnectionParams.setStaleCheckingEnabled(params, false);
        HttpConnectionParams.setConnectionTimeout(params, 15000);
        HttpConnectionParams.setSoTimeout(params, 30000);
        HttpConnectionParams.setSocketBufferSize(params, 8192);
        ConnManagerParams.setTimeout(params, 30000);
        ConnManagerParams.setMaxTotalConnections(params, 30);
        ConnManagerParams.setMaxConnectionsPerRoute(params, new ConnPerRoute() {
            public int getMaxForRoute(HttpRoute httproute) {
                return 32;
            }
        });
        HttpClientParams.setRedirecting(params, true);
        HttpProtocolParams.setUseExpectContinue(params, false);
        HttpProtocolParams.setContentCharset(params, Keyczar.DEFAULT_ENCODING);
        HttpProtocolParams.setHttpElementCharset(params, Keyczar.DEFAULT_ENCODING);
        if (TextUtils.isEmpty(userAgent)) {
            userAgent = getDefaultUserAgent();
        }
        HttpProtocolParams.setUserAgent(params, userAgent);
        return params;
    }

    private static String getDefaultUserAgent() {
        if (sUserAgent == null) {
            String base = "KscClient/1.0 (Linux; U; Android %s)";
            sUserAgent = String.format("KscClient/1.0 (Linux; U; Android %s)", new Object[]{ContextUtils.getFrameworkVersion()});
        }
        return sUserAgent;
    }

    private KscHttpClient(ClientConnectionManager ccm, HttpParams params, boolean keepAlive, boolean requestSentRetryEnabled) {
        super(ccm, params);
        this.mLeakedException = new IllegalStateException("AndroidHttpClient created and never closed");
        this.mForKssTransmission = false;
        this.mKeepAlive = keepAlive;
        this.mRequestSentRetryEnabled = requestSentRetryEnabled;
    }

    private KscHttpClient(ClientConnectionManager ccm, HttpParams params) {
        super(ccm, params);
        this.mLeakedException = new IllegalStateException("AndroidHttpClient created and never closed");
        this.mForKssTransmission = true;
        this.mKeepAlive = true;
        this.mRequestSentRetryEnabled = true;
    }

    protected BasicHttpProcessor createHttpProcessor() {
        BasicHttpProcessor result;
        if (this.mForKssTransmission) {
            result = new BasicHttpProcessor();
            result.addInterceptor(new RequestDefaultHeaders());
            result.addInterceptor(new RequestContent());
            result.addInterceptor(new RequestTargetHost());
            result.addInterceptor(new RequestConnControl());
            result.addInterceptor(new RequestUserAgent());
        } else {
            result = super.createHttpProcessor();
        }
        result.addRequestInterceptor(new TimeMarker(this, null));
        result.addRequestInterceptor(new CurlLogger(this, null));
        return result;
    }

    protected HttpRequestRetryHandler createHttpRequestRetryHandler() {
        return new KscHttpRequestRetryHandler(3, this.mRequestSentRetryEnabled, 10000);
    }

    protected HttpRoutePlanner createHttpRoutePlanner() {
        return new KscHttpRoutePlanner(getConnectionManager().getSchemeRegistry());
    }

    protected RedirectHandler createRedirectHandler() {
        return new KscRedirectHandler();
    }

    protected ConnectionReuseStrategy createConnectionReuseStrategy() {
        if (this.mKeepAlive) {
            return new DefaultConnectionReuseStrategy();
        }
        return new NoConnectionReuseStrategy();
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    private static String toCurl(HttpUriRequest request, boolean logAuthToken) throws IOException {
        StringBuilder builder = new StringBuilder();
        builder.append("curl ");
        for (Header header : request.getAllHeaders()) {
            if (logAuthToken || !(header.getName().equals("Authorization") || header.getName().equals("Cookie"))) {
                builder.append("--header \"");
                builder.append(header.toString().trim());
                builder.append("\" ");
            }
        }
        URI uri = request.getURI();
        if (request instanceof RequestWrapper) {
            HttpRequest original = ((RequestWrapper) request).getOriginal();
            if (original instanceof HttpUriRequest) {
                uri = ((HttpUriRequest) original).getURI();
            }
        }
        builder.append("\"");
        builder.append(uri);
        builder.append("\"");
        if (request instanceof HttpEntityEnclosingRequest) {
            HttpEntity entity = ((HttpEntityEnclosingRequest) request).getEntity();
            if (entity != null && entity.isRepeatable()) {
                if (entity.getContentLength() < 1024) {
                    ByteArrayOutputStream stream = new ByteArrayOutputStream();
                    entity.writeTo(stream);
                    builder.append(" --data-ascii \"").append(stream.toString()).append("\"");
                } else {
                    builder.append(" [TOO MUCH DATA TO INCLUDE]");
                }
            }
        }
        return builder.toString();
    }
}
