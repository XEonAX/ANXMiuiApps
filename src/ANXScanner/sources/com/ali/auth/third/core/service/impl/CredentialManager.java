package com.ali.auth.third.core.service.impl;

import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.cookies.CookieManagerWrapper;
import com.ali.auth.third.core.history.AccountHistoryManager;
import com.ali.auth.third.core.model.AccountContract;
import com.ali.auth.third.core.model.HistoryAccount;
import com.ali.auth.third.core.model.InternalSession;
import com.ali.auth.third.core.model.LoginDataModel;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.core.model.User;
import com.ali.auth.third.core.registry.a;
import com.ali.auth.third.core.service.CredentialService;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.service.StorageService;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.core.util.ReflectionUtils;
import com.ali.auth.third.core.util.SystemUtils;
import com.ali.auth.third.login.LoginConstants;
import java.net.URLDecoder;
import java.util.ArrayList;
import org.json.JSONObject;

public class CredentialManager implements CredentialService {
    public static final CredentialManager INSTANCE = new CredentialManager();
    private static final String a = CredentialManager.class.getSimpleName();
    private volatile InternalSession b;
    public String internalSessionStoreKey = "internal_session";

    public CredentialManager() {
        try {
            a();
        } catch (Throwable th) {
            this.b = new InternalSession();
            this.b.user = new User();
        }
    }

    private Object a(String str, String[] strArr, Object[] objArr) {
        try {
            return ReflectionUtils.newInstance(str, strArr, objArr);
        } catch (NoSuchMethodError e) {
            e.printStackTrace();
            return null;
        }
    }

    private void a() {
        if (KernelContext.storageService == null) {
            a(KernelContext.serviceRegistry);
        }
        String value = KernelContext.storageService.getValue("loginEnvironmentIndex", true);
        String valueOf = String.valueOf(KernelContext.getEnvironment().ordinal());
        if (value == null || value.equals(valueOf)) {
            Object value2 = KernelContext.storageService.getValue(this.internalSessionStoreKey, true);
            if (TextUtils.isEmpty(value2)) {
                value2 = KernelContext.storageService.getValue(this.internalSessionStoreKey, true);
            }
            if (TextUtils.isEmpty(value2)) {
                this.b = new InternalSession();
                this.b.user = new User();
                return;
            }
            this.b = createInternalSession(value2);
            return;
        }
        KernelContext.storageService.putValue("loginEnvironmentIndex", valueOf, true);
        KernelContext.storageService.removeValue(this.internalSessionStoreKey, true);
        this.b = new InternalSession();
        this.b.user = new User();
    }

    private void a(InternalSession internalSession) {
        this.b = internalSession;
        KernelContext.storageService.putValue(this.internalSessionStoreKey, SystemUtils.toInternalSessionJSON(internalSession), true);
    }

    private void a(a aVar) {
        Object obj = 1;
        try {
            Class.forName("com.ali.auth.third.securityguard.SecurityGuardWrapper");
            try {
                KernelContext.isMini = false;
                KernelContext.sdkVersion = KernelContext.SDK_VERSION_STD;
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            obj = null;
        }
        if (obj != null) {
            try {
                obj = a("com.ali.auth.third.securityguard.SecurityGuardWrapper", null, null);
            } catch (NoSuchMethodError e) {
                e.printStackTrace();
                return;
            }
        }
        obj = a("com.ali.auth.third.core.storage.CommonStorageServiceImpl", null, null);
        aVar.a(new Class[]{StorageService.class}, obj, null);
        KernelContext.storageService = (StorageService) aVar.a(StorageService.class, null);
    }

    public long adjustSessionExpireTime(long j, long j2) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        return currentTimeMillis > j2 ? j > 0 ? j + (currentTimeMillis - j2) : currentTimeMillis + 86400 : j;
    }

    public InternalSession createInternalSession(String str) {
        InternalSession internalSession = new InternalSession();
        try {
            JSONObject jSONObject = new JSONObject(str);
            internalSession.sid = JSONUtils.optString(jSONObject, LoginConstants.SID);
            internalSession.expireIn = (long) JSONUtils.optInteger(jSONObject, "expireIn").intValue();
            User user = new User();
            JSONObject optJSONObject = jSONObject.optJSONObject("user");
            if (optJSONObject != null) {
                user.avatarUrl = optJSONObject.optString("avatarUrl");
                user.userId = optJSONObject.optString("userId");
                user.nick = optJSONObject.optString("nick");
                user.openId = optJSONObject.optString("openId");
                user.openSid = optJSONObject.optString("openSid");
                user.deviceTokenKey = optJSONObject.optString("deviceTokenKey");
                user.deviceTokenSalt = optJSONObject.optString("deviceTokenSalt");
                if (!(TextUtils.isEmpty(internalSession.sid) || TextUtils.isEmpty(user.userId))) {
                    ((RpcService) KernelContext.getService(RpcService.class)).registerSessionInfo(internalSession.sid, user.userId);
                }
            }
            internalSession.user = user;
            internalSession.loginTime = JSONUtils.optLong(jSONObject, "loginTime").longValue();
            internalSession.mobile = JSONUtils.optString(jSONObject, "mobile");
            internalSession.loginId = JSONUtils.optString(jSONObject, "loginId");
            internalSession.autoLoginToken = JSONUtils.optString(jSONObject, LoginConstants.KEY_AUTOLOGINTOKEN);
            internalSession.topAccessToken = JSONUtils.optString(jSONObject, "topAccessToken");
            internalSession.topExpireTime = JSONUtils.optString(jSONObject, "topExpireTime");
            internalSession.topAuthCode = JSONUtils.optString(jSONObject, "topAuthCode");
            internalSession.otherInfo = JSONUtils.toMap(jSONObject.optJSONObject("otherInfo"));
        } catch (Throwable e) {
            SDKLogger.e(a, e.getMessage(), e);
        }
        return internalSession;
    }

    public InternalSession getInternalSession() {
        return this.b;
    }

    public Session getSession() {
        Session session = new Session();
        String str = (this.b == null || this.b.user == null) ? "" : this.b.user.userId;
        session.userid = str;
        str = (this.b == null || this.b.user == null) ? "" : this.b.user.nick;
        session.nick = str;
        str = (this.b == null || this.b.user == null) ? "" : this.b.user.avatarUrl;
        session.avatarUrl = str;
        str = (this.b == null || this.b.user == null) ? "" : this.b.user.openId;
        session.openId = str;
        str = (this.b == null || this.b.user == null) ? "" : this.b.user.openSid;
        session.openSid = str;
        session.topAccessToken = this.b == null ? "" : this.b.topAccessToken;
        session.topAuthCode = this.b == null ? "" : this.b.topAuthCode;
        session.topExpireTime = this.b == null ? "" : this.b.topExpireTime;
        return session;
    }

    public boolean isSessionValid() {
        boolean z = true;
        SDKLogger.d(a, "func isSessionValid");
        if (this.b == null) {
            SDKLogger.d(a, "isSessionValid()  internalSession is null");
            return false;
        } else if (this.b.loginTime == 0 || this.b.expireIn == 0) {
            SDKLogger.d(a, "isSessionValid()  loginTime is 0 or expireIn is 0");
            return false;
        } else {
            SDKLogger.d(a, "isSessionValid()  " + (System.currentTimeMillis() / 1000 < this.b.expireIn));
            if (System.currentTimeMillis() / 1000 >= this.b.expireIn) {
                z = false;
            }
            return z;
        }
    }

    public ResultCode logout() {
        CookieManagerWrapper.INSTANCE.clearCookies();
        InternalSession internalSession = new InternalSession();
        internalSession.user = new User();
        a(internalSession);
        return ResultCode.SUCCESS;
    }

    public void refreshWhenLogin(LoginReturnData loginReturnData) {
        if (loginReturnData != null && !TextUtils.isEmpty(loginReturnData.data)) {
            InternalSession internalSession = new InternalSession();
            LoginDataModel loginDataModel = (LoginDataModel) JSONUtils.toPOJO(new JSONObject(loginReturnData.data), LoginDataModel.class);
            internalSession.externalCookies = loginDataModel.externalCookies;
            User user = new User();
            user.userId = loginDataModel.userId;
            if (loginDataModel.nick != null) {
                try {
                    user.nick = URLDecoder.decode(loginDataModel.nick, "UTF-8");
                } catch (Throwable e) {
                    SDKLogger.e(a, e.getMessage(), e);
                }
            }
            try {
                String[] strArr;
                user.openId = loginDataModel.openId;
                user.openSid = loginDataModel.openSid;
                user.avatarUrl = loginDataModel.headPicLink;
                user.email = loginDataModel.email;
                if (!(loginDataModel.loginServiceExt == null || TextUtils.isEmpty((CharSequence) loginDataModel.loginServiceExt.get("1688ext")))) {
                    try {
                        JSONObject jSONObject = new JSONObject((String) loginDataModel.loginServiceExt.get("1688ext"));
                        if (jSONObject != null) {
                            user.cbuLoginId = jSONObject.optString("loginId");
                            user.memberId = jSONObject.optString("memberId");
                        }
                    } catch (Exception e2) {
                    }
                }
                if (loginReturnData.deviceToken != null) {
                    user.deviceTokenSalt = loginReturnData.deviceToken.salt;
                    user.deviceTokenKey = loginReturnData.deviceToken.key;
                }
                AccountHistoryManager.getInstance().putLoginHistory(new HistoryAccount(loginDataModel.userId, user.deviceTokenKey, loginDataModel.nick, loginDataModel.phone, loginDataModel.email), user.deviceTokenSalt);
                internalSession.user = user;
                internalSession.loginTime = loginDataModel.loginTime;
                internalSession.sid = loginDataModel.sid;
                internalSession.expireIn = adjustSessionExpireTime(loginDataModel.expires, loginDataModel.loginTime);
                internalSession.mobile = loginDataModel.loginPhone;
                internalSession.loginId = loginReturnData.showLoginId;
                internalSession.autoLoginToken = loginDataModel.autoLoginToken;
                internalSession.topAccessToken = loginDataModel.topAccessToken;
                internalSession.topAuthCode = loginDataModel.topAuthCode;
                internalSession.topExpireTime = loginDataModel.topExpireTime;
                internalSession.otherInfo = loginDataModel.extendAttribute;
                ((RpcService) KernelContext.getService(RpcService.class)).registerSessionInfo(loginDataModel.sid, loginDataModel.userId);
                try {
                    Object obj = loginDataModel.extendAttribute.get("ssoDomainList");
                    if (obj != null && (obj instanceof ArrayList)) {
                        strArr = (String[]) ((ArrayList) obj).toArray(new String[0]);
                        CookieManagerWrapper.INSTANCE.injectCookie(loginDataModel.cookies, strArr);
                        SDKLogger.e("session", "session = " + internalSession.toString());
                        a(internalSession);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                strArr = null;
                CookieManagerWrapper.INSTANCE.injectCookie(loginDataModel.cookies, strArr);
            } catch (Exception e4) {
            }
            SDKLogger.e("session", "session = " + internalSession.toString());
            a(internalSession);
        }
    }

    public void refreshWhenOfflineLogin(AccountContract accountContract) {
        InternalSession internalSession = new InternalSession();
        User user = new User();
        user.nick = KernelContext.storageService.decrypt(accountContract.getNick());
        user.openId = accountContract.getOpenid();
        user.userId = KernelContext.storageService.decrypt(accountContract.getUserid());
        internalSession.user = user;
        a(internalSession);
    }
}
