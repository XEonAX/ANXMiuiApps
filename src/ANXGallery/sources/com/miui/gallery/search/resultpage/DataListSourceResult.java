package com.miui.gallery.search.resultpage;

import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;

public class DataListSourceResult extends BaseSourceResult implements SourceResult {
    private long mIndexHash;
    private boolean mIsLastPage;
    private int mNextPosition;

    public DataListSourceResult(QueryInfo queryInfo, Source source, SuggestionCursor suggestions, int nextPosition, boolean isLastPage, long indexHash) {
        super(queryInfo, source, suggestions);
        this.mNextPosition = nextPosition;
        this.mIsLastPage = isLastPage;
        this.mIndexHash = indexHash;
    }

    public int getNextPosition() {
        return this.mNextPosition;
    }

    public boolean isLastPage() {
        return this.mIsLastPage;
    }

    public long getIndexHash() {
        return this.mIndexHash;
    }
}
