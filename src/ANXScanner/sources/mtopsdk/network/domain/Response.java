package mtopsdk.network.domain;

import java.util.List;
import java.util.Map;

public final class Response {
    private final ResponseBody body;
    private final int code;
    private final Map<String, List<String>> headers;
    private final String message;
    private final Request request;
    private final NetworkStats stat;

    public static class Builder {
        private ResponseBody body;
        private int code = -1;
        private Map<String, List<String>> headers;
        private String message;
        private Request request;
        private NetworkStats stat;

        public Builder request(Request request) {
            this.request = request;
            return this;
        }

        public Builder code(int i) {
            this.code = i;
            return this;
        }

        public Builder message(String str) {
            this.message = str;
            return this;
        }

        public Builder headers(Map<String, List<String>> map) {
            this.headers = map;
            return this;
        }

        public Builder body(ResponseBody responseBody) {
            this.body = responseBody;
            return this;
        }

        public Builder stat(NetworkStats networkStats) {
            this.stat = networkStats;
            return this;
        }

        public Response build() {
            if (this.request != null) {
                return new Response(this);
            }
            throw new IllegalStateException("request == null");
        }
    }

    private Response(Builder builder) {
        this.request = builder.request;
        this.code = builder.code;
        this.message = builder.message;
        this.headers = builder.headers;
        this.body = builder.body;
        this.stat = builder.stat;
    }

    public final Request request() {
        return this.request;
    }

    public final int code() {
        return this.code;
    }

    public final String message() {
        return this.message;
    }

    public final Map<String, List<String>> headers() {
        return this.headers;
    }

    public final ResponseBody body() {
        return this.body;
    }

    public final NetworkStats stat() {
        return this.stat;
    }
}
