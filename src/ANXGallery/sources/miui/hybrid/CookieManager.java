package miui.hybrid;

import com.miui.internal.hybrid.provider.WebViewFactory;
import miui.util.AppConstants;

public abstract class CookieManager {
    public static CookieManager getInstance() {
        return WebViewFactory.getProvider(AppConstants.getCurrentApplication()).getCookieManager();
    }

    public void setAcceptCookie(boolean z) {
    }

    public boolean acceptCookie() {
        return false;
    }

    public void setCookie(String str, String str2) {
    }

    public String getCookie(String str) {
        return null;
    }

    public void removeSessionCookie() {
    }

    public void removeAllCookie() {
    }

    public boolean hasCookies() {
        return false;
    }

    public void removeExpiredCookie() {
    }

    public static boolean allowFileSchemeCookies() {
        return getInstance().allowFileSchemeCookiesImpl();
    }

    protected boolean allowFileSchemeCookiesImpl() {
        return false;
    }

    public static void setAcceptFileSchemeCookies(boolean z) {
        getInstance().setAcceptFileSchemeCookiesImpl(z);
    }

    protected void setAcceptFileSchemeCookiesImpl(boolean z) {
    }
}
