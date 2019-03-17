package com.alibaba.baichuan.trade.common.adapter.security;

import com.alibaba.baichuan.trade.common.AlibcMiniTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

public class AlibcSecurityGuard {
    public static final int ERR_CODE = 1;
    public static final String ERR_MSG = "安全初始化失败";
    private static AlibcSecurityGuard a;
    private static a b;
    private boolean c;

    public class a {
        public int a;
        public int b;
        public String c;

        public a() {
            this.a = 0;
        }

        public a(int i) {
            this.a = 0;
            this.a = i;
        }

        public a(int i, String str) {
            this.a = 0;
            this.a = 1;
            this.b = i;
            this.c = str;
        }

        public String toString() {
            return "result = " + this.a + " errorCode = " + this.b + " errorMessage = " + this.c;
        }
    }

    private AlibcSecurityGuard() {
        if (a()) {
            b = new c();
        } else {
            b = new b();
        }
    }

    private boolean a() {
        try {
            if (Class.forName("com.alibaba.wireless.security.open.SecurityGuardManager") != null) {
                return true;
            }
        } catch (Throwable e) {
            AlibcLogger.e("AlibcSecurityGuard", "no SecurityGuardManager", e);
        }
        return false;
    }

    public static synchronized AlibcSecurityGuard getInstance() {
        AlibcSecurityGuard alibcSecurityGuard;
        synchronized (AlibcSecurityGuard.class) {
            if (a == null) {
                a = new AlibcSecurityGuard();
            }
            alibcSecurityGuard = a;
        }
        return alibcSecurityGuard;
    }

    public Long analyzeItemId(String str) {
        return this.c ? b.c(str) : Long.valueOf(0);
    }

    public String dynamicDecrypt(String str) {
        return this.c ? b.b(str) : "";
    }

    public String dynamicEncrypt(String str) {
        return this.c ? b.a(str) : "";
    }

    public String getAppKey() {
        return this.c ? b.b() : "";
    }

    public synchronized a init() {
        a aVar;
        AlibcLogger.d("AlibcSecurityGuard", "security init satrt");
        if (this.c) {
            AlibcLogger.e("AlibcSecurityGuard", "SecurityGuard init already");
            aVar = new a(2);
        } else if (AlibcMiniTradeCommon.checkCommon()) {
            if (b == null || !b.a()) {
                aVar = new a(1, "SecurityGuard init error");
            } else {
                this.c = true;
                aVar = new a();
            }
            AlibcLogger.e("AlibcSecurityGuard", "SecurityGuard init = " + aVar.toString() + "/n security init end");
        } else {
            AlibcLogger.e("AlibcSecurityGuard", "SecurityGuard init fail");
            aVar = new a(1);
        }
        return aVar;
    }

    public boolean isInitialized() {
        return this.c;
    }
}
