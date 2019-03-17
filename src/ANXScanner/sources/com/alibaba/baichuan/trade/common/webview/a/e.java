package com.alibaba.baichuan.trade.common.webview.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcApiPlugin;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.taobao.statistic.TBS;
import com.ut.mini.internal.UTTeamWork;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class e extends AlibcApiPlugin {
    public final void a(String str, AlibcJsCallbackContext alibcJsCallbackContext) {
        try {
            TBS.h5UT(str, alibcJsCallbackContext.getWebview());
            alibcJsCallbackContext.success();
        } catch (Exception e) {
            AlibcJsResult alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("3");
            alibcJsCallbackContext.error(alibcJsResult);
        }
    }

    public final void b(String str, AlibcJsCallbackContext alibcJsCallbackContext) {
        AlibcJsResult alibcJsResult;
        if (TextUtils.isEmpty(str)) {
            alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("2");
            alibcJsCallbackContext.error(alibcJsResult);
            return;
        }
        try {
            JSONObject parseObject = JSON.parseObject(str);
            Set<String> keySet = parseObject.keySet();
            Map hashMap = new HashMap();
            if (keySet != null && keySet.size() > 0) {
                for (String str2 : keySet) {
                    hashMap.put(str2, parseObject.get(str2).toString());
                }
                UTTeamWork.getInstance().turnOnRealTimeDebug(hashMap);
            }
            alibcJsCallbackContext.success();
        } catch (Exception e) {
            alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("3");
            alibcJsCallbackContext.error(alibcJsResult);
        }
    }

    public final void c(String str, AlibcJsCallbackContext alibcJsCallbackContext) {
        try {
            UTTeamWork.getInstance().turnOffRealTimeDebug();
            alibcJsCallbackContext.success();
        } catch (Exception e) {
            AlibcJsResult alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("3");
            alibcJsCallbackContext.error(alibcJsResult);
        }
    }

    public final void d(String str, AlibcJsCallbackContext alibcJsCallbackContext) {
        AlibcJsResult alibcJsResult;
        if (TextUtils.isEmpty(str)) {
            alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("2");
            alibcJsCallbackContext.error(alibcJsResult);
            return;
        }
        try {
            JSONObject parseObject = JSON.parseObject(str);
            Set<String> keySet = parseObject.keySet();
            Map hashMap = new HashMap();
            if (keySet != null && keySet.size() > 0) {
                for (String str2 : keySet) {
                    hashMap.put(str2, parseObject.get(str2).toString());
                }
                UTTeamWork.getInstance().turnOnRealTimeDebug(hashMap);
            }
            alibcJsCallbackContext.success();
        } catch (Exception e) {
            alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("3");
            alibcJsCallbackContext.error(alibcJsResult);
        }
    }

    public final void e(String str, AlibcJsCallbackContext alibcJsCallbackContext) {
        try {
            UTTeamWork.getInstance().turnOffRealTimeDebug();
            alibcJsCallbackContext.success();
        } catch (Exception e) {
            AlibcJsResult alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode("3");
            alibcJsCallbackContext.error(alibcJsResult);
        }
    }

    public boolean execute(String str, String str2, AlibcJsCallbackContext alibcJsCallbackContext) {
        if (AlibcUserTracker.getInstance().isThirdVersion()) {
            AlibcJsResult alibcJsResult = new AlibcJsResult();
            alibcJsResult.setResultCode(AlibcJsResult.FAIL);
            alibcJsCallbackContext.error(alibcJsResult);
            return false;
        } else if ("toUT".equals(str)) {
            a(str2, alibcJsCallbackContext);
            return true;
        } else if ("turnOnUTRealtimeDebug".equals(str)) {
            b(str2, alibcJsCallbackContext);
            return true;
        } else if ("turnOffUTRealtimeDebug".equals(str)) {
            c(str2, alibcJsCallbackContext);
            return true;
        } else if ("turnOnRealtimeDebug".equals(str)) {
            d(str2, alibcJsCallbackContext);
            return true;
        } else if (!"turnOffRealtimeDebug".equals(str)) {
            return false;
        } else {
            e(str2, alibcJsCallbackContext);
            return true;
        }
    }
}
