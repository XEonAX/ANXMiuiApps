package mtopsdk.mtop.c.a;

import com.taobao.tao.remotebusiness.listener.c;
import java.util.Map;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.SymbolExpUtil;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopCallback.MtopCacheListener;
import mtopsdk.mtop.common.MtopNetworkProp;

/* compiled from: AbstractNetworkConverter */
public abstract class a implements d {
    protected static byte[] a(Map<String, String> map, String str) {
        byte[] bArr = null;
        if (map == null) {
            return bArr;
        }
        if (StringUtils.isBlank(str)) {
            str = SymbolExpUtil.CHARSET_UTF8;
        }
        String a = c.a((Map) map, str);
        if (a == null) {
            return bArr;
        }
        try {
            return a.getBytes(str);
        } catch (Exception e) {
            TBSdkLog.e("mtopsdk.NetworkConverter", "[createParamPostData]getPostData error");
            return bArr;
        }
    }

    protected final void a(Map<String, String> map, MtopProxy mtopProxy) {
        Object obj = 1;
        MtopNetworkProp property = mtopProxy.getProperty();
        if (!(mtopProxy.getCallback() instanceof MtopCacheListener) && (property == null || !property.useCache)) {
            obj = null;
        }
        if (obj == null) {
            map.put(HttpHeaderConstant.CACHE_CONTROL, HttpHeaderConstant.NO_CACHE);
        }
    }
}
