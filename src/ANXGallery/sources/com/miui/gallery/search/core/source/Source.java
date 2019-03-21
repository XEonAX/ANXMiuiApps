package com.miui.gallery.search.core.source;

import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.SourceResult;

public interface Source extends SuggestionResultProvider<SourceResult> {
    int getPriority(QueryInfo queryInfo);
}
