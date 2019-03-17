package com.alibaba.baichuan.android.trade;

import android.app.Application;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.alibaba.baichuan.android.trade.model.InitResult;
import com.alibaba.baichuan.android.trade.model.InitState;
import com.alibaba.baichuan.android.trade.usertracker.b;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz.AlibcTradeBizResult;
import com.alibaba.baichuan.trade.biz.AlibcTradeBiz;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.biz.core.usertracker.AlibcTradeBizUT;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.biz.utils.AlibcParamUtils;
import com.alibaba.baichuan.trade.common.AlibcMiniTradeCommon;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.impl.AplusUserTracker;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a {
    private static String a = AlibcTradeSDK.class.getName();
    public static InitResult initResult;
    public static InitState initState = new InitState();
    public static List<AlibcTradeInitCallback> pendingInitCallbacks = Collections.synchronizedList(new ArrayList());

    protected static void a(AlibcTradeInitCallback alibcTradeInitCallback, InitResult initResult) {
        initState.setState(3);
        ExecutorServiceUtils.getInstance().postUITask(new e(initResult, alibcTradeInitCallback));
    }

    protected static boolean a(AlibcTradeInitCallback alibcTradeInitCallback) {
        if (initState.isInitializing()) {
            pendingInitCallbacks.add(alibcTradeInitCallback);
            return false;
        } else if (!initState.isInitialized()) {
            return true;
        } else {
            ExecutorServiceUtils.getInstance().postUITask(new c(alibcTradeInitCallback));
            return false;
        }
    }

    public static synchronized void asyncInit(Application application, String str, AlibcTradeInitCallback alibcTradeInitCallback) {
        synchronized (a.class) {
            if (a(alibcTradeInitCallback)) {
                initState.setState(1);
                AlibcContext.context = application.getApplicationContext();
                ExecutorServiceUtils.getInstance().postHandlerTask(new b(application, str, alibcTradeInitCallback));
            }
        }
    }

    private static void b() {
        Map hashMap = new HashMap();
        CharSequence appKey = AlibcTradeCommon.getAppKey();
        if (!TextUtils.isEmpty(appKey)) {
            hashMap.put("appkey", appKey);
        }
        hashMap.put(AlibcConstants.TTID, AlibcMiniTradeBiz.getTTID());
        hashMap.put(UserTrackerConstants.SDK_TYPE, UserTrackerConstants.SDK_TYPE_STANDARD);
        AlibcUserTracker.getInstance().sendCustomHit(UserTrackerConstants.E_SDK_INIT, "", hashMap);
        AlibcTradeBizUT.sendInitHit4DAU();
    }

    private static synchronized void b(Application application, String str, AlibcTradeInitCallback alibcTradeInitCallback) {
        synchronized (a.class) {
            AplusUserTracker.translator = new b();
            boolean booleanValue = AlibcMiniTradeCommon.init(application, AlibcTradeBiz.systemVersion, str).booleanValue();
            AlibcTradeBizResult init = AlibcMiniTradeBiz.init();
            AlibcMiniTradeCommon.setTTID(AlibcMiniTradeBiz.getTTID());
            AlibcContext.initData();
            AlibcMessageBusManager.getInstance().registerListener(new com.alibaba.baichuan.android.trade.b.a());
            AlibcMessageBusManager.getInstance().registerListener(new com.alibaba.baichuan.android.trade.b.b());
            if (booleanValue && init != null && init.isSuccess) {
                b(alibcTradeInitCallback);
            } else {
                int i = 0;
                String str2 = "未知";
                if (!(init == null || init.isSuccess)) {
                    i = init.errCode;
                    str2 = init.errMsg;
                }
                initResult = InitResult.newFailureResult(i, str2);
                a(alibcTradeInitCallback, initResult);
            }
        }
    }

    protected static void b(AlibcTradeInitCallback alibcTradeInitCallback) {
        AlibcLogger.i(a, "AlibcTradeSDK初始化成功");
        initState.setState(2);
        ExecutorServiceUtils.getInstance().postUITask(new d(alibcTradeInitCallback));
    }

    public static void destory() {
        AlibcTradeContextManager.cleanMap();
    }

    public static void setChannel(String str, String str2) {
        AlibcMiniTradeBiz.setChannel(AlibcParamUtils.getChannel(str, str2));
    }

    public static void setEnvironment(Environment environment) {
        AlibcTradeCommon.setEnvironment(environment);
        AlibcContext.updateUrl();
    }

    public static boolean setForceH5(boolean z) {
        return AlibcConfigService.getInstance().setIsForceH5(z);
    }

    public static boolean setISVCode(String str) {
        return AlibcConfigService.getInstance().setIsvCode(str);
    }

    public static void setISVVersion(String str) {
        AlibcMiniTradeCommon.setIsvVersion(str);
    }

    public static void setIsAuthVip(boolean z) {
        AlibcContext.isVip = z;
    }

    public static boolean setShouldUseAlipay(boolean z) {
        return AlibcConfigService.getInstance().setShouldUseAlipay(z);
    }

    public static boolean setSyncForTaoke(boolean z) {
        return AlibcConfigService.getInstance().setIsSyncForTaoke(z);
    }

    public static void setTaokeParams(AlibcTaokeParams alibcTaokeParams) {
        AlibcConfigService.getInstance().setTaokeParams(alibcTaokeParams);
    }
}
