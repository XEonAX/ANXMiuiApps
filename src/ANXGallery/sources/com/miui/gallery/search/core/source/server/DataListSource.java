package com.miui.gallery.search.core.source.server;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.resultpage.DataListSourceResult;
import com.miui.gallery.search.utils.SearchLog;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DataListSource extends ServerSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_RESULT_LIST, SearchType.SEARCH_TYPE_FILTER};

    private static class DataListResponseData {
        @SerializedName("indexHash")
        public long indexHash;
        @SerializedName("isLastPage")
        public boolean isLastPage;
        @SerializedName("items")
        public List<ItemSuggestion> items;
        @SerializedName("nextPos")
        public int nextPosition;

        private DataListResponseData() {
            this.nextPosition = 0;
            this.isLastPage = false;
            this.indexHash = -1;
        }
    }

    public DataListSource(Context context) {
        super(context);
    }

    public String getName() {
        return "server_controlled_data_list";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected String getQueryAppendPath(QueryInfo queryInfo) {
        return "list";
    }

    protected Type getResponseDataType(QueryInfo queryInfo) {
        return DataListResponseData.class;
    }

    protected boolean isPersistable(QueryInfo queryInfo) {
        return queryInfo != null && "0".equals(queryInfo.getParam("pos"));
    }

    protected boolean canCarryLog() {
        return true;
    }

    public SourceResult getSuggestions(QueryInfo query) {
        try {
            int count = Integer.valueOf(query.getParam("num")).intValue();
            if (count <= 100) {
                return super.getSuggestions(query);
            }
            int startPos = Integer.valueOf(query.getParam("pos")).intValue();
            int endPos = (startPos + count) - 1;
            DataListResponseData overallResponseData = new DataListResponseData();
            overallResponseData.items = new ArrayList();
            while (startPos <= endPos && !overallResponseData.isLastPage) {
                QueryInfo batchQueryInfo = new Builder().cloneFrom(query).addParam("num", String.valueOf(Math.min(100, (endPos - startPos) + 1))).addParam("pos", String.valueOf(startPos)).build();
                SearchLog.d("DataListSource", "Start batch request [%s]", query);
                ServerSearchRequest serverSearchRequest = getRequestBuilder(batchQueryInfo).build();
                try {
                    Object[] objects = serverSearchRequest.executeSync();
                    if (objects == null || objects.length <= 0 || !(objects[0] instanceof DataListResponseData)) {
                        throw new RequestError(ErrorCode.BODY_EMPTY, "Execute result should not be null", null);
                    }
                    DataListResponseData batchResult = objects[0];
                    if (overallResponseData.indexHash <= 0) {
                        overallResponseData.indexHash = batchResult.indexHash;
                    } else if (overallResponseData.indexHash != batchResult.indexHash) {
                        throw new RequestError(ErrorCode.DATA_BIND_ERROR, "Index hash changed!", null);
                    }
                    if (batchResult.items == null || batchResult.items.size() <= 0 || batchResult.nextPosition <= startPos) {
                        overallResponseData.isLastPage = true;
                        break;
                    }
                    overallResponseData.items.addAll(batchResult.items);
                    overallResponseData.nextPosition = batchResult.nextPosition;
                    SearchLog.d("DataListSource", "On add batch request result [%d]", Integer.valueOf(batchResult.items.size()));
                    overallResponseData.isLastPage = batchResult.isLastPage;
                    startPos = batchResult.nextPosition;
                } catch (RequestError e) {
                    return onResponseError(query, serverSearchRequest, e);
                } catch (Exception e2) {
                    return onResponseError(query, new ErrorInfo(7));
                }
            }
            return onResponse(query, null, overallResponseData);
        } catch (Exception e3) {
            return super.getSuggestions(query);
        }
    }

    protected SourceResult onResponse(QueryInfo queryInfo, ServerSearchRequest serverSearchRequest, Object responseData) {
        if (responseData instanceof DataListResponseData) {
            DataListResponseData dataListResponseData = (DataListResponseData) responseData;
            return new DataListSourceResult(queryInfo, this, ConvertUtil.createSuggestionCursor(dataListResponseData.items, this, queryInfo), dataListResponseData.nextPosition, dataListResponseData.isLastPage, dataListResponseData.indexHash);
        }
        SearchLog.e("DataListSource", "Not supported response data type");
        return null;
    }

    protected BaseSourceResult generateDefaultResult(QueryInfo queryInfo, SuggestionCursor resultData) {
        return new DataListSourceResult(queryInfo, this, resultData, 0, true, -1);
    }

    public int getPriority(QueryInfo queryInfo) {
        if (queryInfo.getSearchType() == SearchType.SEARCH_TYPE_FILTER) {
            return 3;
        }
        return super.getPriority(queryInfo);
    }

    protected Map<String, String> getQueryParams(QueryInfo queryInfo) {
        Map<String, String> params = super.getQueryParams(queryInfo);
        if (!(params == null || params.isEmpty())) {
            String rankName = (String) params.get("rankName");
            params.remove("rankName");
            String rankOrder = (String) params.get("rankOrder");
            params.remove("rankOrder");
            if (!(TextUtils.isEmpty(rankName) || TextUtils.isEmpty(rankOrder))) {
                Object itemRankInfo = new ItemRankInfo();
                itemRankInfo.name = rankName;
                itemRankInfo.order = rankOrder;
                params.put("rankInfo", HttpUtils.createGson().toJson(itemRankInfo));
            }
        }
        return params;
    }
}
