package com.baidu.homework.api;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Base64;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alipay.sdk.packet.d;
import com.baidu.homework.common.a;
import com.baidu.homework.model.SearchResult;
import com.baidu.homework.network.NetworkCallback;
import com.baidu.homework.network.Request;
import com.baidu.homework.network.c;
import com.baidu.homework.network.e;
import com.taobao.ma.common.constants.MaConstants;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ZybAPI {
    private static String APPID = null;
    public static final String HOST = "https://www.zybang.com";
    private static final String NEW_SUFFIX = "f_webp";
    private static final String OLD_SUFFIX = ".webp";
    private static final String PHOTO_BIG = "http://d.hiphotos.baidu.com/zhidao/pic/item/";
    private static final String PHOTO_SMALL = "http://d.hiphotos.baidu.com/zhidao/abpic/item/";
    public static final int VC = 4;
    public static final String VCNAME = "1.3.0c";

    public static String getOriginUrlByPid(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.startsWith("zyb_")) {
            return String.format("http://img.zuoyebang.cc/%s.jpg@%s", new Object[]{str, NEW_SUFFIX});
        } else if (str.startsWith("http")) {
            return str;
        } else {
            if (!str.startsWith("qa_")) {
                return new StringBuilder(PHOTO_BIG).append(str).append(OLD_SUFFIX).toString();
            }
            return String.format("http://test-image.bceimg.com/%s.jpg@%s", new Object[]{str, NEW_SUFFIX});
        }
    }

    public static Request getResultBySid(Context context, String str, NetworkCallback<SearchResult> networkCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(LoginConstants.SID, str);
        Request cVar = new c("https://www.zybang.com/search/sdk/searchresult", hashMap);
        new c(context, cVar, str, networkCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return cVar;
    }

    public static String getThumbnailUrlByPid(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.startsWith("zyb_")) {
            return String.format("http://img.zuoyebang.cc/%s.jpg@s_0,w_200,h_200,%s", new Object[]{str, NEW_SUFFIX});
        } else if (str.startsWith("http")) {
            return str;
        } else {
            if (!str.startsWith("qa_")) {
                return new StringBuilder(PHOTO_SMALL).append(str).append(OLD_SUFFIX).toString();
            }
            return String.format("http://test-image.bceimg.com/%s.jpg@s_0,w_200,h_200,%s", new Object[]{str, NEW_SUFFIX});
        }
    }

    private static SearchResult parseSearchResult(JSONObject jSONObject) {
        try {
            int i = jSONObject.getInt("errNo");
            if (i != 0) {
                return i == 99999 ? new SearchResult(4) : new SearchResult(2);
            } else {
                JSONObject jSONObject2 = jSONObject.getJSONObject(d.k);
                JSONArray jSONArray = jSONObject2.getJSONArray("htmls");
                String optString = jSONObject2.optString(LoginConstants.SID);
                String optString2 = jSONObject2.optString(AppLinkConstants.PID);
                String[] strArr = new String[jSONArray.length()];
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    strArr[i2] = e.a(jSONArray.getString(i2));
                }
                return new SearchResult(0, strArr, optString, optString2);
            }
        } catch (JSONException e) {
            return new SearchResult(3);
        }
    }

    public static Request picSearch(Context context, byte[] bArr, NetworkCallback<SearchResult> networkCallback) {
        Request dVar = new com.baidu.homework.network.d("https://www.zybang.com/search/sdk/picsearch", bArr, "image", null);
        new a(context, dVar, networkCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return dVar;
    }

    public static void setUID(Context context, String str) {
        a.b(context, Base64.encodeToString(new a("ewP@5fAz%$RBM5Ye").a(str.getBytes()), 2));
    }

    public static Request textSearch(Context context, String str, NetworkCallback<SearchResult> networkCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(MaConstants.UT_PARAM_KEY_CONTENT, str);
        Request cVar = new c("https://www.zybang.com/search/sdk/textsearch", hashMap);
        new b(context, cVar, networkCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return cVar;
    }
}
