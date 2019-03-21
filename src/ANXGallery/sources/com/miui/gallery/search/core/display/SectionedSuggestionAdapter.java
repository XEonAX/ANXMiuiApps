package com.miui.gallery.search.core.display;

import android.app.Activity;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;

public class SectionedSuggestionAdapter extends BaseSuggestionAdapter<GroupedSuggestionCursor<SuggestionSection>> {
    public SectionedSuggestionAdapter(Activity activity, SuggestionViewFactory viewFactory, String from) {
        super(activity, viewFactory, from);
    }

    protected SuggestionSection getSection(int sectionIndex) {
        return getSuggestionCursor() != null ? (SuggestionSection) ((GroupedSuggestionCursor) getSuggestionCursor()).getGroup(sectionIndex) : null;
    }

    protected int getInnerItemViewCount() {
        int total = 0;
        for (int i = 0; i < getSectionCount(); i++) {
            total += getSectionTotalItemCount(i);
        }
        return total;
    }

    protected int getSectionTotalItemCount(int sectionIndex) {
        int sectionItemCount = getSectionItemCount(sectionIndex) + getHeaderCount(sectionIndex);
        int i = (getSection(sectionIndex).moveToMore() == null || useBatchContent(sectionIndex)) ? 0 : 1;
        return i + sectionItemCount;
    }

    protected int getHeaderCount(int sectionIndex) {
        return 1;
    }

    protected int getSectionCount() {
        return getSuggestionCursor() != null ? ((GroupedSuggestionCursor) getSuggestionCursor()).getGroupCount() : 0;
    }

    protected int getSectionItemCount(int sectionIndex) {
        if (getSection(sectionIndex) == null) {
            return 0;
        }
        return useBatchContent(sectionIndex) ? getHeaderCount(sectionIndex) : getSection(sectionIndex).getCount();
    }

    protected boolean useBatchContent(int sectionIndex) {
        return false;
    }

    protected int getInnerItemViewType(int position) {
        int[] indexes = getIndexes(position);
        return ((Integer) this.mViewTypeMap.get(this.mViewFactory.getViewType(this.mQueryInfo, getSection(indexes[0]), indexes[1]))).intValue();
    }

    protected void bindInnerItemViewHolder(BaseSuggestionViewHolder holder, int position) {
        int[] indexes = getIndexes(position);
        this.mViewFactory.bindViewHolder(this.mQueryInfo, getSection(indexes[0]), indexes[1], holder, getActionClickListener());
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int[] getIndexes(int position) {
        int[] indexes = new int[2];
        int sectionStartPos = 0;
        for (int i = 0; i < getSectionCount(); i++) {
            int sectionTotal = getSectionTotalItemCount(i);
            if (position < sectionStartPos + sectionTotal) {
                int headerCount = getHeaderCount(i);
                indexes[0] = i;
                indexes[1] = position - sectionStartPos;
                if (indexes[1] < headerCount) {
                    indexes[1] = -1;
                } else if (indexes[1] == getSectionItemCount(i) + headerCount) {
                    indexes[1] = -3;
                } else if (useBatchContent(indexes[0])) {
                    indexes[1] = -2;
                } else {
                    indexes[1] = indexes[1] - headerCount;
                }
                if (indexes[1] >= 0) {
                    ((GroupedSuggestionCursor) getSuggestionCursor()).moveToPosition(indexes[0], indexes[1]);
                }
                return indexes;
            }
            sectionStartPos += sectionTotal;
        }
        if (indexes[1] >= 0) {
        }
        return indexes;
    }
}
