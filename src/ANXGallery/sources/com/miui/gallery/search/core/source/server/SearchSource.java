package com.miui.gallery.search.core.source.server;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.util.Log;
import java.util.Map;

public class SearchSource extends SectionedServerSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_SEARCH, SearchType.SEARCH_TYPE_SUGGESTION};

    public SearchSource(Context context) {
        super(context);
    }

    public String getName() {
        return "server_controlled_search_suggestions";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected boolean useCache(QueryInfo queryInfo) {
        return TextUtils.isEmpty(queryInfo.getParam("extraInfo"));
    }

    protected Map<String, String> getQueryParams(QueryInfo queryInfo) {
        Map<String, String> params = super.getQueryParams(queryInfo);
        String query = (String) params.get("query");
        if (!TextUtils.isEmpty(query)) {
            String extraInfo = SearchConfig.get().getSuggestionConfig().getQueryExtras(query);
            if (!TextUtils.isEmpty(extraInfo)) {
                params.put("extraInfo", extraInfo);
                Log.d("SearchSource", "On append extra [%s] to query [%s]", extraInfo, query);
            }
        }
        params.remove("enableShortcut");
        return params;
    }

    protected String getQueryAppendPath(QueryInfo queryInfo) {
        switch (queryInfo.getSearchType()) {
            case SEARCH_TYPE_SUGGESTION:
                return "suggestion";
            case SEARCH_TYPE_SEARCH:
                return "search";
            default:
                return null;
        }
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int errorStatus) {
        return super.isFatalCondition(queryInfo, errorStatus) || errorStatus == 14;
    }
}
