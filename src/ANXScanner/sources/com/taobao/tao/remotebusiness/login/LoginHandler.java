package com.taobao.tao.remotebusiness.login;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.taobao.tao.remotebusiness.a;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.intf.Mtop;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.xstate.XState;

class LoginHandler extends Handler implements onLoginListener {
    public static final int LOGIN_CANCEL = 911103;
    public static final int LOGIN_FAILED = 911102;
    public static final int LOGIN_SUCCESS = 911101;
    public static final int LOGIN_TIMEOUT = 911104;
    private static final String TAG = "mtop.rb-LoginHandler";
    private static LoginHandler mHandler;

    private LoginHandler(Looper looper) {
        super(looper);
    }

    public static synchronized LoginHandler instance() {
        LoginHandler loginHandler;
        synchronized (LoginHandler.class) {
            if (mHandler == null) {
                mHandler = new LoginHandler(Looper.getMainLooper());
            }
            loginHandler = mHandler;
        }
        return loginHandler;
    }

    public void handleMessage(Message message) {
        TBSdkLog.d(TAG, "The RemoteBusiness handler message received.");
        switch (message.what) {
            case LOGIN_SUCCESS /*911101*/:
                TBSdkLog.i(TAG, "onReceive: NOTIFY_LOGIN_SUCCESS.");
                checkXStateSessionInfo();
                a.a();
                removeMessages(LOGIN_TIMEOUT);
                return;
            case LOGIN_FAILED /*911102*/:
                TBSdkLog.i(TAG, "onReceive: NOTIFY_LOGINFAILED.");
                a.a(ErrorConstant.ERRCODE_FAIL_SYS_LOGIN_FAIL, ErrorConstant.ERRMSG_FAIL_SYS_LOGIN_FAIL);
                removeMessages(LOGIN_TIMEOUT);
                return;
            case LOGIN_CANCEL /*911103*/:
                TBSdkLog.i(TAG, "onReceive: NOTIFY_LOGINCANCEL.");
                a.a(ErrorConstant.ERRCODE_FAIL_SYS_LOGIN_CANCEL, ErrorConstant.ERRMSG_FAIL_SYS_LOGIN_CANCEL);
                removeMessages(LOGIN_TIMEOUT);
                return;
            case LOGIN_TIMEOUT /*911104*/:
                if (RemoteLogin.isSessionValid()) {
                    TBSdkLog.i(TAG, "Session valid, Broadcast may missed!");
                    checkXStateSessionInfo();
                    a.a();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private static void checkXStateSessionInfo() {
        LoginContext loginContext = RemoteLogin.getLoginContext();
        if (loginContext != null) {
            try {
                if (StringUtils.isNotBlank(loginContext.sid) && !loginContext.sid.equals(XState.getSid())) {
                    Mtop.instance(SDKConfig.getInstance().getGlobalContext()).registerSessionInfo(loginContext.sid, loginContext.userId);
                    TBSdkLog.i(TAG, "[checkXStateSessionInfo] invoked");
                }
            } catch (Exception e) {
                TBSdkLog.e(TAG, "[checkXStateSessionInfo] error ---" + e.toString());
            }
        }
    }

    public void onLoginSuccess() {
        sendEmptyMessage(LOGIN_SUCCESS);
    }

    public void onLoginFail() {
        sendEmptyMessage(LOGIN_FAILED);
    }

    public void onLoginCancel() {
        sendEmptyMessage(LOGIN_CANCEL);
    }
}
