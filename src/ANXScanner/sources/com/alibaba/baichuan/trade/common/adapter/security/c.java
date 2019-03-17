package com.alibaba.baichuan.trade.common.adapter.security;

import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.dynamicdataencrypt.IDynamicDataEncryptComponent;
import com.alibaba.wireless.security.open.opensdk.IOpenSDKComponent;

public class c extends a {
    private SecurityGuardManager a;
    private String b;

    private Long a(String str, byte[] bArr) {
        if (this.a == null) {
            return null;
        }
        Long l;
        IOpenSDKComponent openSDKComp = this.a.getOpenSDKComp();
        if (openSDKComp == null) {
            l = null;
        } else {
            try {
                l = openSDKComp.analyzeOpenId(str, "AppIDKey", "OpenIDSaltKey", bArr, null);
            } catch (Throwable e) {
                AlibcLogger.e(AppMonitor.TAG, "analyzeOpenId ", e);
                return null;
            }
        }
        return l;
    }

    public String a(String str) {
        if (this.a == null) {
            return str;
        }
        IDynamicDataEncryptComponent dynamicDataEncryptComp = this.a.getDynamicDataEncryptComp();
        if (dynamicDataEncryptComp == null) {
            return str;
        }
        try {
            return dynamicDataEncryptComp.dynamicEncrypt(str);
        } catch (Throwable e) {
            AlibcLogger.e(AppMonitor.TAG, "dynamicEncrypt", e);
            return str;
        }
    }

    public synchronized boolean a() {
        boolean z = false;
        synchronized (this) {
            AlibcLogger.d(AppMonitor.TAG, "security init satrt");
            try {
                int initialize = SecurityGuardManager.getInitializer().initialize(AlibcTradeCommon.context);
                this.a = SecurityGuardManager.getInstance(AlibcTradeCommon.context);
                this.b = this.a.getStaticDataStoreComp().getAppKeyByIndex(0, null);
                if (initialize == 0) {
                    if (this.b != null) {
                        AlibcLogger.e(AppMonitor.TAG, "SecurityGuard init = success /n security init end");
                        z = true;
                    }
                }
                AlibcLogger.e(AppMonitor.TAG, "SecurityGuard init = fail /n security init end");
            } catch (Throwable e) {
                AlibcLogger.e(AppMonitor.TAG, "AlibcSecurity init ", e);
            }
        }
        return z;
    }

    public String b() {
        return this.b;
    }

    public String b(String str) {
        if (this.a == null) {
            return str;
        }
        IDynamicDataEncryptComponent dynamicDataEncryptComp = this.a.getDynamicDataEncryptComp();
        if (dynamicDataEncryptComp == null) {
            return str;
        }
        try {
            return dynamicDataEncryptComp.dynamicDecrypt(str);
        } catch (Throwable e) {
            AlibcLogger.e(AppMonitor.TAG, "dynamicDecrypt ", e);
            return str;
        }
    }

    public Long c(String str) {
        return a(str, IOpenSDKComponent.OPEN_BIZ_IID);
    }
}
