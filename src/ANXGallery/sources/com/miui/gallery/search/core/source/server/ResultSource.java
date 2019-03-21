package com.miui.gallery.search.core.source.server;

import android.content.Context;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;

public class ResultSource extends SectionedServerSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_RESULT};

    public ResultSource(Context context) {
        super(context);
    }

    public String getName() {
        return "server_controlled_results";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected String getQueryAppendPath(QueryInfo queryInfo) {
        return "result";
    }
}
