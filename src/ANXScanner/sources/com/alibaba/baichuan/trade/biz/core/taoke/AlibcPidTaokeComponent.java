package com.alibaba.baichuan.trade.biz.core.taoke;

import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.b.a;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import com.alibaba.baichuan.trade.common.utils.network.NetworkUtils;
import java.util.HashMap;
import java.util.Map;

public class AlibcPidTaokeComponent {
    public static final int ASYNC_TAOKE_TYPE = 0;
    public static final int ERRCODE_NO_NETWORK = -1;
    public static final int ERRCODE_PARAM_ERROR = -2;
    public static final String ERRMSG_NO_NETWORK = "没有网络,淘客打点失败";
    public static final String ERRMSG_PARAM_ERROR = "参数错误,淘客打点失败";
    public static final AlibcPidTaokeComponent INSTANCE = new AlibcPidTaokeComponent();
    public static final int SYNC_TAOKE_TYPE = 1;

    private AlibcPidTaokeComponent() {
    }

    private void a(String str) {
        AlibcUserTradeHelper.sendUseabilitySuccess(str);
    }

    private void a(String str, String str2) {
        AlibcUserTradeHelper.sendUseabilityFailure("Taoke_Trace", str, str2);
    }

    private void a(HashMap<String, String> hashMap, String str, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2) {
        AlibcLogger.d("taoke", "淘客异步打点,具体参数 taokeInfo = " + (hashMap != null ? hashMap.toString() : null) + "\n url=" + str + "\n rpcReferer=" + str2);
        ExecutorServiceUtils.getInstance().postHandlerTask(new d(this, hashMap, str, alibcTradeTaokeParam, str2));
    }

    private void a(Map<String, String> map, AlibcTradeTaokeParam alibcTradeTaokeParam, String str) {
        String str2 = null;
        AlibcLogger.d("taoke", "添加淘客参数");
        if (map != null) {
            Object str3;
            String str4 = "url";
            if (str3 == null) {
                str3 = "";
            }
            map.put(str4, str3);
            map.put(LoginConstants.KEY_APPKEY, AlibcTradeCommon.getAppKey());
            map.put("utdid", AlibcTradeCommon.getUtdid());
            if (TextUtils.isEmpty(alibcTradeTaokeParam.subPid)) {
                map.put("subPid", null);
            } else {
                map.put("subPid", alibcTradeTaokeParam.subPid);
            }
            if (TextUtils.isEmpty(alibcTradeTaokeParam.unionId)) {
                map.put(AppLinkConstants.UNIONID, null);
            } else {
                map.put(AppLinkConstants.UNIONID, alibcTradeTaokeParam.unionId);
            }
            map.put(AppLinkConstants.PID, alibcTradeTaokeParam.pid);
            str4 = "taoke";
            StringBuilder append = new StringBuilder().append("淘客参数设置后 taokeInfo");
            if (map != null) {
                str2 = map.toString();
            }
            AlibcLogger.d(str4, append.append(str2).toString());
        }
    }

    public void asyncTaokeTrace(HashMap<String, String> hashMap, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTaokeAsyncCallback alibcTaokeAsyncCallback) {
        String str = null;
        if (hashMap != null && alibcTradeTaokeParam != null) {
            a((Map) hashMap, alibcTradeTaokeParam, null);
            String str2 = "taoke";
            StringBuilder append = new StringBuilder().append("taoke异步打点开始，参数为：");
            if (hashMap != null) {
                str = hashMap.toString();
            }
            AlibcLogger.d(str2, append.append(str).toString());
            ExecutorServiceUtils.getInstance().postHandlerTask(new b(this, hashMap, alibcTradeTaokeParam, alibcTaokeAsyncCallback));
        }
    }

    public void genUrlAndTaokeTrace(HashMap<String, String> hashMap, String str, boolean z, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        AlibcLogger.d("taoke", "淘客打点流程,传入参数为 taokeInfo = " + hashMap + "\n url = " + str + "\n isGenSclick = " + z + "\n taokeParams = " + alibcTradeTaokeParam + "\n rpcReferer = " + str2 + "\n taokeTraceCallback = " + alibcTaokeTraceCallback);
        if (!NetworkUtils.isNetworkAvaiable(AlibcTradeCommon.context)) {
            AlibcLogger.e("taoke", "网络无连接，请连接网络后再试");
            alibcTaokeTraceCallback.getTaokeUrl(0, str);
        } else if (hashMap == null || alibcTradeTaokeParam == null) {
            AlibcLogger.e("taoke", "淘客参数不存在");
            alibcTaokeTraceCallback.getTaokeUrl(0, str);
        } else {
            a((Map) hashMap, alibcTradeTaokeParam, str);
            if (z) {
                ExecutorServiceUtils.getInstance().postHandlerTask(new c(this, hashMap, alibcTaokeTraceCallback, str, alibcTradeTaokeParam, str2));
                return;
            }
            AlibcLogger.d("taoke", "不需要换sclick,走rpc发送淘客请求");
            taokeTrace(hashMap, str, alibcTradeTaokeParam, str2);
            alibcTaokeTraceCallback.getTaokeUrl(0, str);
        }
    }

    public NetworkResponse sendAsyncTaokeRPC(HashMap<String, String> hashMap, String str, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2) {
        if (alibcTradeTaokeParam == null) {
            return null;
        }
        a aVar = new a();
        if (alibcTradeTaokeParam.pid == null || !alibcTradeTaokeParam.pid.startsWith("mm_")) {
            AlibcLogger.d("taoke", "淘客pid参数错误");
        }
        NetworkResponse sendRequest = aVar.sendRequest(new HashMap(hashMap));
        if (!(sendRequest == null || sendRequest.isSuccess())) {
            a(sendRequest.errorMsg, "1701" + sendRequest.errorCode);
        }
        AlibcLogger.d("taoke", "淘客打点rpc请求结果: " + (sendRequest == null ? "" : sendRequest.data));
        return sendRequest;
    }

    public void taokeTrace(HashMap<String, String> hashMap, String str, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2) {
        a(hashMap, str, alibcTradeTaokeParam, str2);
    }
}
