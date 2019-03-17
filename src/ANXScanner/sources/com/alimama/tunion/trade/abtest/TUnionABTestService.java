package com.alimama.tunion.trade.abtest;

import android.text.TextUtils;
import com.alimama.tunion.a.a;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.base.ITUnionCookie;
import com.alimama.tunion.trade.base.ITUnionNetwork;
import com.alimama.tunion.trade.base.ITUnionNetworkMtop;
import com.alimama.tunion.trade.convert.TUnionJumpType;
import com.alimama.tunion.trade.net.ITUnionNetReqCallback;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import com.alimama.tunion.utils.TULog;
import com.alimama.tunion.utils.TUnionPhoneInfoUtils;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;
import com.alimama.tunion.utils.TUnionUTUtils.Config;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

public class TUnionABTestService {
    public static final String TUNION_KEY_SDK_COOKIE = "sdk_param";
    private long a = 0;
    private boolean b = false;
    private boolean c = true;
    private boolean d = true;

    public TUnionABTestValue isSsoLoginServiceOn() {
        if (!this.c) {
            return TUnionABTestValue.INVALID;
        }
        TUnionABTestService aBTestService = TUnionTradeSDK.getInstance().getABTestService();
        if (aBTestService != null) {
            return a(aBTestService.getABTestValue("loginService"), TUnionABTestValue.INVALID);
        }
        return TUnionABTestValue.INVALID;
    }

    public TUnionABTestValue isJumpServiceOn() {
        if (!this.c) {
            return TUnionABTestValue.INVALID;
        }
        TUnionABTestService aBTestService = TUnionTradeSDK.getInstance().getABTestService();
        if (aBTestService != null) {
            return a(aBTestService.getABTestValue("jumpService"), TUnionABTestValue.INVALID);
        }
        return TUnionABTestValue.INVALID;
    }

    public TUnionJumpType getJumpType(TUnionJumpType tUnionJumpType) {
        TUnionABTestValue tUnionABTestValue = TUnionABTestValue.INVALID;
        String a = a.a().a("jumpService");
        if (!TextUtils.isEmpty(a)) {
            tUnionABTestValue = a(a, TUnionABTestValue.INVALID);
        }
        switch (tUnionABTestValue) {
            case YES:
                return TUnionJumpType.NATIVE;
            case NO:
                return TUnionJumpType.H5;
            default:
                return tUnionJumpType;
        }
    }

    private TUnionABTestValue a(String str, TUnionABTestValue tUnionABTestValue) {
        if (TextUtils.isEmpty(str)) {
            return tUnionABTestValue;
        }
        return a(str, false) ? TUnionABTestValue.YES : TUnionABTestValue.NO;
    }

    private boolean a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        if ("true".equalsIgnoreCase(str)) {
            return true;
        }
        if ("yes".equalsIgnoreCase(str)) {
            return true;
        }
        if ("no".equalsIgnoreCase(str)) {
            return false;
        }
        if (SymbolExpUtil.STRING_FALSE.equalsIgnoreCase(str)) {
            return false;
        }
        return z;
    }

    public void enable(boolean z) {
        this.c = z;
        if (this.c) {
            b();
            return;
        }
        ITUnionCookie tUnionCookie = TUnionTradeSDK.getInstance().getTUnionCookie();
        if (tUnionCookie != null) {
            tUnionCookie.setCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN, c());
        }
        a.a().a(TUnionTradeSDKConstants.TUNION_KEY_ABTEST, c());
        a.a().a("jumpService", "");
        a.a().a("loginService", "");
    }

    public boolean isEnabled() {
        return this.c;
    }

    public String getABTestValue(String str) {
        if (!this.c) {
            return null;
        }
        String a = a.a().a(str);
        b();
        return a;
    }

    private void a() {
        this.b = true;
        ITUnionNetwork tUnionNetwork = TUnionTradeSDK.getInstance().getTUnionNetwork();
        TUnionNetworkRequest createABTestRequest = TUnionNetworkRequest.createABTestRequest(tUnionNetwork instanceof ITUnionNetworkMtop);
        if (tUnionNetwork != null) {
            Config.start();
            TULog.d("config is calling...", new Object[0]);
            tUnionNetwork.sendRequest(createABTestRequest, new ITUnionNetReqCallback() {
                public void onSuccess(int i, JSONObject jSONObject) {
                    TUnionABTestService.this.b = false;
                    TUnionABTestService.this.a = System.currentTimeMillis();
                    TULog.d("ABtest response: " + jSONObject.toString(), new Object[0]);
                    JSONObject optJSONObject = jSONObject.optJSONObject(TUnionTradeSDKConstants.TUNION_KEY_ABTEST);
                    if (optJSONObject == null) {
                        optJSONObject = jSONObject.optJSONObject("config");
                    }
                    ITUnionCookie tUnionCookie = TUnionTradeSDK.getInstance().getTUnionCookie();
                    Object aBTestCookies = TUnionABTestService.this.getABTestCookies(optJSONObject);
                    TULog.d("taobaodo cookies值 " + aBTestCookies, new Object[0]);
                    if (!(tUnionCookie == null || TextUtils.isEmpty(aBTestCookies))) {
                        tUnionCookie.setCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN, aBTestCookies);
                    }
                    if (optJSONObject != null) {
                        a.a().a(TUnionTradeSDKConstants.TUNION_KEY_ABTEST, optJSONObject.toString());
                        a.a().a("jumpService", optJSONObject.optString("jumpService"));
                        a.a().a("loginService", optJSONObject.optString("loginService"));
                    }
                    a.a().a("config", jSONObject.toString());
                }

                public void onError(int i, String str, JSONObject jSONObject) {
                    Config.failed("ABTest request failed:" + str);
                    TUnionABTestService.this.b = false;
                }
            });
        }
    }

    private void b() {
        if (!this.b && System.currentTimeMillis() - this.a >= 600000) {
            a();
        }
    }

    public void startInitialFetch() {
        if (this.d) {
            this.d = false;
            b();
        }
    }

    public String getABTestCookies(JSONObject jSONObject) {
        String str = a(jSONObject).toString();
        try {
            str = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return String.format("%s=%s", new Object[]{TUNION_KEY_SDK_COOKIE, str});
    }

    private String a(JSONObject jSONObject) {
        StringBuilder stringBuilder = new StringBuilder();
        if (jSONObject == null) {
            return c();
        }
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            if (!TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(jSONObject.optString(str))) {
                    stringBuilder.append(String.format("%s:%s,", new Object[]{str, jSONObject.optString(str)}));
                }
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
        }
        return stringBuilder.toString();
    }

    private String c() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("abtest:nouse");
        stringBuilder.append(",mcid:");
        String mcid = TUnionPhoneInfoUtils.getInstance().getMcid();
        String cid = TUnionPhoneInfoUtils.getInstance().getCid();
        if (mcid == null) {
            mcid = "";
        }
        if (cid == null) {
            cid = "";
        }
        stringBuilder.append(mcid);
        stringBuilder.append(",cid:");
        stringBuilder.append(cid);
        return stringBuilder.toString();
    }
}
