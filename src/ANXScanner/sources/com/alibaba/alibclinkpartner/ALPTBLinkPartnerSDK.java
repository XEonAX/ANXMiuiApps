package com.alibaba.alibclinkpartner;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.c.a;
import com.alibaba.alibclinkpartner.constants.open.ALPLinkKeyType;
import com.alibaba.alibclinkpartner.param.ALPJumpFailedStrategy;
import com.alibaba.alibclinkpartner.param.auth.ALPAuthParam;
import com.alibaba.alibclinkpartner.param.b;
import com.alibaba.alibclinkpartner.param.jump.ALPDetailParam;
import com.alibaba.alibclinkpartner.param.jump.ALPShopParam;
import com.alibaba.alibclinkpartner.param.jump.ALPURIParam;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import com.taobao.applink.util.TBAppLinkUtil;

public class ALPTBLinkPartnerSDK extends a {
    public static volatile boolean isSupportJumpFailedOpenTaobao = false;

    private static void a(ALPTBJumpParam aLPTBJumpParam) {
        if (aLPTBJumpParam != null && !TextUtils.isEmpty(aLPTBJumpParam.linkKey)) {
            if (aLPTBJumpParam.linkKey.equals(TBAppLinkUtil.TAOBAO_SCHEME)) {
                aLPTBJumpParam.linkKey = "taobao";
            } else if (aLPTBJumpParam.linkKey.equals(TBAppLinkUtil.TMALL_SCHEME)) {
                aLPTBJumpParam.linkKey = ALPLinkKeyType.TMALL;
            }
        }
    }

    public static int doAuth(Context context, ALPAuthParam aLPAuthParam) {
        return a.a(context, aLPAuthParam);
    }

    public static int jumpDetail(Context context, ALPDetailParam aLPDetailParam, ALPJumpFailedStrategy aLPJumpFailedStrategy) {
        a(aLPDetailParam);
        return a.a(context, (com.alibaba.alibclinkpartner.param.a) aLPDetailParam, aLPJumpFailedStrategy, true);
    }

    public static int jumpShop(Context context, ALPShopParam aLPShopParam, ALPJumpFailedStrategy aLPJumpFailedStrategy) {
        a(aLPShopParam);
        return a.a(context, (com.alibaba.alibclinkpartner.param.a) aLPShopParam, aLPJumpFailedStrategy, true);
    }

    public static int jumpURI(Context context, ALPURIParam aLPURIParam, ALPJumpFailedStrategy aLPJumpFailedStrategy) {
        a(aLPURIParam);
        return a.a(context, (com.alibaba.alibclinkpartner.param.a) aLPURIParam, aLPJumpFailedStrategy, true);
    }

    public static void setDebugStatus(boolean z, boolean z2) {
        if (z) {
            b.b(z);
            b.a(z2 ? 1 : 2);
            return;
        }
        b.b(z);
    }

    public static void setEnvironment(int i) {
        switch (i) {
            case 1:
                b.c(1);
                return;
            case 2:
                b.c(2);
                return;
            case 3:
                b.c(3);
                return;
            default:
                b.c(1);
                return;
        }
    }

    public static void setSupportJumpFailedOpenTaobao(boolean z) {
        isSupportJumpFailedOpenTaobao = z;
    }

    public static int setTTID(String str) {
        if (b.b()) {
            if (TextUtils.isEmpty(str)) {
                return 313;
            }
            b.a().c = str;
            return 202;
        } else if (TextUtils.isEmpty(str)) {
            return 313;
        } else {
            b.a = str;
            return 202;
        }
    }
}
