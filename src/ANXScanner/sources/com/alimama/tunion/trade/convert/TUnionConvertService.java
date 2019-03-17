package com.alimama.tunion.trade.convert;

import android.net.Uri;
import android.text.TextUtils;
import com.alimama.tunion.trade.TUnionTradeSDK;
import com.alimama.tunion.trade.abtest.TUnionABTestService;
import com.alimama.tunion.trade.base.ITUnionCookie;
import com.alimama.tunion.trade.base.ITUnionNetwork;
import com.alimama.tunion.trade.base.ITUnionNetworkMtop;
import com.alimama.tunion.trade.base.ITUnionWebView;
import com.alimama.tunion.trade.net.ITUnionNetReqCallback;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import com.alimama.tunion.utils.TULog;
import com.alimama.tunion.utils.TUnionPhoneInfoUtils;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;
import com.alimama.tunion.utils.TUnionUTUtils.Config;
import com.alimama.tunion.utils.TUnionUTUtils.Convert;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class TUnionConvertService {
    private static final String[] a = new String[]{"taobao.com", "tmall.com", "alitrip.com", "tmall.hk", "tmall.tw", "aliexpress.com", "1688.com", "alibaba.com"};
    private static final String[] b = new String[]{"^http[s]{0,1}:\\/\\/detail\\.tmall\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/", "^http[s]{0,1}:\\/\\/global\\.click\\.taobao\\.com\\/", "^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/", "^http[s]{0,1}:\\/\\/item\\.tmall\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/item\\.taobao\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/detail\\.taobao\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/chaoshi\\.detail\\.tmall\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/detail\\.tmall\\.hk\\/hk\\/item\\.htm", "^http[s]{0,1}:\\/\\/a\\.m\\.tmall\\.com\\/i\\d+\\.htm", "^http[s]{0,1}:\\/\\/detail\\.m\\.tmall\\.com\\/item\\.htm", "^http[s]{0,1}:\\/\\/a\\.m\\.taobao\\.com\\/i\\d+\\.htm", "^http[s]{0,1}:\\/\\/h5\\.(m|wapa)\\.taobao\\.com\\/awp\\/core\\/detail\\.htm", "^http[s]{0,1}:\\/\\/detail\\.m\\.tmall\\.hk\\/item\\.htm", "^http[s]{0,1}:\\/\\/store\\.tmall\\.com\\/shop\\/view_shop\\.htm", "^http[s]{0,1}:\\/\\/store\\.taobao\\.com\\/shop\\/view_shop\\.htm", "^http[s]{0,1}:\\/\\/shop\\.(m|wapa)\\.taobao\\.com\\/shop\\/shop_index", "^http[s]{0,1}:\\/\\/shop\\.(m|wapa)\\.tmall\\.com\\/shop\\/shop_index", "^http[s]{0,1}:\\/\\/miao\\.item\\.taobao\\.com", "^http[s]{0,1}:\\/\\/kezhan\\.taobao\\.com", "^http[s]{0,1}:\\/\\/trip\\.taobao\\.com", "^http[s]{0,1}:\\/\\/alitrip\\.com", "^http[s]{0,1}:\\/\\/ju\\.taobao\\.com", "^http[s]{0,1}:\\/\\/juhuasuan\\.com", "^http[s]{0,1}:\\/\\/aliyun\\.com", "^http[s]{0,1}:\\/\\/triph5\\.m\\.taobao\\.com", "^http[s]{0,1}:\\/\\/jp\\.m\\.taobao\\.com", "^http[s]{0,1}:\\/\\/jipiao\\.m\\.taobao\\.com", "^http[s]{0,1}:\\/\\/h5\\.m\\.taobao\\.com\\/trip", "^http[s]{0,1}:\\/\\/jhs\\.m\\.taobao\\.com"};

    public void convert(TUnionJumpType tUnionJumpType, ITUnionWebView iTUnionWebView, final String str, TUnionMediaParams tUnionMediaParams, final TUnionConvertCallback tUnionConvertCallback) {
        TUnionPhoneInfoUtils.getInstance().initCid();
        Convert.convert();
        ITUnionCookie tUnionCookie = TUnionTradeSDK.getInstance().getTUnionCookie();
        Object a = a();
        if (!(tUnionCookie == null || TextUtils.isEmpty(a))) {
            tUnionCookie.setCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN, a);
        }
        if (TextUtils.isEmpty(str)) {
            Convert.failed("URL Empty");
            if (tUnionConvertCallback != null) {
                tUnionConvertCallback.onResult(new TUnionConvertResult(tUnionJumpType, str));
                return;
            }
            return;
        }
        TUnionJumpType jumpType;
        if (tUnionMediaParams == null) {
            tUnionMediaParams = new TUnionMediaParams();
        }
        if (TextUtils.isEmpty(tUnionMediaParams.getAdzoneId())) {
            tUnionMediaParams.setAdzoneId(TUnionTradeSDK.getInstance().getAdzoneId());
        }
        TUnionABTestService aBTestService = TUnionTradeSDK.getInstance().getABTestService();
        if (aBTestService != null) {
            jumpType = aBTestService.getJumpType(tUnionJumpType);
        } else {
            jumpType = tUnionJumpType;
        }
        if (a(str, iTUnionWebView)) {
            if (tUnionMediaParams.getExtra() != null) {
                tUnionMediaParams.getExtra().put("url", str);
                tUnionMediaParams.getExtra().put(TUnionNetworkRequest.TUNION_KEY_JUMP_TYPE, a(tUnionJumpType));
            } else {
                Map hashMap = new HashMap();
                hashMap.put("url", str);
                hashMap.put(TUnionNetworkRequest.TUNION_KEY_JUMP_TYPE, a(tUnionJumpType));
                tUnionMediaParams.setExtra(hashMap);
            }
            ITUnionNetwork tUnionNetwork = TUnionTradeSDK.getInstance().getTUnionNetwork();
            if (tUnionNetwork != null) {
                TUnionNetworkRequest createConvertRequest = TUnionNetworkRequest.createConvertRequest(tUnionMediaParams, tUnionNetwork instanceof ITUnionNetworkMtop);
                Convert.request();
                TULog.d("convert is calling...", new Object[0]);
                tUnionNetwork.sendRequest(createConvertRequest, new ITUnionNetReqCallback() {
                    public void onSuccess(int i, JSONObject jSONObject) {
                        String str = null;
                        if (jSONObject != null) {
                            str = jSONObject.optString("url");
                        } else {
                            Config.failed("Server Response is empty");
                        }
                        if (TextUtils.isEmpty(str) || str.equals("null")) {
                            str = str;
                            Config.failed("Server Response is non-empty, but no url");
                        } else {
                            str = TUnionConvertService.this.a(str, jumpType);
                        }
                        if (tUnionConvertCallback != null) {
                            tUnionConvertCallback.onResult(new TUnionConvertResult(jumpType, str));
                        }
                    }

                    public void onError(int i, String str, JSONObject jSONObject) {
                        Convert.failed(str);
                        if (tUnionConvertCallback != null) {
                            tUnionConvertCallback.onResult(new TUnionConvertResult(jumpType, str));
                        }
                    }
                });
                return;
            }
        }
        if (tUnionConvertCallback != null) {
            tUnionConvertCallback.onResult(new TUnionConvertResult(jumpType, str));
        }
    }

    private String a(String str, TUnionJumpType tUnionJumpType) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!str.matches("^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/.*") && !str.matches("^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/.*")) {
            return str;
        }
        Object a = a();
        CharSequence query = Uri.parse(str).getQuery();
        if (TextUtils.isEmpty(a)) {
            return str;
        }
        String replace = a.replace("sdk_param=", "");
        if (TextUtils.isEmpty(query)) {
            return String.format("%s?%s=%s", new Object[]{str, "clk1", replace});
        }
        return String.format("%s&%s=%s", new Object[]{str, "clk1", replace});
    }

    private boolean a(String str, ITUnionWebView iTUnionWebView) {
        String str2 = null;
        if (iTUnionWebView != null) {
            str2 = iTUnionWebView.getUrl();
        }
        return a(str, str2);
    }

    private boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || !b(str) || a(str2)) {
            return false;
        }
        return true;
    }

    private boolean a(String str) {
        return a(str, a);
    }

    private boolean b(String str) {
        return a(str, b);
    }

    private static boolean a(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            try {
                boolean find = Pattern.compile(strArr[i]).matcher(str).find();
                if (find) {
                    return find;
                }
                i++;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x005a A:{SYNTHETIC, Splitter: B:11:0x005a} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0066  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String a() {
        JSONObject jSONObject;
        Exception e;
        CharSequence charSequence = null;
        TUnionABTestService aBTestService = TUnionTradeSDK.getInstance().getABTestService();
        if (aBTestService == null) {
            return charSequence;
        }
        String aBTestCookies;
        String aBTestValue = aBTestService.getABTestValue(TUnionTradeSDKConstants.TUNION_KEY_ABTEST);
        if (TextUtils.isEmpty(aBTestValue)) {
            Object jSONObject2 = charSequence;
        } else {
            TULog.d("abtest str(append abtest params) is " + aBTestValue, new Object[0]);
            try {
                jSONObject2 = new JSONObject(aBTestValue);
                try {
                    charSequence = String.format(",%s:%s", new Object[]{TUnionNetworkRequest.TUNION_KEY_CID, TUnionPhoneInfoUtils.getInstance().getCid()});
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                jSONObject2 = charSequence;
                e.printStackTrace();
                aBTestCookies = aBTestService.getABTestCookies(jSONObject2);
                if (!TextUtils.isEmpty(charSequence)) {
                }
                if (!TextUtils.isEmpty(charSequence)) {
                }
            }
        }
        aBTestCookies = aBTestService.getABTestCookies(jSONObject2);
        if (TextUtils.isEmpty(charSequence)) {
            try {
                charSequence = URLEncoder.encode(charSequence, "UTF-8");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            return aBTestCookies;
        }
        return String.format("%s%s", new Object[]{aBTestCookies, charSequence});
    }

    private String a(TUnionJumpType tUnionJumpType) {
        String str = "";
        switch (tUnionJumpType) {
            case NATIVE:
                return "tb";
            case H5:
                return "h5";
            case BROWSER:
                return "br";
            default:
                return str;
        }
    }
}
