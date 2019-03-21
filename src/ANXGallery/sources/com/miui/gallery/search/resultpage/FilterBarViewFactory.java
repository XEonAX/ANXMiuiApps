package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.people.PeopleDisplayHelper;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.AbstractSuggestionViewFactory;
import com.miui.gallery.search.core.display.BaseSuggestionViewHolder;
import com.miui.gallery.search.core.display.OnActionClickListener;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class FilterBarViewFactory extends AbstractSuggestionViewFactory {
    private static Map<String, Integer> sViewTypes = new HashMap();
    private DisplayImageOptions mFilterItemDisplayImageOptions;

    static {
        sViewTypes.put("filter_item", Integer.valueOf(R.layout.filter_bar_item));
        sViewTypes.put("filter_item_no_icon", Integer.valueOf(R.layout.filter_bar_item_no_icon));
    }

    public FilterBarViewFactory(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions(Context context) {
        super.initDisplayImageOptions(context);
        this.mFilterItemDisplayImageOptions = PeopleDisplayHelper.getDefaultPeopleDisplayOptionsBuilder().build();
    }

    public Collection<String> getSuggestionViewTypes() {
        return sViewTypes.keySet();
    }

    protected int getLayoutIdForViewType(String viewType) {
        return ((Integer) sViewTypes.get(viewType)).intValue();
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        if (queryInfo.getSearchType() != SearchType.SEARCH_TYPE_FILTER) {
            return null;
        }
        if (TextUtils.isEmpty(suggestion.getSuggestionIcon())) {
            return "filter_item_no_icon";
        }
        return "filter_item";
    }

    public void bindViewHolder(QueryInfo queryInfo, final Suggestion suggestion, final int childPosition, BaseSuggestionViewHolder viewHolder, final OnActionClickListener listener) {
        Suggestion item = getItem((SuggestionCursor) suggestion, childPosition);
        if (item != null) {
            super.bindViewHolder(queryInfo, item, childPosition, viewHolder, listener);
            if (item.getIntentActionURI() != null && viewHolder.getClickView() != null && listener != null) {
                viewHolder.getClickView().setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        listener.onClick(v, 0, FilterBarViewFactory.this.getItem((SuggestionCursor) suggestion, childPosition), SearchStatUtils.buildSearchEventExtras(null, new String[]{"from"}, new String[]{"from_image_result_filter"}));
                    }
                });
            }
        }
    }

    private Suggestion getItem(SuggestionCursor section, int position) {
        section.moveToPosition(position);
        return section.getCurrent();
    }

    protected DisplayImageOptions getDisplayImageOptionsForViewType(String viewType) {
        return this.mFilterItemDisplayImageOptions;
    }
}
