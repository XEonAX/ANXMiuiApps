package com.alibaba.baichuan.trade.biz.applink.adapter;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.ALPTBLinkPartnerSDK;
import com.alibaba.alibclinkpartner.param.ALPJumpFailedStrategy;
import com.alibaba.alibclinkpartner.param.jump.ALPDetailParam;
import com.alibaba.alibclinkpartner.param.jump.ALPShopParam;
import com.alibaba.alibclinkpartner.param.jump.ALPURIParam;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz;
import com.alibaba.baichuan.trade.biz.applink.AlibcAppLinkInterceptor;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcPluginManager;
import java.util.HashMap;
import java.util.Map;

public class AlibcApplink {
    public static final int ERR_CODE = 101;
    public static final String ERR_MSG = "Applink初始化失败";
    private static volatile AlibcApplink b = null;
    private boolean a;

    public class AlibcApplinkResult {
        public static final int APPLINK_INIT_AD = 2;
        public static final int APPLINK_INIT_FAIL = 1;
        public static final int APPLINK_INIT_SUCCESS = 0;
        public int errorCode;
        public String errorMessage;
        public int result;

        public AlibcApplinkResult() {
            this.result = 0;
        }

        public AlibcApplinkResult(int i) {
            this.result = 0;
            this.result = i;
        }

        public AlibcApplinkResult(int i, String str) {
            this.result = 0;
            this.result = 1;
            this.errorCode = i;
            this.errorMessage = str;
        }
    }

    private AlibcApplink() {
    }

    private ALPJumpFailedStrategy a(AlibcFailModeType alibcFailModeType) {
        ALPJumpFailedStrategy aLPJumpFailedStrategy = new ALPJumpFailedStrategy();
        aLPJumpFailedStrategy.mode = 5;
        if (alibcFailModeType != null) {
            switch (alibcFailModeType) {
                case AlibcNativeFailModeNONE:
                    aLPJumpFailedStrategy.mode = 5;
                    break;
                case AlibcNativeFailModeJumpH5:
                    aLPJumpFailedStrategy.mode = 4;
                    break;
                case AlibcNativeFailModeJumpBROWER:
                    aLPJumpFailedStrategy.mode = 6;
                    break;
                case AlibcNativeFailModeJumpDOWNLOAD:
                    aLPJumpFailedStrategy.mode = 3;
                    break;
            }
        }
        return aLPJumpFailedStrategy;
    }

    private void a(ALPTBJumpParam aLPTBJumpParam, String str, String str2, AlibcTradeTaokeParam alibcTradeTaokeParam, Map<String, String> map) {
        if (aLPTBJumpParam != null) {
            if (!TextUtils.isEmpty(str)) {
                aLPTBJumpParam.backUrl = str;
            }
            if (!TextUtils.isEmpty(str2)) {
                aLPTBJumpParam.linkKey = str2;
            }
            if (alibcTradeTaokeParam != null) {
                if (!TextUtils.isEmpty(alibcTradeTaokeParam.pid)) {
                    aLPTBJumpParam.putParam(AppLinkConstants.PID, alibcTradeTaokeParam.pid);
                }
                if (!TextUtils.isEmpty(alibcTradeTaokeParam.subPid)) {
                    aLPTBJumpParam.putParam("subpid", alibcTradeTaokeParam.subPid);
                }
                if (!TextUtils.isEmpty(alibcTradeTaokeParam.unionId)) {
                    aLPTBJumpParam.putParam(AppLinkConstants.UNIONID, alibcTradeTaokeParam.unionId);
                }
            }
            if (!(map == null || TextUtils.isEmpty((CharSequence) map.get("isv_code")))) {
                aLPTBJumpParam.putParam(AppLinkConstants.TAG, (String) map.get("isv_code"));
            }
            if (map != null) {
                aLPTBJumpParam.putParams(map);
            }
        }
    }

    private void a(Map<String, String> map, boolean z) {
        Map hashMap = new HashMap();
        if (!TextUtils.isEmpty(AlibcTradeCommon.getAppKey())) {
            hashMap.put("appkey", AlibcTradeCommon.getAppKey());
        }
        if (map != null && map.size() > 0) {
            Object obj;
            hashMap.put("param", JSONUtils.objectToJson("param", map));
            String str = "ybhpss";
            if (TextUtils.isEmpty((CharSequence) map.get("ybhpss"))) {
                obj = "";
            } else {
                String obj2 = (String) map.get("ybhpss");
            }
            hashMap.put(str, obj2);
        }
        hashMap.put(UserTrackerConstants.FROM, UserTrackerConstants.FROM_VALUE);
        hashMap.put(UserTrackerConstants.IS_SUCCESS, z ? "1" : "0");
        AlibcUserTracker.getInstance().sendCustomHit(UserTrackerConstants.E_SHOW_APPLINK, "", hashMap);
    }

    private boolean a(int i) {
        return i / 100 == 2;
    }

    public static synchronized AlibcApplink getInstance() {
        AlibcApplink alibcApplink;
        synchronized (AlibcApplink.class) {
            if (b == null) {
                b = new AlibcApplink();
            }
            alibcApplink = b;
        }
        return alibcApplink;
    }

    public static boolean isApplinkSupported(String str) {
        return a.isSupportLinkKey(str);
    }

    public AlibcApplinkResult init() {
        if (this.a) {
            return new AlibcApplinkResult(2);
        }
        ALPTBLinkPartnerSDK.setDebugStatus(AlibcTradeCommon.isDebug(), AlibcTradeCommon.isDebug());
        ALPTBLinkPartnerSDK.setTTID(AlibcMiniTradeBiz.getTTID());
        if (2 != a.init(AlibcTradeCommon.context, AlibcTradeCommon.getAppKey()) / 100) {
            return new AlibcApplinkResult(1);
        }
        ALPTBLinkPartnerSDK.setSupportJumpFailedOpenTaobao(true);
        AlibcPluginManager.registerPlugin(AlibcApplinkPlugin.API_NAME, AlibcApplinkPlugin.class, true);
        AlibcUrlBus.registInterceptor(AlibcAppLinkInterceptor.getInstance());
        this.a = true;
        return new AlibcApplinkResult(0);
    }

    public AlibcNavResult jumpDetail(Context context, String str, AlibcFailModeType alibcFailModeType, String str2, String str3, AlibcTradeTaokeParam alibcTradeTaokeParam, Map<String, String> map) {
        AlibcNavResult alibcNavResult = new AlibcNavResult();
        ALPTBJumpParam aLPDetailParam = new ALPDetailParam(str);
        a(aLPDetailParam, str2, str3, alibcTradeTaokeParam, map);
        try {
            alibcNavResult.resultCode = ALPTBLinkPartnerSDK.jumpDetail(context, aLPDetailParam, a(alibcFailModeType));
            alibcNavResult.isSuccess = a(alibcNavResult.resultCode);
        } catch (Exception e) {
            AlibcLogger.e("AliTradeApplinkServiceImp", "Applink調用jumpDetail失败：" + e.getMessage());
            alibcNavResult.isSuccess = false;
        }
        a(map, alibcNavResult.isSuccess);
        return alibcNavResult;
    }

    public AlibcNavResult jumpShop(Context context, String str, AlibcFailModeType alibcFailModeType, String str2, String str3, AlibcTradeTaokeParam alibcTradeTaokeParam, Map<String, String> map) {
        AlibcNavResult alibcNavResult = new AlibcNavResult();
        ALPTBJumpParam aLPShopParam = new ALPShopParam(str);
        a(aLPShopParam, str2, str3, alibcTradeTaokeParam, map);
        try {
            alibcNavResult.resultCode = ALPTBLinkPartnerSDK.jumpShop(context, aLPShopParam, a(alibcFailModeType));
            alibcNavResult.isSuccess = a(alibcNavResult.resultCode);
        } catch (Exception e) {
            AlibcLogger.e("AliTradeApplinkServiceImp", "Applink調用jumpShop失败：" + e.getMessage());
            alibcNavResult.isSuccess = false;
        }
        a(map, alibcNavResult.isSuccess);
        return alibcNavResult;
    }

    public AlibcNavResult jumpTBURI(Context context, String str, AlibcFailModeType alibcFailModeType, String str2, String str3, AlibcTradeTaokeParam alibcTradeTaokeParam, Map<String, String> map) {
        AlibcNavResult alibcNavResult = new AlibcNavResult();
        if (TextUtils.isEmpty(str)) {
            return alibcNavResult;
        }
        ALPTBJumpParam aLPURIParam = new ALPURIParam(str);
        a(aLPURIParam, str2, str3, alibcTradeTaokeParam, map);
        try {
            alibcNavResult.resultCode = ALPTBLinkPartnerSDK.jumpURI(context, aLPURIParam, a(alibcFailModeType));
            alibcNavResult.isSuccess = a(alibcNavResult.resultCode);
        } catch (Exception e) {
            AlibcLogger.e("AliTradeApplinkServiceImp", "Applink調用jumpDetail失败：" + e.getMessage());
            alibcNavResult.isSuccess = false;
        }
        a(map, alibcNavResult.isSuccess);
        return alibcNavResult;
    }

    public void setTTID(String str) {
        ALPTBLinkPartnerSDK.setTTID(str);
    }

    public void turnOffDebug() {
        ALPTBLinkPartnerSDK.setDebugStatus(false, false);
    }

    public void turnOnDebug() {
        ALPTBLinkPartnerSDK.setDebugStatus(true, true);
    }
}
