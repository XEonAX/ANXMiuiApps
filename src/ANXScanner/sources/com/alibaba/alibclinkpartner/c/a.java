package com.alibaba.alibclinkpartner.c;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.alibaba.alibclinkpartner.a.d;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.e.a.g;
import com.alibaba.alibclinkpartner.d.e.a.n;
import com.alibaba.alibclinkpartner.d.e.a.o;
import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.g.f;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.j;
import com.alibaba.alibclinkpartner.j.l;
import com.alibaba.alibclinkpartner.param.ALPJumpFailedStrategy;
import com.alibaba.alibclinkpartner.param.auth.ALPAuthParam;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import com.alibaba.wireless.security.SecExceptionCode;
import com.taobao.applink.util.TBAppLinkUtil;

public class a {
    private static int a(Context context, b bVar) {
        return f.a(context, bVar);
    }

    public static int a(Context context, com.alibaba.alibclinkpartner.param.a aVar, ALPJumpFailedStrategy aLPJumpFailedStrategy, boolean z) {
        if (!a.checkInit()) {
            return SecExceptionCode.SEC_ERROR_STA_ENC;
        }
        if (context == null || aVar == null) {
            e.a("ALPDistribution", "invoke", "activity / jumpParam is null");
            if (aVar == null || !(aVar instanceof ALPTBJumpParam)) {
                String str = "nav";
                String str2 = (aVar == null || aVar.linkKey == null) ? "taobao" : aVar.linkKey;
                c.a(new n(str, str2, "312"));
            } else {
                c.a(new n(((ALPTBJumpParam) aVar).module, aVar.linkKey, "312"));
            }
            return SecExceptionCode.SEC_ERROR_STA_LOW_VERSION_DATA_FILE;
        } else if (aVar.checkParam()) {
            if (aLPJumpFailedStrategy == null) {
                aLPJumpFailedStrategy = new ALPJumpFailedStrategy();
            }
            e.b("ALPDistribution", "invoke", "传入的参数为:activity = " + context + "\n jumpParam=" + aVar + "\n jumpFailedMode=" + aLPJumpFailedStrategy.mode + "\n jumpFailWebview=" + aLPJumpFailedStrategy.webView);
            b bVar = new b(b.e());
            a(context, aVar, bVar, aLPJumpFailedStrategy.webView);
            e.b("ALPDistribution", "invoke", "设置参数后:ALPDistributionContext = " + bVar);
            com.alibaba.alibclinkpartner.h.b a = a(bVar, aVar, aLPJumpFailedStrategy.mode, z, aVar.isCallbackMode());
            if (a != null && (a.b == 3 || a.b == 1)) {
                bVar.n = true;
            }
            e.b("ALPDistribution", "invoke", "获取打开策略:strategyInfo = " + a);
            d a2 = com.alibaba.alibclinkpartner.a.c.a(aVar, a.b, a.a).a(bVar);
            if (a2 == null || a2.a()) {
                e.a("ALPDistribution", "invoke", "openInfo is null / open error");
                return a2 == null ? SecExceptionCode.SEC_ERROR_STA_DECRYPT_MISMATCH_KEY_DATA : a2.g;
            } else {
                e.b("ALPDistribution", "invoke", "获取的打开信息为: openInfo = " + a2);
                a(bVar, a2);
                return a(context, bVar);
            }
        } else {
            e.a("ALPDistribution", "invoke", "jumpParam.checkParam fail");
            if (aVar instanceof ALPTBJumpParam) {
                c.a(new n(((ALPTBJumpParam) aVar).module, aVar.linkKey, "302"));
            } else {
                c.a(new n("nav", aVar.linkKey, "302"));
            }
            return 302;
        }
    }

    public static int a(Context context, ALPAuthParam aLPAuthParam) {
        if (!a.checkInit()) {
            return SecExceptionCode.SEC_ERROR_STA_ENC;
        }
        String str;
        if (context == null || aLPAuthParam == null) {
            String str2 = com.alipay.sdk.app.statistic.c.d;
            str = (aLPAuthParam == null || aLPAuthParam.linkKey == null) ? "taobao" : aLPAuthParam.linkKey;
            c.a(new n(str2, str, "314"));
            return 314;
        } else if (aLPAuthParam.checkParam()) {
            if (!(context == null || aLPAuthParam == null || aLPAuthParam.getExParams() == null || aLPAuthParam.getExParams().containsKey("sourceVC"))) {
                str = j.c(context);
                if (str != null) {
                    aLPAuthParam.getExParams().put("sourceVC", str);
                }
            }
            b bVar = new b(b.e());
            bVar.d = aLPAuthParam.getModule();
            bVar.e = aLPAuthParam.getAPIType();
            bVar.g = aLPAuthParam.linkKey;
            bVar.l = (String) aLPAuthParam.getExParams().get("sourceVC");
            bVar.b = l.a(aLPAuthParam, "tbopen://m.taobao.com/getway/oauth?", b.b.a().f);
            bVar.c = 1;
            com.alibaba.alibclinkpartner.d.a.a aVar = new com.alibaba.alibclinkpartner.d.a.a();
            aVar.b.add(TBAppLinkUtil.ACTION_CUSTOM);
            aVar.a = "tbopen://m.taobao.com/getway/oauth?";
            if (j.a(b.e(), aVar)) {
                bVar.n = true;
                return a(context, bVar);
            }
            a(bVar.g);
            a(bVar);
            return 303;
        } else {
            c.a(new n(com.alipay.sdk.app.statistic.c.d, aLPAuthParam.linkKey, "315"));
            return 315;
        }
    }

    private static com.alibaba.alibclinkpartner.h.b a(b bVar, com.alibaba.alibclinkpartner.param.a aVar, int i, boolean z, boolean z2) {
        return com.alibaba.alibclinkpartner.h.c.a(bVar, aVar.linkKey, b.b.a().b, i, aVar.canDegrade(), z, z2);
    }

    private static void a(Context context, com.alibaba.alibclinkpartner.param.a aVar, b bVar, WebView webView) {
        if (bVar != null && aVar != null) {
            bVar.a = webView;
            bVar.d = aVar.getModule() == null ? "" : aVar.getModule();
            bVar.e = aVar.getAPIType() == null ? "" : aVar.getAPIType();
            String trim = (aVar.linkKey == null || TextUtils.isEmpty(aVar.linkKey.trim())) ? "taobao" : aVar.linkKey.trim();
            bVar.g = trim;
            bVar.k = aVar.canDegrade();
            if (context != null && aVar != null && (aVar instanceof ALPTBJumpParam)) {
                ALPTBJumpParam aLPTBJumpParam = (ALPTBJumpParam) aVar;
                if (!aLPTBJumpParam.getExtraParams().containsKey("sourceVC")) {
                    trim = j.c(context);
                    if (trim != null) {
                        aLPTBJumpParam.getExtraParams().put("sourceVC", trim);
                    }
                }
                bVar.l = (String) aLPTBJumpParam.getExtraParams().get("sourceVC");
            }
        }
    }

    private static void a(b bVar) {
        com.alibaba.alibclinkpartner.d.e.a.d gVar = new g();
        gVar.e = bVar.e;
        gVar.a = b.a().b;
        gVar.b = bVar.g;
        gVar.c = false;
        gVar.d = "none";
        c.a(gVar);
    }

    private static void a(b bVar, d dVar) {
        bVar.b = dVar.b;
        bVar.i = dVar.f;
        bVar.c = dVar.a;
        bVar.j = dVar.e;
        bVar.o = dVar.c;
        bVar.f = dVar.d;
    }

    private static void a(String str) {
        if (str != null) {
            c.a(new o(str));
        }
    }
}
