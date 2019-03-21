package com.miui.gallery.search.core.display;

import android.content.Context;
import android.view.ViewGroup;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.DefaultSuggestionView.Factory;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.navigationpage.NavigationPageViewFactory;
import com.miui.gallery.search.resultpage.FilterBarViewFactory;
import com.miui.gallery.search.resultpage.ResultPageViewFactory;
import com.miui.gallery.search.suggestionpage.SearchSuggestionViewFactory;
import com.miui.gallery.search.utils.SearchLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

public class SuggestionViewFactoryImpl implements SuggestionViewFactory {
    private final SuggestionViewFactory mDefaultFactory;
    private final LinkedList<SuggestionViewFactory> mFactories = new LinkedList();
    private Map<String, SuggestionViewFactory> mViewTypeToFactoryMap = new HashMap();

    public SuggestionViewFactoryImpl(Context context) {
        this.mDefaultFactory = new Factory(context);
        addFactory(this.mDefaultFactory);
        addFactory(new DefaultSectionHeaderView.Factory(context));
        addFactory(new NavigationPageViewFactory(context));
        addFactory(new ResultPageViewFactory(context));
        addFactory(new SearchSuggestionViewFactory(context));
        addFactory(new FilterBarViewFactory(context));
    }

    public Collection<String> getSuggestionViewTypes() {
        return this.mViewTypeToFactoryMap.keySet();
    }

    protected final void addFactory(SuggestionViewFactory factory) {
        this.mFactories.addFirst(factory);
        addViewTypes(factory);
    }

    private void addViewTypes(SuggestionViewFactory factory) {
        for (String viewType : factory.getSuggestionViewTypes()) {
            if (this.mViewTypeToFactoryMap.containsKey(viewType)) {
                throw new RuntimeException(String.format("The view type %s has already exists in other factory %s, please change a name", new Object[]{viewType, this.mViewTypeToFactoryMap.get(viewType)}));
            }
            this.mViewTypeToFactoryMap.put(viewType, factory);
        }
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        suggestion.moveToPosition(childPosition);
        Iterator it = this.mFactories.iterator();
        while (it.hasNext()) {
            String viewType = ((SuggestionViewFactory) it.next()).getViewType(queryInfo, suggestion, childPosition);
            if (viewType != null) {
                return viewType;
            }
        }
        return this.mDefaultFactory.getViewType(queryInfo, suggestion, childPosition);
    }

    public BaseSuggestionViewHolder createViewHolder(ViewGroup parent, String viewType) {
        BaseSuggestionViewHolder holder = ((SuggestionViewFactory) this.mViewTypeToFactoryMap.get(viewType)).createViewHolder(parent, viewType);
        if (viewType == null) {
            SearchLog.e("Error", "empty view type");
        }
        holder.setViewType(viewType);
        return holder;
    }

    public void bindViewHolder(QueryInfo queryInfo, Suggestion suggestion, int childPosition, BaseSuggestionViewHolder viewHolder, OnActionClickListener listener) {
        if (viewHolder.getViewType() != null && this.mViewTypeToFactoryMap.containsKey(viewHolder.getViewType())) {
            ((SuggestionViewFactory) this.mViewTypeToFactoryMap.get(viewHolder.getViewType())).bindViewHolder(queryInfo, suggestion, childPosition, viewHolder, listener);
        }
    }
}
