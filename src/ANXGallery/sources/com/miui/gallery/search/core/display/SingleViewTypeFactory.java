package com.miui.gallery.search.core.display;

import android.content.Context;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import java.util.Collection;
import java.util.Collections;

public class SingleViewTypeFactory extends AbstractSuggestionViewFactory {
    private final int mLayoutId;
    protected final String mViewType;

    public SingleViewTypeFactory(String viewType, int layoutId, Context context) {
        super(context);
        this.mViewType = viewType;
        this.mLayoutId = layoutId;
        initDisplayImageOptions(context);
    }

    public Collection<String> getSuggestionViewTypes() {
        return Collections.singletonList(this.mViewType);
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        return this.mViewType;
    }

    protected int getLayoutIdForViewType(String viewType) {
        return this.mLayoutId;
    }
}
