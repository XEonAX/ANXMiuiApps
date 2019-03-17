package com.alibaba.imagesearch.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.imagesearch.Pailitao.SearchImageCallback;
import com.alibaba.imagesearch.ui.SearchResultActivity;
import com.alibaba.imagesearch.utils.PLog;
import com.alibaba.imagesearch.utils.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class c extends a {
    private final SearchImageCallback b;

    public c(SearchImageCallback searchImageCallback) {
        this.b = searchImageCallback;
    }

    private Map<String, String> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Map<String, String> hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashMap.put(str, jSONObject.optString(str));
        }
        return hashMap;
    }

    public void a(String str) {
        PLog.d("UTCtrlClicked==>" + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("Page");
            String optString2 = jSONObject.optString("Ctrl");
            jSONObject = jSONObject.optJSONObject("Args");
            if (TextUtils.isEmpty(optString)) {
                optString = "PailitaoResult";
            }
            if (TextUtils.isEmpty(optString2)) {
                optString2 = "unknown";
            }
            Map hashMap = new HashMap();
            hashMap.put("_bc_from_", com.alibaba.imagesearch.utils.c.c().getVendorId());
            Map a = a(jSONObject);
            if (a != null) {
                hashMap.putAll(a);
            }
            e.a(optString, optString2, hashMap);
            PLog.i("UTCtrlClick==>" + hashMap.toString());
        } catch (Throwable th) {
            PLog.e("UTCtrlClick", th);
        }
    }

    public void b(String str) {
        String optString;
        long optLong;
        Map hashMap;
        PLog.d("LoadFinished==>" + str);
        if (this.a instanceof SearchResultActivity) {
            ((SearchResultActivity) this.a).a();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            optString = jSONObject.optString("cat");
            jSONObject = jSONObject.optJSONObject("performace");
            if (jSONObject != null) {
                optLong = jSONObject.optLong("H5Render", -1) + (jSONObject.optLong("H5Init", -1) + jSONObject.optLong("H5Mtop", -1));
                hashMap = new HashMap();
                hashMap.put("cat", optString);
                hashMap.put("pageLoad", String.valueOf(optLong));
                hashMap.put("_bc_from_", com.alibaba.imagesearch.utils.c.c().getVendorId());
                e.a("PailitaoResult", "LoadFinished", hashMap);
            }
        } catch (Throwable th) {
            PLog.d("LoadFinished error = " + th);
            return;
        }
        optLong = 0;
        hashMap = new HashMap();
        hashMap.put("cat", optString);
        hashMap.put("pageLoad", String.valueOf(optLong));
        hashMap.put("_bc_from_", com.alibaba.imagesearch.utils.c.c().getVendorId());
        e.a("PailitaoResult", "LoadFinished", hashMap);
    }

    public void c(String str) {
        PLog.d("ScrollToTop==>" + str);
        try {
            boolean optBoolean = new JSONObject(str).optBoolean("top");
            if (this.b != null) {
                PLog.d("ScrollToTop Callback called , top = " + optBoolean);
                this.b.onScrollChanged(optBoolean);
            }
        } catch (Throwable th) {
            PLog.d("ScrollToTop error = " + th);
        }
    }

    public boolean execute(String str, String str2, AlibcJsCallbackContext alibcJsCallbackContext) {
        PLog.d("execute, action = " + str);
        if (TextUtils.equals(str, "ShowLoadingBox") || TextUtils.equals(str, "H5Status") || TextUtils.equals(str, "HideLoadingBox")) {
            return true;
        }
        if (TextUtils.equals(str, "UTCtrlClick")) {
            a(str2);
            return true;
        } else if (TextUtils.equals(str, "LoadFinished")) {
            b(str2);
            return true;
        } else if (TextUtils.equals(str, "PLogD")) {
            PLog.d(str2);
            return true;
        } else if (TextUtils.equals(str, "PLogE")) {
            PLog.e(str2);
            return true;
        } else if (!"ScrollToTop".equals(str)) {
            return false;
        } else {
            c(str2);
            return true;
        }
    }
}
