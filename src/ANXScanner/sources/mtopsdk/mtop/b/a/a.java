package mtopsdk.mtop.b.a;

import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alipay.sdk.packet.d;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopNetworkProp;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.features.MtopFeatureManager;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.global.SDKUtils;
import mtopsdk.xstate.XState;

/* compiled from: ProtocolParamBuilder */
public class a {
    private mtopsdk.a.a a = null;
    private SDKConfig b = SDKConfig.getInstance();

    public Map<String, String> a(MtopProxy mtopProxy) {
        if (mtopProxy == null || mtopProxy.getEntrance() == null) {
            TBSdkLog.e("mtopsdk.ProtocolParamBuilderImpl", "[buildParams]mtopProxy or entrance is invalid.---" + mtopProxy);
            return null;
        }
        this.a = this.b.getGlobalSign();
        if (this.a == null) {
            TBSdkLog.e("mtopsdk.ProtocolParamBuilderImpl", mtopProxy.stat.getSeqNo(), "ISign for SDKConfig.getInstance().getGlobalSign is null");
            return null;
        }
        String value;
        MtopRequest mtopRequest = mtopProxy.getMtopRequest();
        MtopNetworkProp property = mtopProxy.getProperty();
        Map<String, String> hashMap = new HashMap();
        hashMap.put("pv", "1.0");
        String value2 = XState.getValue("lat");
        if (StringUtils.isNotBlank(value2)) {
            value = XState.getValue("lng");
            if (StringUtils.isNotBlank(value)) {
                hashMap.put("lat", value2);
                hashMap.put("lng", value);
            }
        }
        hashMap.put(LoginConstants.TIMESTAMP, String.valueOf(SDKUtils.getCorrectionTime()));
        hashMap.put(LoginConstants.SID, XState.getValue(LoginConstants.SID));
        hashMap.put("accessToken", XState.getValue("accessToken"));
        hashMap.put("utdid", XState.getValue("utdid"));
        hashMap.put(HttpHeaderConstant.X_FEATURES, String.valueOf(MtopFeatureManager.getMtopTotalFeatures()));
        hashMap.put("api", mtopRequest.getApiName().toLowerCase());
        hashMap.put("v", mtopRequest.getVersion().toLowerCase());
        hashMap.put(d.k, mtopRequest.getData());
        hashMap.put(AlibcConstants.TTID, StringUtils.isNotBlank(property.ttid) ? property.ttid : XState.getValue(AlibcConstants.TTID));
        value = this.b.getGlobalAppKey();
        hashMap.put(LoginConstants.KEY_APPKEY, value);
        hashMap.put(LoginConstants.SID, XState.getValue(LoginConstants.SID));
        if (property.wuaFlag >= 0) {
            hashMap.get(LoginConstants.TIMESTAMP);
            mtopsdk.a.a aVar = this.a;
            int i = property.wuaFlag;
            hashMap.put("wua", aVar.a());
        }
        value2 = this.a.a((HashMap) hashMap, value);
        if (StringUtils.isBlank(value2)) {
            StringBuilder stringBuilder = new StringBuilder(128);
            stringBuilder.append("api=").append(mtopRequest.getApiName()).append(";v=").append(mtopRequest.getVersion()).append(" getMtopApiWBSign  failed. [appKey=").append(value).append("]");
            TBSdkLog.e("mtopsdk.ProtocolParamBuilderImpl", mtopProxy.stat.getSeqNo(), stringBuilder.toString());
            hashMap = null;
        } else {
            hashMap.put("sign", value2);
            a(mtopProxy, hashMap);
        }
        return hashMap;
    }

    private void a(MtopProxy mtopProxy, Map<String, String> map) {
        MtopNetworkProp property = mtopProxy.getProperty();
        if (!(property.queryParameterMap == null || property.queryParameterMap.isEmpty())) {
            for (Entry entry : property.queryParameterMap.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
        String globalAppVersion = this.b.getGlobalAppVersion();
        if (StringUtils.isNotBlank(globalAppVersion)) {
            map.put(HttpHeaderConstant.X_APP_VER, globalAppVersion);
        }
        globalAppVersion = XState.getValue(Constants.UA);
        if (globalAppVersion != null) {
            map.put(HttpHeaderConstant.USER_AGENT, globalAppVersion);
        }
    }
}
