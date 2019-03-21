package com.miui.gallery.search.core.resultprocessor;

import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.GroupList;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSuggestionResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class SectionedResultProcessor extends ResultProcessor<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> {
    private boolean mRemoveDuplicateItems;

    public SectionedResultProcessor() {
        this(false);
    }

    public SectionedResultProcessor(boolean removeDuplicateItems) {
        this.mRemoveDuplicateItems = false;
        this.mRemoveDuplicateItems = removeDuplicateItems;
    }

    protected SuggestionResult<GroupedSuggestionCursor<SuggestionSection>> getMergedResult(List<SourceResult> sourceResults) {
        ErrorInfo errorInfo = getMergedErrorInfo(sourceResults);
        GroupedSuggestionCursor<SuggestionSection> data = null;
        List<SuggestionSection> sections = new ArrayList();
        HashSet<String> itemKeys = new HashSet();
        QueryInfo queryInfo = null;
        for (SourceResult sourceResult : sourceResults) {
            if (queryInfo == null && sourceResult.getQueryInfo() != null) {
                queryInfo = sourceResult.getQueryInfo();
            }
            if (sourceResult.getData() != null) {
                if (sourceResult.getData() instanceof SuggestionSection) {
                    SuggestionSection section = (SuggestionSection) sourceResult.getData();
                    if (section.getSectionType() != SectionType.SECTION_TYPE_NO_RESULT || sections.size() <= 0) {
                        onAddSection(sections, itemKeys, section);
                    }
                } else if (sourceResult.getData() instanceof GroupList) {
                    GroupList groupList = (GroupList) sourceResult.getData();
                    for (int i = 0; i < groupList.getGroupCount(); i++) {
                        Object group = groupList.getGroup(i);
                        if (group instanceof SuggestionSection) {
                            if (((SuggestionSection) group).getSectionType() == SectionType.SECTION_TYPE_NO_RESULT && sections.size() > 0) {
                                break;
                            }
                            onAddSection(sections, itemKeys, (SuggestionSection) group);
                        }
                    }
                }
                if (!sections.isEmpty()) {
                    Bundle extras = new Bundle();
                    extras.putInt("itemCount", itemKeys.size());
                    data = packData(queryInfo, sections, extras);
                }
            }
        }
        return new BaseSuggestionResult(queryInfo, data, errorInfo);
    }

    protected GroupedSuggestionCursor<SuggestionSection> packData(QueryInfo queryInfo, List<SuggestionSection> sections, Bundle extras) {
        GroupedSuggestionCursor<SuggestionSection> suggestionCursor = new GroupedSuggestionCursor(queryInfo, sections);
        if (extras != null) {
            suggestionCursor.setExtras(extras);
        }
        return suggestionCursor;
    }

    protected void onAddSection(List<SuggestionSection> addedList, HashSet<String> addedItems, SuggestionSection section) {
        if ((acceptEmptySection(section) || section.getCount() > 0 || !TextUtils.isEmpty(section.getDataURI())) && SearchConfig.get().showSection(section.getSectionType())) {
            addedList.add(getIndependentSection(addedItems, section));
        }
    }

    protected boolean acceptEmptySection(SuggestionSection section) {
        return false;
    }

    protected BaseSuggestion toSuggestion(SuggestionSection section, Suggestion suggestion) {
        return super.toSuggestion(suggestion);
    }

    protected BaseSuggestionSection getIndependentSection(HashSet<String> addedItemKeys, SuggestionSection section) {
        List<Suggestion> suggestions = new ArrayList(section.getCount());
        if (section.moveToFirst()) {
            do {
                String itemKey = getSuggestionKey(section, section.getCurrent());
                if (!TextUtils.isEmpty(itemKey)) {
                    if (!(this.mRemoveDuplicateItems && addedItemKeys.contains(itemKey))) {
                        addedItemKeys.add(itemKey);
                    }
                }
                suggestions.add(toSuggestion(section, section.getCurrent()));
            } while (section.moveToNext());
        }
        return new BaseSuggestionSection(section.getQueryInfo(), section.getSectionTypeString(), new ListSuggestionCursor(section.getQueryInfo(), suggestions), section.getDataURI(), section.getSectionTitle(), section.getSectionSubTitle(), toSuggestion(section, section.moveToMore()), section.getRankInfos(), section.getExtras());
    }

    protected String getSuggestionKey(SuggestionSection section, Suggestion suggestion) {
        if (!SearchConfig.get().getSuggestionConfig().countToRecall(section.getSectionType())) {
            return null;
        }
        return String.format("%s%s", new Object[]{suggestion.getSuggestionTitle(), suggestion.getIntentActionURI()});
    }
}
