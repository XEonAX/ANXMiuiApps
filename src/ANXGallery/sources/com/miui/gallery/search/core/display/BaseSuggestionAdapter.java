package com.miui.gallery.search.core.display;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.statistics.SearchStatUtils;
import java.util.HashMap;

public class BaseSuggestionAdapter<S extends SuggestionCursor> extends QuickAdapterBase<BaseSuggestionViewHolder> {
    protected OnActionClickListener mActionClickListener;
    private String mFrom;
    protected QueryInfo mQueryInfo;
    protected S mSuggestionCursor;
    protected final SuggestionViewFactory mViewFactory;
    protected final HashMap<String, Integer> mViewTypeMap;
    private final HashMap<Integer, String> mViewTypeReverseMap;

    private static class SuggestionDiffCallback extends InnerDiffCallback {
        private SuggestionCursor mNewSuggestionCursor;
        private SuggestionCursor mOldSuggestionCursor;

        public SuggestionDiffCallback(SuggestionCursor oldSuggestionCursor, SuggestionCursor newSuggestionCursor) {
            this.mOldSuggestionCursor = oldSuggestionCursor;
            this.mNewSuggestionCursor = newSuggestionCursor;
        }

        public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
            if (this.mOldSuggestionCursor == null || oldItemPosition >= this.mOldSuggestionCursor.getCount() || this.mNewSuggestionCursor == null || newItemPosition >= this.mNewSuggestionCursor.getCount()) {
                return false;
            }
            this.mOldSuggestionCursor.moveToPosition(oldItemPosition);
            this.mNewSuggestionCursor.moveToPosition(newItemPosition);
            return this.mOldSuggestionCursor.getCurrent().equals(this.mNewSuggestionCursor.getCurrent());
        }
    }

    public BaseSuggestionAdapter(Activity activity, SuggestionViewFactory viewFactory, String from, OnActionClickListener actionClickListener) {
        super(activity);
        this.mViewFactory = viewFactory;
        this.mFrom = from;
        this.mActionClickListener = actionClickListener;
        this.mViewTypeMap = new HashMap();
        this.mViewTypeReverseMap = new HashMap();
        for (String viewType : this.mViewFactory.getSuggestionViewTypes()) {
            if (!this.mViewTypeMap.containsKey(viewType)) {
                this.mViewTypeMap.put(viewType, Integer.valueOf(this.mViewTypeMap.size() + 16));
                this.mViewTypeReverseMap.put(Integer.valueOf(this.mViewTypeReverseMap.size() + 16), viewType);
            }
        }
    }

    public BaseSuggestionAdapter(Activity activity, SuggestionViewFactory viewFactory, String from) {
        this(activity, viewFactory, from, new DefaultActionClickListener(activity));
    }

    public void setActionClickListener(OnActionClickListener actionClickListener) {
        this.mActionClickListener = actionClickListener;
    }

    public void changeSuggestions(QueryInfo queryInfo, S suggestionCursor) {
        changeSuggestions(queryInfo, suggestionCursor, true);
    }

    public void changeSuggestions(QueryInfo queryInfo, S suggestionCursor, boolean useDiffUtils) {
        if (this.mSuggestionCursor != suggestionCursor || this.mQueryInfo != queryInfo) {
            if (useDiffUtils) {
                SuggestionCursor oldSuggestionCursor = this.mSuggestionCursor;
                this.mSuggestionCursor = suggestionCursor;
                this.mQueryInfo = queryInfo;
                notifyDataChanged(new SuggestionDiffCallback(oldSuggestionCursor, this.mSuggestionCursor));
                if (oldSuggestionCursor != null) {
                    oldSuggestionCursor.close();
                    return;
                }
                return;
            }
            if (this.mSuggestionCursor != null) {
                this.mSuggestionCursor.close();
            }
            this.mSuggestionCursor = suggestionCursor;
            this.mQueryInfo = queryInfo;
            if (this.mSuggestionCursor != null) {
                notifyDataSetChanged();
            } else {
                notifyDataSetInvalidated();
            }
        }
    }

    protected S getSuggestionCursor() {
        return this.mSuggestionCursor;
    }

    protected void bindActionClickListener(View view, int actionType, SuggestionCursor suggestionCursor, int childIndex, String from) {
        final String str = from;
        final SuggestionCursor suggestionCursor2 = suggestionCursor;
        final int i = childIndex;
        final View view2 = view;
        final int i2 = actionType;
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Bundle extra = null;
                if (str != null) {
                    extra = SearchStatUtils.buildSearchEventExtras(null, new String[]{"from"}, new String[]{str});
                }
                suggestionCursor2.moveToPosition(i);
                BaseSuggestionAdapter.this.getActionClickListener().onClick(view2, i2, suggestionCursor2, extra);
            }
        });
    }

    public OnActionClickListener getActionClickListener() {
        return this.mActionClickListener;
    }

    protected int getInnerItemViewType(int position) {
        this.mSuggestionCursor.moveToPosition(position);
        String viewType = this.mViewFactory.getViewType(this.mQueryInfo, this.mSuggestionCursor, position);
        if (this.mViewTypeMap.containsKey(viewType)) {
            return ((Integer) this.mViewTypeMap.get(viewType)).intValue();
        }
        throw new IllegalStateException("Unknown viewType " + viewType);
    }

    protected BaseSuggestionViewHolder createInnerItemViewHolder(ViewGroup parent, int viewType) {
        if (this.mViewTypeReverseMap.containsKey(Integer.valueOf(viewType))) {
            return this.mViewFactory.createViewHolder(parent, (String) this.mViewTypeReverseMap.get(Integer.valueOf(viewType)));
        }
        throw new IllegalStateException("Unknown viewType " + viewType);
    }

    protected void bindInnerItemViewHolder(BaseSuggestionViewHolder holder, int position) {
        this.mSuggestionCursor.moveToPosition(position);
        if (!(this.mSuggestionCursor.getIntentActionURI() == null || holder.getClickView() == null)) {
            bindActionClickListener(holder.getClickView(), 0, this.mSuggestionCursor, position, this.mFrom);
        }
        this.mViewFactory.bindViewHolder(this.mQueryInfo, this.mSuggestionCursor, position, holder, getActionClickListener());
    }

    protected int getInnerItemViewCount() {
        return this.mSuggestionCursor == null ? 0 : this.mSuggestionCursor.getCount();
    }

    public boolean isEmpty() {
        return getInnerItemViewCount() <= 0;
    }

    protected void notifyDataSetInvalidated() {
    }
}
