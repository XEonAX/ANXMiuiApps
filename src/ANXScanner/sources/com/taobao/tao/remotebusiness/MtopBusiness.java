package com.taobao.tao.remotebusiness;

import android.content.Context;
import android.text.TextUtils;
import com.taobao.tao.remotebusiness.auth.RemoteAuth;
import com.taobao.tao.remotebusiness.listener.c;
import com.taobao.tao.remotebusiness.login.LoginContext;
import com.taobao.tao.remotebusiness.login.RemoteLogin;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.common.ApiID;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.BaseOutDo;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.intf.Mtop;
import mtopsdk.mtop.intf.MtopBuilder;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.xstate.XState;

public class MtopBusiness extends MtopBuilder {
    public static final int MAX_RETRY_TIMES = 3;
    private static final String TAG = "mtop.rb-RemoteBusiness";
    private static AtomicInteger seqGen = new AtomicInteger(0);
    private ApiID apiID;
    public String authParam = null;
    public Class<?> clazz;
    public boolean isCached = false;
    private boolean isCanceled = false;
    private boolean isErrorNotifyAfterCache = false;
    public MtopListener listener;
    private MtopResponse mtopResponse = null;
    public long onBgFinishTime = 0;
    public long reqStartTime = 0;
    protected int requestType = 0;
    protected int retryTime = 0;
    public long sendStartTime = 0;
    private final String seqNo = genSeqNo();
    public boolean showAuthUI = true;
    private boolean showLoginUI = true;
    private CountDownLatch syncRequestLatch = null;

    public static void init(Context context, String str) {
        Mtop.instance(context, str);
    }

    protected MtopBusiness(IMTOPDataObject iMTOPDataObject, String str) {
        super(iMTOPDataObject, str);
    }

    protected MtopBusiness(MtopRequest mtopRequest, String str) {
        super(mtopRequest, str);
    }

    private String genSeqNo() {
        StringBuilder stringBuilder = new StringBuilder(16);
        stringBuilder.append("RB").append(seqGen.getAndIncrement()).append('.').append(this.stat.getSeqNo());
        return stringBuilder.toString();
    }

    public static MtopBusiness build(IMTOPDataObject iMTOPDataObject, String str) {
        return new MtopBusiness(iMTOPDataObject, str);
    }

    public static MtopBusiness build(IMTOPDataObject iMTOPDataObject) {
        return new MtopBusiness(iMTOPDataObject, null);
    }

    public static MtopBusiness build(MtopRequest mtopRequest, String str) {
        return new MtopBusiness(mtopRequest, str);
    }

    public static MtopBusiness build(MtopRequest mtopRequest) {
        return new MtopBusiness(mtopRequest, null);
    }

    public MtopBusiness registeListener(MtopListener mtopListener) {
        this.listener = mtopListener;
        return this;
    }

    public MtopBusiness addListener(MtopListener mtopListener) {
        return registeListener(mtopListener);
    }

    public String getSeqNo() {
        return this.seqNo;
    }

    public void startRequest() {
        startRequest(0, null);
    }

    public void startRequest(Class<?> cls) {
        startRequest(0, cls);
    }

    public void startRequest(int i, Class<?> cls) {
        if (this.request == null) {
            TBSdkLog.e(TAG, this.seqNo, "request is null!!!");
            return;
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, this.seqNo, "start request api=[" + this.request.getApiName() + "]");
        }
        this.reqStartTime = System.currentTimeMillis();
        this.isCanceled = false;
        this.isCached = false;
        this.clazz = cls;
        this.requestType = i;
        resetMtopListener();
        mtopCommitStatData(false);
        doQuery();
    }

    private void doQuery() {
        boolean isNeedEcode = this.request.isNeedEcode();
        boolean isNeedAuth = isNeedAuth();
        if (!isNeedEcode || RemoteLogin.isSessionValid()) {
            if (isNeedEcode) {
                try {
                    if (StringUtils.isBlank(XState.getSid())) {
                        TBSdkLog.w(TAG, this.seqNo, "[doQuery] session in loginContext is valid but XState's sid is null");
                        LoginContext loginContext = RemoteLogin.getLoginContext();
                        if (loginContext == null || StringUtils.isBlank(loginContext.sid)) {
                            a.a(this);
                            RemoteLogin.login(this.showLoginUI, this.request);
                            return;
                        }
                        Mtop.instance(SDKConfig.getInstance().getGlobalContext()).registerSessionInfo(loginContext.sid, loginContext.userId);
                    }
                } catch (Exception e) {
                    TBSdkLog.i(TAG, this.seqNo, "error happens in confirming session info");
                }
            }
            if (isNeedEcode && isNeedAuth) {
                if (RemoteAuth.isAuthInfoValid()) {
                    Object authToken = RemoteAuth.getAuthToken();
                    if (TextUtils.isEmpty(authToken)) {
                        a.a(this);
                        RemoteAuth.authorize(this.authParam, this.request.getKey(), null, this.showAuthUI);
                        return;
                    }
                    XState.setValue("accessToken", authToken);
                } else {
                    a.a(this);
                    RemoteAuth.authorize(this.authParam, this.request.getKey(), null, this.showAuthUI);
                    return;
                }
            }
            this.sendStartTime = System.currentTimeMillis();
            this.apiID = super.asyncRequest();
            return;
        }
        a.a(this);
        RemoteLogin.login(this.showLoginUI, this.request);
    }

    public MtopResponse syncRequest() {
        TBSdkLog.i(TAG, this.seqNo, "syncRequest");
        this.syncRequestLatch = new CountDownLatch(1);
        if (this.listener == null) {
            this.listener = new IRemoteBaseListener() {
                public void onSuccess(int i, MtopResponse mtopResponse, BaseOutDo baseOutDo, Object obj) {
                }

                public void onError(int i, MtopResponse mtopResponse, Object obj) {
                }

                public void onSystemError(int i, MtopResponse mtopResponse, Object obj) {
                }
            };
        }
        startRequest();
        try {
            if (!this.syncRequestLatch.await(120, TimeUnit.SECONDS)) {
                TBSdkLog.w(TAG, this.seqNo, new StringBuilder("syncRequest timeout . apiKey=").append(this.request).toString() != null ? this.request.getKey() : "");
                cancelRequest();
            }
        } catch (InterruptedException e) {
            if (TBSdkLog.isLogEnable(LogEnable.ErrorEnable)) {
                TBSdkLog.e(TAG, this.seqNo, new StringBuilder("SyncRequest InterruptedException. apiKey=").append(this.request).toString() != null ? this.request.getKey() : "");
            }
        }
        if (this.mtopResponse == null) {
            this.mtopResponse = new MtopResponse(this.request.getApiName(), this.request.getVersion(), ErrorConstant.ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT, ErrorConstant.ERRMSG_MTOP_APICALL_ASYNC_TIMEOUT);
        }
        return this.mtopResponse;
    }

    public ApiID asyncRequest() {
        startRequest();
        return this.apiID;
    }

    public int getRequestType() {
        return this.requestType;
    }

    public boolean isTaskCanceled() {
        return this.isCanceled;
    }

    public void cancelRequest() {
        cancelRequest(true);
    }

    private void cancelRequest(boolean z) {
        if (z) {
            TBSdkLog.i(TAG, this.seqNo, c.a("cancelRequest.", this, false, null));
        }
        this.isCanceled = true;
        if (this.apiID != null) {
            try {
                this.apiID.cancelApiCall();
            } catch (Throwable th) {
                TBSdkLog.w(TAG, this.seqNo, c.a("Cancel request task failed.", this, true, null), th);
            }
        }
        a.b(this);
    }

    public int getRetryTime() {
        return this.retryTime;
    }

    void retryRequest() {
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, this.seqNo, c.a("retryRequest.", this, false, null));
        }
        if (this.retryTime >= 3) {
            this.retryTime = 0;
            doFinish(null, null);
            return;
        }
        cancelRequest(false);
        startRequest(this.requestType, this.clazz);
        this.retryTime++;
    }

    public MtopBusiness showLoginUI(boolean z) {
        this.showLoginUI = z;
        return this;
    }

    public boolean isShowLoginUI() {
        return this.showLoginUI;
    }

    public MtopBusiness setNeedAuth(String str, boolean z) {
        if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "setNeedAuth. authParam" + str);
        }
        this.authParam = str;
        this.showAuthUI = z;
        return this;
    }

    public boolean isNeedAuth() {
        return this.authParam != null;
    }

    public MtopBusiness setErrorNotifyAfterCache(boolean z) {
        this.isErrorNotifyAfterCache = z;
        return this;
    }

    private void resetMtopListener() {
        if (!this.isCanceled && this.listener != null) {
            super.addListener(c.a(this, this.listener));
        }
    }

    public void doFinish(MtopResponse mtopResponse, BaseOutDo baseOutDo) {
        if (this.syncRequestLatch != null) {
            this.mtopResponse = mtopResponse;
            this.syncRequestLatch.countDown();
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("doFinish api=[").append(this.request.getApiName()).append("]");
            if (mtopResponse != null) {
                stringBuilder.append(" retCode=").append(mtopResponse.getRetCode());
                stringBuilder.append(" retMsg=").append(mtopResponse.getRetCode());
            }
            TBSdkLog.i(TAG, this.seqNo, stringBuilder.toString());
        }
        if (this.isCanceled || !(this.listener instanceof IRemoteBaseListener)) {
            TBSdkLog.d(TAG, this.seqNo, "doFinish no callback.");
            return;
        }
        IRemoteBaseListener iRemoteBaseListener = (IRemoteBaseListener) this.listener;
        if (mtopResponse == null) {
            TBSdkLog.i(TAG, this.seqNo, "response is null.");
            onErrorCallback(mtopResponse, false);
        } else if (mtopResponse != null && mtopResponse.isApiSuccess()) {
            try {
                iRemoteBaseListener.onSuccess(this.requestType, mtopResponse, baseOutDo, getReqContext());
            } catch (Throwable th) {
                TBSdkLog.e(TAG, this.seqNo, "listener onSuccess callback error", th);
            }
            TBSdkLog.i(TAG, this.seqNo, "listener onSuccess callback.");
        } else if (this.isCached && !this.isErrorNotifyAfterCache) {
            TBSdkLog.d(TAG, this.seqNo, "listenr onCached callback,doNothing in doFinish()");
        } else if (mtopResponse.isSessionInvalid()) {
            if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                TBSdkLog.i(TAG, this.seqNo, c.a("尝试登录后仍session失效，或用户取消登录。", this, false, null));
                TBSdkLog.i(TAG, this.seqNo, "response.isSessionInvalid().");
            }
            onErrorCallback(mtopResponse, true);
        } else if (mtopResponse.isMtopServerError() || mtopResponse.isMtopSdkError() || mtopResponse.isNetworkError() || mtopResponse.isSystemError() || mtopResponse.isExpiredRequest() || mtopResponse.is41XResult() || mtopResponse.isApiLockedResult()) {
            onErrorCallback(mtopResponse, true);
        } else {
            onErrorCallback(mtopResponse, false);
        }
    }

    private void onErrorCallback(MtopResponse mtopResponse, boolean z) {
        IRemoteBaseListener iRemoteBaseListener = (IRemoteBaseListener) this.listener;
        if (z) {
            try {
                iRemoteBaseListener.onSystemError(this.requestType, mtopResponse, getReqContext());
            } catch (Throwable th) {
                TBSdkLog.e(TAG, this.seqNo, "listener onError callback error", th);
            }
        } else {
            iRemoteBaseListener.onError(this.requestType, mtopResponse, getReqContext());
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, this.seqNo, "listener onError callback, " + (z ? "sys error" : "biz error"));
        }
    }

    public MtopBusiness setBizId(int i) {
        return (MtopBusiness) super.setBizId(i);
    }
}
