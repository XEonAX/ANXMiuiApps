package com.miui.gallery.search.core.source;

import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;

public abstract class AbstractSource implements Source {
    public abstract SearchType[] getSupportSearchTypes();

    public boolean match(QueryInfo queryInfo) {
        if (queryInfo == null || queryInfo.getSearchType() == null) {
            return false;
        }
        SearchType[] searchTypes = getSupportSearchTypes();
        if (searchTypes == null || searchTypes.length <= 0) {
            return false;
        }
        for (SearchType searchType : searchTypes) {
            if (searchType == queryInfo.getSearchType()) {
                return true;
            }
        }
        return false;
    }

    public int getPriority(QueryInfo queryInfo) {
        return 4;
    }
}
