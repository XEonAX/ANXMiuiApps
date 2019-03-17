package com.ali.auth.third.login.handler;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.webkit.WebView;
import com.ali.auth.third.core.broadcast.LoginAction;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.login.RequestCode;
import com.ali.auth.third.login.UTConstants;
import com.ali.auth.third.login.a.a;
import com.ali.auth.third.login.task.LoginAfterOpenTb;
import com.ali.auth.third.login.task.LoginByIVTokenTask;
import com.ali.auth.third.login.task.RefreshPageAfterOpenTb;
import com.ali.auth.third.login.util.LoginStatus;
import com.ali.auth.third.ui.LoginActivity;
import com.ali.auth.third.ui.context.CallbackContext;
import com.ali.auth.third.ui.support.BaseActivityResultHandler;
import com.ali.auth.third.ui.webview.BaseWebViewActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class LoginActivityResultHandler extends BaseActivityResultHandler {
    private void a(Activity activity, String str, LoginCallback loginCallback) {
        SDKLogger.d("login", "onLoginSuccess ");
        if (loginCallback != null) {
            loginCallback.onSuccess(a.b.getSession());
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_H5_LOGIN_SUCCESS, null);
        }
        if (CallbackContext.mGlobalLoginCallback != null) {
            CallbackContext.mGlobalLoginCallback.onSuccess(a.b.getSession());
        }
        CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_SUCCESS);
        if (activity != null && (activity instanceof LoginActivity)) {
            CallbackContext.activity = null;
            activity.finish();
            CallbackContext.loginCallback = null;
        }
    }

    private void a(Activity activity, String str, LoginCallback loginCallback, int i) {
        Message createMessage;
        SDKLogger.d("login", "onLoginFailure ");
        if (loginCallback != null) {
            createMessage = MessageUtils.createMessage(i, new Object[0]);
            loginCallback.onFailure(createMessage.code, createMessage.message);
            if (!UTConstants.E_IV_LOGIN_FAILURE.equals(str)) {
                Map hashMap;
                int i2;
                CharSequence charSequence;
                if (i == SystemMessageConstants.USER_CANCEL_CODE) {
                    ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_H5_LOGIN_CANCEL, null);
                } else if (i == SystemMessageConstants.TAOBAO_CANCEL_CODE) {
                    ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TB_LOGIN_CANCEL, null);
                } else if (i == SystemMessageConstants.TAOBAO_ERROR_CODE) {
                    hashMap = new HashMap();
                    i2 = createMessage.code;
                    charSequence = createMessage.message;
                    hashMap.put(LoginConstants.CODE, i2 + "");
                    if (!TextUtils.isEmpty(charSequence)) {
                        hashMap.put(LoginConstants.MESSAGE, charSequence);
                    }
                    ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TB_LOGIN_FAILURE, hashMap);
                } else {
                    hashMap = new HashMap();
                    i2 = createMessage.code;
                    charSequence = createMessage.message;
                    hashMap.put(LoginConstants.CODE, i2 + "");
                    if (!TextUtils.isEmpty(charSequence)) {
                        hashMap.put(LoginConstants.MESSAGE, charSequence);
                    }
                    ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_H5_LOGIN_FAILURE, hashMap);
                }
            }
        }
        if (CallbackContext.mGlobalLoginCallback != null) {
            createMessage = MessageUtils.createMessage(i, new Object[0]);
            CallbackContext.mGlobalLoginCallback.onFailure(createMessage.code, createMessage.message);
        }
        if (i == SystemMessageConstants.USER_CANCEL_CODE || i == SystemMessageConstants.TAOBAO_CANCEL_CODE) {
            CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_CANCEL);
        } else {
            CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_FAILED);
        }
        if (activity != null && (activity instanceof LoginActivity)) {
            CallbackContext.activity = null;
            activity.finish();
            CallbackContext.loginCallback = null;
        }
    }

    private void a(Intent intent, final LoginCallback loginCallback) {
        SDKLogger.d("login", "handleCheck");
        final WeakReference weakReference = CallbackContext.activity;
        if (weakReference == null || weakReference.get() == null || intent == null) {
            KernelContext.executorService.postUITask(new Runnable() {
                public void run() {
                    CallbackContext.activity = weakReference;
                    LoginActivityResultHandler.this.a((Activity) weakReference.get(), UTConstants.E_H5_OPERATION_BIND_FAILURE, loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
                    CallbackContext.activity = null;
                }
            });
        } else if (TextUtils.isEmpty(intent.getStringExtra("token"))) {
            KernelContext.executorService.postUITask(new Runnable() {
                public void run() {
                    CallbackContext.activity = weakReference;
                    LoginActivityResultHandler.this.a((Activity) weakReference.get(), UTConstants.E_IV_LOGIN_FAILURE, loginCallback, (int) SystemMessageConstants.H5_LOGIN_FAILURE);
                    CallbackContext.activity = null;
                }
            });
        } else {
            new LoginByIVTokenTask((Activity) weakReference.get(), new LoginCallback() {
                public void onFailure(int i, String str) {
                    KernelContext.executorService.postUITask(new Runnable() {
                        public void run() {
                            CallbackContext.activity = weakReference;
                            LoginActivityResultHandler.this.a((Activity) weakReference.get(), UTConstants.E_IV_LOGIN_FAILURE, loginCallback, (int) SystemMessageConstants.H5_LOGIN_FAILURE);
                            CallbackContext.activity = null;
                        }
                    });
                }

                public void onSuccess(Session session) {
                    KernelContext.executorService.postUITask(new Runnable() {
                        public void run() {
                            CallbackContext.activity = weakReference;
                            LoginActivityResultHandler.this.a((Activity) weakReference.get(), UTConstants.E_H5_LOGIN_SUCCESS, loginCallback);
                            CallbackContext.activity = null;
                        }
                    });
                }
            }).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{intent.getStringExtra("token"), intent.getStringExtra("scene"), intent.getStringExtra(Constants.QUERY_STRING)});
        }
    }

    protected void onCallbackContext(int i, int i2, Intent intent, Activity activity, Map<Class<?>, Object> map, WebView webView) {
        SDKLogger.d("login", "onCallbackContext requestCode=" + i + " resultCode = " + i2 + " authCode = " + (intent == null ? "" : intent.getStringExtra("result")));
        LoginStatus.resetLoginFlag();
        LoginCallback loginCallback = (LoginCallback) CallbackContext.loginCallback;
        if (i != RequestCode.OPEN_H5_LOGIN || loginCallback == null) {
            if (i == RequestCode.OPEN_TAOBAO && loginCallback != null) {
                ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send("AUTH_TAOBAO", null);
                if (i2 == -1 && intent != null) {
                    new LoginAfterOpenTb((Activity) CallbackContext.activity.get(), loginCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{intent.getStringExtra("result")});
                } else if (i2 == 0) {
                    a(activity, "E_TB_LOGIN_CANCEL", loginCallback, (int) SystemMessageConstants.TAOBAO_CANCEL_CODE);
                } else {
                    SDKLogger.d("login", "result from taobao : " + (intent == null ? "" : intent.getStringExtra("result")));
                    a(activity, "E_TB_LOGIN_FAILURE", loginCallback, (int) SystemMessageConstants.TAOBAO_ERROR_CODE);
                }
            } else if (i != RequestCode.OPEN_QR_LOGIN || loginCallback == null) {
                if (i != RequestCode.OPEN_QR_LOGIN_CONFIRM || loginCallback == null) {
                    if (i == RequestCode.OPEN_DOUBLE_CHECK) {
                        a(intent, loginCallback);
                    } else if (i == RequestCode.OPEN_H5_UNBIND) {
                        if (i2 == ResultCode.SUCCESS.code) {
                            a(activity, "E_H5_UNBIND_SUCCESS", loginCallback);
                        } else {
                            a(activity, "E_H5_UNBIND_FAILURE", loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
                        }
                        CallbackContext.loginCallback = null;
                    }
                } else if (i2 == ResultCode.SUCCESS.code) {
                    a(activity, "E_QR_LOGIN_CONFIRM_SUCCESS", loginCallback);
                } else {
                    a(activity, "E_QR_LOGIN_CONFIRM_CANCEL", loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
                }
            } else if (i2 == ResultCode.SUCCESS.code) {
                a(activity, "E_QR_LOGIN_SUCCESS", loginCallback);
            } else {
                a(activity, "E_QR_CANCEL_FAILURE", loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
            }
        } else if (i2 == ResultCode.SUCCESS.code) {
            a(activity, "E_H5_LOGIN_SUCCESS", loginCallback);
        } else if (i2 == ResultCode.IGNORE.code) {
        } else {
            if (i2 == ResultCode.CHECK.code) {
                a(intent, loginCallback);
            } else {
                a(activity, "E_H5_CANCEL_FAILURE", loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
            }
        }
    }

    protected void onTaeSDKActivity(int i, int i2, Intent intent, BaseWebViewActivity baseWebViewActivity, Map<Class<?>, Object> map, WebView webView) {
        SDKLogger.d("login", "onTaeSDKActivity requestCode=" + i + " resultCode = " + i2 + " authCode = " + (intent == null ? "" : intent.getStringExtra("result")));
        LoginCallback loginCallback = (LoginCallback) CallbackContext.loginCallback;
        LoginStatus.resetLoginFlag();
        if (i == RequestCode.OPEN_H5_LOGIN) {
            if (i2 == ResultCode.SUCCESS.code) {
                webView.reload();
            } else {
                baseWebViewActivity.setResult(ResultCode.create(SystemMessageConstants.USER_CANCEL_CODE, new Object[0]));
            }
        } else if (i == RequestCode.OPEN_TAOBAO) {
            if (i2 == -1 && intent != null) {
                new RefreshPageAfterOpenTb(baseWebViewActivity, webView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{intent.getStringExtra("result")});
            } else if (i2 == 0) {
                baseWebViewActivity.setResult(ResultCode.create(SystemMessageConstants.USER_CANCEL_CODE, new Object[0]));
            } else {
                SDKLogger.e("login", "taobao return " + i2);
                LoginComponent.INSTANCE.showH5Login(baseWebViewActivity);
            }
        } else if (i == RequestCode.OPEN_H5_UNBIND) {
            if (i2 == ResultCode.SUCCESS.code) {
                a(baseWebViewActivity, "E_H5_UNBIND_SUCCESS", loginCallback);
            } else {
                a((Activity) baseWebViewActivity, "E_H5_UNBIND_FAILURE", loginCallback, (int) SystemMessageConstants.USER_CANCEL_CODE);
            }
            CallbackContext.loginCallback = null;
        }
    }
}
