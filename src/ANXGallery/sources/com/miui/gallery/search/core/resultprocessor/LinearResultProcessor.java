package com.miui.gallery.search.core.resultprocessor;

import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSuggestionResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import java.util.ArrayList;
import java.util.List;

public class LinearResultProcessor extends ResultProcessor<SuggestionResult> {
    protected SuggestionResult getMergedResult(List<SourceResult> sourceResults) {
        ErrorInfo errorInfo = getMergedErrorInfo(sourceResults);
        List<Suggestion> suggestions = new ArrayList();
        QueryInfo queryInfo = null;
        for (SourceResult sourceResult : sourceResults) {
            if (queryInfo == null && sourceResult.getQueryInfo() != null) {
                queryInfo = sourceResult.getQueryInfo();
            }
            SuggestionCursor data = sourceResult.getData();
            if (data != null) {
                for (int i = 0; i < data.getCount(); i++) {
                    if (data.moveToPosition(i)) {
                        suggestions.add(toSuggestion(data.getCurrent()));
                    }
                }
            }
        }
        return new BaseSuggestionResult(queryInfo, new ListSuggestionCursor(queryInfo, suggestions), errorInfo);
    }
}
