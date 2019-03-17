package mtopsdk.mtop.c.a;

import com.taobao.tao.remotebusiness.listener.c;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.SymbolExpUtil;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopNetworkProp;
import mtopsdk.mtop.domain.MethodEnum;
import mtopsdk.mtop.domain.MtopHeaderFieldEnum;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.network.domain.Request;
import mtopsdk.network.domain.Request.Builder;

/* compiled from: Api4NetworkConverter */
public final class b extends a {
    public final Request a(MtopProxy mtopProxy, Map<String, String> map) {
        if (mtopProxy.stat == null) {
            mtopProxy.stat = new MtopStatistics();
        }
        MtopNetworkProp property = mtopProxy.getProperty();
        String seqNo = mtopProxy.stat.getSeqNo();
        Builder builder = new Builder();
        builder.seqNo(seqNo);
        builder.connectTimeout(property.connTimeout);
        builder.readTimeout(property.socketTimeout);
        builder.retryTimes(property.retryTimes);
        MethodEnum methodEnum = property.method;
        Map a = a((Map) map, property.requestHeaders);
        try {
            URL a2;
            String str = (String) map.remove("api");
            String str2 = (String) map.remove("v");
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append(mtopProxy.getFullBaseUrl(null));
            stringBuilder.append("/");
            stringBuilder.append(str).append("/");
            stringBuilder.append(str2).append("/");
            if (MethodEnum.POST.getMethod().equals(methodEnum.getMethod())) {
                builder.method(methodEnum.getMethod(), new c(this, a.a((Map) map, SymbolExpUtil.CHARSET_UTF8)));
                a2 = c.a(stringBuilder.toString(), null);
            } else {
                a(a, mtopProxy);
                a2 = c.a(stringBuilder.toString(), (Map) map);
            }
            if (a2 != null) {
                mtopProxy.stat.domain = a2.getHost();
            }
            builder.url(a2.toString());
            builder.headers(a);
            return builder.build();
        } catch (Throwable th) {
            TBSdkLog.e("mtopsdk.Api4NetworkConverter", seqNo, "[Api4NetworkConverter] convert Request failed!", th);
            return null;
        }
    }

    private static Map<String, String> a(Map<String, String> map, Map<String, String> map2) {
        String str;
        if (map2 == null) {
            map2 = new HashMap();
        }
        for (MtopHeaderFieldEnum mtopHeaderFieldEnum : MtopHeaderFieldEnum.values()) {
            str = (String) map.remove(mtopHeaderFieldEnum.getXstateKey());
            if (str != null) {
                try {
                    map2.put(mtopHeaderFieldEnum.getHeadField(), URLEncoder.encode(str, SymbolExpUtil.CHARSET_UTF8));
                } catch (UnsupportedEncodingException e) {
                    TBSdkLog.e("mtopsdk.Api4NetworkConverter", "[prepareRequestHeaders]urlencode " + mtopHeaderFieldEnum.getHeadField() + "=" + str + "error");
                }
            }
        }
        str = (String) map.remove("lng");
        String str2 = (String) map.remove("lat");
        if (!(str == null || str2 == null)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(",");
            stringBuilder.append(str2);
            try {
                map2.put(HttpHeaderConstant.X_LOCATION, URLEncoder.encode(stringBuilder.toString(), SymbolExpUtil.CHARSET_UTF8));
            } catch (UnsupportedEncodingException e2) {
                TBSdkLog.e("mtopsdk.Api4NetworkConverter", "[prepareRequestHeaders]urlencode x-location=" + stringBuilder.toString() + "error");
            }
        }
        return map2;
    }
}
