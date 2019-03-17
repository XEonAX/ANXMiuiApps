package com.alibaba.baichuan.trade.biz.core.taoke;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.a.a;
import com.alibaba.baichuan.trade.biz.core.taoke.a.b;
import com.alibaba.baichuan.trade.biz.core.taoke.a.c;
import com.alibaba.baichuan.trade.biz.core.taoke.a.e;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewProxy;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.abtest.TUnionABTestValue;
import com.alimama.tunion.trade.base.ITUnionCommon;
import com.alimama.tunion.trade.base.ITUnionCookie;
import com.alimama.tunion.trade.base.ITUnionNetwork;
import com.alimama.tunion.trade.base.ITUnionUT;
import com.alimama.tunion.trade.convert.TUnionJumpType;
import com.alimama.tunion.trade.convert.TUnionMediaParams;

public class AlibcAidCompoment {
    public static final int ABTEST_H5 = 0;
    public static final int ABTEST_INVALID = 2;
    public static final int ABTEST_NATIVE = 1;
    private static c a = null;

    public static void genTaokeUrl(boolean z, String str, String str2, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        if (alibcTradeTaokeParam != null && !TextUtils.isEmpty(str2)) {
            registerGlobalAdzoneId(alibcTradeTaokeParam.adzoneid);
            TUnionJumpType tUnionJumpType = z ? TUnionJumpType.NATIVE : TUnionJumpType.H5;
            TUnionMediaParams tUnionMediaParams = new TUnionMediaParams();
            tUnionMediaParams.setAdzoneId(alibcTradeTaokeParam.adzoneid);
            tUnionMediaParams.setSubpid(alibcTradeTaokeParam.subPid);
            tUnionMediaParams.setUnid(alibcTradeTaokeParam.unionId);
            tUnionMediaParams.setExtra(alibcTradeTaokeParam.extraParams);
            boolean isTUnionMtopDegrade = AlibcConfigService.getInstance().getIsTUnionMtopDegrade();
            a.a = !isTUnionMtopDegrade;
            AlibcLogger.d("TUnion", "genTaokeUrl : orangeUrl = " + str2 + " 【jumpType=" + tUnionJumpType + "】");
            TUnionTradeSDK.getInstance().convertURL(tUnionJumpType, null, str2, tUnionMediaParams, new a(alibcTaokeTraceCallback));
        }
    }

    public static int getABTestResult() {
        TUnionABTestValue isJumpServiceOn = TUnionTradeSDK.getInstance().getABTestService().isJumpServiceOn();
        return isJumpServiceOn == null ? 2 : isJumpServiceOn.equals(TUnionABTestValue.YES) ? 1 : isJumpServiceOn.equals(TUnionABTestValue.NO) ? 0 : 2;
    }

    public static void init() {
        a = new c();
        TUnionTradeSDK.init(AlibcTradeCommon.context);
        TUnionTradeSDK.getInstance().register(ITUnionUT.class, new e());
        TUnionTradeSDK.getInstance().register(ITUnionNetwork.class, a);
        TUnionTradeSDK.getInstance().register(ITUnionCookie.class, new b());
        AlibcWebViewProxy.addWebviewUA(TUnionTradeSDK.getInstance().getUA());
    }

    public static void registerGlobalAdzoneId(String str) {
        TUnionTradeSDK.getInstance().register(ITUnionCommon.class, new a(AlibcTradeCommon.getUtdid(), str, AlibcTradeCommon.getAppKey()));
    }

    public static void setEnabaleABTest(boolean z) {
        TUnionTradeSDK.getInstance().getABTestService().enable(z);
    }
}
