package com.ali.auth.third.login;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.ali.auth.third.core.config.AuthOption;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.cookies.LoginCookieUtils;
import com.ali.auth.third.core.history.AccountHistoryManager;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.model.HistoryAccount;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.rpc.protocol.RpcException;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.service.StorageService;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.core.util.RSAKey;
import com.ali.auth.third.core.util.ResourceUtils;
import com.ali.auth.third.core.util.Rsa;
import com.ali.auth.third.core.util.SystemUtils;
import com.ali.auth.third.login.a.a;
import com.ali.auth.third.ui.LoginWebViewActivity;
import com.ali.auth.third.ui.QrLoginActivity;
import com.alipay.sdk.cons.c;
import com.taobao.applink.util.TBAppLinkUtil;
import com.taobao.ma.common.constants.MaConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class LoginComponent {
    public static final LoginComponent INSTANCE = new LoginComponent();

    private LoginComponent() {
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder("");
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str2 = ((String) keys.next()).toString();
                if (!(TextUtils.isEmpty(str2) || TextUtils.isEmpty(jSONObject.getString(str2)))) {
                    stringBuilder.append("&");
                    stringBuilder.append(str2);
                    stringBuilder.append("=");
                    stringBuilder.append(jSONObject.getString(str2));
                }
            }
        } catch (JSONException e) {
        }
        return stringBuilder.toString();
    }

    private String a(TreeMap<String, String> treeMap) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : treeMap.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2))) {
                stringBuilder.append(str).append(str2);
            }
        }
        return stringBuilder.toString();
    }

    public static void addKey(Map<String, String> map, String str, String str2) {
        map.put(str, str2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0162 A:{ExcHandler: org.json.JSONException (r0_45 'e' org.json.JSONException), Splitter: B:14:0x0100} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0162 A:{ExcHandler: org.json.JSONException (r0_45 'e' org.json.JSONException), Splitter: B:14:0x0100} */
    /* JADX WARNING: Missing block: B:22:0x0162, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:23:0x0163, code:
            r0.printStackTrace();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static RpcResponse<LoginReturnData> loginByRefreshToken() {
        RpcRequest rpcRequest = new RpcRequest();
        rpcRequest.target = "com.taobao.mtop.mLoginUnitService.autoLogin";
        rpcRequest.version = "1.0";
        try {
            Object obj = CredentialManager.INSTANCE.getInternalSession().user.userId;
            rpcRequest.addParam("userId", Long.valueOf(Long.parseLong(obj)));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(LoginConstants.APP_NAME, KernelContext.getAppKey());
            jSONObject.put("token", CredentialManager.INSTANCE.getInternalSession().autoLoginToken);
            jSONObject.put("sdkVersion", KernelContext.sdkVersion);
            long currentTimeMillis = System.currentTimeMillis();
            jSONObject.put(LoginConstants.TIMESTAMP, "" + currentTimeMillis);
            jSONObject.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
            if (KernelContext.isMini) {
                jSONObject.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
            } else {
                jSONObject.put("utdid", ((RpcService) KernelContext.getService(RpcService.class)).getDeviceId());
            }
            if (!TextUtils.isEmpty(obj)) {
                HistoryAccount findHistoryAccount = AccountHistoryManager.getInstance().findHistoryAccount(obj);
                if (findHistoryAccount != null) {
                    Object obj2 = findHistoryAccount.tokenKey;
                    if (!TextUtils.isEmpty(obj2)) {
                        Object treeMap = new TreeMap();
                        addKey(treeMap, LoginConstants.KEY_APPKEY, KernelContext.getAppKey());
                        addKey(treeMap, LoginConstants.KEY_HAVANAID, findHistoryAccount.userId);
                        addKey(treeMap, "timestamp", String.valueOf(currentTimeMillis));
                        addKey(treeMap, "appVersion", CommonUtils.getAndroidAppVersion());
                        addKey(treeMap, "sdkVersion", KernelContext.sdkVersion);
                        CharSequence signMap = ((StorageService) KernelContext.getService(StorageService.class)).signMap(obj2, treeMap);
                        if (!TextUtils.isEmpty(signMap)) {
                            jSONObject.put("deviceTokenSign", signMap);
                            jSONObject.put("deviceTokenKey", obj2);
                            jSONObject.put("hid", findHistoryAccount.userId);
                        }
                    }
                }
            }
            try {
                JSONObject keyValues = LoginCookieUtils.getKeyValues("alimm_");
                keyValues.put(LoginConstants.MIID, LoginCookieUtils.getValue(LoginConstants.MIID));
                jSONObject.put(LoginConstants.EXT, keyValues);
            } catch (Exception e) {
                e.printStackTrace();
            } catch (JSONException e2) {
            }
            rpcRequest.addParam(LoginConstants.TOKEN_INFO, jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(LoginConstants.UMID_TOKEN, ((StorageService) KernelContext.getService(StorageService.class)).getUmid());
            rpcRequest.addParam(LoginConstants.RISK_CONTROL_INFO, jSONObject2);
            rpcRequest.addParam(LoginConstants.EXT, new JSONObject());
        } catch (JSONException e22) {
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, LoginReturnData.class);
    }

    public static RpcResponse<String> logout() {
        RpcRequest rpcRequest = new RpcRequest();
        rpcRequest.target = "mtop.taobao.havana.mlogin.logout";
        rpcRequest.version = "1.0";
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(LoginConstants.KEY_APPKEY, KernelContext.getAppKey());
            jSONObject.put(LoginConstants.SID, CredentialManager.INSTANCE.getInternalSession().sid);
            jSONObject.put(LoginConstants.IP, CommonUtils.getLocalIPAddress());
            rpcRequest.addParam("userId", Long.valueOf(Long.parseLong(CredentialManager.INSTANCE.getInternalSession().user.userId)));
            rpcRequest.addParam(LoginConstants.REQUEST, jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, String.class);
    }

    public String generateTopAppLinkToken(String str) {
        ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_GENERATE_TAOBAO_SIGN, null);
        TreeMap treeMap = new TreeMap();
        treeMap.put(LoginConstants.KEY_APPKEY, KernelContext.getAppKey());
        treeMap.put("apkSign", str);
        treeMap.put(c.n, "taobao.oauth.code.create");
        String a = a(treeMap);
        RpcRequest rpcRequest = new RpcRequest();
        rpcRequest.target = "com.alibaba.havana.login.applink.generateTopAppLinkToken";
        rpcRequest.version = "1.0";
        String appKey = KernelContext.getAppKey();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(LoginConstants.APP_NAME, appKey);
            jSONObject.put(LoginConstants.TIMESTAMP, "" + System.currentTimeMillis());
            jSONObject.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
            if (KernelContext.isMini) {
                jSONObject.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
            }
            jSONObject.put("sdkVersion", KernelContext.sdkVersion);
            rpcRequest.addParam("baseInfo", jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        rpcRequest.addParam(MaConstants.UT_PARAM_KEY_CONTENT, a);
        try {
            RpcResponse invoke = ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, String.class);
            return invoke != null ? (String) invoke.returnValue : null;
        } catch (RpcException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void goQrCodeLogin(Activity activity, Map<String, Object> map) {
        Class cls;
        Intent intent;
        StringBuilder stringBuilder;
        SDKLogger.d("login", "goQrCodeLogin start");
        Class cls2 = QrLoginActivity.class;
        if (map != null) {
            CharSequence charSequence;
            String charSequence2;
            if (map.get(Constants.USER_ACTIVITY) == null) {
                charSequence2 = "";
            } else {
                charSequence2 = (String) map.get(Constants.USER_ACTIVITY);
            }
            if (!TextUtils.isEmpty(charSequence2)) {
                try {
                    cls = Class.forName((String) map.get(Constants.USER_ACTIVITY));
                } catch (ClassNotFoundException e) {
                    cls = cls2;
                }
                intent = new Intent(activity, cls);
                stringBuilder = new StringBuilder(String.format(ConfigManager.qrCodeLoginUrl, new Object[]{KernelContext.getAppKey()}));
                if (map != null) {
                    if (map.get(LoginConstants.DOMAIN) == null) {
                        charSequence2 = "";
                    } else {
                        charSequence2 = (String) map.get(LoginConstants.DOMAIN);
                    }
                    if (!TextUtils.isEmpty(charSequence2)) {
                        stringBuilder.append(LoginConstants.UNDER_LINE).append(map.get(LoginConstants.DOMAIN));
                    }
                }
                if (map != null) {
                    if (map.get("config") == null) {
                        charSequence2 = "";
                    } else {
                        charSequence2 = (String) map.get("config");
                    }
                    if (!TextUtils.isEmpty(charSequence2)) {
                        charSequence2 = a((String) map.get("config"));
                        if (TextUtils.isEmpty(charSequence2)) {
                            charSequence2 = "";
                        }
                        stringBuilder.append(charSequence2);
                    }
                }
                intent.putExtra("qrCodeLoginUrl", stringBuilder.toString());
                intent.putExtra("passwordLoginUrl", ConfigManager.LOGIN_HOST);
                activity.startActivityForResult(intent, RequestCode.OPEN_QR_LOGIN);
            }
        }
        cls = cls2;
        intent = new Intent(activity, cls);
        stringBuilder = new StringBuilder(String.format(ConfigManager.qrCodeLoginUrl, new Object[]{KernelContext.getAppKey()}));
        if (map != null) {
        }
        if (map != null) {
        }
        intent.putExtra("qrCodeLoginUrl", stringBuilder.toString());
        intent.putExtra("passwordLoginUrl", ConfigManager.LOGIN_HOST);
        activity.startActivityForResult(intent, RequestCode.OPEN_QR_LOGIN);
    }

    public RpcResponse<LoginReturnData> loginByCode(String str) {
        try {
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TOP_TOKEN_LOGIN, null);
            RpcRequest rpcRequest = new RpcRequest();
            rpcRequest.target = "com.taobao.mtop.mloginService.topTokenLogin";
            rpcRequest.version = "1.0";
            try {
                JSONObject jSONObject = new JSONObject();
                if (KernelContext.isMini) {
                    jSONObject.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
                } else {
                    jSONObject.put("utdid", ((RpcService) KernelContext.getService(RpcService.class)).getDeviceId());
                }
                jSONObject.put(LoginConstants.APP_NAME, KernelContext.getAppKey());
                jSONObject.put("token", str);
                jSONObject.put(LoginConstants.TIMESTAMP, "" + System.currentTimeMillis());
                jSONObject.put("sdkVersion", KernelContext.sdkVersion);
                jSONObject.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
                try {
                    JSONObject keyValues = LoginCookieUtils.getKeyValues("alimm_");
                    keyValues.put(LoginConstants.MIID, LoginCookieUtils.getValue(LoginConstants.MIID));
                    jSONObject.put(LoginConstants.EXT, keyValues);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                rpcRequest.addParam(LoginConstants.TOKEN_INFO, jSONObject);
                jSONObject = new JSONObject();
                jSONObject.put(LoginConstants.UMID_TOKEN, ((StorageService) KernelContext.getService(StorageService.class)).getUmid());
                rpcRequest.addParam(LoginConstants.RISK_CONTROL_INFO, jSONObject);
                rpcRequest.addParam(LoginConstants.EXT, new JSONObject());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, LoginReturnData.class);
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public RpcResponse<LoginReturnData> loginByIVToken(String str, String str2, String str3) {
        RpcRequest rpcRequest = new RpcRequest();
        rpcRequest.target = "com.taobao.mtop.mloginService.mloginTokenLogin";
        rpcRequest.version = "1.0";
        try {
            JSONObject jSONObject = new JSONObject();
            if (KernelContext.isMini) {
                jSONObject.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
            } else {
                jSONObject.put("utdid", ((RpcService) KernelContext.getService(RpcService.class)).getDeviceId());
            }
            jSONObject.put(LoginConstants.APP_NAME, KernelContext.getAppKey());
            jSONObject.put("token", str);
            jSONObject.put(LoginConstants.TIMESTAMP, "" + System.currentTimeMillis());
            jSONObject.put("scene", str2);
            jSONObject.put("sdkVersion", KernelContext.sdkVersion);
            jSONObject.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
            try {
                JSONObject keyValues = LoginCookieUtils.getKeyValues("alimm_");
                keyValues.put(LoginConstants.MIID, LoginCookieUtils.getValue(LoginConstants.MIID));
                keyValues.put(Constants.QUERY_STRING, str3);
                jSONObject.put(LoginConstants.EXT, keyValues);
            } catch (Exception e) {
                e.printStackTrace();
            }
            rpcRequest.addParam(LoginConstants.TOKEN_INFO, jSONObject);
            jSONObject = new JSONObject();
            jSONObject.put(LoginConstants.UMID_TOKEN, ((StorageService) KernelContext.getService(StorageService.class)).getUmid());
            rpcRequest.addParam(LoginConstants.RISK_CONTROL_INFO, jSONObject);
            rpcRequest.addParam(LoginConstants.EXT, JSONUtils.toJsonObject(new HashMap()));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return a.d.invoke(rpcRequest, LoginReturnData.class);
    }

    public RpcResponse<LoginReturnData> loginByQRCode(String str, long j) {
        try {
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TOP_TOKEN_LOGIN, null);
            RpcRequest rpcRequest = new RpcRequest();
            rpcRequest.target = "mtop.taobao.havana.mlogin.qrcodelogin";
            rpcRequest.version = "1.0";
            try {
                JSONObject jSONObject = new JSONObject();
                if (KernelContext.isMini) {
                    jSONObject.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
                } else {
                    jSONObject.put("utdid", ((RpcService) KernelContext.getService(RpcService.class)).getDeviceId());
                }
                jSONObject.put(LoginConstants.APP_NAME, KernelContext.getAppKey());
                jSONObject.put("token", str);
                jSONObject.put(LoginConstants.TIMESTAMP, "" + j);
                jSONObject.put("sdkVersion", KernelContext.sdkVersion);
                jSONObject.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
                rpcRequest.addParam(LoginConstants.TOKEN_INFO, jSONObject);
                jSONObject = new JSONObject();
                jSONObject.put(LoginConstants.UMID_TOKEN, ((StorageService) KernelContext.getService(StorageService.class)).getUmid());
                rpcRequest.addParam(LoginConstants.RISK_CONTROL_INFO, jSONObject);
                rpcRequest.addParam(LoginConstants.EXT, new JSONObject());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, LoginReturnData.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public RpcResponse<LoginReturnData> loginByUserName(String str) {
        RpcRequest rpcRequest = new RpcRequest();
        try {
            Object optString;
            JSONObject jSONObject = new JSONObject(str);
            CharSequence optString2 = JSONUtils.optString(jSONObject, "loginid");
            if (TextUtils.isEmpty(optString2)) {
                optString = JSONUtils.optString(jSONObject, "loginId");
            } else {
                CharSequence optString3 = optString2;
            }
            rpcRequest.target = "com.taobao.mtop.mloginService.login";
            rpcRequest.version = "1.0";
            JSONObject jSONObject2 = new JSONObject();
            if (KernelContext.isMini) {
                jSONObject2.put(LoginConstants.APP_ID, KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
            } else {
                jSONObject2.put("utdid", ((RpcService) KernelContext.getService(RpcService.class)).getDeviceId());
            }
            jSONObject2.put(LoginConstants.APP_NAME, KernelContext.getAppKey());
            jSONObject2.put("loginId", optString3);
            jSONObject2.put(LoginConstants.CLIENT_IP, CommonUtils.getLocalIPAddress());
            long currentTimeMillis = System.currentTimeMillis();
            if (!TextUtils.isEmpty(optString3)) {
                HistoryAccount matchHistoryAccount = AccountHistoryManager.getInstance().matchHistoryAccount(optString3);
                if (matchHistoryAccount != null) {
                    Object obj = matchHistoryAccount.tokenKey;
                    if (!TextUtils.isEmpty(obj)) {
                        Object treeMap = new TreeMap();
                        addKey(treeMap, LoginConstants.KEY_APPKEY, KernelContext.getAppKey());
                        addKey(treeMap, LoginConstants.KEY_HAVANAID, matchHistoryAccount.userId);
                        addKey(treeMap, "timestamp", String.valueOf(currentTimeMillis));
                        addKey(treeMap, "appVersion", CommonUtils.getAndroidAppVersion());
                        addKey(treeMap, "sdkVersion", KernelContext.sdkVersion);
                        optString2 = ((StorageService) KernelContext.getService(StorageService.class)).signMap(obj, treeMap);
                        if (!TextUtils.isEmpty(optString2)) {
                            jSONObject2.put("deviceTokenSign", optString2);
                            jSONObject2.put("deviceTokenKey", obj);
                            jSONObject2.put("hid", matchHistoryAccount.userId);
                        }
                    }
                }
            }
            jSONObject2.put("password", Rsa.encrypt(JSONUtils.optString(jSONObject, "password"), RSAKey.getRsaPubkey()));
            jSONObject2.put("pwdEncrypted", true);
            jSONObject2.put("appVersion", CommonUtils.getAndroidAppVersion());
            jSONObject2.put("sdkVersion", KernelContext.sdkVersion);
            jSONObject2.put(LoginConstants.TIMESTAMP, currentTimeMillis + "");
            jSONObject2.put("ccId", JSONUtils.optString(jSONObject, "checkCodeId"));
            jSONObject2.put("checkCode", JSONUtils.optString(jSONObject, "checkCode"));
            try {
                JSONObject keyValues = LoginCookieUtils.getKeyValues("alimm_");
                keyValues.put(LoginConstants.MIID, LoginCookieUtils.getValue(LoginConstants.MIID));
                jSONObject2.put(LoginConstants.EXT, keyValues);
            } catch (Exception e) {
                e.printStackTrace();
            }
            rpcRequest.addParam(LoginConstants.PARAN_LOGIN_INFO, jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            if (KernelContext.isMini) {
                String optString4 = JSONUtils.optString(jSONObject, Constants.UMID);
                jSONObject3.put(LoginConstants.UMID_TOKEN, optString4);
                ((StorageService) KernelContext.getService(StorageService.class)).setUmid(optString4);
            } else {
                jSONObject3.put(LoginConstants.UMID_TOKEN, ((StorageService) KernelContext.getService(StorageService.class)).getUmid());
            }
            jSONObject3.put(Constants.UA, JSONUtils.optString(jSONObject, Constants.UA));
            rpcRequest.addParam(LoginConstants.RISK_CONTROL_INFO, jSONObject3);
            rpcRequest.addParam(LoginConstants.EXT, new JSONObject());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, LoginReturnData.class);
    }

    public void showH5Login(Activity activity) {
        SDKLogger.d("login", "open H5 login");
        Intent intent = new Intent(activity, LoginWebViewActivity.class);
        intent.putExtra("url", ConfigManager.LOGIN_HOST);
        intent.putExtra(Constants.TITLE, ResourceUtils.getString(activity.getApplicationContext(), "com_taobao_tae_sdk_authorize_title"));
        activity.startActivityForResult(intent, RequestCode.OPEN_H5_LOGIN);
    }

    public void showLogin(final Activity activity) {
        SDKLogger.d("login", "showLogin");
        if (KernelContext.sOneTimeAuthOption == AuthOption.H5ONLY) {
            showH5Login(activity);
        } else if (KernelContext.authOption == AuthOption.H5ONLY) {
            showH5Login(activity);
        } else {
            final String apkSignNumber = SystemUtils.getApkSignNumber();
            new AsyncTask<Object, Void, String>() {
                /* renamed from: a */
                protected String doInBackground(Object... objArr) {
                    SDKLogger.d("login", "showLogin doInBackground");
                    if (TextUtils.isEmpty(apkSignNumber)) {
                        return "";
                    }
                    try {
                        return LoginComponent.this.generateTopAppLinkToken(apkSignNumber);
                    } catch (Exception e) {
                        return "";
                    }
                }

                /* renamed from: a */
                protected void onPostExecute(String str) {
                    SDKLogger.d("login", "showLogin onPostExecute signResult = " + str);
                    if (TextUtils.isEmpty(str)) {
                        LoginComponent.this.showH5Login(activity);
                        return;
                    }
                    Intent intent = new Intent();
                    intent.setAction(TBAppLinkUtil.ACTION_CUSTOM);
                    intent.setData(Uri.parse("tbopen://m.taobao.com/getway/oauth?" + "&appkey=" + KernelContext.getAppKey() + "&pluginName=" + "taobao.oauth.code.create" + "&apkSign=" + apkSignNumber + "&sign=" + str));
                    if (activity.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                        try {
                            activity.startActivityForResult(intent, RequestCode.OPEN_TAOBAO);
                            return;
                        } catch (Throwable th) {
                            SDKLogger.d("login", "startActivityForResult fail == " + th.getMessage());
                            LoginComponent.this.showH5Login(activity);
                            return;
                        }
                    }
                    LoginComponent.this.showH5Login(activity);
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        }
    }
}
