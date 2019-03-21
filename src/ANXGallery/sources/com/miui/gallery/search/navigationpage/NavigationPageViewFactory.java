package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.display.AbstractSuggestionViewFactory;
import com.miui.gallery.search.core.display.BaseSuggestionViewHolder;
import com.miui.gallery.search.core.display.OnActionClickListener;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.widget.RoundedCornerRectBitmapDisplayer;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class NavigationPageViewFactory extends AbstractSuggestionViewFactory {
    private static Map<String, Integer> sViewTypes = new HashMap();
    private DisplayImageOptions mPeopleItemDisplayImageOptions;
    private DisplayImageOptions mRecommendItemDisplayImageOptions;

    static {
        sViewTypes.put("navigation_section_header", Integer.valueOf(R.layout.navigation_section_header));
        sViewTypes.put("navigation_recommend", Integer.valueOf(R.layout.navigation_recommend_section_content));
        sViewTypes.put("navigation_recommend_item", Integer.valueOf(R.layout.navigation_recommend_item));
        sViewTypes.put("navigation_people", Integer.valueOf(R.layout.navigation_people_section_content));
        sViewTypes.put("navigation_people_item", Integer.valueOf(R.layout.navigation_people_item));
        sViewTypes.put("navigation_people_more_item", Integer.valueOf(R.layout.navigation_people_more_item));
        sViewTypes.put("navigation_tag", Integer.valueOf(R.layout.navigation_tag_section_content));
        sViewTypes.put("navigation_tag_item", Integer.valueOf(R.layout.navigation_tag_item));
        sViewTypes.put("navigation_location_item", Integer.valueOf(R.layout.navigation_location_item));
        sViewTypes.put("navigation_section_content", Integer.valueOf(R.layout.navigation_default_section_content));
        sViewTypes.put("navigation_warning_header", Integer.valueOf(R.layout.navigation_warning_section_header));
    }

    public NavigationPageViewFactory(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions(Context context) {
        super.initDisplayImageOptions(context);
        int recommendItemRadius = context.getResources().getDimensionPixelSize(R.dimen.search_radius_large);
        this.mRecommendItemDisplayImageOptions = this.mDisplayImageOptionBuilder.displayer(new RoundedCornerRectBitmapDisplayer(new int[]{recommendItemRadius, 0, 0, recommendItemRadius})).build();
        this.mPeopleItemDisplayImageOptions = this.mDisplayImageOptionBuilder.showImageOnLoading(R.drawable.default_face_cover).showImageOnFail(R.drawable.default_face_cover).showImageForEmptyUri(R.drawable.default_face_cover).displayer(new PeopleItemBitmapDisplayer(true)).usingRegionDecoderFace(true).build();
    }

    public Collection<String> getSuggestionViewTypes() {
        return sViewTypes.keySet();
    }

    protected int getLayoutIdForViewType(String viewType) {
        return ((Integer) sViewTypes.get(viewType)).intValue();
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        if (queryInfo.getSearchType() != SearchType.SEARCH_TYPE_NAVIGATION || !(suggestion instanceof SuggestionSection)) {
            return null;
        }
        SectionType sectionType = ((SuggestionSection) suggestion).getSectionType();
        switch (childPosition) {
            case -3:
                switch (sectionType) {
                    case SECTION_TYPE_RECOMMEND:
                        return "navigation_recommend_item";
                    case SECTION_TYPE_PEOPLE:
                        return "navigation_people_more_item";
                    default:
                        return "navigation_tag_item";
                }
            case -2:
                switch (sectionType) {
                    case SECTION_TYPE_RECOMMEND:
                        return "navigation_recommend";
                    case SECTION_TYPE_PEOPLE:
                        return "navigation_people";
                    case SECTION_TYPE_LOCATION:
                    case SECTION_TYPE_TAG:
                        return "navigation_tag";
                    default:
                        return "navigation_section_content";
                }
            case -1:
                switch (sectionType) {
                    case SECTION_TYPE_WARNING:
                        return "navigation_warning_header";
                    default:
                        return "navigation_section_header";
                }
            default:
                if (childPosition < 0 || !SearchConfig.get().getNavigationConfig().useBatchContent(sectionType)) {
                    return null;
                }
                switch (sectionType) {
                    case SECTION_TYPE_RECOMMEND:
                        return "navigation_recommend_item";
                    case SECTION_TYPE_PEOPLE:
                        return "navigation_people_item";
                    case SECTION_TYPE_LOCATION:
                        return "navigation_location_item";
                    default:
                        return "navigation_tag_item";
                }
        }
    }

    public void bindViewHolder(QueryInfo queryInfo, Suggestion suggestion, int childPosition, BaseSuggestionViewHolder viewHolder, final OnActionClickListener listener) {
        SuggestionSection section = (SuggestionSection) suggestion;
        switch (childPosition) {
            case -3:
                super.bindViewHolder(queryInfo, section.moveToMore(), childPosition, viewHolder, listener);
                if (section.getSectionType() == SectionType.SECTION_TYPE_PEOPLE && section.moveToPosition(SearchConfig.get().getNavigationConfig().getSectionMaxItemCount(section.getSectionType())) && section.getIntentActionURI() != null && viewHolder.getIconView() != null) {
                    bindIcon(viewHolder.getIconView(), section.getSuggestionIcon(), getDisplayImageOptionsForViewType(viewHolder.getViewType()));
                    return;
                }
                return;
            case -2:
                NavigationSectionAdapter existAdapter = viewHolder.itemView.getContentAdapter();
                if (existAdapter != null) {
                    existAdapter.changeSectionData(section);
                    return;
                }
                NavigationSectionAdapter adapter = createContentAdapter(section);
                adapter.setActionClickListener(listener);
                ((NavigationSectionContentView) viewHolder.itemView).setContentAdapter(adapter);
                return;
            case -1:
                if (section.getSectionType() != SectionType.SECTION_TYPE_WARNING) {
                    if (!(section.getSectionType() != SectionType.SECTION_TYPE_HISTORY || viewHolder.getSubTitle() == null || listener == null)) {
                        viewHolder.getSubTitle().setOnClickListener(new OnClickListener() {
                            public void onClick(View v) {
                                listener.onClick(v, 2, null, SearchStatUtils.buildSearchEventExtras(null, new String[]{"from"}, new String[]{"from_navigation_history"}));
                            }
                        });
                    }
                    if (viewHolder.getTitle() != null) {
                        viewHolder.getTitle().setText(section.getSectionTitle());
                    }
                    if (viewHolder.getSubTitle() != null) {
                        viewHolder.getSubTitle().setText(section.getSectionSubTitle());
                        return;
                    }
                    return;
                } else if (viewHolder.getTitle() == null) {
                    return;
                } else {
                    if (section.moveToFirst()) {
                        viewHolder.getTitle().setText(section.getSuggestionTitle());
                        return;
                    } else {
                        viewHolder.getTitle().setText(section.getSectionTitle());
                        return;
                    }
                }
            default:
                super.bindViewHolder(queryInfo, suggestion, childPosition, viewHolder, listener);
                return;
        }
    }

    protected DisplayImageOptions getDisplayImageOptionsForViewType(String viewType) {
        if (viewType == null) {
            SearchLog.e("Error", "empty view type");
            return super.getDisplayImageOptionsForViewType(null);
        } else if (viewType.equals("navigation_recommend_item")) {
            return this.mRecommendItemDisplayImageOptions;
        } else {
            if (viewType.equals("navigation_people_item") || viewType.equals("navigation_people_more_item")) {
                return this.mPeopleItemDisplayImageOptions;
            }
            return super.getDisplayImageOptionsForViewType(viewType);
        }
    }

    protected NavigationSectionAdapter createContentAdapter(SuggestionSection section) {
        String from = section.getSectionType() == SectionType.SECTION_TYPE_HISTORY ? "from_navigation_history" : "from_navigation";
        boolean appendMoreItem = section.getSectionType() == SectionType.SECTION_TYPE_PEOPLE || section.getSectionType() == SectionType.SECTION_TYPE_FEATURE;
        return new NavigationSectionAdapter(getContext(), SearchContext.getInstance().getSuggestionViewFactory(), section, from, appendMoreItem);
    }
}
