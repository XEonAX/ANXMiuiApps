package com.miui.gallery.search.core.suggestion;

import android.database.Cursor;
import android.os.Bundle;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QuietlyCloseable;

public interface SuggestionCursor extends Cursor, QuietlyCloseable, Suggestion {
    Suggestion getCurrent();

    QueryInfo getQueryInfo();

    void setExtras(Bundle bundle);
}
