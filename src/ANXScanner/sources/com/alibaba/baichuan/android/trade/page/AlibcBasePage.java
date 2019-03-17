package com.alibaba.baichuan.android.trade.page;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.android.trade.c.b;
import com.alibaba.baichuan.android.trade.usertracker.monitor.a;
import com.alibaba.baichuan.android.trade.usertracker.monitor.c;
import com.alibaba.baichuan.trade.biz.applink.AlibcApplinkData;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcApplink;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcFailModeType;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcNavResult;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext.AlibcTradeCallback;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam.OpenType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTrackParam;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcAidCompoment;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.biz.urlroute.AlibcUriContext;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;

public class AlibcBasePage {
    public static final String DEFAULT_BACK_URL = "alisdk://";
    public static final String DEFAULT_CLIENT_TYPE = "taobao";
    public static final int NOT_REQUIRE = 0;
    public static final int REQUIRE_H5 = 1;
    public static final int REQUIRE_NATIVE = 2;
    protected String a;

    private void a(Activity activity, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, String str, AlibcTradeContext alibcTradeContext, a aVar, boolean z) {
        AlibcLogger.d("AlibcBasePage", "进入showUrl流程, 参数为 activity = " + activity + "\n webView = " + webView + "\n webViewClient = " + webViewClient + "\n webChromeClient = " + webChromeClient + "\n url = " + str + "\n tradeContext = " + alibcTradeContext + "\n isWebviewProxy = " + z);
        if (webView != null) {
            AlibcLogger.d("AlibcBasePage", "采用三方webview进行打开");
            com.alibaba.baichuan.android.trade.a.a.a(activity, str, webView, webViewClient, webChromeClient, alibcTradeContext, getAdditionalHttpHeaders(), aVar, z);
            return;
        }
        AlibcLogger.d("AlibcBasePage", "采用百川webview进行打开");
        com.alibaba.baichuan.android.trade.a.a.a(activity, str, alibcTradeContext, aVar);
    }

    private void a(Activity activity, a aVar, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeShowParam alibcTradeShowParam, Map<String, String> map, AlibcTradeContext alibcTradeContext) {
        AlibcLogger.d("AlibcBasePage", "当前流程需要进行淘客打点");
        if (aVar != null) {
            aVar.h();
        }
        taokeTraceAndGenUrl(alibcTradeTaokeParam, alibcTradeContext, new a(this, aVar, activity, webView, webViewClient, webChromeClient, map, alibcTradeContext, alibcTradeShowParam));
    }

    private void a(String str) {
        AlibcUserTradeHelper.sendUseabilityFailure(AlibcTrade.MONITOR_POINT_NATIVE, "applink调用失败,applink 错误码为 " + str, AlibcTrade.ERRCODE_PAGE_NATIVE + getUsabilityPageType() + AlibcTrade.ERRCODE_APPLINK_FAIL);
    }

    private boolean a(Activity activity, AlibcTradeContext alibcTradeContext, c cVar) {
        AlibcTradeTaokeParam alibcTradeTaokeParam = alibcTradeContext.taokeParam;
        AlibcTradeShowParam alibcTradeShowParam = alibcTradeContext.showParam;
        String clientType = alibcTradeShowParam.getClientType();
        if (TextUtils.isEmpty(clientType)) {
            clientType = "taobao";
        }
        if (!a.isSupportLinkKey(clientType)) {
            return false;
        }
        if (!(alibcTradeTaokeParam == null || TextUtils.isEmpty(alibcTradeTaokeParam.adzoneid))) {
            AlibcAidCompoment.genTaokeUrl(true, clientType, genOpenUrl(), alibcTradeTaokeParam, new e(this, alibcTradeContext, alibcTradeShowParam, activity, clientType));
        }
        return true;
    }

    private boolean a(Context context, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeTrackParam alibcTradeTrackParam, AlibcApplinkData alibcApplinkData, String str, String str2, AlibcFailModeType alibcFailModeType, c cVar, AlibcTradeCallback alibcTradeCallback) {
        if (context == null || alibcApplinkData == null || TextUtils.isEmpty(alibcApplinkData.param)) {
            AlibcLogger.e("AlibcBasePage", "context/applinkData/applinkData.param = null 流程结束");
            return false;
        }
        AlibcNavResult jumpDetail;
        if (cVar != null) {
            cVar.h();
        }
        switch (alibcApplinkData.type) {
            case 1:
                AlibcLogger.d("AlibcBasePage", "调用jumpDetail流程");
                jumpDetail = AlibcApplink.getInstance().jumpDetail(context, alibcApplinkData.param, alibcFailModeType, str, str2, alibcTradeTaokeParam, alibcTradeTrackParam);
                break;
            case 2:
                AlibcLogger.d("AlibcBasePage", "调用jumpShop流程");
                jumpDetail = AlibcApplink.getInstance().jumpShop(context, alibcApplinkData.param, alibcFailModeType, str, str2, alibcTradeTaokeParam, alibcTradeTrackParam);
                break;
            case 3:
                AlibcLogger.d("AlibcBasePage", "调用jumpUrl流程");
                jumpDetail = AlibcApplink.getInstance().jumpTBURI(context, alibcApplinkData.param, alibcFailModeType, str, str2, alibcTradeTaokeParam, alibcTradeTrackParam);
                break;
            default:
                jumpDetail = null;
                break;
        }
        if (jumpDetail == null || !jumpDetail.isSuccess) {
            AlibcLogger.e("AlibcBasePage", "跳转失败,具体错误信息 = " + jumpDetail);
            if (jumpDetail == null || !jumpDetail.isFailByNoApp()) {
                a(jumpDetail == null ? "-1" : String.valueOf(jumpDetail.resultCode));
            }
            if (alibcFailModeType == AlibcFailModeType.AlibcNativeFailModeNONE && alibcTradeCallback != null) {
                alibcTradeCallback.onFailure(jumpDetail == null ? 0 : jumpDetail.resultCode, "linkPartner跳转失败");
            }
        } else {
            AlibcLogger.d("AlibcBasePage", "跳转成功");
            if (cVar != null) {
                cVar.i();
            }
        }
        return jumpDetail != null ? jumpDetail.isSuccess : false;
    }

    private void b(Activity activity, a aVar, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeShowParam alibcTradeShowParam, Map<String, String> map, AlibcTradeContext alibcTradeContext) {
        AlibcLogger.d("AlibcBasePage", "当前流程需要进行淘客打点");
        if (aVar != null) {
            aVar.h();
        }
        AlibcAidCompoment.genTaokeUrl(alibcTradeShowParam.getOriginalOpenType() == OpenType.Native, null, genOpenUrl(), alibcTradeTaokeParam, new c(this, aVar, activity, webView, webViewClient, webChromeClient, map, alibcTradeContext, alibcTradeShowParam));
    }

    private boolean b(Activity activity, AlibcTradeContext alibcTradeContext, c cVar) {
        AlibcFailModeType alibcFailModeType;
        AlibcTradeShowParam alibcTradeShowParam = alibcTradeContext.showParam;
        String str = DEFAULT_BACK_URL;
        if (!(alibcTradeShowParam == null || TextUtils.isEmpty(alibcTradeShowParam.getBackUrl()))) {
            str = alibcTradeShowParam.getBackUrl();
        }
        AlibcLogger.d("AlibcBasePage", "native打开backUrl = " + str);
        String str2 = "taobao";
        if (alibcTradeShowParam != null) {
            str2 = alibcTradeShowParam.getClientType();
        }
        AlibcLogger.d("AlibcBasePage", "native打开clientType = " + str2);
        AlibcApplinkData applinkData = getApplinkData();
        AlibcTradeTaokeParam alibcTradeTaokeParam = alibcTradeContext == null ? null : alibcTradeContext.taokeParam;
        AlibcLogger.d("AlibcBasePage", "native打开taokeParam = " + alibcTradeTaokeParam);
        AlibcTradeTrackParam alibcTradeTrackParam = alibcTradeContext == null ? null : alibcTradeContext.urlParam;
        AlibcLogger.d("AlibcBasePage", "native打开trackParam = " + alibcTradeTrackParam);
        AlibcTradeCallback alibcTradeCallback = alibcTradeContext == null ? null : alibcTradeContext.callback;
        AlibcFailModeType alibcFailModeType2 = AlibcFailModeType.AlibcNativeFailModeJumpH5;
        if (!(alibcTradeContext == null || alibcTradeContext.showParam == null || alibcTradeContext.showParam.getNativeOpenFailedMode() == null)) {
            alibcFailModeType2 = alibcTradeContext.showParam.getNativeOpenFailedMode();
        }
        AlibcLogger.d("AlibcBasePage", "native打开流程传递下来的failMode = " + alibcFailModeType2);
        if (alibcFailModeType2 == null || alibcFailModeType2.equals(AlibcFailModeType.AlibcNativeFailModeJumpH5)) {
            AlibcLogger.d("AlibcBasePage", "failModeType = H5,需要转换成NONE");
            alibcFailModeType = AlibcFailModeType.AlibcNativeFailModeNONE;
        } else {
            alibcFailModeType = alibcFailModeType2;
        }
        if (cVar != null) {
            cVar.b();
        }
        return a((Context) activity, alibcTradeTaokeParam, alibcTradeTrackParam, applinkData, str, str2, alibcFailModeType, cVar, alibcTradeCallback);
    }

    public boolean checkParams() {
        return true;
    }

    public String genOpenUrl() {
        return !TextUtils.isEmpty(this.a) ? this.a : null;
    }

    public String getAddParamsUrl(String str, Map<String, String> map, a aVar) {
        AlibcLogger.d("AlibcBasePage", "首次进入加参，参数： urlParams = " + map + "  url=" + str);
        if (aVar != null) {
            aVar.j();
        }
        if (AlibcUriContext.isTradeAddParamURL(str)) {
            str = new AlibcUriContext(str).getAddParamsUrl(map);
            if (aVar != null) {
                aVar.k();
            }
        } else if (aVar != null) {
            aVar.k();
        }
        return str;
    }

    public String getAddParamsUrl(Map<String, String> map, a aVar) {
        return getAddParamsUrl(null, map, aVar);
    }

    public Map<String, String> getAdditionalHttpHeaders() {
        return null;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOW;
    }

    public AlibcApplinkData getApplinkData() {
        return new AlibcApplinkData(3, genOpenUrl());
    }

    public String getPerformancePageType() {
        return "url";
    }

    public String getUsabilityPageType() {
        return "07";
    }

    public boolean isBackWhenLoginFail() {
        return false;
    }

    public boolean isNativeOpen(AlibcTradeShowParam alibcTradeShowParam, AlibcTaokeParams alibcTaokeParams) {
        if (requireOpenType() != 0) {
            AlibcLogger.d("AlibcBasePage", "该页面不支持进行打开方式选择,只有一种方式");
            return 2 == requireOpenType();
        } else {
            int double11OpenType = AlibcConfigService.getInstance().getDouble11OpenType();
            if (double11OpenType == 1) {
                alibcTradeShowParam.setOpenType(OpenType.Native);
                AlibcLogger.d("AlibcBasePage", "双十一开关决定采用Native方式打开");
                return true;
            } else if (double11OpenType == 2) {
                alibcTradeShowParam.setOpenType(OpenType.H5);
                AlibcLogger.d("AlibcBasePage", "双十一开关决定采用H5方式打开");
                return false;
            } else {
                if (alibcTaokeParams != null && alibcTaokeParams.isAdZoneIdExist() && needTaoke(b.a(alibcTaokeParams))) {
                    if (AlibcConfigService.getInstance().getIsEnabaleABTest()) {
                        AlibcAidCompoment.setEnabaleABTest(true);
                        double11OpenType = AlibcAidCompoment.getABTestResult();
                        if (double11OpenType == 0) {
                            alibcTradeShowParam.setOpenType(OpenType.H5);
                            return false;
                        } else if (double11OpenType == 1) {
                            alibcTradeShowParam.setOpenType(OpenType.Native);
                            return true;
                        }
                    }
                    AlibcAidCompoment.setEnabaleABTest(false);
                }
                switch (alibcTradeShowParam.getOpenType()) {
                    case H5:
                        AlibcLogger.d("AlibcBasePage", "OpenType为H5,采用H5方式打开");
                        return false;
                    case Native:
                        AlibcLogger.d("AlibcBasePage", "OpenType为Native,采用Native方式打开");
                        return true;
                    default:
                        AlibcLogger.d("AlibcBasePage", "OpenType为Auto");
                        String genOpenUrl = genOpenUrl();
                        if (genOpenUrl != null) {
                            for (String matches : AlibcContext.nativeOpenPatterns) {
                                if (genOpenUrl.matches(matches)) {
                                    AlibcLogger.d("AlibcBasePage", "该Url默认采用native方式打开");
                                    if (!AlibcConfigService.getInstance().isForceH5()) {
                                        return true;
                                    }
                                    AlibcLogger.d("AlibcBasePage", "isForceH5开关被打开,采用H5方式打开");
                                }
                            }
                        }
                        return false;
                }
            }
        }
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return false;
    }

    public void openH5(Activity activity, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, AlibcTradeContext alibcTradeContext, a aVar) {
        if (activity == null) {
            AlibcLogger.e("AlibcBasePage", "activity = null 流程结束");
            return;
        }
        AlibcTradeTaokeParam alibcTradeTaokeParam = null;
        AlibcTradeShowParam alibcTradeShowParam = null;
        Map map = null;
        if (alibcTradeContext != null) {
            alibcTradeTaokeParam = alibcTradeContext.taokeParam;
            alibcTradeShowParam = alibcTradeContext.showParam;
            map = alibcTradeContext.urlParam;
        }
        AlibcLogger.d("AlibcBasePage", "当前流程的参数为,taokeParam = " + alibcTradeTaokeParam + "\n showParam = " + alibcTradeShowParam + "\n urlParams = " + map);
        if (aVar != null) {
            aVar.b();
        }
        if (!needTaoke(alibcTradeTaokeParam)) {
            a(activity, webView, webViewClient, webChromeClient, getAddParamsUrl(genOpenUrl(), map, aVar), alibcTradeContext, aVar, alibcTradeShowParam.isProxyWebview());
        } else if (alibcTradeTaokeParam.isAdZoneIdExist() && supportAid()) {
            b(activity, aVar, webView, webViewClient, webChromeClient, alibcTradeTaokeParam, alibcTradeShowParam, map, alibcTradeContext);
        } else {
            a(activity, aVar, webView, webViewClient, webChromeClient, alibcTradeTaokeParam, alibcTradeShowParam, map, alibcTradeContext);
        }
    }

    public boolean openNative(Activity activity, AlibcTradeContext alibcTradeContext, c cVar) {
        AlibcTradeTaokeParam alibcTradeTaokeParam = alibcTradeContext.taokeParam;
        return (alibcTradeTaokeParam != null && needTaoke(alibcTradeTaokeParam) && alibcTradeTaokeParam.isAdZoneIdExist()) ? a(activity, alibcTradeContext, cVar) : b(activity, alibcTradeContext, cVar);
    }

    public int requireOpenType() {
        return 0;
    }

    public boolean supportAid() {
        return true;
    }

    public void taokeTraceAndGenUrl(AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeContext alibcTradeContext, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
    }
}
