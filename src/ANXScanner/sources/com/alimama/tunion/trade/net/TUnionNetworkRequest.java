package com.alimama.tunion.trade.net;

import android.text.TextUtils;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.convert.TUnionMediaParams;
import com.alimama.tunion.utils.TUnionPhoneInfoUtils;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;
import java.util.HashMap;
import java.util.Map;

public class TUnionNetworkRequest {
    public static final String TUNION_KEY_ADZONEID = "adzoneid";
    public static final String TUNION_KEY_APPKEY = "appkey";
    public static final String TUNION_KEY_APP_VERSION_NAME = "appVersion";
    public static final String TUNION_KEY_CID = "cid";
    public static final String TUNION_KEY_COOKIE_CNA = "acookie";
    public static final String TUNION_KEY_DEVICE_MODEL = "deviceModel";
    public static final String TUNION_KEY_INSTALLED_ALI_APP = "aliapp";
    public static final String TUNION_KEY_JUMP_TYPE = "jtype";
    public static final String TUNION_KEY_OS = "os";
    public static final String TUNION_KEY_OS_NAME = "android";
    public static final String TUNION_KEY_PACKAGE_NAME = "packageName";
    public static final String TUNION_KEY_PHONE_ID = "mcid";
    public static final String TUNION_KEY_SDK_VERSION = "sdkVersion";
    public static final String TUNION_KEY_SUBPID = "subpid";
    public static final String TUNION_KEY_UNID = "unid";
    public static final String TUNION_KEY_USERID = "userId";
    private String a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h = "";
    private Map<String, String> i;
    private String j;
    private String k;
    private int l;
    private boolean m;
    private int n = -1;
    private boolean o = true;
    private Map<String, String> p;

    private static Map<String, String> a(boolean z) {
        Object hashMap = new HashMap();
        CharSequence aliApp = TUnionPhoneInfoUtils.getInstance().getAliApp();
        if (TextUtils.isEmpty(aliApp)) {
            hashMap.put(TUNION_KEY_INSTALLED_ALI_APP, "");
        } else {
            hashMap.put(TUNION_KEY_INSTALLED_ALI_APP, aliApp);
        }
        if (!TextUtils.isEmpty(TUnionPhoneInfoUtils.getInstance().getMcid())) {
            hashMap.put(TUNION_KEY_PHONE_ID, TUnionPhoneInfoUtils.getInstance().getMcid());
        }
        aliApp = TUnionTradeSDK.getInstance().getAppkey();
        if (!(z || TextUtils.isEmpty(aliApp))) {
            hashMap.put("appkey", aliApp);
        }
        String str = TUNION_KEY_OS;
        StringBuilder append = new StringBuilder().append("android");
        TUnionPhoneInfoUtils.getInstance();
        hashMap.put(str, append.append(TUnionPhoneInfoUtils.getSDKVersion()).toString());
        str = TUNION_KEY_DEVICE_MODEL;
        TUnionPhoneInfoUtils.getInstance();
        hashMap.put(str, TUnionPhoneInfoUtils.getBuildModel());
        hashMap.put(TUNION_KEY_PACKAGE_NAME, TUnionPhoneInfoUtils.getInstance().getPackageName());
        hashMap.put("sdkVersion", "0.3.4");
        hashMap.put("appVersion", TUnionPhoneInfoUtils.getInstance().getAppVersion());
        return hashMap;
    }

    public static TUnionNetworkRequest createABTestRequest(boolean z) {
        TUnionNetworkRequest tUnionNetworkRequest = new TUnionNetworkRequest();
        tUnionNetworkRequest.setUrlName(TUnionTradeSDKConstants.TUNION_KEY_API_CONFIG_URL);
        tUnionNetworkRequest.setMtopApiName(TUnionTradeSDKConstants.TUNION_KEY_API_CONFIG_MTOP);
        tUnionNetworkRequest.setMtopApiVersion("1.0");
        tUnionNetworkRequest.setTimeOut(TUnionTradeSDKConstants.TUNION_KEY_NETWORK_TIMEOUT);
        if (z) {
            tUnionNetworkRequest.setPost(true);
        } else {
            tUnionNetworkRequest.setPost(true);
        }
        tUnionNetworkRequest.setParamMap(a(z));
        return tUnionNetworkRequest;
    }

    private static Map<String, String> a(TUnionMediaParams tUnionMediaParams, boolean z) {
        Map<String, String> hashMap = new HashMap();
        CharSequence aliApp = TUnionPhoneInfoUtils.getInstance().getAliApp();
        if (!TextUtils.isEmpty(aliApp)) {
            hashMap.put(TUNION_KEY_INSTALLED_ALI_APP, aliApp);
        }
        if (!TextUtils.isEmpty(TUnionPhoneInfoUtils.getInstance().getCnaCookie())) {
            hashMap.put(TUNION_KEY_COOKIE_CNA, TUnionPhoneInfoUtils.getInstance().getCnaCookie());
        }
        if (!TextUtils.isEmpty(TUnionPhoneInfoUtils.getInstance().getMcid())) {
            hashMap.put(TUNION_KEY_PHONE_ID, TUnionPhoneInfoUtils.getInstance().getMcid());
        }
        if (!TextUtils.isEmpty(TUnionPhoneInfoUtils.getInstance().getCid())) {
            hashMap.put(TUNION_KEY_CID, TUnionPhoneInfoUtils.getInstance().getCid());
        }
        String str = TUNION_KEY_OS;
        StringBuilder append = new StringBuilder().append("android");
        TUnionPhoneInfoUtils.getInstance();
        hashMap.put(str, append.append(TUnionPhoneInfoUtils.getSDKVersion()).toString());
        str = TUNION_KEY_DEVICE_MODEL;
        TUnionPhoneInfoUtils.getInstance();
        hashMap.put(str, TUnionPhoneInfoUtils.getBuildModel());
        hashMap.put(TUNION_KEY_PACKAGE_NAME, TUnionPhoneInfoUtils.getInstance().getPackageName());
        hashMap.put("sdkVersion", "0.3.4");
        hashMap.put("appVersion", TUnionPhoneInfoUtils.getInstance().getAppVersion());
        aliApp = tUnionMediaParams.getAdzoneId();
        CharSequence appkey = TUnionTradeSDK.getInstance().getAppkey();
        if (TextUtils.isEmpty(aliApp)) {
            aliApp = TUnionTradeSDK.getInstance().getAdzoneId();
        }
        if (!(z || TextUtils.isEmpty(appkey))) {
            hashMap.put("appkey", appkey);
        }
        if (!TextUtils.isEmpty(aliApp)) {
            hashMap.put(TUNION_KEY_ADZONEID, aliApp);
        }
        if (!TextUtils.isEmpty(tUnionMediaParams.getSubpid())) {
            hashMap.put("subpid", tUnionMediaParams.getSubpid());
        }
        if (!TextUtils.isEmpty(tUnionMediaParams.getUnid())) {
            hashMap.put(TUNION_KEY_UNID, tUnionMediaParams.getUnid());
        }
        if (!(tUnionMediaParams.getExtra() == null || tUnionMediaParams.getExtra().isEmpty())) {
            hashMap.putAll(tUnionMediaParams.getExtra());
        }
        return hashMap;
    }

    public static TUnionNetworkRequest createConvertRequest(TUnionMediaParams tUnionMediaParams, boolean z) {
        TUnionNetworkRequest tUnionNetworkRequest = new TUnionNetworkRequest();
        tUnionNetworkRequest.setUrlName(TUnionTradeSDKConstants.TUNION_KEY_API_CONVERT_URL);
        tUnionNetworkRequest.setMtopApiName(TUnionTradeSDKConstants.TUNION_KEY_API_CONVERT_MTOP);
        tUnionNetworkRequest.setMtopApiVersion("1.0");
        tUnionNetworkRequest.setTimeOut(TUnionTradeSDKConstants.TUNION_KEY_NETWORK_TIMEOUT);
        if (z) {
            tUnionNetworkRequest.setPost(false);
        } else {
            tUnionNetworkRequest.setPost(true);
        }
        tUnionNetworkRequest.setParamMap(a(tUnionMediaParams, z));
        return tUnionNetworkRequest;
    }

    public static TUnionNetworkRequest createTokenRequest(String str) {
        TUnionNetworkRequest tUnionNetworkRequest = new TUnionNetworkRequest();
        tUnionNetworkRequest.setUrlName(TUnionTradeSDKConstants.TUNION_KEY_API_GET_TOKEN_URL);
        tUnionNetworkRequest.setTimeOut(TUnionTradeSDKConstants.TUNION_KEY_NETWORK_TIMEOUT);
        tUnionNetworkRequest.setPost(true);
        tUnionNetworkRequest.setParamMap(a(str));
        return tUnionNetworkRequest;
    }

    private static Map<String, String> a(String str) {
        Map<String, String> hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("userId", str);
        }
        CharSequence appkey = TUnionTradeSDK.getInstance().getAppkey();
        if (!TextUtils.isEmpty(appkey)) {
            hashMap.put("appkey", appkey);
        }
        return hashMap;
    }

    public String getUrlName() {
        return this.a;
    }

    public void setUrlName(String str) {
        this.a = str;
    }

    public String getMtopApiName() {
        return this.b;
    }

    public void setMtopApiName(String str) {
        this.b = str;
    }

    public String getMtopApiVersion() {
        return this.c;
    }

    public void setMtopApiVersion(String str) {
        this.c = str;
    }

    public boolean isMtopNeedLogin() {
        return this.d;
    }

    public void setMtopNeedLogin(boolean z) {
        this.d = z;
    }

    public boolean isMtopNeedCache() {
        return this.g;
    }

    public void setMtopNeedCache(boolean z) {
        this.g = z;
    }

    public boolean isMtopNeedAuth() {
        return this.e;
    }

    public void setMtopNeedAuth(boolean z) {
        this.e = z;
    }

    public boolean isMtopNeedWua() {
        return this.f;
    }

    public void setMtopNeedWua(boolean z) {
        this.f = z;
    }

    public boolean isPost() {
        return this.o;
    }

    public void setPost(boolean z) {
        this.o = z;
    }

    public int getMtopRequestType() {
        return this.l;
    }

    public void setMtopRequestType(int i) {
        this.l = i;
    }

    public String getMtopAuthParams() {
        return this.h;
    }

    public void setMtopAuthParams(String str) {
        this.h = str;
    }

    public int getTimeOut() {
        return this.n;
    }

    public void setTimeOut(int i) {
        this.n = i;
    }

    public Map<String, String> getMtopExtHeaders() {
        return this.i;
    }

    public void setMtopExtHeaders(Map<String, String> map) {
        this.i = map;
    }

    public String getMtopOpenAppKey() {
        return this.j;
    }

    public void setMtopOpenAppKey(String str) {
        this.j = str;
    }

    public String getMtopAccessToken() {
        return this.k;
    }

    public void setMtopAccessToken(String str) {
        this.k = str;
    }

    public boolean isMtopIsVip() {
        return this.m;
    }

    public void setMtopIsVip(boolean z) {
        this.m = z;
    }

    public Map<String, String> getParamMap() {
        return this.p;
    }

    public void setParamMap(Map<String, String> map) {
        this.p = map;
    }
}
