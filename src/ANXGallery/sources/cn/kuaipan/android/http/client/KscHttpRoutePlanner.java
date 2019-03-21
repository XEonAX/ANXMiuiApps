package cn.kuaipan.android.http.client;

import cn.kuaipan.android.utils.NetworkHelpers;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.DefaultHttpRoutePlanner;
import org.apache.http.params.AbstractHttpParams;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public class KscHttpRoutePlanner extends DefaultHttpRoutePlanner {

    private class KscHttpParams extends AbstractHttpParams {
        private final HttpParams mExtParams;
        private final HttpParams mOrgParams;

        public KscHttpParams(HttpParams orgParams) {
            this.mOrgParams = orgParams;
            this.mExtParams = new BasicHttpParams();
        }

        private KscHttpParams(HttpParams orgParams, HttpParams extParams) {
            this.mOrgParams = orgParams;
            this.mExtParams = extParams;
        }

        public Object getParameter(String name) {
            Object obj = this.mExtParams.getParameter(name);
            if (obj == null) {
                return this.mOrgParams.getParameter(name);
            }
            return obj;
        }

        public HttpParams setParameter(String name, Object value) {
            this.mExtParams.setParameter(name, value);
            return this;
        }

        public HttpParams copy() {
            return new KscHttpParams(this.mOrgParams, this.mExtParams.copy());
        }

        public boolean removeParameter(String name) {
            boolean result = this.mExtParams.removeParameter(name);
            if (result) {
                return result;
            }
            try {
                return this.mOrgParams.removeParameter(name);
            } catch (Exception e) {
                return result;
            }
        }
    }

    public KscHttpRoutePlanner(SchemeRegistry schreg) {
        super(schreg);
    }

    public HttpRoute determineRoute(HttpHost target, HttpRequest request, HttpContext context) throws HttpException {
        HttpHost apnProxy = NetworkHelpers.getCurrentProxy();
        if (apnProxy != null) {
            KscHttpParams params = new KscHttpParams(request.getParams());
            ConnRouteParams.setDefaultProxy(params, apnProxy);
            request.setParams(params);
        }
        return super.determineRoute(target, request, context);
    }
}
