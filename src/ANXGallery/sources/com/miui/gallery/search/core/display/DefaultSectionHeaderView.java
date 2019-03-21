package com.miui.gallery.search.core.display;

import android.content.Context;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;

public class DefaultSectionHeaderView extends View {

    public static class Factory extends SingleViewTypeFactory {
        public Factory(Context context) {
            super("section", R.layout.section_suggestion_item, context);
        }

        public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
            return ((suggestion instanceof SuggestionSection) && childPosition == -1) ? "section" : null;
        }

        public void bindViewHolder(QueryInfo queryInfo, Suggestion suggestion, int childPosition, BaseSuggestionViewHolder viewHolder, OnActionClickListener listener) {
            SuggestionSection section = (SuggestionSection) suggestion;
            if (viewHolder.getTitle() != null) {
                viewHolder.getTitle().setText(section.getSectionTitle());
            }
            if (viewHolder.getSubTitle() != null) {
                viewHolder.getSubTitle().setText(section.getSectionSubTitle());
            }
        }
    }
}
