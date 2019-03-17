package mtopsdk.mtop.util;

import java.util.HashMap;
import mtopsdk.common.util.StringUtils;

public class ErrorConstant {
    public static final String ERRCODE_API_41X_ANTI_ATTACK = "ANDROID_SYS_API_41X_ANTI_ATTACK";
    public static final String ERRCODE_API_FLOW_LIMIT_LOCKED = "ANDROID_SYS_API_FLOW_LIMIT_LOCKED";
    public static final String ERRCODE_ASYNC4J_INTERNAL_ERROR = "ANDROID_SYS_ASYNC4J_INTERNAL_ERROR";
    public static final String ERRCODE_FAIL_SYS_ACCESS_TOKEN_EXPIRED = "FAIL_SYS_ACCESS_TOKEN_EXPIRED";
    private static final String ERRCODE_FAIL_SYS_API_NOT_FOUNDED = "FAIL_SYS_API_NOT_FOUNDED";
    private static final String ERRCODE_FAIL_SYS_API_STOP_SERVICE = "FAIL_SYS_API_STOP_SERVICE";
    private static final String ERRCODE_FAIL_SYS_API_UNAUTHORIZED = "FAIL_SYS_API_UNAUTHORIZED";
    private static final String ERRCODE_FAIL_SYS_APPKEY_NOT_EXIST = "FAIL_SYS_APPKEY_NOT_EXIST";
    private static final String ERRCODE_FAIL_SYS_ASYNC4J_RESPONSE_FETCH_FAIL = "FAIL_SYS_ASYNC4J_RESPONSE_FETCH_FAIL";
    private static final String ERRCODE_FAIL_SYS_ASYNC4J_RESPONSE_QUERY_FAIL = "FAIL_SYS_ASYNC4J_RESPONSE_QUERY_FAIL";
    private static final String ERRCODE_FAIL_SYS_BADARGUMENT_T = "FAIL_SYS_BADARGUMENT_T";
    private static final String ERRCODE_FAIL_SYS_BIZPARAM_MISSED = "FAIL_SYS_BIZPARAM_MISSED";
    private static final String ERRCODE_FAIL_SYS_BIZPARAM_TYPE_ERROR = "FAIL_SYS_BIZPARAM_TYPE_ERROR";
    private static final String ERRCODE_FAIL_SYS_HSF_ASYNC_POOL_FULL = "FAIL_SYS_HSF_ASYNC_POOL_FOOL";
    private static final String ERRCODE_FAIL_SYS_ILEGEL_SIGN = "FAIL_SYS_ILEGEL_SIGN";
    public static final String ERRCODE_FAIL_SYS_ILLEGAL_ACCESS_TOKEN = "FAIL_SYS_ILLEGAL_ACCESS_TOKEN";
    private static final String ERRCODE_FAIL_SYS_ILLEGAL_ARGUMENT_TTID = "FAIL_SYS_ILLEGAL_ARGUMENT_TTID";
    private static final String ERRCODE_FAIL_SYS_INTERNAL_FAULT = "FAIL_SYS_INTERNAL_FAULT";
    private static final String ERRCODE_FAIL_SYS_INVALID_HTTP_METHOD = "FAIL_SYS_INVALID_HTTP_METHOD";
    public static final String ERRCODE_FAIL_SYS_LOGIN_CANCEL = "FAIL_SYS_LOGIN_CANCEL";
    public static final String ERRCODE_FAIL_SYS_LOGIN_FAIL = "FAIL_SYS_LOGIN_FAIL";
    private static final String ERRCODE_FAIL_SYS_PARAM_FORMAT_ERROR = "FAIL_SYS_PARAM_FORMAT_ERROR";
    private static final String ERRCODE_FAIL_SYS_PARAM_MISSING = "FAIL_SYS_PARAM_MISSING";
    private static final String ERRCODE_FAIL_SYS_PROTOPARAM_MISSED = "FAIL_SYS_PROTOPARAM_MISSED";
    private static final String ERRCODE_FAIL_SYS_PROTOVER_MISSED = "FAIL_SYS_PROTOVER_MISSED";
    private static final String ERRCODE_FAIL_SYS_REQUEST_EXPIRED = "FAIL_SYS_REQUEST_EXPIRED";
    private static final String ERRCODE_FAIL_SYS_RETMISSED_ERROR = "FAIL_SYS_RETMISSED_ERROR";
    private static final String ERRCODE_FAIL_SYS_SERVICE_FAULT = "FAIL_SYS_SERVICE_FAULT";
    private static final String ERRCODE_FAIL_SYS_SERVICE_INNER_FAULT = "FAIL_SYS_SERVICE_INNER_FAULT";
    private static final String ERRCODE_FAIL_SYS_SERVICE_NOT_EXIST = "FAIL_SYS_SERVICE_NOT_EXIST";
    private static final String ERRCODE_FAIL_SYS_SERVICE_TIMEOUT = "FAIL_SYS_SERVICE_TIMEOUT";
    public static final String ERRCODE_FAIL_SYS_SESSION_EXPIRED = "FAIL_SYS_SESSION_EXPIRED";
    private static final String ERRCODE_FAIL_SYS_SYSTEM_BUSY_ERROR = "FAIL_SYS_SYSTEM_BUSY_ERROR";
    private static final String ERRCODE_FAIL_SYS_TOPAUTHPARAM_MISSED = "FAIL_SYS_TOPAUTHPARAM_MISSED";
    private static final String ERRCODE_FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR = "FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR";
    private static final String ERRCODE_FAIL_SYS_TOPAUTH_FAILED = "FAIL_SYS_TOPAUTH_FAILED";
    private static final String ERRCODE_FAIL_SYS_TOPAUTH_FAULT = "FAIL_SYS_TOPAUTH_FAULT";
    private static final String ERRCODE_FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR = "FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR";
    private static final String ERRCODE_FAIL_SYS_TOPUNAUTHAPI_ERROR = "FAIL_SYS_TOPUNAUTHAPI_ERROR";
    private static final String ERRCODE_FAIL_SYS_TRAFFIC_LIMIT = "FAIL_SYS_TRAFFIC_LIMIT";
    private static final String ERRCODE_FAIL_SYS_UNKNOWN_APP = "FAIL_SYS_UNKNOWN_APP";
    public static final String ERRCODE_GENERATE_MTOP_SIGN_ERROR = "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR";
    public static final String ERRCODE_JSONDATA_BLANK = "ANDROID_SYS_JSONDATA_BLANK";
    public static final String ERRCODE_JSONDATA_PARSE_ERROR = "ANDROID_SYS_JSONDATA_PARSE_ERROR";
    public static final String ERRCODE_MISS_API_RESPONSE_SIGN = "ANDROID_SYS_MISS_API_RESPONSE_SIGN";
    public static final String ERRCODE_MTOPPROXYBASE_INIT_ERROR = "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR";
    public static final String ERRCODE_MTOPREQUEST_INVALID_ERROR = "ANDROID_SYS_MTOPREQUEST_INVALID_ERROR";
    public static final String ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT = "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT";
    private static final String ERRCODE_MTOP_ASYNC_RT_IS_NULL = "FAIL_BIZ_MTOP_RT_IS_NULL";
    public static final String ERRCODE_NETWORK_ERROR = "ANDROID_SYS_NETWORK_ERROR";
    public static final String ERRCODE_NO_NETWORK = "ANDROID_SYS_NO_NETWORK";
    public static final String ERRCODE_SUCCESS = "SUCCESS";
    public static final String ERRCODE_SYSTEM_ERROR = "SYSTEM_ERROR";
    public static final String ERRCODE_TRADE_API_ASYNC_RESULT = "ANDROID_SYS_TRADE_API_ASYNC_RESULT";
    public static final String ERRCODE_VALIDATE_API_RESPONSE_SIGN_ERROR = "ANDROID_SYS_VALIDATE_API_RESPONSE_SIGN_ERROR";
    public static final String ERRMSG_API_41X_ANTI_ATTACK = "哎哟喂,被挤爆啦,请稍后重试!";
    public static final String ERRMSG_API_FLOW_LIMIT_LOCKED = "哎哟喂,被挤爆啦,请稍后重试";
    public static final String ERRMSG_ASYNC4J_INTERNAL_ERROR = "交易异步化内部错误";
    public static final String ERRMSG_FAIL_SYS_ACCESS_TOKEN_EXPIRED = "Access Token失效";
    public static final String ERRMSG_FAIL_SYS_ILLEGAL_ACCESS_TOKEN = "无效access token";
    public static final String ERRMSG_FAIL_SYS_LOGIN_CANCEL = "登陆被取消";
    public static final String ERRMSG_FAIL_SYS_LOGIN_FAIL = "登陆失败";
    public static final String ERRMSG_FAIL_SYS_SESSION_EXPIRED = "Session过期";
    public static final String ERRMSG_GENERATE_MTOP_SIGN_ERROR = "生成Mtop签名sign失败";
    public static final String ERRMSG_JSONDATA_BLANK = "返回JSONDATA为空";
    public static final String ERRMSG_JSONDATA_PARSE_ERROR = "解析JSONDATA错误";
    public static final String ERRMSG_MISS_API_RESPONSE_SIGN = "API响应缺少签名sign";
    public static final String ERRMSG_MTOPPROXYBASE_INIT_ERROR = "MtopProxyBase初始化失败";
    public static final String ERRMSG_MTOPREQUEST_INVALID_ERROR = "非法的MtopRequest";
    public static final String ERRMSG_MTOP_APICALL_ASYNC_TIMEOUT = "MTOP异步调用超时";
    public static final String ERRMSG_NETWORK_ERROR = "网络错误";
    public static final String ERRMSG_NO_NETWORK = "无网络";
    public static final String ERRMSG_TRADE_API_ASYNC_RESULT = "返回API异步调用结果";
    public static final String ERRMSG_VALIDATE_API_RESPONSE_SIGN_ERROR = "API响应签名验证错误";
    private static final String FAIL_SYS_PREFIX = "FAIL_SYS_";
    public static final int INT_ANDROID_SYS_ERROR = -2500;
    private static final int INT_ERRCODE_API_41X_ANTI_ATTACK = -2508;
    private static final int INT_ERRCODE_API_FLOW_LIMIT_LOCKED = -2507;
    private static final int INT_ERRCODE_ASYNC4J_INTERNAL_ERROR = -2511;
    private static final int INT_ERRCODE_GENERATE_MTOP_SIGN_ERROR = -2506;
    private static final int INT_ERRCODE_JSONDATA_BLANK = -2502;
    private static final int INT_ERRCODE_JSONDATA_PARSE_ERROR = -2503;
    private static final int INT_ERRCODE_MISS_API_RESPONSE_SIGN = -2512;
    private static final int INT_ERRCODE_MTOPPROXYBASE_INIT_ERROR = -2505;
    private static final int INT_ERRCODE_MTOPREQUEST_INVALID_ERROR = -2504;
    public static final int INT_ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT = -2510;
    private static final int INT_ERRCODE_NETWORK_ERROR = -2501;
    private static final int INT_ERRCODE_NO_NETWORK = -2500;
    public static final int INT_ERRCODE_SUCCESS = -1001;
    private static final int INT_ERRCODE_TRADE_API_ASYNC_RESULT = -2509;
    private static final int INT_ERRCODE_VALIDATE_API_RESPONSE_SIGN_ERROR = -2513;
    public static final int INT_ERR_SID_INVALID = -2005;
    private static final int INT_FAIL_BIZ_MTOP_RT_IS_NULL = -2004;
    private static final int INT_FAIL_SYS_ACCESS_TOKEN_EXPIRED = -2034;
    private static final int INT_FAIL_SYS_API_NOT_FOUNDED = -2018;
    private static final int INT_FAIL_SYS_API_STOP_SERVICE = -2003;
    private static final int INT_FAIL_SYS_API_UNAUTHORIZED = -2007;
    private static final int INT_FAIL_SYS_APPKEY_NOT_EXIST = -2011;
    private static final int INT_FAIL_SYS_ASYNC4J_RESPONSE_FETCH_FAIL = -2024;
    private static final int INT_FAIL_SYS_ASYNC4J_RESPONSE_QUERY_FAIL = -2023;
    private static final int INT_FAIL_SYS_BADARGUMENT_T = -2010;
    private static final int INT_FAIL_SYS_HSF_ASYNC_POOL_FULL = -2001;
    private static final int INT_FAIL_SYS_ILEGEL_SIGN = -2006;
    private static final int INT_FAIL_SYS_ILLEGAL_ACCESS_TOKEN = -2035;
    private static final int INT_FAIL_SYS_ILLEGAL_ARGUMENT_TTID = -2033;
    private static final int INT_FAIL_SYS_INTERNAL_FAULT = -2012;
    private static final int INT_FAIL_SYS_INVALID_HTTP_METHOD = -2013;
    private static final int INT_FAIL_SYS_LOGIN_CANCEL = -2036;
    private static final int INT_FAIL_SYS_LOGIN_FAIL = -2037;
    private static final int INT_FAIL_SYS_PARAM_FORMAT_ERROR = -2009;
    private static final int INT_FAIL_SYS_PARAM_MISSING = -2008;
    private static final int INT_FAIL_SYS_PROTOPARAM_MISSED = -2025;
    private static final int INT_FAIL_SYS_PROTOVER_MISSED = -2026;
    private static final int INT_FAIL_SYS_REQUEST_EXPIRED = -2016;
    private static final int INT_FAIL_SYS_RETMISSED_ERROR = -2015;
    private static final int INT_FAIL_SYS_SERVICE_FAULT = -2021;
    private static final int INT_FAIL_SYS_SERVICE_INNER_FAULT = -2022;
    private static final int INT_FAIL_SYS_SERVICE_NOT_EXIST = -2019;
    private static final int INT_FAIL_SYS_SERVICE_TIMEOUT = -2020;
    private static final int INT_FAIL_SYS_SESSION_EXPIRED = -2005;
    private static final int INT_FAIL_SYS_SYSTEM_BUSY_ERROR = -2002;
    private static final int INT_FAIL_SYS_TOPAUTHPARAM_MISSED = -2032;
    private static final int INT_FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR = -2028;
    private static final int INT_FAIL_SYS_TOPAUTH_FAILED = -2027;
    private static final int INT_FAIL_SYS_TOPAUTH_FAULT = -2031;
    private static final int INT_FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR = -2029;
    private static final int INT_FAIL_SYS_TOPUNAUTHAPI_ERROR = -2030;
    private static final int INT_FAIL_SYS_TRAFFIC_LIMIT = -2017;
    private static final int INT_FAIL_SYS_UNKNOWN_APP = -2014;
    private static final int INT_SYSTEM_ERROR = -2000;
    public static final int INT_UNKNOWN_ERROR = -1000;
    static HashMap<String, Integer> errCodeMap = new HashMap();
    static HashMap<String, Integer> sdkErrcodeMap = new HashMap();
    static HashMap<String, Integer> systemErrCodeMap;

    static {
        HashMap hashMap = new HashMap();
        systemErrCodeMap = hashMap;
        hashMap.put(ERRCODE_SYSTEM_ERROR, Integer.valueOf(INT_SYSTEM_ERROR));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_HSF_ASYNC_POOL_FULL, Integer.valueOf(-2001));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_PARAM_MISSING, Integer.valueOf(INT_FAIL_SYS_PARAM_MISSING));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_PARAM_FORMAT_ERROR, Integer.valueOf(INT_FAIL_SYS_PARAM_FORMAT_ERROR));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_SYSTEM_BUSY_ERROR, Integer.valueOf(-2002));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_API_STOP_SERVICE, Integer.valueOf(-2003));
        systemErrCodeMap.put(ERRCODE_MTOP_ASYNC_RT_IS_NULL, Integer.valueOf(-2004));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_API_NOT_FOUNDED, Integer.valueOf(-2018));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_SERVICE_NOT_EXIST, Integer.valueOf(-2019));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_SERVICE_TIMEOUT, Integer.valueOf(-2020));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_SERVICE_FAULT, Integer.valueOf(-2021));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_SERVICE_INNER_FAULT, Integer.valueOf(-2022));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_PROTOVER_MISSED, Integer.valueOf(INT_FAIL_SYS_PROTOVER_MISSED));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_PROTOPARAM_MISSED, Integer.valueOf(INT_FAIL_SYS_PROTOPARAM_MISSED));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_INTERNAL_FAULT, Integer.valueOf(-2012));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_INVALID_HTTP_METHOD, Integer.valueOf(-2013));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_UNKNOWN_APP, Integer.valueOf(-2014));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_RETMISSED_ERROR, Integer.valueOf(-2015));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_API_UNAUTHORIZED, Integer.valueOf(INT_FAIL_SYS_API_UNAUTHORIZED));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_BIZPARAM_MISSED, Integer.valueOf(INT_FAIL_SYS_PARAM_MISSING));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_BIZPARAM_TYPE_ERROR, Integer.valueOf(INT_FAIL_SYS_PARAM_FORMAT_ERROR));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_ASYNC4J_RESPONSE_FETCH_FAIL, Integer.valueOf(INT_FAIL_SYS_ASYNC4J_RESPONSE_FETCH_FAIL));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_ASYNC4J_RESPONSE_QUERY_FAIL, Integer.valueOf(INT_FAIL_SYS_ASYNC4J_RESPONSE_QUERY_FAIL));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_BADARGUMENT_T, Integer.valueOf(-2010));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_APPKEY_NOT_EXIST, Integer.valueOf(-2011));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPAUTHPARAM_MISSED, Integer.valueOf(-2032));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPAUTH_FAILED, Integer.valueOf(INT_FAIL_SYS_TOPAUTH_FAILED));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR, Integer.valueOf(INT_FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR, Integer.valueOf(INT_FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPUNAUTHAPI_ERROR, Integer.valueOf(-2030));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_TOPAUTH_FAULT, Integer.valueOf(-2031));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_ILLEGAL_ARGUMENT_TTID, Integer.valueOf(INT_FAIL_SYS_ILLEGAL_ARGUMENT_TTID));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_ACCESS_TOKEN_EXPIRED, Integer.valueOf(INT_FAIL_SYS_ACCESS_TOKEN_EXPIRED));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_ILLEGAL_ACCESS_TOKEN, Integer.valueOf(INT_FAIL_SYS_ILLEGAL_ACCESS_TOKEN));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_LOGIN_CANCEL, Integer.valueOf(-2036));
        systemErrCodeMap.put(ERRCODE_FAIL_SYS_LOGIN_FAIL, Integer.valueOf(-2037));
        sdkErrcodeMap.put(ERRCODE_NETWORK_ERROR, Integer.valueOf(INT_ERRCODE_NETWORK_ERROR));
        sdkErrcodeMap.put(ERRCODE_NO_NETWORK, Integer.valueOf(-2500));
        sdkErrcodeMap.put(ERRCODE_JSONDATA_BLANK, Integer.valueOf(INT_ERRCODE_JSONDATA_BLANK));
        sdkErrcodeMap.put(ERRCODE_JSONDATA_PARSE_ERROR, Integer.valueOf(INT_ERRCODE_JSONDATA_PARSE_ERROR));
        sdkErrcodeMap.put(ERRCODE_MTOPREQUEST_INVALID_ERROR, Integer.valueOf(INT_ERRCODE_MTOPREQUEST_INVALID_ERROR));
        sdkErrcodeMap.put(ERRCODE_MTOPPROXYBASE_INIT_ERROR, Integer.valueOf(INT_ERRCODE_MTOPPROXYBASE_INIT_ERROR));
        sdkErrcodeMap.put(ERRCODE_GENERATE_MTOP_SIGN_ERROR, Integer.valueOf(INT_ERRCODE_GENERATE_MTOP_SIGN_ERROR));
        sdkErrcodeMap.put(ERRCODE_API_FLOW_LIMIT_LOCKED, Integer.valueOf(INT_ERRCODE_API_FLOW_LIMIT_LOCKED));
        sdkErrcodeMap.put(ERRCODE_API_41X_ANTI_ATTACK, Integer.valueOf(INT_ERRCODE_API_41X_ANTI_ATTACK));
        sdkErrcodeMap.put(ERRCODE_TRADE_API_ASYNC_RESULT, Integer.valueOf(INT_ERRCODE_TRADE_API_ASYNC_RESULT));
        sdkErrcodeMap.put(ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT, Integer.valueOf(INT_ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT));
        sdkErrcodeMap.put(ERRCODE_ASYNC4J_INTERNAL_ERROR, Integer.valueOf(INT_ERRCODE_ASYNC4J_INTERNAL_ERROR));
        sdkErrcodeMap.put(ERRCODE_MISS_API_RESPONSE_SIGN, Integer.valueOf(INT_ERRCODE_MISS_API_RESPONSE_SIGN));
        sdkErrcodeMap.put(ERRCODE_VALIDATE_API_RESPONSE_SIGN_ERROR, Integer.valueOf(INT_ERRCODE_VALIDATE_API_RESPONSE_SIGN_ERROR));
        errCodeMap.put(ERRCODE_FAIL_SYS_REQUEST_EXPIRED, Integer.valueOf(-2016));
        errCodeMap.put(ERRCODE_FAIL_SYS_SESSION_EXPIRED, Integer.valueOf(-2005));
        errCodeMap.put(ERRCODE_FAIL_SYS_ILEGEL_SIGN, Integer.valueOf(INT_FAIL_SYS_ILEGEL_SIGN));
        errCodeMap.put(ERRCODE_FAIL_SYS_TRAFFIC_LIMIT, Integer.valueOf(-2017));
        errCodeMap.putAll(systemErrCodeMap);
        errCodeMap.putAll(sdkErrcodeMap);
        errCodeMap.put(ERRCODE_SUCCESS, Integer.valueOf(INT_ERRCODE_SUCCESS));
    }

    public static Integer getIntErrCodeByStrErrorCode(String str) {
        Integer num = (Integer) errCodeMap.get(str);
        if (num == null) {
            return Integer.valueOf(-1000);
        }
        return num;
    }

    public static Integer getMtopSdkIntErrCode(String str) {
        Integer num = (Integer) sdkErrcodeMap.get(str);
        if (num == null) {
            return Integer.valueOf(-1000);
        }
        return num;
    }

    public static boolean isSystemError(String str) {
        return systemErrCodeMap.containsKey(str);
    }

    public static boolean isMtopSdkError(String str) {
        return StringUtils.isBlank(str) || sdkErrcodeMap.containsKey(str);
    }

    public static boolean isNetworkError(String str) {
        int intValue = getMtopSdkIntErrCode(str).intValue();
        return INT_ERRCODE_NETWORK_ERROR == intValue || -2500 == intValue;
    }

    public static boolean isNoNetwork(String str) {
        return -2500 == getMtopSdkIntErrCode(str).intValue();
    }

    public static boolean isSessionInvalid(String str) {
        return -2005 == getIntErrCodeByStrErrorCode(str).intValue();
    }

    public static boolean isIllegelSign(String str) {
        return INT_FAIL_SYS_ILEGEL_SIGN == getIntErrCodeByStrErrorCode(str).intValue();
    }

    public static boolean isSuccess(String str) {
        return INT_ERRCODE_SUCCESS == getIntErrCodeByStrErrorCode(str).intValue();
    }

    public static boolean is41XResult(String str) {
        return INT_ERRCODE_API_41X_ANTI_ATTACK == getMtopSdkIntErrCode(str).intValue();
    }

    public static boolean isApiLockedResult(String str) {
        return INT_ERRCODE_API_FLOW_LIMIT_LOCKED == getMtopSdkIntErrCode(str).intValue();
    }

    public static boolean isExpiredRequest(String str) {
        return -2016 == getIntErrCodeByStrErrorCode(str).intValue();
    }

    public static boolean isMtopServerError(String str) {
        if (str == null || !str.startsWith(FAIL_SYS_PREFIX)) {
            return false;
        }
        return true;
    }
}
