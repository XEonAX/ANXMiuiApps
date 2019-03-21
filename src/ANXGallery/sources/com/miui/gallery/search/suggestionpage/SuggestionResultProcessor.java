package com.miui.gallery.search.suggestionpage;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConfig.SuggestionConfig;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.resultprocessor.SectionedResultProcessor;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.List;

public class SuggestionResultProcessor extends SectionedResultProcessor {
    public SuggestionResultProcessor() {
        super(true);
    }

    protected GroupedSuggestionCursor<SuggestionSection> packData(QueryInfo queryInfo, List<SuggestionSection> sections, Bundle extras) {
        long startTime = SystemClock.elapsedRealtime();
        try {
            GroupedSuggestionCursor<SuggestionSection> cursor;
            if (sections.size() <= 1 || ((SuggestionSection) sections.get(0)).getSectionType() != SectionType.SECTION_TYPE_NO_RESULT) {
                cursor = super.packData(queryInfo, sections, extras);
                if (cursor != null) {
                    if (!TextUtils.isEmpty(queryInfo.getParam("enableShortcut"))) {
                        if (Boolean.valueOf(queryInfo.getParam("enableShortcut")).booleanValue()) {
                            String shortcutUri = getShortcutUri(sections);
                            if (!TextUtils.isEmpty(shortcutUri)) {
                                Bundle extra = cursor.getExtras();
                                if (extra == null || extra == Bundle.EMPTY) {
                                    extra = new Bundle();
                                }
                                extra.putString("short_cut_uri", shortcutUri);
                                cursor.setExtras(extra);
                            }
                        }
                    }
                }
                SearchLog.d("SuggestionResultProcessor", "Pack data cost %d", Long.valueOf(SystemClock.elapsedRealtime() - startTime));
            } else {
                List<SuggestionSection> newSections = new ArrayList(sections.size());
                List<Suggestion> packedItems = new ArrayList();
                SuggestionConfig suggestionConfig = SearchConfig.get().getSuggestionConfig();
                for (SuggestionSection section : sections) {
                    if (suggestionConfig.shouldDrawSectionHeader(section.getSectionType())) {
                        newSections.add(section);
                    } else {
                        for (int i = 0; i < section.getCount(); i++) {
                            section.moveToPosition(i);
                            packedItems.add(section.getCurrent());
                        }
                    }
                }
                if (!packedItems.isEmpty()) {
                    SectionType type = SectionType.SECTION_TYPE_SUGGESTION;
                    newSections.add(new BaseSuggestionSection(queryInfo, type, new ListSuggestionCursor(queryInfo, packedItems), null, SearchConfig.get().getTitleForSection(type), null, null));
                }
                cursor = super.packData(queryInfo, newSections, extras);
                SearchLog.d("SuggestionResultProcessor", "Pack data cost %d", Long.valueOf(SystemClock.elapsedRealtime() - startTime));
            }
            return cursor;
        } catch (Throwable th) {
            SearchLog.d("SuggestionResultProcessor", "Pack data cost %d", Long.valueOf(SystemClock.elapsedRealtime() - startTime));
        }
    }

    protected boolean acceptEmptySection(SuggestionSection section) {
        return section.getSectionType() == SectionType.SECTION_TYPE_NO_RESULT || super.acceptEmptySection(section);
    }

    protected BaseSuggestion toSuggestion(SuggestionSection section, Suggestion suggestion) {
        BaseSuggestion sug = super.toSuggestion(section, suggestion);
        if (!(section == null || sug == null || !TextUtils.isEmpty(sug.getSuggestionSubTitle()) || section.getSectionType() == SectionType.SECTION_TYPE_OTHER || section.getSectionType() == SectionType.SECTION_TYPE_GUIDE)) {
            sug.setSuggestionSubTitle(section.getSectionTitle());
        }
        return sug;
    }

    private String getShortcutUri(List<SuggestionSection> sections) {
        if (BaseMiscUtil.isValid(sections)) {
            SuggestionConfig suggestionConfig = SearchConfig.get().getSuggestionConfig();
            for (SuggestionSection suggestionSection : sections) {
                if (suggestionConfig.supportShortcut(suggestionSection.getSectionType()) && suggestionSection.moveToFirst() && !TextUtils.isEmpty(suggestionSection.getIntentActionURI())) {
                    return suggestionSection.getIntentActionURI();
                }
            }
        }
        return null;
    }
}
