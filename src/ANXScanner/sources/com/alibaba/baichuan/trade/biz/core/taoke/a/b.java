package com.alibaba.baichuan.trade.biz.core.taoke.a;

import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alimama.tunion.trade.base.ITUnionCookie;

public class b implements ITUnionCookie {
    public String getCookie(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return CookieManager.getInstance().getCookie(str);
        } catch (Throwable th) {
            AlibcLogger.e("getCookie", "", th);
            return "";
        }
    }

    public void setCookie(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                CookieManager instance = CookieManager.getInstance();
                instance.setAcceptCookie(true);
                instance.setCookie(str, str2);
                if (VERSION.SDK_INT >= 21) {
                    instance.flush();
                    return;
                }
                CookieSyncManager.createInstance(AlibcTradeCommon.context);
                CookieSyncManager.getInstance().sync();
            } catch (Throwable th) {
                AlibcLogger.e("setCookie", "", th);
            }
        }
    }
}
