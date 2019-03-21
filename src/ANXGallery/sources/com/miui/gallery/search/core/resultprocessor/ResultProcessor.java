package com.miui.gallery.search.core.resultprocessor;

import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.utils.SearchLog;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class ResultProcessor<OUT extends SuggestionResult> {
    protected abstract OUT getMergedResult(List<SourceResult> list);

    public OUT process(List<SourceResult> input) {
        if (input == null || input.isEmpty()) {
            SearchLog.w("ResultProcessor", "Received a null input value!");
            return null;
        }
        for (SourceResult sourceResult : input) {
            sourceResult.acquire();
        }
        List<SourceResult> sorted = getSortedSourceResults(input);
        if (sorted == null) {
            SearchLog.w("ResultProcessor", "The sorted source results are null!");
        }
        OUT result = getMergedResult(sorted);
        for (SourceResult sourceResult2 : input) {
            sourceResult2.release();
        }
        return result;
    }

    protected List<SourceResult> getSortedSourceResults(List<SourceResult> sourceResults) {
        if (sourceResults.size() > 1) {
            Collections.sort(sourceResults, new Comparator<SourceResult>() {
                public int compare(SourceResult lhs, SourceResult rhs) {
                    if (lhs.getSource() == null) {
                        return 1;
                    }
                    if (rhs.getSource() == null) {
                        return -1;
                    }
                    return lhs.getSource().getPriority(lhs.getQueryInfo()) - rhs.getSource().getPriority(rhs.getQueryInfo());
                }
            });
        }
        return sourceResults;
    }

    protected ErrorInfo getMergedErrorInfo(List<SourceResult> sourceResults) {
        return new SimpleErrorProcessor().process(sourceResults);
    }

    protected BaseSuggestion toSuggestion(Suggestion suggestion) {
        if (suggestion == null) {
            return null;
        }
        if (suggestion instanceof BaseSuggestion) {
            return (BaseSuggestion) suggestion;
        }
        return new BaseSuggestion(suggestion.getSuggestionTitle(), suggestion.getSuggestionSubTitle(), suggestion.getSuggestionIcon(), suggestion.getIntentActionURI(), suggestion.getSuggestionExtras(), suggestion.getSuggestionSource());
    }
}
