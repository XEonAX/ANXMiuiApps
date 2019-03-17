package com.alibaba.baichuan.trade.biz.auth;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.taobao.tao.remotebusiness.auth.AuthListener;
import com.taobao.tao.remotebusiness.auth.IRemoteAuth;
import java.util.List;

public class c implements IRemoteAuth {
    private boolean a;

    private static class a {
        public static c a = new c();
    }

    class b implements AlibcAuthListener {
        AuthListener a;

        b(AuthListener authListener) {
            this.a = authListener;
        }

        public void onCancel() {
            c.this.a(false);
            if (this.a != null) {
                this.a.onAuthCancel("FAIL_SYS_ACCESS_TOKEN_CANCEL", "用户取消授权");
            }
        }

        public void onError(String str, String str2) {
            c.this.a(false);
            if (this.a != null) {
                this.a.onAuthFail(str, str2);
            }
        }

        public void onReTry() {
            c.this.a(true);
        }

        public void onSuccess() {
            c.this.a(false);
            if (this.a != null) {
                this.a.onAuthSuccess();
            }
        }
    }

    private c() {
        this.a = false;
    }

    public static c a() {
        return a.a;
    }

    private synchronized void a(boolean z) {
        this.a = z;
    }

    public void authorize(String str, String str2, String str3, boolean z, AuthListener authListener) {
        AlibcLogger.d("Alibc", "call authorize authParam = " + str + " api_v = " + str2 + " errorInfo = " + str3);
        a(true);
        if (TextUtils.isEmpty(str)) {
            AlibcAuth.auth(str2, str3, z, new b(authListener));
        } else {
            List a = AlibcAuth.a(str);
            AlibcAuth.postHintList(str, str3);
            AlibcAuth.auth(a, str3, z, new b(authListener));
        }
        if (!TextUtils.isEmpty(str3)) {
            AlibcUserTracker.getInstance().sendUseabilityFailure(AliAuthError.MODEL_NAME_COMPONENT, AliAuthError.MONITOR_POINT_HINT_LIST, AlibcUserTradeHelper.getArgs(), AliAuthError.ERRNO_COMPONENT_HIT_LIST_ERROR, "权限列表配置错误");
        }
    }

    public String getAuthToken() {
        String authToken = AlibcAuthInfo.getInstance().getAuthToken();
        AlibcLogger.d("Alibc", "getAuthToken = " + authToken);
        return authToken;
    }

    public boolean isAuthInfoValid() {
        boolean checkAuthToken = AlibcAuthInfo.getInstance().checkAuthToken();
        AlibcLogger.d("Alibc", "isAuthInfoValid = " + checkAuthToken);
        return checkAuthToken;
    }

    public synchronized boolean isAuthorizing() {
        AlibcLogger.d("Alibc", "isAuthorizing = " + this.a);
        return this.a;
    }
}
