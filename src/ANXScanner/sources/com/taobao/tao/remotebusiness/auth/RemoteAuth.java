package com.taobao.tao.remotebusiness.auth;

import com.taobao.tao.remotebusiness.a;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.xstate.XState;

public class RemoteAuth {
    private static final String TAG = "mtop.rb-RemoteAuth";
    private static IRemoteAuth iRemoteAuth = null;

    static class AuthHandler implements AuthListener {

        static class Holder {
            static AuthHandler instance = new AuthHandler();

            private Holder() {
            }
        }

        private AuthHandler() {
        }

        public static AuthHandler instance() {
            return Holder.instance;
        }

        public void onAuthSuccess() {
            TBSdkLog.i(RemoteAuth.TAG, "auth success");
            XState.setValue("accessToken", RemoteAuth.getAuthToken());
            a.a();
        }

        public void onAuthFail(String str, String str2) {
            TBSdkLog.i(RemoteAuth.TAG, "auth fail");
            a.a(str, str2);
        }

        public void onAuthCancel(String str, String str2) {
            TBSdkLog.i(RemoteAuth.TAG, "auth cancel");
            a.a(str, str2);
        }
    }

    public static void setAuthImpl(IRemoteAuth iRemoteAuth) {
        TBSdkLog.d(TAG, new StringBuilder("set auth implement. remoteAuth=").append(iRemoteAuth).toString() != null ? iRemoteAuth.toString() : "null");
        iRemoteAuth = iRemoteAuth;
    }

    public static void authorize(String str, String str2, String str3, boolean z) {
        if (iRemoteAuth != null && !iRemoteAuth.isAuthorizing()) {
            if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                TBSdkLog.i(TAG, "call auth. bizId=" + str + " apiInfo=" + str2 + " failInfo=" + str3);
            }
            iRemoteAuth.authorize(str, str2, str3, z, AuthHandler.instance());
        }
    }

    public static boolean isAuthInfoValid() {
        if (iRemoteAuth == null) {
            return true;
        }
        if (iRemoteAuth.isAuthorizing()) {
            return false;
        }
        return iRemoteAuth.isAuthInfoValid();
    }

    public static String getAuthToken() {
        if (iRemoteAuth == null) {
            return null;
        }
        return iRemoteAuth.getAuthToken();
    }
}
