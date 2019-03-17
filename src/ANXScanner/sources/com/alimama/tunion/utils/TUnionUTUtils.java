package com.alimama.tunion.utils;

import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.base.ITUnionUT;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import com.alipay.sdk.util.e;
import java.util.HashMap;
import java.util.Map;

public class TUnionUTUtils {

    public static class Config {
        public static void start() {
            TUnionUTUtils.b("TUnionConfig", "start", TUnionUTUtils.d());
        }

        public static void failed(String str) {
            Object str2;
            if (TextUtils.isEmpty(str2)) {
                str2 = "None";
            }
            Map b = TUnionUTUtils.d();
            b.put("msg", str2);
            TUnionUTUtils.b("TUnionConfig", e.b, b);
        }
    }

    public static class Convert {
        public static void convert() {
            TUnionUTUtils.b("TUnionConvert", TUnionTradeSDKConstants.TUNION_KEY_API_CONVERT, TUnionUTUtils.c());
        }

        public static void request() {
            TUnionUTUtils.b("TUnionConvert", LoginConstants.REQUEST, TUnionUTUtils.c());
        }

        public static void failed(String str) {
            Object str2;
            if (TextUtils.isEmpty(str2)) {
                str2 = "None";
            }
            Map a = TUnionUTUtils.c();
            a.put("msg", str2);
            TUnionUTUtils.b("TUnionConvert", e.b, a);
        }
    }

    public static class Error {
        public static void error(String str) {
            Object str2;
            Map hashMap = new HashMap();
            if (TextUtils.isEmpty(str2)) {
                str2 = "None";
            }
            hashMap.put("ErrorDescription", str2);
            TUnionUTUtils.b("TUnionError", "ErrorCode", hashMap);
        }
    }

    private static void b(String str, String str2, Map<String, String> map) {
        ITUnionUT tUnionUT = TUnionTradeSDK.getInstance().getTUnionUT();
        if (tUnionUT != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Map map2;
            if (map2 == null) {
                map2 = new HashMap();
            }
            tUnionUT.send(str, str2, map2);
        }
    }

    private static Map<String, String> c() {
        Map<String, String> d = d();
        d.put(TUnionNetworkRequest.TUNION_KEY_PHONE_ID, TUnionPhoneInfoUtils.getInstance().getMcid());
        return d;
    }

    private static Map<String, String> d() {
        Map<String, String> hashMap = new HashMap();
        hashMap.put(TUnionNetworkRequest.TUNION_KEY_CID, TUnionPhoneInfoUtils.getInstance().getCid());
        return hashMap;
    }
}
