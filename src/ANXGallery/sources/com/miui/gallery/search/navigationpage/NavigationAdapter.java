package com.miui.gallery.search.navigationpage;

import android.app.Activity;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.display.SectionedSuggestionAdapter;
import com.miui.gallery.search.core.display.SuggestionViewFactory;

public class NavigationAdapter extends SectionedSuggestionAdapter {
    public NavigationAdapter(Activity activity, SuggestionViewFactory viewFactory, String from) {
        super(activity, viewFactory, from);
    }

    protected boolean useBatchContent(int sectionIndex) {
        return SearchConfig.get().getNavigationConfig().useBatchContent(getSection(sectionIndex).getSectionType());
    }

    protected int getSectionItemCount(int sectionIndex) {
        if (getSection(sectionIndex).getSectionType() == SectionType.SECTION_TYPE_WARNING) {
            return 0;
        }
        return super.getSectionItemCount(sectionIndex);
    }
}
