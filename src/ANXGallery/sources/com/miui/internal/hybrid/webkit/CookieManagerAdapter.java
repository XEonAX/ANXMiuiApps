package com.miui.internal.hybrid.webkit;

import miui.hybrid.CookieManager;

public class CookieManagerAdapter extends CookieManager {
    private android.webkit.CookieManager gh;

    public CookieManagerAdapter(android.webkit.CookieManager cookieManager) {
        this.gh = cookieManager;
    }

    public void setAcceptCookie(boolean z) {
        this.gh.setAcceptCookie(z);
    }

    public boolean acceptCookie() {
        return android.webkit.CookieManager.getInstance().acceptCookie();
    }

    public void setCookie(String str, String str2) {
        this.gh.setCookie(str, str2);
    }

    public String getCookie(String str) {
        return this.gh.getCookie(str);
    }

    public void removeSessionCookie() {
        this.gh.removeSessionCookie();
    }

    public void removeAllCookie() {
        this.gh.removeAllCookie();
    }

    public boolean hasCookies() {
        return this.gh.hasCookies();
    }

    public void removeExpiredCookie() {
        this.gh.removeExpiredCookie();
    }

    protected boolean allowFileSchemeCookiesImpl() {
        return android.webkit.CookieManager.allowFileSchemeCookies();
    }

    protected void setAcceptFileSchemeCookiesImpl(boolean z) {
        android.webkit.CookieManager.setAcceptFileSchemeCookies(z);
    }
}
