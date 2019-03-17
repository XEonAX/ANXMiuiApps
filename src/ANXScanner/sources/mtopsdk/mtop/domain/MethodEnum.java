package mtopsdk.mtop.domain;

import org.android.spdy.SpdyRequest;

public enum MethodEnum {
    GET(SpdyRequest.GET_METHOD),
    POST("POST");
    
    private String method;

    public final String getMethod() {
        return this.method;
    }

    private MethodEnum(String str) {
        this.method = str;
    }
}
