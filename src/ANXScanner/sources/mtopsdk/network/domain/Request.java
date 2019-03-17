package mtopsdk.network.domain;

import android.text.TextUtils;
import com.alipay.sdk.cons.b;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.network.util.NetworkUtils;
import org.android.spdy.SpdyRequest;

public final class Request {
    private final int bizId;
    private final RequestBody body;
    private final int connectTimeoutMills;
    private final Map<String, String> headers;
    private final String method;
    private final int readTimeoutMills;
    private final int retryTimes;
    private final String seqNo;
    private final String url;

    public static class Builder {
        private int bizId;
        private RequestBody body;
        private int connectTimeoutMills;
        private Map<String, String> headers;
        private String method;
        private int readTimeoutMills;
        private int retryTimes;
        private String seqNo;
        private String url;

        public Builder() {
            this.connectTimeoutMills = 15000;
            this.readTimeoutMills = 15000;
            this.method = SpdyRequest.GET_METHOD;
            this.headers = new HashMap();
        }

        private Builder(Request request) {
            this.connectTimeoutMills = 15000;
            this.readTimeoutMills = 15000;
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.headers = new HashMap();
            this.seqNo = request.seqNo;
            this.connectTimeoutMills = request.connectTimeoutMills;
            this.readTimeoutMills = request.readTimeoutMills;
            this.retryTimes = request.retryTimes;
            this.bizId = request.bizId;
        }

        public Builder url(String str) {
            if (str == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.url = str;
            return this;
        }

        public Builder setHeader(String str, String str2) {
            if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2))) {
                this.headers.put(str, str2);
            }
            return this;
        }

        public Builder removeHeader(String str) {
            this.headers.remove(str);
            return this;
        }

        public Builder headers(Map<String, String> map) {
            if (map != null) {
                this.headers = map;
            }
            return this;
        }

        public Builder seqNo(String str) {
            this.seqNo = str;
            return this;
        }

        public Builder connectTimeout(int i) {
            if (i > 0) {
                this.connectTimeoutMills = i;
            }
            return this;
        }

        public Builder readTimeout(int i) {
            if (i > 0) {
                this.readTimeoutMills = i;
            }
            return this;
        }

        public Builder retryTimes(int i) {
            this.retryTimes = i;
            return this;
        }

        public Builder bizId(int i) {
            this.bizId = i;
            return this;
        }

        public Builder get() {
            return method(SpdyRequest.GET_METHOD, null);
        }

        public Builder post(RequestBody requestBody) {
            return method("POST", requestBody);
        }

        public Builder method(String str, RequestBody requestBody) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            } else if (requestBody != null && !NetworkUtils.permitsRequestBody(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (requestBody == null && NetworkUtils.requiresRequestBody(str)) {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            } else {
                this.method = str;
                this.body = requestBody;
                return this;
            }
        }

        public Request build() {
            if (this.url != null) {
                return new Request(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    private Request(Builder builder) {
        this.url = builder.url;
        this.method = builder.method;
        this.headers = builder.headers;
        this.body = builder.body;
        this.seqNo = builder.seqNo;
        this.connectTimeoutMills = builder.connectTimeoutMills;
        this.readTimeoutMills = builder.readTimeoutMills;
        this.retryTimes = builder.retryTimes;
        this.bizId = builder.bizId;
    }

    public final String url() {
        return this.url;
    }

    public final String method() {
        return this.method;
    }

    public final Map<String, String> headers() {
        return this.headers;
    }

    public final String header(String str) {
        return (String) this.headers.get(str);
    }

    public final RequestBody body() {
        return this.body;
    }

    public final String seqNo() {
        return this.seqNo;
    }

    public final int connectTimeoutMills() {
        return this.connectTimeoutMills;
    }

    public final int readTimeoutMills() {
        return this.readTimeoutMills;
    }

    public final int retryTimes() {
        return this.retryTimes;
    }

    public final int bizId() {
        return this.bizId;
    }

    public final Builder newBuilder() {
        return new Builder();
    }

    public final boolean isHttps() {
        if (this.url != null) {
            return this.url.startsWith(b.a);
        }
        return false;
    }

    public final String toString() {
        return "Request{body=" + this.body + ", url='" + this.url + '\'' + ", method='" + this.method + '\'' + ", headers=" + this.headers + ", seqNo='" + this.seqNo + '\'' + ", connectTimeoutMills=" + this.connectTimeoutMills + ", readTimeoutMills=" + this.readTimeoutMills + ", retryTimes=" + this.retryTimes + '}';
    }
}
