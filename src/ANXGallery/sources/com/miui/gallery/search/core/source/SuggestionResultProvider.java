package com.miui.gallery.search.core.source;

import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.SuggestionResult;

public interface SuggestionResultProvider<C extends SuggestionResult> {
    String getName();

    C getSuggestions(QueryInfo queryInfo);

    boolean match(QueryInfo queryInfo);
}
