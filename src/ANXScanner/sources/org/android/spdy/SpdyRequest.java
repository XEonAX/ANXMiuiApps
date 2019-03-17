package org.android.spdy;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

public final class SpdyRequest {
    public static final String GET_METHOD = "GET";
    public static final String POST_METHOD = "POST";
    private int connectionTimeoutMs = 0;
    private String domain;
    private Map<String, String> extHead;
    private String host;
    private String method;
    private int port;
    private RequestPriority priority;
    private String proxyIp = "0.0.0.0";
    private int proxyPort = 0;
    private int requestRdTimeoutMs = 0;
    private int requestTimeoutMs = 0;
    private int retryTimes = 0;
    private URL url;

    public SpdyRequest(URL url, String host, int port, String proxyIp, int proxyPort, String method, RequestPriority priority, int requestTimeoutMs, int connectionTimeoutMs, int retryTimes) {
        this.url = url;
        this.domain = "";
        this.host = host;
        this.port = port;
        if (!(proxyIp == null || proxyPort == 0)) {
            this.proxyIp = proxyIp;
            this.proxyPort = proxyPort;
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
        this.requestTimeoutMs = requestTimeoutMs;
        this.connectionTimeoutMs = connectionTimeoutMs;
        this.retryTimes = retryTimes;
    }

    public SpdyRequest(URL url, String host, int port, String method, RequestPriority priority) {
        this.url = url;
        this.domain = "";
        this.host = host;
        this.port = port;
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
    }

    public SpdyRequest(URL url, String method, RequestPriority priority) {
        this.url = url;
        this.domain = "";
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
    }

    public SpdyRequest(URL url, String method, RequestPriority priority, int requestTimeoutMs, int connectionTimeoutMs) {
        this.url = url;
        this.domain = "";
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
        this.requestTimeoutMs = requestTimeoutMs;
        this.connectionTimeoutMs = connectionTimeoutMs;
    }

    public SpdyRequest(URL url, String method) {
        this.url = url;
        this.domain = "";
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = RequestPriority.DEFAULT_PRIORITY;
    }

    public SpdyRequest(URL url, String domain, String host, int port, String proxyIp, int proxyPort, String method, RequestPriority priority, int requestTimeoutMs, int connectionTimeoutMs, int retryTimes) {
        this.url = url;
        this.domain = domain;
        this.host = host;
        this.port = port;
        if (!(proxyIp == null || proxyPort == 0)) {
            this.proxyIp = proxyIp;
            this.proxyPort = proxyPort;
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
        this.requestTimeoutMs = requestTimeoutMs;
        this.connectionTimeoutMs = connectionTimeoutMs;
        this.retryTimes = retryTimes;
    }

    public SpdyRequest(URL url, String domain, String host, int port, String method, RequestPriority priority) {
        this.url = url;
        this.domain = domain;
        this.host = host;
        this.port = port;
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
    }

    public SpdyRequest(URL url, String domain, String method, RequestPriority priority) {
        this.url = url;
        this.domain = domain;
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
    }

    public SpdyRequest(URL url, String domain, String method, RequestPriority priority, int requestTimeoutMs, int connectionTimeoutMs) {
        this.url = url;
        this.domain = domain;
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = priority;
        if (priority == null) {
            this.priority = RequestPriority.DEFAULT_PRIORITY;
        }
        this.requestTimeoutMs = requestTimeoutMs;
        this.connectionTimeoutMs = connectionTimeoutMs;
    }

    public SpdyRequest(URL url, String domain, String method) {
        this.url = url;
        this.domain = domain;
        this.host = url.getHost();
        this.port = url.getPort();
        if (this.port < 0) {
            this.port = url.getDefaultPort();
        }
        this.method = method;
        this.extHead = new HashMap(5);
        this.priority = RequestPriority.DEFAULT_PRIORITY;
    }

    public void setRequestRdTimeoutMs(int requestRdTimeoutMs) {
        if (requestRdTimeoutMs >= 0) {
            this.requestRdTimeoutMs = requestRdTimeoutMs;
        }
    }

    public void addHeader(String key, String value) {
        this.extHead.put(key, value);
    }

    public void addHeaders(Map<String, String> headers) {
        this.extHead.putAll(headers);
    }

    URL getUrl() {
        return this.url;
    }

    String getMethod() {
        return this.method;
    }

    int getPriority() {
        return this.priority.getPriorityInt();
    }

    private String getPath() {
        StringBuilder path = new StringBuilder();
        path.append(this.url.getPath());
        if (this.url.getQuery() != null) {
            path.append("?").append(this.url.getQuery());
        }
        if (this.url.getRef() != null) {
            path.append("#").append(this.url.getRef());
        }
        if (path.length() == 0) {
            path.append('/');
        }
        return path.toString();
    }

    Map<String, String> getHeaders() {
        Map<String, String> map = new HashMap(5);
        map.put(":path", getPath());
        map.put(":method", this.method);
        map.put(":version", "HTTP/1.1");
        map.put(":host", this.url.getAuthority());
        map.put(":scheme", this.url.getProtocol());
        if (this.extHead != null && this.extHead.size() > 0) {
            map.putAll(this.extHead);
        }
        return map;
    }

    String getUrlPath() {
        StringBuilder path = new StringBuilder();
        path.append(this.url.getProtocol()).append("://").append(this.url.getAuthority()).append(getPath());
        return path.toString();
    }

    String getHost() {
        return this.host;
    }

    int getPort() {
        return this.port < 0 ? 80 : this.port;
    }

    String getProxyIp() {
        return this.proxyIp;
    }

    int getProxyPort() {
        return this.proxyPort;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    String getDomain() {
        return this.domain;
    }

    public String getAuthority() {
        return this.host + SymbolExpUtil.SYMBOL_COLON + Integer.toString(this.port) + "/" + this.proxyIp + SymbolExpUtil.SYMBOL_COLON + this.proxyPort;
    }

    public int getRequestTimeoutMs() {
        return this.requestTimeoutMs;
    }

    public int getConnectionTimeoutMs() {
        return this.connectionTimeoutMs;
    }

    public int getRequestRdTimeoutMs() {
        return this.requestRdTimeoutMs;
    }

    public int getRetryTimes() {
        return this.retryTimes;
    }
}
