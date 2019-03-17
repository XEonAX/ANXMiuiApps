package com.alibaba.baichuan.trade.biz.applink.adapter;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcAidCompoment;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.StringUtils;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcApiPlugin;
import com.alibaba.fastjson.JSON;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class AlibcApplinkPlugin extends AlibcApiPlugin {
    public static String API_NAME = "AliBCAppLink";
    public static String[] detailPatterns = new String[]{"^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)", "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"};
    public static final String[] shopPatterns = new String[]{"^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)", "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)", "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"};

    private AlibcFailModeType a(String str) {
        return TextUtils.isEmpty(str) ? AlibcFailModeType.AlibcNativeFailModeNONE : str.toLowerCase().trim().equals("h5") ? AlibcFailModeType.AlibcNativeFailModeJumpH5 : str.toLowerCase().trim().equals("download") ? AlibcFailModeType.AlibcNativeFailModeJumpDOWNLOAD : str.toLowerCase().trim().equals("browser") ? AlibcFailModeType.AlibcNativeFailModeJumpBROWER : str.toLowerCase().trim().equals("none") ? AlibcFailModeType.AlibcNativeFailModeNONE : AlibcFailModeType.AlibcNativeFailModeNONE;
    }

    private String a(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        Object obj2String = StringUtils.obj2String(map.get("needBackBtn"));
        if (!TextUtils.isEmpty(obj2String) && obj2String.trim().equals("0")) {
            return null;
        }
        Object obj2String2 = StringUtils.obj2String(map.get(AppLinkConstants.BACKURL));
        return TextUtils.isEmpty(obj2String2) ? AlibcBasePage.DEFAULT_BACK_URL : obj2String2;
    }

    private String a(Map<String, Object> map, String str) {
        if (map == null || map.size() == 0 || TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.equals("url")) {
            return e(map);
        }
        if (str.equals(AlibcConstants.SHOP) && c((Map) map) != null) {
            return String.format("https://shop.m.taobao.com/shop/shop_index.htm?shop_id=%s", new Object[]{c((Map) map)});
        } else if (!str.equals(AlibcConstants.DETAIL) || d(map) == null) {
            return "";
        } else {
            return String.format("https://h5.m.taobao.com/awp/core/detail.htm?id=%s", new Object[]{d(map)});
        }
    }

    private AlibcTradeTaokeParam b(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        Object valueOf = map.get(AppLinkConstants.PID) == null ? null : String.valueOf(map.get(AppLinkConstants.PID));
        Object valueOf2 = map.get("subpid") == null ? null : String.valueOf(map.get("subpid"));
        Object valueOf3 = map.get(AppLinkConstants.UNIONID) == null ? null : String.valueOf(map.get(AppLinkConstants.UNIONID));
        Object valueOf4 = map.get(TUnionNetworkRequest.TUNION_KEY_ADZONEID) == null ? null : String.valueOf(map.get(TUnionNetworkRequest.TUNION_KEY_ADZONEID));
        if (TextUtils.isEmpty(valueOf) && TextUtils.isEmpty(valueOf2) && TextUtils.isEmpty(valueOf3) && TextUtils.isEmpty(valueOf4)) {
            return null;
        }
        AlibcTradeTaokeParam alibcTradeTaokeParam = new AlibcTradeTaokeParam();
        alibcTradeTaokeParam.setPid(valueOf).setSubPid(valueOf2).setUnionId(valueOf3).setAdzoneid(valueOf4);
        if (alibcTradeTaokeParam.isAdZoneIdExist()) {
            alibcTradeTaokeParam.setPid(null);
            map.remove(AppLinkConstants.PID);
        }
        return alibcTradeTaokeParam;
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        for (String matches : detailPatterns) {
            if (str.trim().matches(matches)) {
                return true;
            }
        }
        return false;
    }

    private boolean b(Map<String, Object> map, String str) {
        if (map == null || map.size() == 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        AlibcTradeTaokeParam b = b((Map) map);
        if (b == null || !b.isAdZoneIdExist()) {
            return false;
        }
        if (str.equals(AlibcConstants.SHOP) || str.equals(AlibcConstants.DETAIL)) {
            return true;
        }
        String e = e(map);
        return !TextUtils.isEmpty(e) ? b(e) || c(e) : false;
    }

    private String c(Map<String, Object> map) {
        return map == null ? null : String.valueOf(map.get("shopId"));
    }

    private boolean c(String str) {
        if (str == null) {
            return false;
        }
        for (String matches : shopPatterns) {
            if (str.trim().matches(matches)) {
                return true;
            }
        }
        return false;
    }

    private String d(Map<String, Object> map) {
        return map == null ? null : String.valueOf(map.get("itemId"));
    }

    private String e(Map<String, Object> map) {
        return map == null ? null : String.valueOf(map.get("url"));
    }

    private String f(Map<String, Object> map) {
        return map == null ? null : String.valueOf(map.get("linkKey"));
    }

    private Map<String, String> g(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        Map<String, String> hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }

    public boolean execute(String str, String str2, AlibcJsCallbackContext alibcJsCallbackContext) {
        String obj2String;
        Exception e;
        String str3 = null;
        AlibcJsResult alibcJsResult;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || alibcJsCallbackContext == null) {
            alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
            alibcJsResult.setResultCode("2");
            if (alibcJsCallbackContext != null) {
                alibcJsCallbackContext.error(alibcJsResult);
            }
            return false;
        }
        Map obj2MapObject;
        AlibcNavResult alibcNavResult = new AlibcNavResult();
        try {
            Map obj2MapObject2 = StringUtils.obj2MapObject(JSON.parse(str2));
            obj2String = StringUtils.obj2String(obj2MapObject2.get("type"));
            try {
                obj2MapObject = StringUtils.obj2MapObject(obj2MapObject2.get("params"));
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                Object obj2MapObject3 = str3;
                if (obj2String != null) {
                }
                alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
                alibcJsResult.setResultCode("2");
                alibcJsCallbackContext.error(alibcJsResult);
                return true;
            }
        } catch (Exception e3) {
            e = e3;
            obj2String = str3;
        }
        if (obj2String != null || obj2MapObject3 == null) {
            alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
            alibcJsResult.setResultCode("2");
            alibcJsCallbackContext.error(alibcJsResult);
            return true;
        }
        a(obj2MapObject3);
        str3 = StringUtils.obj2String(obj2MapObject3.get("failMode"));
        Context context = AlibcTradeCommon.context;
        if (context == null) {
            alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
            alibcJsResult.setResultCode("2");
            alibcJsCallbackContext.error(alibcJsResult);
            return true;
        } else if (!b(obj2MapObject3, obj2String)) {
            if (obj2String.equals(AlibcConstants.SHOP)) {
                alibcNavResult = AlibcApplink.getInstance().jumpShop(context, c(obj2MapObject3), a(str3), a(obj2MapObject3), f(obj2MapObject3), b(obj2MapObject3), g(obj2MapObject3));
            } else if (obj2String.equals(AlibcConstants.DETAIL)) {
                alibcNavResult = AlibcApplink.getInstance().jumpDetail(context, d(obj2MapObject3), a(str3), a(obj2MapObject3), f(obj2MapObject3), b(obj2MapObject3), g(obj2MapObject3));
            } else if (obj2String.equals("url")) {
                alibcNavResult = AlibcApplink.getInstance().jumpTBURI(context, e(obj2MapObject3), a(str3), a(obj2MapObject3), f(obj2MapObject3), b(obj2MapObject3), g(obj2MapObject3));
            }
            if (alibcNavResult.isSuccess) {
                alibcJsCallbackContext.success(AlibcJsResult.RET_SUCCESS);
            } else {
                alibcJsCallbackContext.error(AlibcJsResult.RET_FAIL);
            }
            return true;
        } else if (AlibcApplink.isApplinkSupported(f(obj2MapObject3)) || !AlibcFailModeType.AlibcNativeFailModeNONE.equals(a(str3))) {
            Object a = a(obj2MapObject3, obj2String);
            if (TextUtils.isEmpty(a)) {
                alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
                alibcJsResult.setResultCode("2");
                alibcJsCallbackContext.error(alibcJsResult);
                return true;
            }
            AlibcAidCompoment.genTaokeUrl(true, f(obj2MapObject3), a, b(obj2MapObject3), new a(this, context, str3, obj2MapObject3));
            alibcJsCallbackContext.success(AlibcJsResult.RET_SUCCESS);
            return true;
        } else {
            alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
            alibcJsResult.setResultCode(AlibcJsResult.APP_NOT_INSTALL);
            alibcJsCallbackContext.error(alibcJsResult);
            return true;
        }
    }
}
