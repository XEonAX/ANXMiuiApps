package com.miui.gallery.search.core.source.server;

import android.content.Context;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.utils.SearchLog;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HintSource extends ServerSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_HINT};

    private static class HintResponseData implements Cacheable {
        @SerializedName("expireMs")
        public long expireMills;
        @SerializedName("hints")
        public List<HintSuggestion> hintSuggestions;

        private HintResponseData() {
        }

        public long getExpireMills() {
            return this.expireMills;
        }
    }

    public HintSource(Context context) {
        super(context);
    }

    public String getName() {
        return "server_controlled_hints";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected String getQueryAppendPath(QueryInfo queryInfo) {
        return "hint";
    }

    protected String getQueryUserPath(String userId) {
        if (userId == null) {
            return "anonymous";
        }
        return super.getQueryUserPath(userId);
    }

    protected boolean useCache(QueryInfo queryInfo) {
        return true;
    }

    protected boolean canCarryLog() {
        return true;
    }

    protected Type getResponseDataType(QueryInfo queryInfo) {
        return HintResponseData.class;
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int errorStatus) {
        return false;
    }

    protected SourceResult onResponse(QueryInfo queryInfo, ServerSearchRequest serverSearchRequest, Object responseData) {
        if (responseData instanceof HintResponseData) {
            return new BaseSourceResult(queryInfo, this, createSuggestionCursor(((HintResponseData) responseData).hintSuggestions, this, queryInfo));
        }
        SearchLog.e("HintSource", "Not supported response data type");
        return null;
    }

    private static SuggestionCursor createSuggestionCursor(List<HintSuggestion> hints, Source source, QueryInfo queryInfo) {
        if (hints == null || hints.size() <= 0) {
            return null;
        }
        List<Suggestion> suggestionList = new ArrayList(hints.size());
        for (HintSuggestion hintSuggestion : hints) {
            Map extras = new HashMap(3);
            extras.put("hint_text", hintSuggestion.hintText);
            extras.put("display_duration", String.valueOf(hintSuggestion.displayDurationMs));
            if (hintSuggestion.queryText != null) {
                extras.put("query_text", hintSuggestion.queryText);
            }
            suggestionList.add(ConvertUtil.createSuggestion(extras, source));
        }
        return ConvertUtil.createSuggestionCursor(suggestionList, queryInfo);
    }
}
