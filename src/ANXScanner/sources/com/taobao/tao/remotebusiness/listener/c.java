package com.taobao.tao.remotebusiness.listener;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.wireless.security.open.securesignature.SecureSignatureDefine;
import com.alipay.sdk.packet.d;
import com.taobao.tao.remotebusiness.IRemoteCacheListener;
import com.taobao.tao.remotebusiness.IRemoteProcessListener;
import com.taobao.tao.remotebusiness.MtopBusiness;
import java.io.IOException;
import java.lang.reflect.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.SymbolExpUtil;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopCallback.MtopCacheListener;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.common.MtopCallback.MtopProgressListener;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.ResponseHandlerUtil;
import mtopsdk.mtop.util.Result;
import mtopsdk.network.domain.ResponseBody;
import mtopsdk.network.util.NetworkUtils;

/* compiled from: MtopListenerProxyFactory */
public class c {
    public int a;
    public Map<String, List<String>> b;
    public ResponseBody c;

    public static URL a(String str, Map<String, String> map) {
        if (StringUtils.isBlank(str)) {
            TBSdkLog.e("mtopsdk.NetworkConverterUtils", "[initUrl]  baseUrl is blank, initUrl error");
            return null;
        }
        URL url;
        try {
            StringBuilder stringBuilder = new StringBuilder(str);
            if (map != null) {
                String a = a((Map) map, SymbolExpUtil.CHARSET_UTF8);
                if (StringUtils.isNotBlank(a) && str.indexOf("?") == -1) {
                    stringBuilder.append("?").append(a);
                }
            }
            url = new URL(stringBuilder.toString());
        } catch (Throwable e) {
            TBSdkLog.e("mtopsdk.NetworkConverterUtils", "[initUrl]initUrl new URL error", e);
            url = null;
        }
        return url;
    }

    public static MtopListener a(MtopBusiness mtopBusiness, MtopListener mtopListener) {
        List arrayList = new ArrayList();
        arrayList.add(MtopFinishListener.class);
        if (mtopListener instanceof IRemoteProcessListener) {
            arrayList.add(MtopProgressListener.class);
            arrayList.add(MtopHeaderListener.class);
        }
        if ((mtopListener instanceof IRemoteCacheListener) || mtopBusiness.mtopProp.useCache) {
            arrayList.add(MtopCacheListener.class);
        }
        return (MtopListener) Proxy.newProxyInstance(MtopListener.class.getClassLoader(), (Class[]) arrayList.toArray(new Class[arrayList.size()]), new a(mtopBusiness, mtopListener));
    }

    private static String b(String str) {
        return str == null ? "" : str;
    }

    public static String a(String str, MtopBusiness mtopBusiness, boolean z, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" [");
        if (mtopBusiness != null) {
            stringBuilder.append("apiName=").append(mtopBusiness.request.getApiName()).append(";version=").append(mtopBusiness.request.getVersion()).append(";requestType=").append(mtopBusiness.getRequestType());
            if (z) {
                stringBuilder.append(";clazz=").append(mtopBusiness.clazz);
            }
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public c(int i, Map<String, List<String>> map, ResponseBody responseBody) {
        this.a = i;
        this.b = map;
        this.c = responseBody;
    }

    public static Map<String, String> b(Map<String, String> map, String str) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        String str2 = (String) map.get("api");
        String str3 = (String) map.get("v");
        String str4 = (String) map.get(d.k);
        String str5 = (String) map.get("accessToken");
        String str6 = (String) map.get(LoginConstants.TIMESTAMP);
        String str7 = (String) map.get("utdid");
        String str8 = (String) map.get("pv");
        String str9 = (String) map.get(HttpHeaderConstant.X_FEATURES);
        String str10 = (String) map.get(AlibcConstants.TTID);
        String str11 = (String) map.get(LoginConstants.SID);
        String str12 = (String) map.get("wua");
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append(str2).append("&");
        stringBuilder.append(str3).append("&");
        stringBuilder.append(a(str4)).append("&");
        stringBuilder.append(str).append("&");
        stringBuilder.append(b(str5)).append("&");
        stringBuilder.append(str6).append("&");
        stringBuilder.append(b(str7)).append("&");
        stringBuilder.append(b(str8)).append("&");
        stringBuilder.append(b(str9)).append("&");
        stringBuilder.append(b(str10)).append("&");
        stringBuilder.append(b(str11)).append("&");
        stringBuilder.append(b(str12));
        Map<String, String> hashMap = new HashMap(2);
        hashMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, stringBuilder.toString());
        return hashMap;
    }

    public static MtopResponse a(MtopResponse mtopResponse, MtopResponse mtopResponse2, MtopProxy mtopProxy, c cVar) {
        MtopResponse mtopResponse3;
        String seqNo;
        if (mtopResponse == null) {
            mtopResponse3 = new MtopResponse();
        } else {
            mtopResponse3 = mtopResponse;
        }
        if (mtopProxy != null) {
            mtopResponse3.setApi(mtopProxy.mtopRequest.getApiName());
            mtopResponse3.setV(mtopProxy.mtopRequest.getVersion());
            seqNo = mtopProxy.stat.getSeqNo();
        } else {
            seqNo = null;
        }
        if (cVar == null) {
            TBSdkLog.e("mtopsdk.MtopNetworkResultParser", seqNo, "[parseNetworkRlt]network response is invalid");
            mtopResponse3.setRetCode(ErrorConstant.ERRCODE_NETWORK_ERROR);
            mtopResponse3.setRetMsg("网络错误");
            return mtopResponse3;
        }
        int i = cVar.a;
        Map map = cVar.b;
        mtopResponse3.setResponseCode(i);
        mtopResponse3.setHeaderFields(map);
        ResponseBody responseBody = cVar.c;
        if (responseBody != null) {
            try {
                mtopResponse3.setBytedata(responseBody.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (i < 0) {
            mtopResponse3.setRetCode(ErrorConstant.ERRCODE_NETWORK_ERROR);
            mtopResponse3.setRetMsg("网络错误");
            if (!TBSdkLog.isLogEnable(LogEnable.ErrorEnable)) {
                return mtopResponse3;
            }
            StringBuilder stringBuilder = new StringBuilder(128);
            stringBuilder.append("[parseNetworkRlt] api=").append(mtopResponse3.getApi());
            stringBuilder.append(",v=").append(mtopResponse3.getV());
            stringBuilder.append(",retCode =").append(mtopResponse3.getRetCode());
            stringBuilder.append(",responseCode =").append(i);
            stringBuilder.append(",responseHeader=").append(map);
            TBSdkLog.e("mtopsdk.MtopNetworkResultParser", seqNo, stringBuilder.toString());
            return mtopResponse3;
        }
        Result handleDegradeStrategy = ResponseHandlerUtil.handleDegradeStrategy(mtopResponse3, mtopProxy);
        if (handleDegradeStrategy != null && handleDegradeStrategy.isSuccess()) {
            return (MtopResponse) handleDegradeStrategy.getModel();
        }
        handleDegradeStrategy = ResponseHandlerUtil.handle304Response(mtopResponse3, mtopResponse2);
        if (handleDegradeStrategy != null && handleDegradeStrategy.isSuccess()) {
            return (MtopResponse) handleDegradeStrategy.getModel();
        }
        if (mtopResponse3.getBytedata() == null) {
            mtopResponse3.setRetCode(ErrorConstant.ERRCODE_JSONDATA_BLANK);
            mtopResponse3.setRetMsg(ErrorConstant.ERRMSG_JSONDATA_BLANK);
            return mtopResponse3;
        }
        if (!(mtopResponse3 == null || mtopResponse3.getHeaderFields() == null)) {
            String singleHeaderFieldByKey = NetworkUtils.getSingleHeaderFieldByKey(mtopResponse3.getHeaderFields(), HttpHeaderConstant.X_RETCODE);
            if (StringUtils.isNotBlank(singleHeaderFieldByKey)) {
                mtopResponse3.setRetCode(singleHeaderFieldByKey);
            } else {
                mtopResponse3.parseJsonByte();
            }
        }
        if (!mtopResponse3.isExpiredRequest() || mtopProxy == null || mtopProxy.getProperty().correctTimeStamp) {
            return mtopResponse3;
        }
        return ResponseHandlerUtil.handleCorrectTimeStamp(mtopResponse3, mtopProxy);
    }

    public static String a(Map<String, String> map, String str) {
        if (map == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            str = SymbolExpUtil.CHARSET_UTF8;
        }
        StringBuilder stringBuilder = new StringBuilder(64);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            try {
                String encode = URLEncoder.encode((String) entry.getKey(), str);
                stringBuilder.append(encode).append("=").append(URLEncoder.encode((String) entry.getValue(), str));
                if (it.hasNext()) {
                    stringBuilder.append("&");
                }
            } catch (Throwable th) {
                TBSdkLog.e("mtopsdk.NetworkConverterUtils", "[createParamQueryStr]getQueryStr error ---" + th.toString());
            }
        }
        return stringBuilder.toString();
    }

    public static String a(String str) {
        if (StringUtils.isBlank(str)) {
            return str;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes(SymbolExpUtil.CHARSET_UTF8));
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= digest.length) {
                    return stringBuffer.toString();
                }
                String toHexString = Integer.toHexString(digest[i2] & 255);
                while (toHexString.length() < 2) {
                    toHexString = "0" + toHexString;
                }
                stringBuffer.append(toHexString);
                i = i2 + 1;
            }
        } catch (Throwable e) {
            TBSdkLog.e("mtopsdk.SecurityUtils", "[getMd5] compute md5 value failed for source str=" + str, e);
            return null;
        }
    }
}
