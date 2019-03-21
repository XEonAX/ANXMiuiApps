package com.miui.gallery.search.core.result;

import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;

public class BaseSourceResult<S extends SuggestionCursor> extends BaseSuggestionResult<S> implements SourceResult<S> {
    protected final Source mSource;

    public BaseSourceResult(QueryInfo queryInfo, Source source, S suggestions) {
        super(queryInfo, suggestions);
        this.mSource = source;
    }

    public Source getSource() {
        return this.mSource;
    }
}
