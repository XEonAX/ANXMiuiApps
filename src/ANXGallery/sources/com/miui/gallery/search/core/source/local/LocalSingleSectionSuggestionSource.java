package com.miui.gallery.search.core.source.local;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.InterceptableSource;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class LocalSingleSectionSuggestionSource extends InterceptableSource {
    private static final SearchType[] SUPPORT_SEARCH_TYPE = new SearchType[]{SearchType.SEARCH_TYPE_SUGGESTION, SearchType.SEARCH_TYPE_SEARCH};

    protected abstract SectionType getSectionType();

    protected abstract List<Suggestion> querySuggestion(String str, QueryInfo queryInfo);

    public LocalSingleSectionSuggestionSource(Context context) {
        super(context);
    }

    public SearchType[] getSupportSearchTypes() {
        return SUPPORT_SEARCH_TYPE;
    }

    public int getPriority(QueryInfo queryInfo) {
        return 1;
    }

    public SourceResult doGetSuggestions(QueryInfo queryInfo) {
        SuggestionCursor suggestionCursor = null;
        if (!TextUtils.isEmpty(queryInfo.getParam("query"))) {
            String query = queryInfo.getParam("query").toLowerCase();
            suggestionCursor = generateSection(queryInfo, sortSuggestions(querySuggestion(query, queryInfo), query, queryInfo));
        }
        return new BaseSourceResult(queryInfo, this, suggestionCursor);
    }

    protected List<Suggestion> sortSuggestions(List<Suggestion> suggestions, final String query, final QueryInfo queryInfo) {
        Collections.sort(suggestions, new Comparator<Suggestion>() {
            public int compare(Suggestion o1, Suggestion o2) {
                return LocalSingleSectionSuggestionSource.this.sort(o1, o2, query, queryInfo);
            }
        });
        return suggestions;
    }

    protected int sort(Suggestion s1, Suggestion s2, String query, QueryInfo queryInfo) {
        int index1 = s1.getSuggestionTitle().toLowerCase().indexOf(query);
        int index2 = s2.getSuggestionTitle().toLowerCase().indexOf(query);
        return index1 == index2 ? s1.getSuggestionTitle().length() - s2.getSuggestionTitle().length() : index1 - index2;
    }

    protected String getSectionTitle(SectionType sectionType) {
        return SearchConfig.get().getTitleForSection(sectionType);
    }

    protected BaseSuggestionSection generateSection(QueryInfo queryInfo, List<Suggestion> suggestionList) {
        if (suggestionList == null) {
            return null;
        }
        SectionType sectionType = getSectionType();
        return new BaseSuggestionSection(queryInfo, sectionType, new ListSuggestionCursor(queryInfo, suggestionList), null, getSectionTitle(sectionType), null, null);
    }
}
