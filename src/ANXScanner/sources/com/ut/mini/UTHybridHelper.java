package com.ut.mini;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.auth.AliAuthError;
import com.alibaba.mtl.log.d.i;
import com.alibaba.wireless.security.SecExceptionCode;
import com.alimama.tunion.utils.TUnionPhoneInfoUtils;
import com.ut.mini.base.UTMIVariables;
import com.ut.mini.internal.UTOriginalCustomHitBuilder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class UTHybridHelper {
    private static UTHybridHelper a = new UTHybridHelper();

    public static UTHybridHelper getInstance() {
        return a;
    }

    public void setH5Url(String url) {
        if (url != null) {
            UTMIVariables.getInstance().setH5Url(url);
        }
    }

    public void h5UT(Map<String, String> dataMap, Object view) {
        if (dataMap == null || dataMap.size() == 0) {
            i.a("h5UT", (Object) "dataMap is empty");
            return;
        }
        String str = (String) dataMap.get("functype");
        if (str == null) {
            i.a("h5UT", (Object) "funcType is null");
            return;
        }
        String str2 = (String) dataMap.get("utjstype");
        if (str2 == null || str2.equals("0") || str2.equals("1")) {
            dataMap.remove("functype");
            Date date = new Date();
            if (str.equals("2001")) {
                a(date, dataMap, view);
                return;
            } else if (str.equals(AliAuthError.ERRNO_COMPONENT_AUTH_FAIL)) {
                a(date, dataMap);
                return;
            } else {
                return;
            }
        }
        i.a("h5UT", (Object) "utjstype should be 1 or 0 or null");
    }

    private void a(Date date, Map<String, String> map, Object obj) {
        if (map != null && map.size() != 0) {
            String b = b((String) map.get("urlpagename"), (String) map.get("url"));
            if (b == null || TextUtils.isEmpty(b)) {
                i.a("h5Page", (Object) "pageName is null,return");
                return;
            }
            Map c;
            String refPage = UTMIVariables.getInstance().getRefPage();
            String str = (String) map.get("utjstype");
            map.remove("utjstype");
            if (str == null || str.equals("0")) {
                c = c(map);
            } else if (str.equals("1")) {
                c = d(map);
            } else {
                c = null;
            }
            int i = 2006;
            if (UTPageHitHelper.getInstance().a(obj)) {
                i = SecExceptionCode.SEC_ERROR_PAGE_TRACK_ERROR_INVALID_PARAM;
            }
            UTOriginalCustomHitBuilder uTOriginalCustomHitBuilder = new UTOriginalCustomHitBuilder(b, i, refPage, null, null, c);
            if (SecExceptionCode.SEC_ERROR_PAGE_TRACK_ERROR_INVALID_PARAM == i) {
                UTMIVariables.getInstance().setRefPage(b);
            }
            Map c2 = UTPageHitHelper.getInstance().c();
            if (c2 != null && c2.size() > 0) {
                uTOriginalCustomHitBuilder.setProperties(c2);
            }
            UTTracker defaultTracker = UTAnalytics.getInstance().getDefaultTracker();
            if (defaultTracker != null) {
                defaultTracker.send(uTOriginalCustomHitBuilder.build());
            } else {
                i.a("h5Page event error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
            }
            UTPageHitHelper.getInstance().a(obj);
        }
    }

    private void a(Date date, Map<String, String> map) {
        if (map != null && map.size() != 0) {
            Object b = b((String) map.get("urlpagename"), (String) map.get("url"));
            if (b == null || TextUtils.isEmpty(b)) {
                i.a("h5Ctrl", "pageName is null,return");
                return;
            }
            String str = (String) map.get("logkey");
            if (str == null || TextUtils.isEmpty(str)) {
                i.a("h5Ctrl", "logkey is null,return");
                return;
            }
            Map e;
            String str2 = (String) map.get("utjstype");
            map.remove("utjstype");
            if (str2 == null || str2.equals("0")) {
                e = e(map);
            } else if (str2.equals("1")) {
                e = f(map);
            } else {
                e = null;
            }
            UTOriginalCustomHitBuilder uTOriginalCustomHitBuilder = new UTOriginalCustomHitBuilder(b, 2101, str, null, null, e);
            UTTracker defaultTracker = UTAnalytics.getInstance().getDefaultTracker();
            if (defaultTracker != null) {
                defaultTracker.send(uTOriginalCustomHitBuilder.build());
            } else {
                i.a("h5Ctrl event error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
            }
        }
    }

    private Map<String, String> c(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        Object obj;
        String obj2;
        HashMap hashMap = new HashMap();
        String str = (String) map.get("url");
        String str2 = "_h5url";
        if (str == null) {
            obj2 = "";
        } else {
            obj2 = str;
        }
        hashMap.put(str2, obj2);
        if (str != null) {
            Uri parse = Uri.parse(str);
            CharSequence queryParameter = parse.getQueryParameter("spm");
            if (queryParameter == null || TextUtils.isEmpty(queryParameter)) {
                hashMap.put("spm", "0.0.0.0");
            } else {
                hashMap.put("spm", queryParameter);
            }
            CharSequence queryParameter2 = parse.getQueryParameter(AlibcConstants.SCM);
            if (!(queryParameter2 == null || TextUtils.isEmpty(queryParameter2))) {
                hashMap.put(AlibcConstants.SCM, queryParameter2);
            }
        } else {
            hashMap.put("spm", "0.0.0.0");
        }
        Object obj3 = (String) map.get("spmcnt");
        obj2 = "_spmcnt";
        if (obj3 == null) {
            obj3 = "";
        }
        hashMap.put(obj2, obj3);
        obj3 = (String) map.get("spmpre");
        obj2 = "_spmpre";
        if (obj3 == null) {
            obj3 = "";
        }
        hashMap.put(obj2, obj3);
        obj3 = (String) map.get("lzsid");
        obj2 = "_lzsid";
        if (obj3 == null) {
            obj3 = "";
        }
        hashMap.put(obj2, obj3);
        obj3 = (String) map.get("extendargs");
        obj2 = "_h5ea";
        if (obj3 == null) {
            obj3 = "";
        }
        hashMap.put(obj2, obj3);
        obj3 = (String) map.get(TUnionPhoneInfoUtils.TUNION_KEY_COOKIE_CNA);
        obj2 = "_cna";
        if (obj3 == null) {
            obj3 = "";
        }
        hashMap.put(obj2, obj3);
        hashMap.put("_ish5", "1");
        return hashMap;
    }

    private Map<String, String> d(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Object obj = (String) map.get("url");
        String str = "_h5url";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        obj = (String) map.get("extendargs");
        str = "_h5ea";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        hashMap.put("_ish5", "1");
        return hashMap;
    }

    private Map<String, String> e(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        Map<String, String> hashMap = new HashMap();
        Object obj = (String) map.get("logkeyargs");
        String str = "_lka";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        obj = (String) map.get(TUnionPhoneInfoUtils.TUNION_KEY_COOKIE_CNA);
        str = "_cna";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        obj = (String) map.get("extendargs");
        str = "_h5ea";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        hashMap.put("_ish5", "1");
        return hashMap;
    }

    private Map<String, String> f(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        Map<String, String> hashMap = new HashMap();
        Object obj = (String) map.get("extendargs");
        String str = "_h5ea";
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        hashMap.put("_ish5", "1");
        return hashMap;
    }

    private String b(String str, String str2) {
        String str3 = "";
        if (str != null && !TextUtils.isEmpty(str)) {
            return str;
        }
        if (TextUtils.isEmpty(str2)) {
            return str3;
        }
        int indexOf = str2.indexOf("?");
        if (indexOf == -1) {
            return str2;
        }
        return str2.substring(0, indexOf);
    }
}
