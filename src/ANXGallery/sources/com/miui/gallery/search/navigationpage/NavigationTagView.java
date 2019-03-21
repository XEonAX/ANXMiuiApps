package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.util.AttributeSet;

public class NavigationTagView extends SuggestionTagView implements NavigationSectionContentView {
    public NavigationTagView(Context context) {
        this(context, null);
    }

    public NavigationTagView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NavigationTagView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setContentAdapter(NavigationSectionAdapter adapter) {
        setAdapter(adapter);
    }

    public NavigationSectionAdapter getContentAdapter() {
        return getAdapter() == null ? null : (NavigationSectionAdapter) getAdapter();
    }
}
