package com.miui.gallery.search.core.result;

import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Bundle;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;

public interface SuggestionResult<S extends SuggestionCursor> {
    void acquire();

    S getData();

    ErrorInfo getErrorInfo();

    QueryInfo getQueryInfo();

    Bundle getResultExtras();

    boolean isClosed();

    boolean isEmpty();

    void registerContentObserver(ContentObserver contentObserver);

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void release();

    void setResultExtras(Bundle bundle);
}
