package com.taobao.applink.exception;

import com.taobao.applink.c.b;
import com.taobao.applink.util.TBAppLinkUtil;

public class TBAppLinkException extends Exception {
    public TBAppLinkException(a aVar) {
        super(getErrorMsg(aVar));
        b.a().a(TBAppLinkUtil.getCrashUrl(), String.valueOf(aVar.f), null);
    }

    public TBAppLinkException(String str) {
        super(str);
        b.a().a(TBAppLinkUtil.getCrashUrl(), str, null);
    }

    private static String getErrorMsg(a aVar) {
        return aVar == null ? "AppLinkSDK error!" : "AppLinkSDK error! code: " + aVar.f;
    }
}
