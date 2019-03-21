package com.miui.gallery.search.core.result;

import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;

public interface SourceResult<S extends SuggestionCursor> extends SuggestionResult<S> {
    Source getSource();
}
