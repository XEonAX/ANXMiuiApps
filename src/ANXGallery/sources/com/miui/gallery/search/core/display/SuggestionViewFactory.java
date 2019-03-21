package com.miui.gallery.search.core.display;

import android.view.ViewGroup;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import java.util.Collection;

public interface SuggestionViewFactory {
    void bindViewHolder(QueryInfo queryInfo, Suggestion suggestion, int i, BaseSuggestionViewHolder baseSuggestionViewHolder, OnActionClickListener onActionClickListener);

    BaseSuggestionViewHolder createViewHolder(ViewGroup viewGroup, String str);

    Collection<String> getSuggestionViewTypes();

    String getViewType(QueryInfo queryInfo, SuggestionCursor suggestionCursor, int i);
}
