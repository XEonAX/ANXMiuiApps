package com.miui.gallery.search.suggestionpage;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.people.PeopleDisplayHelper;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.AbstractSuggestionViewFactory;
import com.miui.gallery.search.core.display.BaseSuggestionViewHolder;
import com.miui.gallery.search.core.display.OnActionClickListener;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class SearchSuggestionViewFactory extends AbstractSuggestionViewFactory {
    private static Map<String, Integer> sViewTypes = new HashMap();
    private DisplayImageOptions mItemDisplayImageOptions;
    private DisplayImageOptions mPeopleItemDisplayImageOptions;

    static {
        sViewTypes.put("search_suggestion_people", Integer.valueOf(R.layout.default_suggestion_item));
        sViewTypes.put("search_suggestion_item", Integer.valueOf(R.layout.default_suggestion_item));
        sViewTypes.put("search_suggestion_no_result_header", Integer.valueOf(R.layout.suggestion_no_result_item));
        sViewTypes.put("search_suggestion_guide_item", Integer.valueOf(R.layout.guide_suggestion_item));
    }

    public SearchSuggestionViewFactory(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions(Context context) {
        super.initDisplayImageOptions(context);
        this.mItemDisplayImageOptions = this.mDisplayImageOptionBuilder.displayer(new PeopleItemBitmapDisplayer(false)).showImageOnLoading(R.drawable.search_suggestion_icon_default).showImageOnFail(R.drawable.search_suggestion_icon_default).showImageForEmptyUri(R.drawable.search_suggestion_icon_default).build();
        this.mPeopleItemDisplayImageOptions = PeopleDisplayHelper.getDefaultPeopleDisplayOptionsBuilder().build();
    }

    public Collection<String> getSuggestionViewTypes() {
        return sViewTypes.keySet();
    }

    protected int getLayoutIdForViewType(String viewType) {
        return ((Integer) sViewTypes.get(viewType)).intValue();
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        if ((queryInfo.getSearchType() != SearchType.SEARCH_TYPE_SEARCH && queryInfo.getSearchType() != SearchType.SEARCH_TYPE_SUGGESTION) || !(suggestion instanceof SuggestionSection)) {
            return null;
        }
        SectionType sectionType = ((SuggestionSection) suggestion).getSectionType();
        if (sectionType == SectionType.SECTION_TYPE_NO_RESULT && childPosition == -1) {
            return "search_suggestion_no_result_header";
        }
        if (childPosition < 0 && childPosition != -3) {
            return null;
        }
        if (sectionType == SectionType.SECTION_TYPE_PEOPLE) {
            return "search_suggestion_people";
        }
        if (sectionType == SectionType.SECTION_TYPE_GUIDE) {
            return "search_suggestion_guide_item";
        }
        return "search_suggestion_item";
    }

    public void bindViewHolder(QueryInfo queryInfo, final Suggestion suggestion, final int childPosition, BaseSuggestionViewHolder viewHolder, final OnActionClickListener listener) {
        SuggestionSection section = (SuggestionSection) suggestion;
        if (childPosition != -1) {
            Suggestion item = getItem(section, childPosition);
            if (item != null) {
                super.bindViewHolder(queryInfo, item, childPosition, viewHolder, listener);
                if (!("search_suggestion_guide_item".equals(viewHolder.getViewType()) || TextUtils.isEmpty(queryInfo.getParam("query")) || viewHolder.getTitle() == null || TextUtils.isEmpty(item.getSuggestionTitle()))) {
                    int[] span = findQueryTextSpan(item.getSuggestionTitle().toLowerCase(), queryInfo.getParam("query").toLowerCase());
                    if (span != null) {
                        SpannableStringBuilder builder = new SpannableStringBuilder(item.getSuggestionTitle());
                        builder.setSpan(new ForegroundColorSpan(getContext().getResources().getColor(R.color.text_blue)), span[0], span[1], 33);
                        viewHolder.getTitle().setText(builder);
                    }
                }
                if (item.getIntentActionURI() != null && viewHolder.getClickView() != null && listener != null) {
                    viewHolder.getClickView().setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            String from = "from_suggestion";
                            if (((SuggestionSection) suggestion).getSectionType() == SectionType.SECTION_TYPE_GUIDE) {
                                from = "from_guide";
                            }
                            listener.onClick(v, 0, SearchSuggestionViewFactory.this.getItem(section, childPosition), SearchStatUtils.buildSearchEventExtras(null, new String[]{"from", "sectionType"}, new String[]{from, suggestion.getSectionTypeString()}));
                        }
                    });
                }
            }
        } else if (viewHolder.getTitle() != null) {
            viewHolder.getTitle().setText(section.getSectionTitle());
        }
    }

    private Suggestion getItem(SuggestionSection section, int position) {
        if (position == -3) {
            return section.moveToMore();
        }
        if (position < 0) {
            return null;
        }
        section.moveToPosition(position);
        return section.getCurrent();
    }

    private int[] findQueryTextSpan(String title, String queryText) {
        int firstIndex = title.indexOf(queryText);
        if (firstIndex < 0) {
            return null;
        }
        if (title.lastIndexOf(queryText) != firstIndex) {
            int index = title.indexOf("\"" + queryText);
            if (index < 0) {
                index = title.indexOf("“" + queryText);
            }
            if (index >= 0) {
                firstIndex = index + 1;
            }
        }
        return new int[]{firstIndex, queryText.length() + firstIndex};
    }

    protected DisplayImageOptions getDisplayImageOptionsForViewType(String viewType) {
        if (viewType.equals("search_suggestion_people") || viewType.equals("search_suggestion_guide_item")) {
            return this.mPeopleItemDisplayImageOptions;
        }
        return this.mItemDisplayImageOptions;
    }
}
