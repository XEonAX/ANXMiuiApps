package com.miui.gallery.search.history;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConfig.HistoryConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchContract.History;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.InterceptableSource;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.CursorBackedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.util.Log;

public class HistorySource extends InterceptableSource {
    private static final String[] PROJECTION = new String[]{"title", "subTitle", "actionUri", "icon"};
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_HISTORY, SearchType.SEARCH_TYPE_NAVIGATION};

    public HistorySource(Context context) {
        super(context);
    }

    public String getName() {
        return "local_history_source";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int status) {
        if (queryInfo.getSearchType() == SearchType.SEARCH_TYPE_NAVIGATION) {
            return SearchConfig.get().getNavigationConfig().isFatalCondition(status);
        }
        return super.isFatalCondition(queryInfo, status);
    }

    public SourceResult doGetSuggestions(QueryInfo query) {
        Builder builder = History.URI.buildUpon().appendQueryParameter("query_limit", String.valueOf(SearchConfig.get().getHistoryConfig().getNavigationReturnCount()));
        if (!TextUtils.isEmpty(query.getParam("query_text"))) {
            builder.appendQueryParameter("query_text", query.getParam("query_text"));
        }
        Cursor cursor = this.mContext.getContentResolver().query(builder.build(), PROJECTION, null, null, "timestamp DESC");
        HistoryConfig historyConfig = SearchConfig.get().getHistoryConfig();
        SuggestionCursor suggestionCursor = null;
        if (cursor != null) {
            suggestionCursor = new BaseSuggestionSection(query, historyConfig.getSectionType(), new CursorBackedSuggestionCursor(query, cursor), null, historyConfig.getTitle(this.mContext), historyConfig.getSubTitle(this.mContext), null);
        }
        Log.d("HistorySource", "On load %s search histories", Integer.valueOf(suggestionCursor == null ? 0 : suggestionCursor.getCount()));
        return new BaseSourceResult(query, this, suggestionCursor);
    }

    public int getPriority(QueryInfo queryInfo) {
        if (queryInfo == null || queryInfo.getSearchType() != SearchType.SEARCH_TYPE_HISTORY) {
            return 3;
        }
        return 0;
    }
}
