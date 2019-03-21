package com.miui.gallery.search.core.suggestion;

import com.miui.gallery.search.SearchConstants.SectionType;
import java.util.List;

public interface SuggestionSection extends SuggestionCursor {
    int getCount();

    String getDataURI();

    List<RankInfo> getRankInfos();

    SuggestionExtras getSectionExtras();

    String getSectionSubTitle();

    String getSectionTitle();

    SectionType getSectionType();

    String getSectionTypeString();

    Suggestion moveToMore();
}
