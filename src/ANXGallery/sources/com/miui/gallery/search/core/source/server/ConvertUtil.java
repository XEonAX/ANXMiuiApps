package com.miui.gallery.search.core.source.server;

import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.MapBackedSuggestionExtras;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionExtras;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ConvertUtil {
    public static Suggestion createSuggestion(ItemSuggestion suggestion, Source source) {
        return createSuggestion(suggestion, null, source);
    }

    public static Suggestion createSuggestion(ItemSuggestion suggestion, Map<String, String> extras, Source source) {
        if (suggestion == null) {
            return createSuggestion((Map) extras, source);
        }
        Map<String, String> extraInfo;
        if (suggestion.extraInfo == null) {
            extraInfo = extras;
        } else if (extras == null) {
            extraInfo = suggestion.extraInfo;
        } else {
            extraInfo = new HashMap();
            extraInfo.putAll(suggestion.extraInfo);
            extraInfo.putAll(extras);
        }
        return new BaseSuggestion(suggestion.title, suggestion.resultCount > 0 ? String.valueOf(suggestion.resultCount) : null, suggestion.icon, suggestion.intentActionURI, createSuggestionExtras(extraInfo), source);
    }

    public static Suggestion createSuggestion(Map<String, String> extras, Source source) {
        SuggestionExtras suggestionExtras = createSuggestionExtras(extras);
        if (suggestionExtras == null) {
            return null;
        }
        Suggestion suggestion = new BaseSuggestion();
        suggestion.setSuggestionExtras(suggestionExtras);
        suggestion.setSuggestionSource(source);
        return suggestion;
    }

    public static SuggestionExtras createSuggestionExtras(Map<String, String> extras) {
        if (extras == null || extras.size() <= 0) {
            return null;
        }
        return new MapBackedSuggestionExtras(extras);
    }

    public static SuggestionCursor createSuggestionCursor(List<ItemSuggestion> suggestions, Source source, QueryInfo queryInfo) {
        if (suggestions == null || suggestions.size() <= 0) {
            return null;
        }
        List<Suggestion> suggestionList = new ArrayList(suggestions.size());
        for (ItemSuggestion itemSuggestion : suggestions) {
            suggestionList.add(createSuggestion(itemSuggestion, source));
        }
        return createSuggestionCursor(suggestionList, queryInfo);
    }

    public static SuggestionCursor createSuggestionCursor(List<Suggestion> suggestions, QueryInfo queryInfo) {
        return new ListSuggestionCursor(queryInfo, suggestions);
    }

    public static SuggestionSection createSuggestionSection(QueryInfo queryInfo, SectionedSuggestion section, Source source) {
        if (section == null) {
            return null;
        }
        String sectionType = section.sectionType;
        int underlineIndex = sectionType.indexOf("_");
        if (underlineIndex > 0) {
            sectionType = sectionType.substring(0, underlineIndex);
        }
        if ("recommand".equals(sectionType)) {
            sectionType = SectionType.SECTION_TYPE_RECOMMEND.getName();
        }
        return new BaseSuggestionSection(queryInfo, sectionType, createSuggestionCursor(section.items, source, queryInfo), section.dataUrl, section.title, null, createSuggestion(section.moreItem, source), createRankInfos(section.rankInfos), null);
    }

    public static List<RankInfo> createRankInfos(List<ItemRankInfo> rankInfos) {
        if (rankInfos == null || rankInfos.isEmpty()) {
            return null;
        }
        List<RankInfo> rankInfoList = new ArrayList(rankInfos.size());
        for (ItemRankInfo itemRankInfo : rankInfos) {
            rankInfoList.add(createRankInfo(itemRankInfo));
        }
        return rankInfoList;
    }

    public static RankInfo createRankInfo(ItemRankInfo itemRankInfo) {
        String order = null;
        if (itemRankInfo == null) {
            return null;
        }
        if ("ASC".equalsIgnoreCase(itemRankInfo.order)) {
            order = "ASC";
        } else if ("DESC".equalsIgnoreCase(itemRankInfo.order)) {
            order = "DESC";
        } else if (itemRankInfo.name != null) {
            order = SearchConstants.getDefaultOrder(itemRankInfo.name);
        }
        return new RankInfo(itemRankInfo.title, itemRankInfo.name, itemRankInfo.style, order);
    }
}
