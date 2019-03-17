package mtopsdk.network.cookie;

import android.content.Context;
import android.webkit.CookieSyncManager;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.global.SDKConfig;

public class CookieManager {
    public static final String TAG = "mtopsdk.CookieManager";
    private static volatile boolean isSetup = false;
    public static android.webkit.CookieManager webkitCookMgr;

    static {
        setup(SDKConfig.getInstance().getGlobalContext());
    }

    public static synchronized void setup(Context context) {
        synchronized (CookieManager.class) {
            if (!(isSetup || context == null)) {
                CookieSyncManager.createInstance(context);
                android.webkit.CookieManager instance = android.webkit.CookieManager.getInstance();
                webkitCookMgr = instance;
                instance.setAcceptCookie(true);
                webkitCookMgr.removeExpiredCookie();
                isSetup = true;
            }
        }
    }

    public static synchronized void setCookie(String str, String str2) {
        synchronized (CookieManager.class) {
            if (isSetup) {
                try {
                    webkitCookMgr.setCookie(str, str2);
                    CookieSyncManager.getInstance().sync();
                } catch (Throwable th) {
                    TBSdkLog.e(TAG, "set cookie failed. url=" + str + " cookies=" + str2, th);
                }
            }
        }
        return;
    }

    public static synchronized String getCookie(String str) {
        String str2 = null;
        synchronized (CookieManager.class) {
            if (isSetup) {
                try {
                    str2 = webkitCookMgr.getCookie(str);
                } catch (Throwable th) {
                    TBSdkLog.e(TAG, "get cookie failed. url=" + str, th);
                }
            }
        }
        return str2;
    }
}
