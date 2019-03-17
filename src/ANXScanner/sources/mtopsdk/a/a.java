package mtopsdk.a;

import android.content.Context;
import com.alibaba.wireless.security.jaq.SecurityVerification;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.SecurityGuardParamContext;
import com.alibaba.wireless.security.open.securesignature.SecureSignatureDefine;
import com.taobao.tao.remotebusiness.listener.c;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.global.SDKConfig;

/* compiled from: ISign */
public class a {
    private SecurityGuardManager a = null;
    private SDKConfig b = null;
    private SecurityVerification c;

    /* compiled from: ISign */
    public static class a {
        public int a;
        public String b = null;

        public a(int i, String str) {
            this.a = i;
        }
    }

    public void a(Context context, int i) {
        if (context == null) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[init]SecuritySignImpl init.context is null");
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.b = SDKConfig.getInstance();
            this.a = SecurityGuardManager.getInstance(context);
            String appKeyByIndex = this.a.getStaticDataStoreComp().getAppKeyByIndex(i, b());
            if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                TBSdkLog.d("mtopsdk.SecuritySignImpl", "[init]SecuritySignImpl ISign init.set GlobalAppKey=" + appKeyByIndex);
            }
            this.c = new SecurityVerification(context);
            if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                TBSdkLog.d("mtopsdk.SecuritySignImpl", "[init]SecuritySignImpl ISign init succeed.init time=" + (System.currentTimeMillis() - currentTimeMillis));
            }
        } catch (Throwable th) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[init]SecuritySignImpl init securityguard error.---" + th.toString());
        }
    }

    public String a(a aVar) {
        String str = null;
        if (aVar == null) {
            return str;
        }
        if (aVar.b != null) {
            return aVar.b;
        }
        try {
            return this.a.getStaticDataStoreComp().getAppKeyByIndex(aVar.a, b());
        } catch (Throwable e) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[getAppkey]getAppKeyByIndex error.", e);
            return str;
        }
    }

    public String a(HashMap<String, String> hashMap, String str) {
        String str2 = null;
        if (hashMap == null || str == null) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[getMtopApiWBSign] appkey or params is null.appkey=" + str);
            return str2;
        } else if (this.a == null) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[getMtopApiWBSign]SecurityGuardManager is null,please call ISign init()");
            return str2;
        } else {
            try {
                SecurityGuardParamContext securityGuardParamContext = new SecurityGuardParamContext();
                securityGuardParamContext.appKey = str;
                securityGuardParamContext.requestType = 7;
                Map b = c.b(hashMap, str);
                b.put(SecureSignatureDefine.OPEN_KEY_SIGN_ATLAS, "a");
                securityGuardParamContext.paramMap = b;
                return this.a.getSecureSignatureComp().signRequest(securityGuardParamContext, b());
            } catch (Throwable th) {
                TBSdkLog.e("mtopsdk.SecuritySignImpl", "[getMtopApiWBSign] ISecureSignatureComponent signRequest error", th);
                return str2;
            }
        }
    }

    public String a() {
        try {
            if (this.c != null) {
                return this.c.doJAQVerfificationSync(null, 20);
            }
            return null;
        } catch (Throwable th) {
            TBSdkLog.e("mtopsdk.SecuritySignImpl", "[getSecBodyDataEx] SecurityVerification doJAQVerfificationSync error", th);
            return null;
        }
    }

    private String b() {
        String globalAuthCode = this.b.getGlobalAuthCode();
        return globalAuthCode != null ? globalAuthCode : "";
    }
}
