package cn.kuaipan.android.http.client;

import org.apache.http.protocol.HttpContext;

public interface URIRedirector {
    boolean redirect(HttpContext httpContext);
}
