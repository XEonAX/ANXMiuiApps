package com.miui.gallery.search.resultpage;

import android.app.Activity;
import android.content.Context;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.display.BaseSuggestionAdapter;
import com.miui.gallery.search.core.display.DefaultActionClickListener;
import com.miui.gallery.search.core.display.FullSpanDelegate;
import com.miui.gallery.search.core.display.OnActionClickListener;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.widget.recyclerview.GridLayoutInnerPaddingItemDecoration;
import java.util.ArrayList;
import java.util.List;

public class SearchResultFragment extends SearchResultFragmentBase {
    private String mDefaultTitle;
    protected ErrorViewAdapter mErrorViewAdapter = null;
    private String mFrom;
    private String mPageName;
    private BaseSuggestionAdapter<SuggestionCursor> mResultAdapter;
    private RecyclerView mResultView;

    protected class ErrorViewAdapter extends AbstractErrorViewAdapter {
        public ErrorViewAdapter(Context context) {
            super(context);
        }

        public void requestRetry() {
            SearchResultFragment.this.doRetry();
        }

        public boolean isEmptyDataView() {
            return SearchResultFragment.this.mResultAdapter.isEmpty();
        }

        public boolean isLoading() {
            return SearchResultFragment.this.mResultAdapter.isLoading();
        }

        public void addHeaderView(View view) {
            SearchResultFragment.this.mResultAdapter.addHeaderView(view);
        }

        public void removeHeaderView(View view) {
            SearchResultFragment.this.mResultAdapter.removeHeaderView(view);
        }

        public void addFooterView(View view) {
            SearchResultFragment.this.mResultAdapter.addFooterView(view);
        }

        public void removeFooterView(View view) {
            SearchResultFragment.this.mResultAdapter.removeFooterView(view);
        }

        protected View getInfoItemView(View convertView, int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FOOTER) {
                return this.mInflater.inflate(R.layout.search_item_error_footer_layout, null);
            }
            return super.getInfoItemView(convertView, status, position);
        }
    }

    private class GridSpanLookUp extends SpanSizeLookup {
        private final FullSpanDelegate mFullSpanDelegate;
        private final GridLayoutManager mLayoutManager;

        public GridSpanLookUp(GridLayoutManager layoutManager, FullSpanDelegate fullSpanDelegate) {
            this.mLayoutManager = layoutManager;
            this.mFullSpanDelegate = fullSpanDelegate;
        }

        public int getSpanSize(int position) {
            return this.mFullSpanDelegate.isFullSpan(position) ? this.mLayoutManager.getSpanCount() : 1;
        }
    }

    protected int getLayoutResource() {
        return R.layout.search_result_fragment;
    }

    protected void onInflateView(View view, Bundle savedInstanceState, Uri intentUri) {
        this.mResultView = (RecyclerView) view.findViewById(R.id.result_view);
        this.mResultView.setItemAnimator(null);
        if ("locationList".equals(intentUri.getQueryParameter("type"))) {
            this.mFrom = "from_location_list";
            this.mDefaultTitle = getString(R.string.search_title_location);
            this.mPageName = "search_location_list";
        } else if ("tagList".equals(intentUri.getQueryParameter("type"))) {
            this.mFrom = "from_tag_list";
            this.mDefaultTitle = getString(R.string.search_title_tag);
            this.mPageName = "search_tag_list";
        } else {
            this.mFrom = "from_image_result";
            this.mDefaultTitle = super.getDefaultTitle();
            this.mPageName = "search_result";
        }
        this.mResultAdapter = new BaseSuggestionAdapter(this.mActivity, SearchContext.getInstance().getSuggestionViewFactory(), this.mFrom);
        this.mResultAdapter.setOnLoadMoreListener(this);
        this.mResultView.setAdapter(this.mResultAdapter);
        if (this.mInFeedbackTaskMode) {
            this.mResultAdapter.setActionClickListener(genFeedbackTaskModeActionClickListener());
        }
        GridLayoutManager manager = new GridLayoutManager(this.mActivity, getResources().getInteger(R.integer.search_result_page_column_count));
        manager.setSpanSizeLookup(new GridSpanLookUp(manager, this.mResultAdapter));
        this.mResultView.setLayoutManager(manager);
        int horizontalPadding = getResources().getDimensionPixelSize(R.dimen.result_page_horizontal_padding);
        this.mResultView.addItemDecoration(new GridLayoutInnerPaddingItemDecoration(horizontalPadding, getResources().getDimensionPixelSize(R.dimen.result_page_top_padding), horizontalPadding, 0, 0, 0, true, manager));
    }

    private OnActionClickListener genFeedbackTaskModeActionClickListener() {
        return new DefaultActionClickListener(this.mActivity) {
            protected void handleUri(Activity activity, Uri uri, Bundle bundle) {
                super.handleUri(activity, uri.buildUpon().appendQueryParameter("inFeedbackTaskMode", String.valueOf(SearchResultFragment.this.mInFeedbackTaskMode)).build(), bundle);
            }
        };
    }

    protected AbstractErrorViewAdapter getErrorViewAdapter() {
        if (this.mErrorViewAdapter == null) {
            this.mErrorViewAdapter = new ErrorViewAdapter(this.mActivity);
        }
        return this.mErrorViewAdapter;
    }

    protected View getResultView() {
        return this.mResultView;
    }

    protected void openLoadMore() {
        this.mResultAdapter.openLoadMore(false);
    }

    protected void closeLoadMore() {
        this.mResultAdapter.closeLoadMore();
    }

    protected void onLoadComplete() {
        this.mResultAdapter.closeLoadMore();
        this.mStatusHandleHelper.refreshInfoViews();
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (SearchResultFragment.this.moreThanOnePage()) {
                    SearchResultFragment.this.mResultAdapter.showLoadCompleteView();
                    SearchResultFragment.this.mStatusHandleHelper.refreshInfoViews();
                }
            }
        });
    }

    protected void restartSectionLoader(Bundle extras) {
        if (getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(1, extras, this.mSectionsLoaderCallback);
        }
    }

    protected void restartFilterLoader(Bundle extras) {
    }

    protected void restartSectionDataLoader(Bundle extras) {
        if (getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(2, extras, this.mSectionDataLoaderCallback);
        }
    }

    protected void changeSuggestions(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
        if (this.mResultAdapter != null) {
            this.mResultAdapter.changeSuggestions(queryInfo, suggestionCursor);
        }
    }

    protected void changeFilterData(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
    }

    protected Loader getLoader() {
        return null;
    }

    protected List<Loader> getLoaders() {
        ArrayList<Loader> ret = new ArrayList();
        Loader loader = getLoaderManager().getLoader(1);
        if (loader != null) {
            ret.add(loader);
        }
        loader = getLoaderManager().getLoader(2);
        if (loader != null) {
            ret.add(loader);
        }
        return ret;
    }

    public String getPageName() {
        return this.mPageName;
    }

    protected String getFrom() {
        return this.mFrom;
    }

    protected String getDefaultTitle() {
        return this.mDefaultTitle;
    }

    protected boolean usePersistentResponse() {
        return true;
    }

    protected boolean moreThanOnePage() {
        View firstView = this.mResultView.getLayoutManager().findViewByPosition(0);
        View lastView = this.mResultView.getLayoutManager().findViewByPosition(this.mResultAdapter.getItemCount() - 1);
        if (firstView == null || lastView == null) {
            return true;
        }
        return false;
    }
}
