package com.miui.gallery.search.resultpage;

import android.app.Activity;
import android.graphics.Rect;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import android.view.ViewStub;
import com.miui.gallery.R;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.display.BaseSuggestionAdapter;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.widget.TwoStageDrawer;

public class FilterBarController {
    private Activity mActivity;
    private BaseSuggestionAdapter mAdapter;
    private View mContainer;
    private TwoStageDrawer mDrawer;
    private String mFrom;
    private RecyclerView mRecyclerView;

    private class PaddingDecoration extends ItemDecoration {
        private final int mMargin;

        public PaddingDecoration(int margin) {
            this.mMargin = margin;
        }

        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
            int adapterPosition = parent.getChildAdapterPosition(view);
            if (adapterPosition == 0) {
                outRect.set(this.mMargin, 0, 0, 0);
            } else if (adapterPosition == FilterBarController.this.mAdapter.getItemCount() - 1) {
                outRect.set(0, 0, this.mMargin, 0);
            } else {
                outRect.set(0, 0, 0, 0);
            }
        }
    }

    public FilterBarController(Activity activity, TwoStageDrawer drawer, String from) {
        this.mActivity = activity;
        this.mDrawer = drawer;
        this.mFrom = from;
    }

    public void swapCursor(QueryInfo queryInfo, SuggestionCursor cursor) {
        if (cursor != null || this.mContainer != null) {
            if (this.mContainer == null) {
                this.mContainer = this.mDrawer.findViewById(R.id.filter_bar_container);
                this.mRecyclerView = (RecyclerView) ((ViewStub) this.mContainer.findViewById(R.id.filter_bar_stub)).inflate().findViewById(R.id.filter_bar);
                this.mAdapter = new BaseSuggestionAdapter(this.mActivity, SearchContext.getInstance().getSuggestionViewFactory(), this.mFrom);
                this.mRecyclerView.setAdapter(this.mAdapter);
                this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this.mActivity, 0, false));
                this.mRecyclerView.addItemDecoration(new PaddingDecoration(this.mActivity.getResources().getDimensionPixelSize(R.dimen.filter_bar_edge_padding)));
            }
            if (!(cursor == null || this.mRecyclerView.getLayoutParams() == null)) {
                this.mRecyclerView.getLayoutParams().height = this.mActivity.getResources().getDimensionPixelSize(cursor.getExtras().getInt("filter_style", 0) == 1 ? R.dimen.filter_bar_height : R.dimen.filter_bar_height_no_icon);
            }
            this.mAdapter.changeSuggestions(queryInfo, cursor);
        }
    }

    public boolean isFilterBarVisible() {
        return this.mContainer.getVisibility() == 0;
    }

    public void showFilterBar(boolean show) {
        if (show && !isFilterBarVisible()) {
            this.mContainer.setVisibility(0);
            this.mDrawer.post(new Runnable() {
                public void run() {
                    FilterBarController.this.mDrawer.openDrawer(true, null);
                }
            });
        } else if (!show && isFilterBarVisible()) {
            this.mContainer.setVisibility(8);
            this.mDrawer.post(new Runnable() {
                public void run() {
                    FilterBarController.this.mDrawer.closeDrawer(true, null);
                }
            });
        }
    }

    public int getFilterDataCount() {
        return this.mAdapter != null ? this.mAdapter.getItemCount() : 0;
    }
}
