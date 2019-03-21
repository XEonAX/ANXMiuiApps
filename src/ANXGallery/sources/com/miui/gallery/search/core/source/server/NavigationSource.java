package com.miui.gallery.search.core.source.server;

import android.content.Context;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;

public class NavigationSource extends SectionedServerSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_NAVIGATION};

    public NavigationSource(Context context) {
        super(context);
    }

    public String getName() {
        return "server_controlled_navigations";
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    protected String getQueryAppendPath(QueryInfo queryInfo) {
        return "navigation";
    }

    protected boolean useCache(QueryInfo queryInfo) {
        return true;
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int errorStatus) {
        return SearchConfig.get().getNavigationConfig().isFatalCondition(errorStatus);
    }
}
