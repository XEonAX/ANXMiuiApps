package com.alibaba.baichuan.trade.biz.auth;

import com.alibaba.baichuan.android.trade.AlibcTrade;
import java.util.HashMap;

public enum AliAuthError {
    HINTLIST_NULL(1, "授权列表为null（请使用want组件调用授权api）");
    
    public static final String ERRNO_COMPONENT_AUTH_FAIL = "2101";
    public static final String ERRNO_COMPONENT_HIT_LIST_ERROR = "190101";
    public static final String MODEL_NAME_COMPONENT = "BCPCSDK";
    public static final String MONITOR_POINT_HINT_LIST = "Hint_List_Error";
    public static final String MONITOR_POINT_MTOP_AUTH = "Mtop_Auth";
    public static HashMap<String, String> mMtopErrorCode;
    public String code;
    public String msg;

    static {
        mMtopErrorCode = new HashMap<String, String>() {
            {
                put("FAIL_BIZ_PARAM_ERROR", AlibcTrade.ERRCODE_APPLINK_FAIL);
                put("FAIL_BIZ_SYSTEM_ERROR", "04");
                put("token过期", "05");
                put("FAIL_BIZ_TOKEN_NOAUTH", "06");
                put("FAIL_BIZ_APPKEY_IN_BLACKLIST", "07");
                put("FAIL_BIZ_TOKEN_CANNOT_DECODE", "08");
                put("FAIL_BIZ_APPKEY_ILLEGAL", "09");
                put("FAIL_BIZ_UID_ILLEGAL", "10");
                put("FAIL_BIZ_DEVICEID_ILLEGAL", AlibcTrade.ERRCODE_PAGE_NATIVE);
                put("FAIL_BIZ_HINT_ILLEGAL", AlibcTrade.ERRCODE_PAGE_H5);
                put("FAIL_BIZ_HINT_AND_TOKEN_ILLEGAL", "13");
                put("FAIL_BIZ_TOKEN_ILLEGAL", "14");
                put("FAIL_BIZ_API_ILLEGAL", "15");
            }
        };
    }

    private AliAuthError(int i, String str) {
        this.code = String.valueOf(i);
        this.msg = str;
    }
}
