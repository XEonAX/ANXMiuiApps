package com.taobao.tao.remotebusiness.login;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import java.lang.reflect.Method;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.network.util.NetworkUtils;

public final class DefaultLoginImpl implements IRemoteLogin {
    private static final String MTOP_API_REFERENCE = "apiReferer";
    private static final String TAG = "mtop.rb-DefaultLoginImpl";
    public static volatile DefaultLoginImpl instance = null;
    private static ThreadLocal<SessionInvalidEvent> threadLocal = new ThreadLocal();
    private Method checkSessionValidMethod;
    private Method getNickMethod;
    private Method getSidMethod;
    private Method getUserIdMethod;
    private Method isLoginingMethod;
    private Class<?> loginBroadcastHelperCls = null;
    private Class<?> loginCls = null;
    private LoginContext loginContext = new LoginContext();
    private Method loginMethod;
    private Class<?> loginStatusCls = null;
    protected BroadcastReceiver receiver = null;
    private Method registerReceiverMethod;

    static class SessionInvalidEvent {
        private static final String BUNDLE_KEY = "apiReferer";
        private static final String HEADER_KEY = "S";
        public String S_STATUS;
        public String apiName;
        public String eventName;
        public String long_nick;
        public String msgCode;
        public String v;

        public SessionInvalidEvent(MtopResponse mtopResponse, String str) {
            this.eventName = "SESSION_INVALID";
            this.long_nick = str;
            this.apiName = mtopResponse.getApi();
            this.v = mtopResponse.getV();
            this.msgCode = mtopResponse.getRetCode();
            this.S_STATUS = NetworkUtils.getSingleHeaderFieldByKey(mtopResponse.getHeaderFields(), "S");
        }

        public SessionInvalidEvent(MtopRequest mtopRequest) {
            this.apiName = mtopRequest.getApiName();
            this.v = mtopRequest.getVersion();
        }

        public String toJSONString() {
            return JSON.toJSONString(this);
        }
    }

    public static DefaultLoginImpl getDefaultLoginImpl() {
        if (instance == null) {
            synchronized (DefaultLoginImpl.class) {
                if (instance == null) {
                    try {
                        instance = new DefaultLoginImpl();
                    } catch (Throwable e) {
                        instance = null;
                        TBSdkLog.e(TAG, "DefaultLoginImpl instance error", e);
                    }
                }
            }
        }
        return instance;
    }

    private DefaultLoginImpl() throws ClassNotFoundException, NoSuchMethodException {
        try {
            this.loginCls = Class.forName("com.taobao.login4android.Login");
        } catch (ClassNotFoundException e) {
            this.loginCls = Class.forName("com.taobao.login4android.api.Login");
        }
        this.loginMethod = this.loginCls.getDeclaredMethod("login", new Class[]{Boolean.TYPE, Bundle.class});
        this.checkSessionValidMethod = this.loginCls.getDeclaredMethod("checkSessionValid", new Class[0]);
        this.getSidMethod = this.loginCls.getDeclaredMethod("getSid", new Class[0]);
        this.getUserIdMethod = this.loginCls.getDeclaredMethod("getUserId", new Class[0]);
        this.getNickMethod = this.loginCls.getDeclaredMethod("getNick", new Class[0]);
        this.loginStatusCls = Class.forName("com.taobao.login4android.constants.LoginStatus");
        this.isLoginingMethod = this.loginStatusCls.getDeclaredMethod("isLogining", new Class[0]);
        this.loginBroadcastHelperCls = Class.forName("com.taobao.login4android.broadcast.LoginBroadcastHelper");
        this.registerReceiverMethod = this.loginBroadcastHelperCls.getMethod("registerLoginReceiver", new Class[]{Context.class, BroadcastReceiver.class});
        registerReceiver();
        TBSdkLog.i(TAG, "register login event receiver");
    }

    private void registerReceiver() {
        if (this.receiver == null) {
            if (SDKConfig.getInstance().getGlobalContext() == null) {
                TBSdkLog.w(TAG, "Context is null, register receiver fail.");
                return;
            }
            synchronized (DefaultLoginImpl.class) {
                if (this.receiver == null) {
                    this.receiver = new BroadcastReceiver() {
                        public void onReceive(Context context, Intent intent) {
                            if (intent != null) {
                                String action = intent.getAction();
                                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                    TBSdkLog.i(DefaultLoginImpl.TAG, "Login Broadcast Received. action=" + action);
                                }
                                if ("NOTIFY_LOGIN_SUCCESS".equals(action)) {
                                    LoginHandler.instance().onLoginSuccess();
                                } else if ("NOTIFY_LOGIN_FAILED".equals(action)) {
                                    LoginHandler.instance().onLoginFail();
                                } else if ("NOTIFY_LOGIN_CANCEL".equals(action)) {
                                    LoginHandler.instance().onLoginCancel();
                                }
                            }
                        }
                    };
                    invokeMethod(this.registerReceiverMethod, r0, this.receiver);
                }
            }
        }
    }

    public final void setSessionInvalid(Object obj) {
        if (obj instanceof MtopResponse) {
            threadLocal.set(new SessionInvalidEvent((MtopResponse) obj, (String) invokeMethod(this.getNickMethod, new Object[0])));
        } else if (obj instanceof MtopRequest) {
            threadLocal.set(new SessionInvalidEvent((MtopRequest) obj));
        }
    }

    private <T> T invokeMethod(Method method, Object... objArr) {
        if (method != null) {
            try {
                return method.invoke(this.loginCls, objArr);
            } catch (Throwable e) {
                TBSdkLog.e(TAG, "invokeMethod error", e);
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0060 A:{ExcHandler: all (th java.lang.Throwable), Splitter: B:2:0x0012} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:16:0x0061, code:
            threadLocal.remove();
     */
    /* JADX WARNING: Missing block: B:19:0x0068, code:
            r0 = r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void login(onLoginListener onloginlistener, boolean z) {
        Object obj;
        TBSdkLog.i(TAG, "call login");
        SessionInvalidEvent sessionInvalidEvent = (SessionInvalidEvent) threadLocal.get();
        if (sessionInvalidEvent != null) {
            try {
                Bundle bundle = new Bundle();
                String toJSONString = sessionInvalidEvent.toJSONString();
                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                    TBSdkLog.i(TAG, "apiRefer=" + toJSONString);
                }
                bundle.putString(MTOP_API_REFERENCE, toJSONString);
                threadLocal.remove();
                obj = bundle;
            } catch (Exception e) {
                obj = null;
                threadLocal.remove();
                registerReceiver();
                invokeMethod(this.loginMethod, Boolean.valueOf(z), obj);
            } catch (Throwable th) {
            }
        } else {
            obj = null;
        }
        registerReceiver();
        invokeMethod(this.loginMethod, Boolean.valueOf(z), obj);
    }

    public final boolean isSessionValid() {
        Boolean bool = (Boolean) invokeMethod(this.checkSessionValidMethod, new Object[0]);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isLogining() {
        Boolean bool = (Boolean) invokeMethod(this.isLoginingMethod, new Object[0]);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final LoginContext getLoginContext() {
        this.loginContext.sid = (String) invokeMethod(this.getSidMethod, new Object[0]);
        this.loginContext.userId = (String) invokeMethod(this.getUserIdMethod, new Object[0]);
        this.loginContext.nickname = (String) invokeMethod(this.getNickMethod, new Object[0]);
        return this.loginContext;
    }
}
