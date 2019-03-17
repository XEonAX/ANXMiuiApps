package com.alibaba.alibclinkpartner;

import android.app.Application;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.constants.open.ALPLinkKeyType;
import com.alibaba.alibclinkpartner.d.a.d;
import com.alibaba.alibclinkpartner.d.b.b;
import com.alibaba.alibclinkpartner.d.d.c;
import com.alibaba.alibclinkpartner.d.e.a.j;
import com.alibaba.alibclinkpartner.d.e.a.k;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.plugin.ALPBasePlugin;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.wireless.security.SecExceptionCode;
import com.taobao.applink.util.TBAppLinkUtil;

class a {
    a() {
    }

    private static void a() {
        b.a = new c();
        b.c = new com.alibaba.alibclinkpartner.f.a();
        b.d = new com.alibaba.alibclinkpartner.d.c.a();
        b.e = new b();
        b.f = new com.alibaba.alibclinkpartner.plugin.a();
        b.b = new d();
    }

    private static void a(Application application) {
        com.alibaba.alibclinkpartner.d.e.c.a(new k(application.getPackageName()));
    }

    private static void b() {
        Object b = b.e.b("checkInstallAppExpiredTime", null);
        e.b("ALPLinkPartnerSDK", "sendCheckInstallPoint", "cheinstallapptime is " + b);
        if (System.currentTimeMillis() - (TextUtils.isEmpty(b) ? 0 : Long.valueOf(b).longValue()) < 0) {
            e.b("ALPLinkPartnerSDK", "sendCheckInstallPoint", "currentTimeMillis = " + System.currentTimeMillis() + ",还没到过期时间");
            return;
        }
        e.b("ALPLinkPartnerSDK", "sendCheckInstallPoint", "currentTimeMillis = " + System.currentTimeMillis() + ",超过过期时间,打点");
        b.e.a("checkInstallAppExpiredTime", String.valueOf(com.alibaba.alibclinkpartner.j.k.a()));
        com.alibaba.alibclinkpartner.d.e.a.d eVar = new com.alibaba.alibclinkpartner.d.e.a.e();
        eVar.a = isSupportLinkKey("taobao");
        eVar.b = isSupportLinkKey(ALPLinkKeyType.TMALL);
        eVar.c = b.a().d;
        com.alibaba.alibclinkpartner.d.e.c.a(eVar);
    }

    private static void b(Application application) {
        com.alibaba.alibclinkpartner.d.e.c.a(new j(application));
    }

    public static boolean checkInit() {
        return b.b();
    }

    public static synchronized int init(Application application) {
        int init;
        synchronized (a.class) {
            init = init(application, null);
        }
        return init;
    }

    public static synchronized int init(Application application, String str) {
        int i = 200;
        synchronized (a.class) {
            if (application == null) {
                e.a("ALPLinkPartnerSDK", InitMonitorPoint.MONITOR_POINT, "application/openParam is null");
                i = 301;
            } else if (!b.b()) {
                b.a(application);
                b.a(new com.alibaba.alibclinkpartner.param.b(application, str));
                a();
                b.a(true);
                if ((str == null || TextUtils.isEmpty(str.trim())) && (TextUtils.isEmpty(b.a().b) || b.a().b.equals("0000000"))) {
                    a(application);
                }
                b();
                b(application);
            }
        }
        return i;
    }

    public static boolean isSupportLinkKey(String str) {
        if (b.b() && str != null) {
            if (str.equals(TBAppLinkUtil.TAOBAO_SCHEME)) {
                str = "taobao";
            } else if (str.equals(TBAppLinkUtil.TMALL_SCHEME)) {
                str = ALPLinkKeyType.TMALL;
            }
            if (com.alibaba.alibclinkpartner.j.j.a(b.e(), str)) {
                return true;
            }
        }
        return false;
    }

    public static int registerPlugin(ALPBasePlugin aLPBasePlugin) {
        if (!b.b()) {
            return SecExceptionCode.SEC_ERROR_STA_ENC;
        }
        if (aLPBasePlugin == null || aLPBasePlugin.pluginKey == null) {
            return 313;
        }
        b.f.a(aLPBasePlugin);
        return 202;
    }

    public static int setAppkey(String str) {
        if (!b.b()) {
            return SecExceptionCode.SEC_ERROR_STA_ENC;
        }
        if (TextUtils.isEmpty(str)) {
            return 313;
        }
        b.a().b = str;
        return 202;
    }

    public static void setOpenType(int i) {
        b.b(i);
    }

    public static void setSupportDeepLink(boolean z) {
        b.c(z);
    }

    public static int unRegisterPlugin(ALPBasePlugin aLPBasePlugin) {
        if (!b.b()) {
            return SecExceptionCode.SEC_ERROR_STA_ENC;
        }
        if (aLPBasePlugin == null || aLPBasePlugin.pluginKey == null) {
            return 313;
        }
        b.f.b(aLPBasePlugin);
        return 202;
    }
}
