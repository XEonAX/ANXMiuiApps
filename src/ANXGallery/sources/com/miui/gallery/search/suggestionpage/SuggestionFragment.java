package com.miui.gallery.search.suggestionpage;

import android.app.Activity;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.Loader;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchFragmentBase;
import com.miui.gallery.search.StatusHandleHelper;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.display.SectionedSuggestionAdapter;
import com.miui.gallery.search.core.display.SectionedSuggestionItemDecoration;
import com.miui.gallery.search.core.display.SuggestionViewFactory;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.SectionedResultProcessor;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.threadpool.ThreadManager;

public class SuggestionFragment extends SearchFragmentBase {
    private SectionedSuggestionAdapter mAdapter;
    private LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> mDataLoaderCallback = new LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>>() {
        public Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> onCreateLoader(int id, Bundle args) {
            SearchType searchType = SearchType.SEARCH_TYPE_SEARCH;
            String queryText = args.getString("data_loader_extra_text");
            if (TextUtils.isEmpty(queryText)) {
                SearchLog.e("SuggestionFragment", "Invalid query text for loader!");
                return null;
            }
            SearchStatUtils.onCompleteSerial("from_suggestion");
            SearchStatUtils.createNewSerial("from_suggestion");
            if (args.getSerializable("data_loader_extra_type") != null) {
                searchType = (SearchType) args.getSerializable("data_loader_extra_type");
            }
            return new QueryLoader(SuggestionFragment.this.mActivity, new Builder(searchType).addParam("query", queryText).addParam("enableShortcut", String.valueOf(args.getBoolean("data_loader_extra_enable_shortcut", false))).setAppendSerialInfo(true).build(), SuggestionFragment.this.mSectionProcessor);
        }

        public void onLoadFinished(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader, SuggestionResult<GroupedSuggestionCursor<SuggestionSection>> result) {
            QueryInfo queryInfo = ((QueryLoader) loader).getQueryInfo();
            int status = 0;
            boolean isDone = isDone(result);
            if (result != null) {
                if (result.isEmpty()) {
                    SearchLog.d("SuggestionFragment", "Loader %s load finished, got empty result", Integer.valueOf(loader.getId()));
                } else {
                    SearchLog.d("SuggestionFragment", "Loader %s load finished, got %s results", Integer.valueOf(loader.getId()), Integer.valueOf(((GroupedSuggestionCursor) result.getData()).getCount()));
                }
                SuggestionFragment.this.mAdapter.changeSuggestions(queryInfo, result.getData());
                status = SearchUtils.getErrorStatus(result);
                final String shortCutUri = getShortCutUri(result);
                if (isDone && !TextUtils.isEmpty(shortCutUri)) {
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            SuggestionFragment.this.mAdapter.getActionClickListener().onClick(null, 1, shortCutUri, SearchStatUtils.buildSearchEventExtras(null, new String[]{"from"}, new String[]{"from_suggestion"}));
                        }
                    });
                }
            } else {
                SearchLog.w("SuggestionFragment", "Loader %s load finished, got no data available", Integer.valueOf(loader.getId()));
            }
            SuggestionFragment.this.mIsLoading = !isDone;
            StatusHandleHelper access$500 = SuggestionFragment.this.mStatusHandleHelper;
            if (SuggestionFragment.this.mIsLoading) {
                status = -1;
            }
            access$500.updateResultStatus(status);
            if (isDone) {
                SearchStatUtils.reportEvent(queryInfo.getSearchType() == SearchType.SEARCH_TYPE_SEARCH ? "from_search" : "from_suggestion", "suggestion_recall", "ItemCount", String.valueOf(getResultItemCount(result)));
            }
        }

        public void onLoaderReset(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader) {
            if (SuggestionFragment.this.mAdapter != null) {
                SuggestionFragment.this.mAdapter.changeSuggestions(null, null);
                SuggestionFragment.this.mStatusHandleHelper.updateResultStatus(-1);
            }
            SuggestionFragment.this.mIsLoading = false;
        }

        private boolean isDone(SuggestionResult result) {
            if (result == null || result.getResultExtras() == null || !result.getResultExtras().getBoolean("is_done", true)) {
                return false;
            }
            return true;
        }

        private String getShortCutUri(SuggestionResult result) {
            return (result == null || result.getData() == null || result.getData().getExtras() == null) ? null : result.getData().getExtras().getString("short_cut_uri");
        }

        private int getResultItemCount(SuggestionResult result) {
            return (result == null || result.getData() == null || result.getData().getExtras() == null) ? 0 : result.getData().getExtras().getInt("itemCount");
        }
    };
    private RecyclerView mDataView;
    private ErrorViewAdapter mErrorViewAdapter;
    private boolean mIsLoading;
    private final Handler mQueryHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                SuggestionFragment.this.restartDataLoader(SearchType.SEARCH_TYPE_SUGGESTION, (String) msg.obj, false);
            }
        }
    };
    private String mQueryText = null;
    private SectionedResultProcessor mSectionProcessor = new SuggestionResultProcessor();
    private StatusHandleHelper mStatusHandleHelper = new StatusHandleHelper();

    private class ErrorViewAdapter extends AbstractErrorViewAdapter {
        public ErrorViewAdapter(Context context) {
            super(context);
        }

        public void requestRetry() {
            SuggestionFragment.this.doRetryIfNeeded();
        }

        public boolean isEmptyDataView() {
            return SuggestionFragment.this.mAdapter.isEmpty();
        }

        public boolean isLoading() {
            return SuggestionFragment.this.mIsLoading && isEmptyDataView();
        }

        public void addHeaderView(View view) {
            SuggestionFragment.this.mAdapter.addHeaderView(view);
        }

        public void removeHeaderView(View view) {
            SuggestionFragment.this.mAdapter.removeHeaderView(view);
        }

        public void addFooterView(View view) {
            SuggestionFragment.this.mAdapter.addFooterView(view);
        }

        public void removeFooterView(View view) {
            SuggestionFragment.this.mAdapter.removeFooterView(view);
        }

        public View getInfoView(View convertView, int status, InfoViewPosition position) {
            if (SearchConstants.isErrorStatus(status) && position == InfoViewPosition.FOOTER) {
                return null;
            }
            return super.getInfoView(convertView, status, position);
        }
    }

    private static class SuggestionAdapter extends SectionedSuggestionAdapter {
        public SuggestionAdapter(Activity activity, SuggestionViewFactory viewFactory, String from) {
            super(activity, viewFactory, from);
        }

        protected int getHeaderCount(int sectionIndex) {
            return SearchConfig.get().getSuggestionConfig().shouldDrawSectionHeader(getSection(sectionIndex).getSectionType()) ? 1 : 0;
        }
    }

    public void setQueryText(String queryText, boolean forceSearch, boolean enableShortcut) {
        if (!TextUtils.isEmpty(queryText)) {
            this.mQueryText = queryText;
            if (this.mAdapter != null) {
                this.mStatusHandleHelper.updateResultStatus(-1);
                this.mAdapter.changeSuggestions(null, null);
            }
            requery(forceSearch ? SearchType.SEARCH_TYPE_SEARCH : SearchType.SEARCH_TYPE_SUGGESTION, queryText, enableShortcut);
        }
    }

    public void onResume() {
        super.onResume();
        doRetryIfNeeded();
    }

    public void onDestroy() {
        super.onDestroy();
        SearchStatUtils.onCompleteSerial("from_suggestion");
    }

    public void doRetryIfNeeded() {
        if (SearchConstants.isErrorStatus(this.mStatusHandleHelper.getResultStatus()) && !TextUtils.isEmpty(this.mQueryText)) {
            requery(SearchType.SEARCH_TYPE_SEARCH, this.mQueryText, false);
        }
    }

    private void requery(SearchType searchType, String queryText, boolean enableShortcut) {
        if (this.mQueryHandler.hasMessages(1)) {
            this.mQueryHandler.removeMessages(1);
        }
        if (searchType == SearchType.SEARCH_TYPE_SEARCH) {
            restartDataLoader(searchType, queryText, enableShortcut);
            return;
        }
        this.mQueryHandler.sendMessageDelayed(this.mQueryHandler.obtainMessage(1, queryText), 300);
    }

    private void restartDataLoader(SearchType searchType, String queryText, boolean enableShortcut) {
        if (isAdded() && getLoaderManager() != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_loader_extra_type", searchType);
            bundle.putString("data_loader_extra_text", queryText);
            bundle.putBoolean("data_loader_extra_enable_shortcut", enableShortcut);
            getLoaderManager().restartLoader(1, bundle, this.mDataLoaderCallback);
            this.mIsLoading = true;
            this.mStatusHandleHelper.refreshInfoViews();
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.navigation_fragment, container, false);
        this.mDataView = (RecyclerView) view.findViewById(R.id.data_view);
        this.mDataView.setItemAnimator(null);
        SearchContext context = SearchContext.getInstance();
        this.mDataView.setLayoutManager(new LinearLayoutManager(this.mActivity, 1, false));
        this.mAdapter = new SuggestionAdapter(this.mActivity, context.getSuggestionViewFactory(), "from_suggestion");
        this.mDataView.setAdapter(this.mAdapter);
        this.mDataView.addItemDecoration(new SectionedSuggestionItemDecoration(this.mActivity, this.mAdapter, true, getResources().getDimensionPixelSize(R.dimen.default_suggestion_start_margin), true));
        this.mDataView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (SuggestionFragment.this.getCallback() != null) {
                    SuggestionFragment.this.getCallback().requestIME(false);
                }
                return false;
            }
        });
        this.mErrorViewAdapter = new ErrorViewAdapter(this.mActivity);
        this.mStatusHandleHelper.init(this.mDataView, view.findViewById(R.id.info_view), view.findViewById(R.id.loading_view), view.findViewById(R.id.empty_view), this.mErrorViewAdapter);
        return view;
    }

    public String getPageName() {
        return "search_suggestions";
    }
}
