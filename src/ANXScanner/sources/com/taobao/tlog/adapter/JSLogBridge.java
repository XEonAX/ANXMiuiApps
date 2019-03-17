package com.taobao.tlog.adapter;

import android.taobao.windvane.jsbridge.WVApiPlugin;
import android.taobao.windvane.jsbridge.WVCallBackContext;
import android.taobao.windvane.jsbridge.WVPluginManager;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.taobao.ma.common.constants.MaConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class JSLogBridge extends WVApiPlugin {
    private static final String GETLOGLEVEL = "getLogLevel";
    private static final String LOGD = "logd";
    private static final String LOGE = "loge";
    private static final String LOGI = "logi";
    private static final String LOGV = "logv";
    private static final String LOGW = "logw";
    private static final String tlogBridgeName = "tlogBridge";

    class LogBody {
        String data;
        String module;
        String tag;

        LogBody() {
        }
    }

    public static void init() {
        WVPluginManager.registerPlugin(tlogBridgeName, JSLogBridge.class, true);
    }

    public boolean execute(String action, String params, WVCallBackContext callback) {
        if (TextUtils.isEmpty(action) || callback == null) {
            return false;
        }
        if (GETLOGLEVEL.equals(action)) {
            callback.success(AdapterForTLog.getLogLevel());
        } else if (LOGV.equals(action)) {
            logv(params, callback);
        } else if (LOGD.equals(action)) {
            logd(params, callback);
        } else if (LOGI.equals(action)) {
            logi(params, callback);
        } else if (LOGW.equals(action)) {
            logw(params, callback);
        } else if (!LOGE.equals(action)) {
            return false;
        } else {
            loge(params, callback);
        }
        return true;
    }

    public void logv(String content, WVCallBackContext callBack) {
        LogBody logBody = getLog(content);
        if (logBody != null) {
            AdapterForTLog.logv(logBody.tag, content);
            callBack.success();
            return;
        }
        callBack.error("the tag is null!");
    }

    public void logd(String content, WVCallBackContext callBack) {
        LogBody logBody = getLog(content);
        if (logBody != null) {
            AdapterForTLog.logd(logBody.tag, content);
            callBack.success();
            return;
        }
        callBack.error("the tag is null!");
    }

    public void logi(String content, WVCallBackContext callBack) {
        LogBody logBody = getLog(content);
        if (logBody != null) {
            AdapterForTLog.logi(logBody.tag, content);
            callBack.success();
            return;
        }
        callBack.error("the tag is null!");
    }

    public void logw(String content, WVCallBackContext callBack) {
        LogBody logBody = getLog(content);
        if (logBody != null) {
            AdapterForTLog.logw(logBody.tag, content);
            callBack.success();
            return;
        }
        callBack.error("the tag is null!");
    }

    public void loge(String content, WVCallBackContext callBack) {
        LogBody logBody = getLog(content);
        if (logBody != null) {
            AdapterForTLog.loge(logBody.tag, content);
            callBack.success();
            return;
        }
        callBack.error("the tag is null!");
    }

    private LogBody getLog(String params) {
        try {
            LogBody log = new LogBody();
            JSONObject jsObj = new JSONObject(params);
            log.tag = jsObj.optString(AppLinkConstants.TAG, "jsTag");
            log.data = jsObj.optString(MaConstants.UT_PARAM_KEY_CONTENT, "");
            return log;
        } catch (JSONException e) {
            return null;
        }
    }
}
