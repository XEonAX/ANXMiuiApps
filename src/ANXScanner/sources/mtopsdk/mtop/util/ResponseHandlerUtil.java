package mtopsdk.mtop.util;

import com.alibaba.wireless.security.SecExceptionCode;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.a.a;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.SDKUtils;
import mtopsdk.network.util.NetworkUtils;
import mtopsdk.xstate.XState;

public class ResponseHandlerUtil {
    private static final String TAG = "mtopsdk.ResponseHandlerUtil";

    public static MtopResponse handleCorrectTimeStamp(MtopResponse mtopResponse, MtopProxy mtopProxy) {
        computeTimeOffset(mtopResponse);
        mtopProxy.property.correctTimeStamp = true;
        return mtopProxy.syncApiCall();
    }

    private static void computeTimeOffset(MtopResponse mtopResponse) {
        if (mtopResponse != null && mtopResponse.getHeaderFields() != null) {
            try {
                String singleHeaderFieldByKey = NetworkUtils.getSingleHeaderFieldByKey(mtopResponse.getHeaderFields(), HttpHeaderConstant.X_SYSTIME);
                if (StringUtils.isNotBlank(singleHeaderFieldByKey)) {
                    XState.setValue("t_offset", String.valueOf(Long.parseLong(singleHeaderFieldByKey) - (System.currentTimeMillis() / 1000)));
                }
            } catch (Throwable e) {
                TBSdkLog.e(TAG, "[computeTimeOffset]parse systime from mtop response data error", e);
            }
        }
    }

    public static Result<MtopResponse> handleDegradeStrategy(MtopResponse mtopResponse, MtopProxy mtopProxy) {
        Result<MtopResponse> result = new Result(mtopResponse);
        int responseCode = mtopResponse.getResponseCode();
        if (responseCode == 420 || responseCode == SecExceptionCode.SEC_ERROR_DYN_ENC_UNKNOWN_ERROR || responseCode == SecExceptionCode.SEC_ERROR_DYN_STORE_UNKNOWN_ERROR) {
            if (mtopProxy != null) {
                a.b(mtopProxy.getMtopRequest().getKey(), SDKUtils.getCorrectionTime());
            }
            mtopResponse.setRetCode(ErrorConstant.ERRCODE_API_FLOW_LIMIT_LOCKED);
            mtopResponse.setRetMsg(ErrorConstant.ERRMSG_API_FLOW_LIMIT_LOCKED);
        } else if (responseCode == HttpHeaderConstant.SC_INSUFFICIENT_SPACE_ON_RESOURCE) {
            mtopResponse.setRetCode(ErrorConstant.ERRCODE_API_41X_ANTI_ATTACK);
            mtopResponse.setRetMsg(ErrorConstant.ERRMSG_API_41X_ANTI_ATTACK);
        } else {
            result.setSuccess(false);
        }
        return result;
    }

    public static Result<MtopResponse> handle304Response(MtopResponse mtopResponse, MtopResponse mtopResponse2) {
        Result<MtopResponse> result = new Result(mtopResponse);
        if (mtopResponse.getResponseCode() != 304 || mtopResponse2 == null) {
            result.setSuccess(false);
        } else {
            result.setModel(mtopResponse2);
        }
        return result;
    }
}
