package com.ali.auth.third.core.cookies;

import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.FileUtils;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;
import java.util.ArrayList;
import java.util.List;

public class CookieManagerWrapper {
    public static final CookieManagerWrapper INSTANCE = new CookieManagerWrapper();
    private static final String a = CookieManagerWrapper.class.getSimpleName();
    private String[] b;

    private CookieManagerWrapper() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00df  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void clearCookies() {
        SDKLogger.e("clearCookies", "into clearCookies ");
        CookieSyncManager.createInstance(KernelContext.getApplicationContext());
        SDKLogger.e("clearCookies", "into clearCookies removeSessionCookie finish");
        if (this.b == null) {
            String readFileData = FileUtils.readFileData(KernelContext.getApplicationContext(), Constants.COOKIES);
            if (!TextUtils.isEmpty(readFileData)) {
                SDKLogger.d(a, "get cookie from storage:" + readFileData);
                this.b = TextUtils.split(readFileData, Constants.COOKIE_SPLIT);
            }
        }
        SDKLogger.e("clearCookies", "into clearCookies readFileData finish");
        if (this.b != null) {
            Object obj;
            c parseCookie;
            List<c> arrayList = new ArrayList();
            for (Object obj2 : this.b) {
                if (!TextUtils.isEmpty(obj2)) {
                    try {
                        parseCookie = LoginCookieUtils.parseCookie(obj2);
                        if (!"munb".equals(parseCookie.c)) {
                            String httpDomin = LoginCookieUtils.getHttpDomin(parseCookie);
                            LoginCookieUtils.expiresCookies(parseCookie);
                            a.a().setCookie(httpDomin, parseCookie.toString());
                            if (TextUtils.equals(parseCookie.a, TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN)) {
                                arrayList.add(parseCookie);
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
            String[] strArr;
            try {
                String[] strArr2;
                if (CredentialManager.INSTANCE.getInternalSession().otherInfo != null) {
                    obj2 = CredentialManager.INSTANCE.getInternalSession().otherInfo.get("ssoDomainList");
                    if (obj2 != null && (obj2 instanceof ArrayList)) {
                        strArr2 = (String[]) ((ArrayList) obj2).toArray(new String[0]);
                        strArr = strArr2;
                        if (!(strArr == null || strArr.length <= 0 || arrayList.isEmpty())) {
                            for (c parseCookie2 : arrayList) {
                                String str = parseCookie2.a;
                                for (String str2 : strArr) {
                                    if (!"munb".equals(parseCookie2.c)) {
                                        parseCookie2.a = str2;
                                        String str22 = LoginCookieUtils.getHttpDomin(parseCookie2);
                                        LoginCookieUtils.expiresCookies(parseCookie2);
                                        a.a().setCookie(str22, parseCookie2.toString());
                                    }
                                }
                                parseCookie2.a = str;
                            }
                        }
                        SDKLogger.d(a, "injectCookie cookies is null");
                        this.b = null;
                        FileUtils.writeFileData(KernelContext.getApplicationContext(), Constants.COOKIES, "");
                    }
                }
                strArr2 = null;
                strArr = strArr2;
            } catch (Exception e) {
                e.printStackTrace();
                strArr = null;
            }
            for (c parseCookie22 : arrayList) {
            }
            SDKLogger.d(a, "injectCookie cookies is null");
            this.b = null;
            FileUtils.writeFileData(KernelContext.getApplicationContext(), Constants.COOKIES, "");
        }
        SDKLogger.e("clearCookies", "into clearCookies reset cookie finish");
        a.a().removeExpiredCookie();
        SDKLogger.e("clearCookies", "into clearCookies removeExpiredCookie finish");
        a.a().flush();
        SDKLogger.e("clearCookies", "into clearCookies  finish");
    }

    public synchronized void injectCookie(String[] strArr, String[] strArr2) {
        this.b = strArr;
        if (KernelContext.context != null) {
            if (strArr != null) {
                c parseCookie;
                String cVar;
                SDKLogger.d(a, "injectCookie cookies != null");
                List<c> arrayList = new ArrayList();
                for (Object obj : strArr) {
                    if (!TextUtils.isEmpty(obj)) {
                        try {
                            parseCookie = LoginCookieUtils.parseCookie(obj);
                            String httpDomin = LoginCookieUtils.getHttpDomin(parseCookie);
                            cVar = parseCookie.toString();
                            SDKLogger.d(a, "add cookie: " + cVar);
                            a.a().setCookie(httpDomin, cVar);
                            if (TextUtils.equals(parseCookie.a, TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN)) {
                                arrayList.add(parseCookie);
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }
                if (strArr2 != null) {
                    if (strArr2.length > 0 && !arrayList.isEmpty()) {
                        for (c parseCookie2 : arrayList) {
                            String str = parseCookie2.a;
                            for (String cVar2 : strArr2) {
                                parseCookie2.a = cVar2;
                                String httpDomin2 = LoginCookieUtils.getHttpDomin(parseCookie2);
                                String cVar3 = parseCookie2.toString();
                                SDKLogger.d(a, "add cookies to domain:" + cVar2 + ", cookie = " + cVar3);
                                a.a().setCookie(httpDomin2, cVar3);
                            }
                            parseCookie2.a = str;
                        }
                    }
                }
                a.a().flush();
                if (this.b != null) {
                    FileUtils.writeFileData(KernelContext.context, Constants.COOKIES, TextUtils.join(Constants.COOKIE_SPLIT, strArr));
                }
            } else {
                clearCookies();
            }
        }
    }

    public synchronized void refreshCookie() {
        if (this.b == null) {
            try {
                String readFileData = FileUtils.readFileData(KernelContext.getApplicationContext(), Constants.COOKIES);
                if (!TextUtils.isEmpty(readFileData)) {
                    SDKLogger.d(a, "get cookie from storage:" + readFileData);
                    this.b = TextUtils.split(readFileData, Constants.COOKIE_SPLIT);
                }
            } catch (Throwable th) {
            }
        }
        if (this.b != null) {
            injectCookie(this.b, null);
        }
    }
}
