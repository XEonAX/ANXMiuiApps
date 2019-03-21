package com.miui.gallery.search.resultpage;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.StatusHandleHelper;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.display.RequestLoadMoreListener;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.SectionedResultProcessor;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.ui.BaseMediaFragment;

public abstract class SearchResultFragmentBase extends BaseMediaFragment implements RequestLoadMoreListener {
    protected LoaderCallbacks<SuggestionResult> mFilterLoaderCallback = new LoaderCallbacks<SuggestionResult>() {
        public Loader<SuggestionResult> onCreateLoader(int id, Bundle args) {
            if (SearchResultFragmentBase.this.mSectionDataResultHelper != null) {
                Builder queryInfoBuilder = SearchResultFragmentBase.this.mSectionDataResultHelper.buildFilterListQueryInfoBuilder();
                if (queryInfoBuilder != null) {
                    queryInfoBuilder.setAppendSerialInfo(true);
                    if (SearchResultFragmentBase.this.shouldUserPersistentResponse(args)) {
                        queryInfoBuilder.addParam("use_persistent_response", String.valueOf(true));
                    }
                    return new QueryLoader(SearchResultFragmentBase.this.mActivity, queryInfoBuilder.build(), SearchResultFragmentBase.this.mSectionDataResultHelper.getFilterResultProcessor());
                }
            }
            return null;
        }

        public void onLoadFinished(Loader<SuggestionResult> loader, SuggestionResult loadResult) {
            if (loadResult != null) {
                SearchResultFragmentBase.this.changeFilterData(loadResult.getQueryInfo(), loadResult.getData());
            } else {
                SearchLog.w("SearchResultFragmentBase", "Loader %s load finished, got no data available", Integer.valueOf(loader.getId()));
            }
        }

        public void onLoaderReset(Loader<SuggestionResult> loader) {
        }
    };
    protected boolean mInFeedbackTaskMode = false;
    private long mLastInvalidTime;
    protected String mQueryText;
    protected QueryInfo mResultSectionQueryInfo;
    protected LoaderCallbacks<SuggestionResult> mSectionDataLoaderCallback = new LoaderCallbacks<SuggestionResult>() {
        public Loader<SuggestionResult> onCreateLoader(int id, Bundle args) {
            if (SearchResultFragmentBase.this.mSectionDataResultHelper != null) {
                Builder queryInfoBuilder = SearchResultFragmentBase.this.getSectionDataQueryInfoBuilder();
                if (queryInfoBuilder != null) {
                    queryInfoBuilder.setAppendSerialInfo(true);
                    if (SearchResultFragmentBase.this.shouldUserPersistentResponse(args)) {
                        queryInfoBuilder.addParam("use_persistent_response", String.valueOf(true));
                    }
                    return new QueryLoader(SearchResultFragmentBase.this.mActivity, queryInfoBuilder.build(), SearchResultFragmentBase.this.mSectionDataResultHelper.getDataListResultProcessor(), false, SearchResultFragmentBase.this.receiveResultUpdates(), false);
                }
            }
            SearchResultFragmentBase.this.closeLoadMore();
            return null;
        }

        public void onLoadFinished(Loader<SuggestionResult> loader, SuggestionResult loadResult) {
            int status = 0;
            if (SearchResultFragmentBase.this.mSectionDataResultHelper.isInvalid()) {
                if (Math.abs(SystemClock.elapsedRealtime() - SearchResultFragmentBase.this.mLastInvalidTime) < 3000) {
                    if (loadResult != null) {
                        status = SearchUtils.getErrorStatus(loadResult);
                        SearchResultFragmentBase.this.changeSuggestions(SearchResultFragmentBase.this.mResultSectionQueryInfo, loadResult.getData());
                    } else {
                        SearchResultFragmentBase.this.changeSuggestions(null, null);
                        status = 11;
                    }
                    SearchResultFragmentBase.this.closeLoadMore();
                    SearchStatUtils.reportEvent(SearchResultFragmentBase.this.getFrom(), "result_invalid_hash", "Query", SearchResultFragmentBase.this.mResultSectionQueryInfo.toString(), "Time", String.valueOf(System.currentTimeMillis()));
                } else {
                    if (loadResult != null) {
                        SearchResultFragmentBase.this.changeSuggestions(SearchResultFragmentBase.this.mResultSectionQueryInfo, loadResult.getData());
                    } else {
                        SearchLog.w("SearchResultFragmentBase", "Loader %s load finished, invalid hash code got no data available", Integer.valueOf(loader.getId()));
                    }
                    Bundle bundle = new Bundle(1);
                    bundle.putBoolean("force_requery", true);
                    SearchResultFragmentBase.this.restartSectionDataLoader(bundle);
                }
                SearchResultFragmentBase.this.mLastInvalidTime = SystemClock.elapsedRealtime();
                SearchResultFragmentBase.this.mStatusHandleHelper.updateResultStatus(status);
                return;
            }
            if (loadResult != null) {
                SearchResultFragmentBase.this.changeSuggestions(SearchResultFragmentBase.this.mResultSectionQueryInfo, loadResult.getData());
                status = SearchUtils.getErrorStatus(loadResult);
            } else {
                SearchLog.w("SearchResultFragmentBase", "Loader %s load finished, got no data available", Integer.valueOf(loader.getId()));
            }
            if (SearchResultFragmentBase.this.mSectionDataResultHelper.isLoadCompleted()) {
                SearchResultFragmentBase.this.onLoadComplete();
            } else if (SearchConstants.isErrorStatus(status)) {
                SearchResultFragmentBase.this.closeLoadMore();
            } else {
                SearchResultFragmentBase.this.openLoadMore();
                if (SearchResultFragmentBase.this.getErrorViewAdapter().isEmptyDataView() && !SearchResultFragmentBase.this.mSectionDataResultHelper.isInvalid()) {
                    SearchResultFragmentBase.this.onLoadMoreRequested();
                }
            }
            SearchResultFragmentBase.this.mStatusHandleHelper.updateResultStatus(status);
        }

        public void onLoaderReset(Loader<SuggestionResult> loader) {
        }
    };
    protected SearchResultHelper mSectionDataResultHelper;
    private SectionedResultProcessor mSectionProcessor = new SectionedResultProcessor();
    protected LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> mSectionsLoaderCallback = new LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>>() {
        public Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> onCreateLoader(int id, Bundle args) {
            if (SearchResultFragmentBase.this.mResultSectionQueryInfo == null) {
                return null;
            }
            Builder queryInfoBuilder = new Builder().cloneFrom(SearchResultFragmentBase.this.mResultSectionQueryInfo).setAppendSerialInfo(true);
            if (SearchResultFragmentBase.this.shouldUserPersistentResponse(args)) {
                queryInfoBuilder.addParam("use_persistent_response", String.valueOf(true));
            }
            return new QueryLoader(SearchResultFragmentBase.this.mActivity, queryInfoBuilder.build(), SearchResultFragmentBase.this.mSectionProcessor, false, SearchResultFragmentBase.this.receiveResultUpdates(), false);
        }

        public void onLoadFinished(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader, SuggestionResult<GroupedSuggestionCursor<SuggestionSection>> result) {
            int status = 0;
            if (result != null) {
                if (result.getData() == null || ((GroupedSuggestionCursor) result.getData()).getGroupCount() <= 0) {
                    SearchResultFragmentBase.this.closeLoadMore();
                    SearchResultFragmentBase.this.mSectionDataResultHelper = null;
                } else {
                    SearchResultFragmentBase.this.mSectionDataResultHelper = SearchResultFragmentBase.this.createSearchResultHelper(SearchResultFragmentBase.this.mResultSectionQueryInfo, (GroupedSuggestionCursor) result.getData());
                    SearchResultFragmentBase.this.openLoadMore();
                    SearchResultFragmentBase.this.onLoadMoreRequested();
                    if (SearchResultFragmentBase.this.mSectionDataResultHelper.needLoadFilterList()) {
                        SearchResultFragmentBase.this.restartFilterLoader(null);
                    }
                }
                status = SearchUtils.getErrorStatus(result);
            } else {
                SearchLog.w("SearchResultFragmentBase", "Loader %s load finished, got no data available", Integer.valueOf(loader.getId()));
            }
            SearchResultFragmentBase.this.mStatusHandleHelper.updateResultStatus(status);
            if (status == 13) {
                AIAlbumStatusHelper.requestOpenCloudControlSearch(SearchResultFragmentBase.this.getFrom());
            }
        }

        public void onLoaderReset(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader) {
            SearchResultFragmentBase.this.changeSuggestions(null, null);
            SearchResultFragmentBase.this.closeLoadMore();
            SearchResultFragmentBase.this.mStatusHandleHelper.updateResultStatus(-1);
            SearchResultFragmentBase.this.mSectionDataResultHelper = null;
        }
    };
    protected StatusHandleHelper mStatusHandleHelper = new StatusHandleHelper();
    protected boolean mSupportFeedback = false;

    protected abstract void changeFilterData(QueryInfo queryInfo, SuggestionCursor suggestionCursor);

    protected abstract void changeSuggestions(QueryInfo queryInfo, SuggestionCursor suggestionCursor);

    protected abstract void closeLoadMore();

    protected abstract AbstractErrorViewAdapter getErrorViewAdapter();

    protected abstract String getFrom();

    protected abstract int getLayoutResource();

    protected abstract View getResultView();

    protected abstract boolean moreThanOnePage();

    protected abstract void onInflateView(View view, Bundle bundle, Uri uri);

    protected abstract void onLoadComplete();

    protected abstract void openLoadMore();

    protected abstract void restartFilterLoader(Bundle bundle);

    protected abstract void restartSectionDataLoader(Bundle bundle);

    protected abstract void restartSectionLoader(Bundle bundle);

    protected abstract boolean usePersistentResponse();

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(getLayoutResource(), container, false);
        Uri uri = this.mActivity.getIntent().getData();
        this.mResultSectionQueryInfo = initResultQueryInfoBuilder(uri).build();
        onInflateView(view, savedInstanceState, uri);
        updateTitle(uri.getQueryParameter("title"));
        initStatusHandlerHelper(view);
        return view;
    }

    protected boolean supportFeedback() {
        return this.mSupportFeedback;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        SearchStatUtils.createNewSerial(getFrom());
        restartSectionLoader(null);
        openLoadMore();
        this.mStatusHandleHelper.refreshInfoViews();
    }

    public void onLoadMoreRequested() {
        if (this.mSectionDataResultHelper == null || !this.mSectionDataResultHelper.canLoadNextPage()) {
            closeLoadMore();
        } else {
            restartSectionDataLoader(null);
        }
    }

    public void onResume() {
        super.onResume();
        doRetry();
    }

    public void doRetry() {
        if (SearchConstants.isErrorStatus(this.mStatusHandleHelper.getResultStatus())) {
            openLoadMore();
            this.mStatusHandleHelper.refreshInfoViews();
            if (this.mSectionDataResultHelper == null) {
                restartSectionLoader(null);
                return;
            }
            if (this.mSectionDataResultHelper.canLoadNextPage()) {
                restartSectionDataLoader(null);
            } else {
                closeLoadMore();
            }
            if (this.mSectionDataResultHelper.needLoadFilterList()) {
                restartFilterLoader(null);
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        SearchStatUtils.onCompleteSerial(getFrom());
    }

    protected Builder initResultQueryInfoBuilder(Uri uri) {
        Builder builder = new Builder(SearchType.SEARCH_TYPE_RESULT);
        for (String param : uri.getQueryParameterNames()) {
            if (param.equals("title")) {
                this.mQueryText = uri.getQueryParameter(param);
            } else if (param.equals("inFeedbackTaskMode")) {
                this.mInFeedbackTaskMode = uri.getBooleanQueryParameter(param, false);
            } else if (param.equals("supportFeedback")) {
                this.mSupportFeedback = uri.getBooleanQueryParameter(param, false);
            } else {
                builder.addParam(param, uri.getQueryParameter(param));
            }
        }
        return builder;
    }

    protected SearchResultHelper createSearchResultHelper(QueryInfo queryInfo, GroupedSuggestionCursor<SuggestionSection> sections) {
        return new SearchResultHelper(queryInfo, (GroupedSuggestionCursor) sections);
    }

    protected void initStatusHandlerHelper(View view) {
        this.mStatusHandleHelper.init(getResultView(), view.findViewById(R.id.info_view), view.findViewById(R.id.loading_view), view.findViewById(R.id.empty_view), getErrorViewAdapter());
    }

    protected void updateTitle(String title) {
        if (TextUtils.isEmpty(title)) {
            this.mActivity.getActionBar().setTitle(getDefaultTitle());
        } else {
            this.mActivity.getActionBar().setTitle(title);
        }
    }

    protected String getDefaultTitle() {
        return getString(R.string.search_image_result_title);
    }

    protected boolean receiveResultUpdates() {
        return false;
    }

    private boolean shouldUserPersistentResponse(Bundle loaderExtras) {
        if (usePersistentResponse()) {
            return loaderExtras == null || !loaderExtras.getBoolean("force_requery", false);
        } else {
            return false;
        }
    }

    protected Builder getSectionDataQueryInfoBuilder() {
        return this.mSectionDataResultHelper.buildDataListQueryInfo();
    }
}
