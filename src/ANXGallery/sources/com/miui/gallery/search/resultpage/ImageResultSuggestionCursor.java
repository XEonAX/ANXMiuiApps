package com.miui.gallery.search.resultpage;

import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import java.util.ArrayList;
import java.util.List;

class ImageResultSuggestionCursor extends GroupedSuggestionCursor<SuggestionSection> implements ExpandableGroupList<SuggestionSection, Suggestion> {
    private SparseArray<Integer[]> mGroupCollapsedItemArray;
    private SparseBooleanArray mGroupExpandStateArray;
    private boolean mSupportExpand;

    public ImageResultSuggestionCursor(QueryInfo queryInfo, List<SuggestionSection> sections, boolean supportExpand) {
        super(queryInfo, sections);
        this.mSupportExpand = supportExpand;
    }

    public ImageResultSuggestionCursor(QueryInfo queryInfo, List<SuggestionSection> sections, boolean mSupportExpand, SparseBooleanArray createDateExpandStateArray) {
        this(queryInfo, sections, mSupportExpand);
        initGroupCollapsedItemArray(sections, createDateExpandStateArray);
    }

    public String getGroupTitle(int groupIndex) {
        if (this.mSupportExpand && getGroupExpandState(groupIndex)) {
            return getGroupExtra(groupIndex, "expand_title");
        }
        return getGroupExtra(groupIndex, "title");
    }

    public long getGroupCreateTime(int groupIndex) {
        return getGroupExtra(groupIndex, "create_time") != null ? Long.valueOf(getGroupExtra(groupIndex, "create_time")).longValue() : -1;
    }

    public int getGroupCreateDate(int groupIndex) {
        return getGroupExtra(groupIndex, "create_date") != null ? Integer.valueOf(getGroupExtra(groupIndex, "create_date")).intValue() : -1;
    }

    public String getGroupRankValue(int groupIndex) {
        return getGroupExtra(groupIndex, "rank_value");
    }

    SparseBooleanArray getGroupExpandStateArray() {
        SparseBooleanArray array = new SparseBooleanArray(getGroupCount());
        for (int i = 0; i < getGroupCount(); i++) {
            array.put(getGroupCreateDate(i), getGroupExpandState(i));
        }
        return array;
    }

    public String getImageIds() {
        int groupCount = getGroupCount();
        List<String> ids = new ArrayList(getGroupCount());
        int i = 0;
        while (i < groupCount) {
            if (!this.mSupportExpand || getGroupExpandState(i)) {
                ids.add(getGroupExtra(i, "all_ids"));
            } else {
                ids.add(getGroupExtra(i, "collapse_visible_ids"));
            }
            i++;
        }
        if (ids.size() > 0) {
            return TextUtils.join(",", ids);
        }
        return null;
    }

    public boolean getGroupExpandState(int groupIndex) {
        checkGroupPosition(groupIndex);
        return this.mSupportExpand && this.mGroupExpandStateArray.get(groupIndex);
    }

    public int getChildrenCount(int groupIndex, boolean expanded) {
        checkGroupPosition(groupIndex);
        if (!this.mSupportExpand || expanded) {
            return ((SuggestionSection) getGroup(groupIndex)).getCount();
        }
        return ((Integer[]) this.mGroupCollapsedItemArray.get(groupIndex)).length;
    }

    protected String getGroupExtra(int groupIndex, String columnName) {
        return ((SuggestionSection) getGroup(groupIndex)).getSectionExtras().getExtra(columnName);
    }

    protected boolean onMoveGroup(int groupIndex, int childPosition) {
        if (!this.mSupportExpand || getGroupExpandState(groupIndex)) {
            return super.onMoveGroup(groupIndex, childPosition);
        }
        return ((SuggestionSection) getGroup(groupIndex)).moveToPosition(((Integer[]) this.mGroupCollapsedItemArray.get(groupIndex))[childPosition].intValue());
    }

    public int getChildrenCount(int groupIndex) {
        return getChildrenCount(groupIndex, getGroupExpandState(groupIndex));
    }

    private void initGroupCollapsedItemArray(List<SuggestionSection> sections, SparseBooleanArray createDateExpandStateArray) {
        this.mGroupExpandStateArray = new SparseBooleanArray(sections.size());
        this.mGroupCollapsedItemArray = new SparseArray(sections.size());
        ArrayList<Integer> tmpList = new ArrayList();
        for (int i = 0; i < sections.size(); i++) {
            SuggestionSection section = (SuggestionSection) sections.get(i);
            if (createDateExpandStateArray != null) {
                this.mGroupExpandStateArray.put(i, createDateExpandStateArray.get(Integer.valueOf(section.getSectionExtras().getExtra("create_date")).intValue(), false));
            }
            int indexCollapseVisibility = section.getColumnIndex("item_collapse_visibility");
            for (int j = 0; j < section.getCount(); j++) {
                section.moveToPosition(j);
                if (indexCollapseVisibility >= 0 && "visible".equals(section.getString(indexCollapseVisibility))) {
                    tmpList.add(Integer.valueOf(j));
                }
            }
            Integer[] visibleItems = new Integer[tmpList.size()];
            if (!tmpList.isEmpty()) {
                visibleItems = (Integer[]) tmpList.toArray(visibleItems);
            }
            this.mGroupCollapsedItemArray.put(i, visibleItems);
            tmpList.clear();
        }
    }
}
