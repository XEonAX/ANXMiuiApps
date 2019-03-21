package com.miui.gallery.search.core.source.server;

import android.content.Context;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import java.util.ArrayList;
import java.util.List;

public abstract class SectionedServerSource extends ServerSource {
    public SectionedServerSource(Context context) {
        super(context);
    }

    protected SourceResult onResponse(QueryInfo queryInfo, ServerSearchRequest serverSearchRequest, Object responseData) {
        return generateDefaultResult(queryInfo, createResultData(queryInfo, responseData instanceof SectionedResponseData ? ((SectionedResponseData) responseData).sections : null, this));
    }

    protected boolean isPersistable(QueryInfo queryInfo) {
        return true;
    }

    protected boolean canCarryLog() {
        return true;
    }

    static SuggestionCursor createResultData(QueryInfo queryInfo, List<SectionedSuggestion> sections, Source source) {
        if (sections == null || sections.isEmpty()) {
            return null;
        }
        List<SuggestionSection> suggestionSections = new ArrayList(sections.size());
        for (SectionedSuggestion sectionedSuggestion : sections) {
            suggestionSections.add(ConvertUtil.createSuggestionSection(queryInfo, sectionedSuggestion, source));
        }
        if (suggestionSections.isEmpty()) {
            return null;
        }
        return new GroupedSuggestionCursor(queryInfo, suggestionSections);
    }
}
