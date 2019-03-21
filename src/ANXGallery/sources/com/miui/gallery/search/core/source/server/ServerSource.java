package com.miui.gallery.search.core.source.server;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.model.PersistentResponse;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.InterceptableSource;
import com.miui.gallery.search.core.source.server.ServerSearchRequest.Builder;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.util.PersistentResponseHelper;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public abstract class ServerSource extends InterceptableSource {
    protected abstract String getQueryAppendPath(QueryInfo queryInfo);

    protected abstract SourceResult onResponse(QueryInfo queryInfo, ServerSearchRequest serverSearchRequest, Object obj);

    public ServerSource(Context context) {
        super(context);
    }

    protected Map<String, String> getQueryParams(QueryInfo queryInfo) {
        return new HashMap(queryInfo.getParams());
    }

    protected boolean useCache(QueryInfo queryInfo) {
        return false;
    }

    protected boolean canCarryLog() {
        return false;
    }

    protected boolean isPersistable(QueryInfo queryInfo) {
        return false;
    }

    protected String getQueryUserPath(String userId) {
        return Builder.getDefaultUserPath(userId);
    }

    protected SourceResult getPrejudgeResult(QueryInfo query) {
        SourceResult sourceResult = super.getPrejudgeResult(query);
        if (sourceResult != null) {
            return sourceResult;
        }
        boolean networkUnavailable = !NetworkUtils.isNetworkConnected() && isFatalCondition(query, 1);
        boolean usePersistentResponse = query != null && Boolean.valueOf(query.getParam("use_persistent_response")).booleanValue();
        if ((networkUnavailable || usePersistentResponse) && isPersistable(query)) {
            try {
                ServerSearchRequest request = getRequestBuilder(query).build();
                Map<String, String> reqParams = request.getParams();
                SearchUtils.removeExtraParamsForPersistence(reqParams);
                PersistentResponse response = PersistentResponseHelper.find(request.getUrl(), reqParams);
                if (!(response == null || TextUtils.isEmpty(response.getResponse()))) {
                    Object data = HttpUtils.createGson().fromJson(response.getResponse(), getResponseDataType(query));
                    if (data != null) {
                        SourceResult result = onResponse(query, request, data);
                        if (result != null) {
                            boolean isResponseExpire = response.getUpdateTime() + response.getExpireMillis() < System.currentTimeMillis();
                            Bundle extras = result.getResultExtras();
                            if (extras == null || extras == Bundle.EMPTY) {
                                extras = new Bundle();
                                result.setResultExtras(extras);
                            }
                            String str = "need_requery";
                            boolean z = !networkUnavailable && isResponseExpire;
                            extras.putBoolean(str, z);
                            extras.putString("result_hash_code", SearchUtils.generateResultHashCode(response.getResponse()));
                        }
                        return result;
                    }
                }
            } catch (Throwable ex) {
                SearchLog.e("ServerSource", ex);
            }
        }
        if (!networkUnavailable) {
            return sourceResult;
        }
        BaseSourceResult baseSourceResult = generateDefaultResult(query, null);
        baseSourceResult.setErrorInfo(new ErrorInfo(1));
        return baseSourceResult;
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int errorStatus) {
        switch (errorStatus) {
            case 1:
            case 3:
            case 10:
            case 13:
                return true;
            default:
                return super.isFatalCondition(queryInfo, errorStatus);
        }
    }

    protected SourceResult onResponseError(QueryInfo queryInfo, ServerSearchRequest serverSearchRequest, RequestError errorData) {
        return onResponseError(queryInfo, new ErrorInfo(getSearchErrorCodeFromNetErrorCode(errorData.getErrorCode()), errorData.getMessage()));
    }

    protected SourceResult onResponseError(QueryInfo queryInfo, ErrorInfo errorInfo) {
        SearchLog.w("ServerSource", "onResponseError for query %s, error %s", queryInfo, errorInfo);
        BaseSourceResult sourceResult = generateDefaultResult(queryInfo, null);
        sourceResult.setErrorInfo(errorInfo);
        return sourceResult;
    }

    protected int getSearchErrorCodeFromNetErrorCode(ErrorCode errorCode) {
        switch (errorCode) {
            case NETWORK_NOT_CONNECTED:
                return 1;
            case SERVER_ERROR:
                return 6;
            case NET_ERROR:
            case BODY_EMPTY:
                return 5;
            case PARSE_ERROR:
            case HANDLE_ERROR:
            case DATA_BIND_ERROR:
                return 7;
            default:
                return 9;
        }
    }

    protected SourceResult doGetSuggestions(QueryInfo query) {
        ServerSearchRequest serverSearchRequest = getRequestBuilder(query).build();
        if (canCarryLog()) {
            String logData = SearchStatUtils.pullCachedEvent();
            if (logData != null) {
                serverSearchRequest.addParam("logData", logData);
            }
        }
        try {
            Object[] objects = serverSearchRequest.executeSync();
            if (objects == null || objects.length <= 0) {
                throw new RequestError(ErrorCode.BODY_EMPTY, "Execute result should not be null", null);
            }
            String resultHash = null;
            if (isPersistable(query)) {
                long expireMillis = -1;
                if (serverSearchRequest.getResponseData() instanceof Cacheable) {
                    expireMillis = ((Cacheable) serverSearchRequest.getResponseData()).getExpireMills();
                }
                Map<String, String> reqParams = serverSearchRequest.getParams();
                SearchUtils.removeExtraParamsForPersistence(reqParams);
                PersistentResponseHelper.saveAsync(serverSearchRequest.getUrl(), reqParams, serverSearchRequest.getResponseRawData(), expireMillis);
                resultHash = SearchUtils.generateResultHashCode(serverSearchRequest.getResponseRawData());
            }
            SourceResult sourceResult = onResponse(query, serverSearchRequest, objects[0]);
            if (resultHash == null || sourceResult == null) {
                return sourceResult;
            }
            Bundle extras = sourceResult.getResultExtras();
            if (extras == null || extras == Bundle.EMPTY) {
                extras = new Bundle();
                sourceResult.setResultExtras(extras);
            }
            extras.putString("result_hash_code", resultHash);
            return sourceResult;
        } catch (RequestError e) {
            return onResponseError(query, serverSearchRequest, e);
        } catch (Exception e2) {
            return onResponseError(query, new ErrorInfo(7));
        }
    }

    public int getPriority(QueryInfo queryInfo) {
        return 2;
    }

    protected Type getResponseDataType(QueryInfo queryInfo) {
        return SectionedResponseData.class;
    }

    protected Builder getRequestBuilder(QueryInfo query) {
        String userId = SearchUtils.getXiaomiId();
        return new Builder().setResultDataType(getResponseDataType(query)).setMethod(1001).setUserPath(getQueryUserPath(userId)).setUserId(userId).setQueryAppendPath(getQueryAppendPath(query)).addQueryParams(getQueryParams(query)).setUseCache(useCache(query));
    }
}
