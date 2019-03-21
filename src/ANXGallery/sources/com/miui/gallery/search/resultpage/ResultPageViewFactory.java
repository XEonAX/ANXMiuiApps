package com.miui.gallery.search.resultpage;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.AbstractSuggestionViewFactory;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.widget.RoundedCornerRectBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class ResultPageViewFactory extends AbstractSuggestionViewFactory {
    private static Map<String, Integer> sViewTypes = new HashMap();
    private DisplayImageOptions mTagItemDisplayImageOptions;

    static {
        sViewTypes.put("result_tag_item", Integer.valueOf(R.layout.result_tag_item));
    }

    public ResultPageViewFactory(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions(Context context) {
        super.initDisplayImageOptions(context);
        this.mTagItemDisplayImageOptions = this.mDisplayImageOptionBuilder.displayer(new RoundedCornerRectBitmapDisplayer(context.getResources().getDimensionPixelSize(R.dimen.search_radius_middle))).build();
    }

    public Collection<String> getSuggestionViewTypes() {
        return sViewTypes.keySet();
    }

    protected int getLayoutIdForViewType(String viewType) {
        return ((Integer) sViewTypes.get(viewType)).intValue();
    }

    public String getViewType(QueryInfo queryInfo, SuggestionCursor suggestion, int childPosition) {
        if (queryInfo.getSearchType() != SearchType.SEARCH_TYPE_RESULT || childPosition < 0) {
            return null;
        }
        return "result_tag_item";
    }

    protected DisplayImageOptions getDisplayImageOptionsForViewType(String viewType) {
        if (viewType.equals("result_tag_item")) {
            return this.mTagItemDisplayImageOptions;
        }
        return super.getDisplayImageOptionsForViewType(viewType);
    }
}
