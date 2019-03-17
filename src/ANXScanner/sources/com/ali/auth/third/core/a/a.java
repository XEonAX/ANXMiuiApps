package com.ali.auth.third.core.a;

import android.os.Build.VERSION;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.ali.auth.third.core.WebViewProxy;
import com.ali.auth.third.core.context.KernelContext;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;

public class a implements WebViewProxy {
    private static volatile a a = null;

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public void flush() {
        try {
            if (VERSION.SDK_INT >= 21) {
                CookieManager.getInstance().flush();
            } else {
                CookieSyncManager.createInstance(KernelContext.getApplicationContext()).sync();
            }
        } catch (Throwable th) {
        }
    }

    public String getCookie(String str) {
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        return instance.getCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN);
    }

    public void removeAllCookie() {
        CookieManager.getInstance().removeAllCookie();
    }

    public void removeExpiredCookie() {
        CookieManager.getInstance().removeExpiredCookie();
    }

    public void removeSessionCookie() {
        CookieManager.getInstance().removeSessionCookie();
    }

    public void setAcceptCookie(boolean z) {
        CookieManager.getInstance().setAcceptCookie(z);
    }

    public void setCookie(String str, String str2) {
        CookieManager.getInstance().setCookie(str, str2);
    }
}
