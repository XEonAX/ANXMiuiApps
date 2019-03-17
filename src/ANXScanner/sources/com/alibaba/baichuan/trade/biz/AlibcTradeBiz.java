package com.alibaba.baichuan.trade.biz;

import android.app.Application;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz.AlibcTradeBizResult;
import com.alibaba.baichuan.trade.biz.auth.AlibcAuth;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon.AlibcTradeCommonResult;

public class AlibcTradeBiz extends AlibcMiniTradeBiz {
    public static AlibcTradeBizResult init(Application application) {
        AlibcTradeBizResult alibcTradeBizResult = new AlibcTradeBizResult();
        InitMonitorPoint initMonitorPoint = new InitMonitorPoint();
        initMonitorPoint.startAllTimeRecord();
        AlibcTradeCommonResult init = AlibcTradeCommon.init(application, systemVersion);
        if (init == null || !init.isSuccess) {
            alibcTradeBizResult.errCode = init == null ? 0 : init.errCode;
            alibcTradeBizResult.errMsg = init == null ? "未知错误" : init.errMsg;
            return alibcTradeBizResult;
        }
        AlibcTradeBizResult init2 = AlibcMiniTradeBiz.init();
        if (init2 == null || !init2.isSuccess) {
            alibcTradeBizResult.errCode = init2.errCode;
            alibcTradeBizResult.errMsg = init2.errMsg;
            return alibcTradeBizResult;
        } else if (AlibcAuth.init()) {
            InitMonitorPoint.registerMonitorPoint();
            AlibcTradeCommon.setTTID(AlibcMiniTradeBiz.getTTID());
            if (init2.isSuccess && init.isSuccess) {
                initMonitorPoint.setSecurityInitTime(init.initMonitor.securityInitTime);
                initMonitorPoint.setUtInitTime(init.initMonitor.utInitTime);
                initMonitorPoint.stopAllTimeRecord();
                initMonitorPoint.send();
                alibcTradeBizResult.isSuccess = true;
                return alibcTradeBizResult;
            }
            alibcTradeBizResult.errCode = 105;
            alibcTradeBizResult.errMsg = "biz初始化出错";
            return alibcTradeBizResult;
        } else {
            alibcTradeBizResult.errCode = 104;
            alibcTradeBizResult.errMsg = AlibcAuth.ERR_MSG;
            return alibcTradeBizResult;
        }
    }
}
