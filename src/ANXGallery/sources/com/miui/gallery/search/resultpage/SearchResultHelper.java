package com.miui.gallery.search.resultpage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.result.BaseSuggestionResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.LinearResultProcessor;
import com.miui.gallery.search.core.resultprocessor.ResultProcessor;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SearchResultHelper {
    private WeakReference<SuggestionResult> mCachedResult;
    private final Object mCachedResultLock = new Object();
    protected RankInfo mCurrentDataListRankInfo = null;
    protected Long mDataListIndexHash = null;
    protected List<RankInfo> mDataListRankInfos = null;
    protected ResultProcessor<SuggestionResult> mDataListResultProcessor;
    protected List<Suggestion> mDataListSuggestions = new ArrayList();
    protected Map<String, String> mFilterQueryParams = null;
    protected ResultProcessor<SuggestionResult> mFilterResultProcessor;
    protected boolean mIsInvalid = false;
    protected boolean mLoadCompleted = false;
    protected Map<String, String> mNextLoadParams = null;
    protected final Object mProcessLock = new Object();
    protected QueryInfo mQueryInfo;

    protected class DataListResultProcessor extends ResultProcessor<SuggestionResult> {
        private final RankInfo mRankInfo;

        public DataListResultProcessor(RankInfo rankInfo) {
            this.mRankInfo = rankInfo;
        }

        private void updateCacheResult(QueryInfo queryInfo, List<Suggestion> suggestions, ErrorInfo errorInfo) {
            SuggestionResult result = createSuggestionResult(suggestions, queryInfo, this.mRankInfo, errorInfo);
            synchronized (SearchResultHelper.this.mCachedResultLock) {
                SearchResultHelper.this.mCachedResult = new WeakReference(result);
            }
        }

        protected SuggestionResult getMergedResult(List<SourceResult> sourceResults) {
            DataListSourceResult dataListResult = getDataListResult(sourceResults);
            if (dataListResult == null || !checkRankInfo(dataListResult) || (SearchUtils.isErrorResult(dataListResult) && dataListResult.isEmpty())) {
                return createErrorResult(SearchResultHelper.this.mQueryInfo, 8);
            }
            synchronized (SearchResultHelper.this.mProcessLock) {
                SuggestionResult result;
                if (SearchResultHelper.this.mDataListSuggestions.size() <= 0 && !"0".equals(dataListResult.getQueryInfo().getParam("pos"))) {
                    SearchLog.w("SearchResultHelper", "Later pages arrived before first page!");
                    result = SearchResultHelper.this.getResult();
                    return result;
                } else if (checkIndexHash(dataListResult)) {
                    if (!dataListResult.isEmpty() && dataListResult.getNextPosition() > SearchResultHelper.this.mDataListSuggestions.size()) {
                        SuggestionCursor data = dataListResult.getData();
                        for (int i = 0; i < data.getCount(); i++) {
                            if (data.moveToPosition(i) && data.getCurrent() != null) {
                                SearchResultHelper.this.mDataListSuggestions.add(toSuggestion(data.getCurrent()));
                            }
                        }
                    }
                    updateCacheResult(SearchResultHelper.this.mQueryInfo, SearchResultHelper.this.mDataListSuggestions, dataListResult.getErrorInfo());
                    synchronized (SearchResultHelper.this.mCachedResultLock) {
                        if (dataListResult.isLastPage()) {
                            SearchResultHelper.this.mLoadCompleted = true;
                        } else {
                            SearchResultHelper.this.mNextLoadParams.put("pos", String.valueOf(dataListResult.getNextPosition()));
                            SearchResultHelper.this.mNextLoadParams.put("num", String.valueOf(SearchResultHelper.this.getDataLoadCount(SearchResultHelper.this.mQueryInfo)));
                        }
                        SearchResultHelper.this.mIsInvalid = false;
                    }
                    result = SearchResultHelper.this.getResult();
                    return result;
                } else {
                    updateCacheResult(SearchResultHelper.this.mQueryInfo, SearchResultHelper.this.mDataListSuggestions, new ErrorInfo(9));
                    SearchResultHelper.this.mDataListSuggestions.clear();
                    result = SearchResultHelper.this.getResult();
                    return result;
                }
            }
        }

        protected boolean checkRankInfo(DataListSourceResult dataListResult) {
            CharSequence charSequence = null;
            if (this.mRankInfo == null && TextUtils.isEmpty(dataListResult.getQueryInfo().getParam("rankName"))) {
                return true;
            }
            boolean z;
            if (TextUtils.equals(dataListResult.getQueryInfo().getParam("rankName"), this.mRankInfo == null ? null : this.mRankInfo.getName())) {
                CharSequence param = dataListResult.getQueryInfo().getParam("rankOrder");
                if (this.mRankInfo != null) {
                    charSequence = this.mRankInfo.getOrder();
                }
                if (TextUtils.equals(param, charSequence)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        protected boolean checkIndexHash(DataListSourceResult dataListResult) {
            if (SearchResultHelper.this.mDataListIndexHash == null || dataListResult.getIndexHash() == SearchResultHelper.this.mDataListIndexHash.longValue()) {
                if (SearchResultHelper.this.mDataListIndexHash == null) {
                    SearchResultHelper.this.mDataListIndexHash = Long.valueOf(dataListResult.getIndexHash());
                }
                return true;
            }
            synchronized (SearchResultHelper.this.mCachedResultLock) {
                SearchResultHelper.this.mNextLoadParams.put("pos", "0");
                SearchResultHelper.this.mNextLoadParams.put("num", String.valueOf(Math.max(dataListResult.getNextPosition(), SearchResultHelper.this.getDataLoadCount(SearchResultHelper.this.mQueryInfo))));
                SearchResultHelper.this.mIsInvalid = true;
                SearchResultHelper.this.mLoadCompleted = false;
            }
            SearchResultHelper.this.mDataListIndexHash = null;
            SearchLog.d("SearchResultHelper", "On check index hash failed, old %s, new %s, next pos %d", String.valueOf(SearchResultHelper.this.mDataListIndexHash), String.valueOf(dataListResult.getIndexHash()), Integer.valueOf(dataListResult.getNextPosition()));
            return false;
        }

        protected SuggestionResult createSuggestionResult(List<Suggestion> suggestions, QueryInfo queryInfo, RankInfo rankInfo, ErrorInfo errorInfo) {
            Bundle extras = null;
            if (rankInfo != null) {
                extras = createRankInfoBundle(rankInfo);
            }
            return new BaseSuggestionResult(queryInfo, new ListSuggestionCursor(queryInfo, new ArrayList(suggestions), extras), errorInfo);
        }

        protected SuggestionResult createErrorResult(QueryInfo queryInfo, int errorCode) {
            return new BaseSuggestionResult(queryInfo, null, new ErrorInfo(errorCode));
        }

        protected DataListSourceResult getDataListResult(List<SourceResult> sourceResults) {
            for (SourceResult sourceResult : sourceResults) {
                if (sourceResult instanceof DataListSourceResult) {
                    return (DataListSourceResult) sourceResult;
                }
            }
            return null;
        }

        protected Bundle createRankInfoBundle(RankInfo rankInfo) {
            Bundle extras = new Bundle();
            extras.putSerializable("rankInfo", rankInfo);
            return extras;
        }
    }

    public SearchResultHelper(QueryInfo queryInfo, SuggestionSection section) {
        this.mQueryInfo = queryInfo;
        handleSection(section);
    }

    public SearchResultHelper(QueryInfo queryInfo, GroupedSuggestionCursor<SuggestionSection> sections) {
        this.mQueryInfo = queryInfo;
        for (int i = 0; i < sections.getGroupCount(); i++) {
            handleSection((SuggestionSection) sections.getGroup(i));
        }
    }

    private void handleSection(SuggestionSection section) {
        Uri uri;
        switch (section.getSectionType()) {
            case SECTION_TYPE_FILTER:
                if (this.mFilterQueryParams == null && !TextUtils.isEmpty(section.getDataURI())) {
                    this.mFilterQueryParams = new HashMap();
                    uri = Uri.parse(section.getDataURI());
                    for (String param : uri.getQueryParameterNames()) {
                        this.mFilterQueryParams.put(param, uri.getQueryParameter(param));
                    }
                    this.mFilterResultProcessor = createFilterProcessor();
                    return;
                }
                return;
            default:
                if (this.mNextLoadParams == null && !TextUtils.isEmpty(section.getDataURI())) {
                    this.mDataListRankInfos = section.getRankInfos();
                    this.mNextLoadParams = new HashMap();
                    this.mNextLoadParams.put("pos", "0");
                    this.mNextLoadParams.put("num", String.valueOf(getDataLoadCount(this.mQueryInfo)));
                    uri = Uri.parse(section.getDataURI());
                    for (String param2 : uri.getQueryParameterNames()) {
                        this.mNextLoadParams.put(param2, uri.getQueryParameter(param2));
                    }
                    this.mDataListResultProcessor = createDataListResultProcessor(getDataListRankInfo());
                    return;
                }
                return;
        }
    }

    public ResultProcessor<SuggestionResult> getDataListResultProcessor() {
        return this.mDataListResultProcessor;
    }

    public ResultProcessor<SuggestionResult> getFilterResultProcessor() {
        return this.mFilterResultProcessor;
    }

    public SuggestionResult getResult() {
        SuggestionResult result = null;
        synchronized (this.mCachedResultLock) {
            if (!(this.mCachedResult == null || this.mCachedResult.get() == null || ((SuggestionResult) this.mCachedResult.get()).isClosed())) {
                result = (SuggestionResult) this.mCachedResult.get();
            }
        }
        return result;
    }

    public Builder buildDataListQueryInfo() {
        Builder builder;
        synchronized (this.mCachedResultLock) {
            if (canLoadNextPage()) {
                builder = new Builder(SearchType.SEARCH_TYPE_RESULT_LIST).addParams(this.mNextLoadParams);
                appendRankInfoToQuery(builder, getDataListRankInfo());
            } else {
                builder = null;
            }
        }
        return builder;
    }

    public boolean canLoadNextPage() {
        boolean z;
        synchronized (this.mCachedResultLock) {
            z = (isLoadCompleted() || this.mNextLoadParams == null || this.mNextLoadParams.isEmpty()) ? false : true;
        }
        return z;
    }

    public Builder buildFilterListQueryInfoBuilder() {
        if (needLoadFilterList()) {
            return new Builder(SearchType.SEARCH_TYPE_FILTER).addParams(this.mFilterQueryParams);
        }
        return null;
    }

    public boolean needLoadFilterList() {
        return (this.mFilterQueryParams == null || this.mFilterQueryParams.isEmpty()) ? false : true;
    }

    public boolean isInvalid() {
        return this.mIsInvalid;
    }

    public boolean isLoadCompleted() {
        return this.mLoadCompleted;
    }

    public RankInfo getDataListRankInfo() {
        if (this.mCurrentDataListRankInfo != null) {
            return this.mCurrentDataListRankInfo;
        }
        if (this.mDataListRankInfos == null || this.mDataListRankInfos.isEmpty()) {
            return null;
        }
        return (RankInfo) this.mDataListRankInfos.get(0);
    }

    public void resetCacheInfo() {
        synchronized (this.mProcessLock) {
            synchronized (this.mCachedResultLock) {
                this.mNextLoadParams.put("pos", "0");
                this.mNextLoadParams.put("num", String.valueOf(Math.max(this.mDataListSuggestions.size(), getDataLoadCount(this.mQueryInfo))));
                this.mIsInvalid = true;
                this.mLoadCompleted = false;
            }
            this.mDataListSuggestions.clear();
        }
        this.mDataListIndexHash = null;
        SearchLog.w("SearchResultHelper", "On reset cache info called!");
    }

    private void appendRankInfoToQuery(Builder builder, RankInfo rankInfo) {
        if (rankInfo != null) {
            builder.addParam("rankName", rankInfo.getName());
            builder.addParam("rankOrder", rankInfo.getOrder());
        }
    }

    protected ResultProcessor<SuggestionResult> createDataListResultProcessor(RankInfo rankInfo) {
        return new DataListResultProcessor(rankInfo);
    }

    protected ResultProcessor<SuggestionResult> createFilterProcessor() {
        return new LinearResultProcessor();
    }

    protected int getDataLoadCount(QueryInfo queryInfo) {
        return SearchConfig.get().getResultConfig().getTagLocationLoadCount();
    }
}
