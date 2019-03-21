package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.core.display.BaseSuggestionViewHolder;
import com.miui.gallery.search.core.display.OnActionClickListener;
import com.miui.gallery.search.core.display.SuggestionViewFactory;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionExtras;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.navigationpage.SuggestionTagView.SuggestionTagViewAdapter;
import com.miui.gallery.search.statistics.SearchStatUtils;

public class NavigationSectionAdapter extends BaseAdapter implements SuggestionTagViewAdapter {
    protected OnActionClickListener mActionClickListener;
    protected boolean mAppendMoreItemToItems;
    protected Context mContext;
    protected String mFrom;
    protected LayoutInflater mInflater = LayoutInflater.from(this.mContext);
    protected SuggestionSection mSection;
    protected SuggestionViewFactory mViewFactory;

    public NavigationSectionAdapter(Context context, SuggestionViewFactory viewFactory, SuggestionSection section, String from, boolean appendMoreItemToItems) {
        this.mContext = context;
        this.mViewFactory = viewFactory;
        this.mSection = section;
        this.mFrom = from;
        this.mAppendMoreItemToItems = appendMoreItemToItems;
    }

    public void changeSectionData(SuggestionSection suggestionSection) {
        if (suggestionSection != this.mSection) {
            this.mSection = suggestionSection;
            notifyDataSetChanged();
        }
    }

    public void setActionClickListener(OnActionClickListener actionClickListener) {
        this.mActionClickListener = actionClickListener;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        int convertPosition;
        BaseSuggestionViewHolder holder;
        if (position == getItemCount()) {
            convertPosition = -3;
        } else {
            convertPosition = position;
        }
        if (convertView == null) {
            holder = this.mViewFactory.createViewHolder(parent, this.mViewFactory.getViewType(this.mSection.getQueryInfo(), this.mSection, convertPosition));
            holder.itemView.setTag(holder);
        } else {
            holder = (BaseSuggestionViewHolder) convertView.getTag();
        }
        if (!((convertPosition < 0 && convertPosition != -3) || getItem(convertPosition).getIntentActionURI() == null || holder.getClickView() == null)) {
            holder.getClickView().setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (NavigationSectionAdapter.this.mActionClickListener != null) {
                        NavigationSectionAdapter.this.mActionClickListener.onClick(v, 0, NavigationSectionAdapter.this.getItem(convertPosition), SearchStatUtils.buildSearchEventExtras(null, new String[]{"from", "sectionType"}, new String[]{NavigationSectionAdapter.this.mFrom, NavigationSectionAdapter.this.mSection.getSectionTypeString()}));
                    }
                }
            });
        }
        this.mViewFactory.bindViewHolder(this.mSection.getQueryInfo(), this.mSection, convertPosition, holder, this.mActionClickListener);
        return holder.itemView;
    }

    public boolean isFixedMoreItem() {
        return hasMoreItem() && getFixedMoreItemValue(true, this.mSection.moveToMore().getSuggestionExtras());
    }

    private boolean getFixedMoreItemValue(boolean defaultValue, SuggestionExtras extras) {
        if (extras == null) {
            return defaultValue;
        }
        String fix = extras.getExtra("fixed");
        return !TextUtils.isEmpty(fix) ? Boolean.valueOf(fix).booleanValue() : defaultValue;
    }

    public boolean hasMoreItem() {
        return this.mSection.moveToMore() != null;
    }

    public View getMoreItemView(View convertView, ViewGroup parent) {
        return getView(getItemCount(), convertView, parent);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public Suggestion getItem(int position) {
        if (position == -3) {
            return this.mSection.moveToMore();
        }
        if (position < 0) {
            return null;
        }
        this.mSection.moveToPosition(position);
        return this.mSection.getCurrent();
    }

    public int getCount() {
        int itemCount = getItemCount();
        int i = (this.mAppendMoreItemToItems && hasMoreItem()) ? 1 : 0;
        return i + itemCount;
    }

    protected int getItemCount() {
        return Math.min(this.mSection.getCount(), SearchConfig.get().getNavigationConfig().getSectionMaxItemCount(this.mSection.getSectionType()));
    }
}
