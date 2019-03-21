package com.miui.gallery.search.navigationpage;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.Loader;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.SearchFragmentBase;
import com.miui.gallery.search.SearchStatusLoader;
import com.miui.gallery.search.StatusHandleHelper;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.display.SectionedSuggestionItemDecoration;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.SectionedResultProcessor;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import java.util.HashSet;

public class NavigationFragment extends SearchFragmentBase {
    private NavigationAdapter mAdapter;
    private LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> mDataLoaderCallback = new LoaderCallbacks<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>>() {
        public Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> onCreateLoader(int id, Bundle args) {
            return new QueryLoader(NavigationFragment.this.mActivity, new Builder(SearchType.SEARCH_TYPE_NAVIGATION).setAppendSerialInfo(true).addParam("use_persistent_response", String.valueOf(true)).build(), NavigationFragment.this.mSectionProcessor, true, false, true);
        }

        public void onLoadFinished(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader, SuggestionResult<GroupedSuggestionCursor<SuggestionSection>> result) {
            boolean z;
            int status = 0;
            if (result != null) {
                if (result.isEmpty()) {
                    SearchLog.d("NavigationFragment", "Loader %s load finished, got empty result", Integer.valueOf(loader.getId()));
                } else {
                    SearchLog.d("NavigationFragment", "Loader %s load finished, got %s results", Integer.valueOf(loader.getId()), Integer.valueOf(((GroupedSuggestionCursor) result.getData()).getCount()));
                }
                NavigationFragment.this.mAdapter.changeSuggestions(((QueryLoader) loader).getQueryInfo(), result.getData(), false);
                status = SearchUtils.getErrorStatus(result);
            } else {
                SearchLog.w("NavigationFragment", "Loader %s load finished, got no data available", Integer.valueOf(loader.getId()));
            }
            NavigationFragment navigationFragment = NavigationFragment.this;
            if (isDone(result)) {
                z = false;
            } else {
                z = true;
            }
            navigationFragment.mIsLoading = z;
            NavigationFragment.this.mStatusHandleHelper.updateResultStatus(status);
        }

        public void onLoaderReset(Loader<SuggestionResult<GroupedSuggestionCursor<SuggestionSection>>> loader) {
            if (NavigationFragment.this.mAdapter != null) {
                NavigationFragment.this.mAdapter.changeSuggestions(null, null, false);
                NavigationFragment.this.mStatusHandleHelper.updateResultStatus(-1);
            }
            NavigationFragment.this.mIsLoading = false;
        }

        private boolean isDone(SuggestionResult result) {
            if (result == null || result.getResultExtras() == null || !result.getResultExtras().getBoolean("is_done", true)) {
                return false;
            }
            return true;
        }
    };
    private RecyclerView mDataView;
    private boolean mIsLoading;
    private SectionedResultProcessor mSectionProcessor = new SectionedResultProcessor() {
        protected BaseSuggestionSection getIndependentSection(HashSet<String> addedItemKeys, SuggestionSection section) {
            BaseSuggestionSection iSection = super.getIndependentSection(addedItemKeys, section);
            switch (AnonymousClass5.$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType[iSection.getSectionType().ordinal()]) {
                case 1:
                case 2:
                    if (iSection.moveToMore() == null) {
                        iSection.setSectionMoreItem(SearchConfig.get().getDefaultMoreItem(GalleryApp.sGetAndroidContext(), iSection.getSectionType(), false));
                        break;
                    }
                    break;
            }
            return iSection;
        }
    };
    private StatusHandleHelper mStatusHandleHelper = new StatusHandleHelper();
    private LoaderCallbacks<Integer> mStatusLoaderCallback = new LoaderCallbacks<Integer>() {
        public Loader<Integer> onCreateLoader(int id, Bundle args) {
            return new SearchStatusLoader(NavigationFragment.this.mActivity, NavigationFragment.this.mStatusReportDelegate);
        }

        public void onLoadFinished(Loader<Integer> loader, Integer data) {
            NavigationFragment.this.mStatusHandleHelper.updateBaseStatus(data.intValue());
        }

        public void onLoaderReset(Loader<Integer> loader) {
            NavigationFragment.this.mStatusHandleHelper.updateBaseStatus(-1);
        }
    };
    private com.miui.gallery.search.SearchStatusLoader.StatusReportDelegate mStatusReportDelegate = new StatusReportDelegate();

    /* renamed from: com.miui.gallery.search.navigationpage.NavigationFragment$5 */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$miui$gallery$search$SearchConstants$SectionType = new int[SectionType.values().length];

        static {
            try {
                $SwitchMap$com$miui$gallery$search$SearchConstants$SectionType[SectionType.SECTION_TYPE_LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$miui$gallery$search$SearchConstants$SectionType[SectionType.SECTION_TYPE_TAG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private class ErrorViewAdapter extends AbstractErrorViewAdapter {
        public ErrorViewAdapter(Context context) {
            super(context);
        }

        public void requestRetry() {
            NavigationFragment.this.doRetry();
        }

        public boolean isEmptyDataView() {
            return NavigationFragment.this.mAdapter.isEmpty();
        }

        public boolean isLoading() {
            return NavigationFragment.this.mIsLoading && isEmptyDataView();
        }

        public void addHeaderView(View view) {
            NavigationFragment.this.mAdapter.addHeaderView(view);
        }

        public void removeHeaderView(View view) {
            NavigationFragment.this.mAdapter.removeHeaderView(view);
        }

        public void addFooterView(View view) {
            NavigationFragment.this.mAdapter.addFooterView(view);
        }

        public void removeFooterView(View view) {
            NavigationFragment.this.mAdapter.removeFooterView(view);
        }

        public View getInfoView(View convertView, int status, InfoViewPosition position) {
            if (SearchConstants.isErrorStatus(status) && position == InfoViewPosition.FOOTER) {
                return null;
            }
            return super.getInfoView(convertView, status, position);
        }
    }

    private static class StatusReportDelegate implements com.miui.gallery.search.SearchStatusLoader.StatusReportDelegate {
        private StatusReportDelegate() {
        }

        /* synthetic */ StatusReportDelegate(AnonymousClass1 x0) {
            this();
        }

        public boolean shouldReportStatus(int status) {
            return status == 4;
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.navigation_fragment, container, false);
        this.mDataView = (RecyclerView) view.findViewById(R.id.data_view);
        this.mDataView.setItemAnimator(null);
        this.mDataView.setLayoutManager(new LinearLayoutManager(this.mActivity, 1, false));
        this.mAdapter = new NavigationAdapter(this.mActivity, SearchContext.getInstance().getSuggestionViewFactory(), "from_navigation");
        this.mDataView.setAdapter(this.mAdapter);
        this.mDataView.addItemDecoration(new SectionedSuggestionItemDecoration(this.mActivity, this.mAdapter, false, 0, true));
        this.mDataView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (NavigationFragment.this.getCallback() != null) {
                    NavigationFragment.this.getCallback().requestIME(false);
                }
                return false;
            }
        });
        this.mStatusHandleHelper.init(this.mDataView, view.findViewById(R.id.info_view), view.findViewById(R.id.loading_view), view.findViewById(R.id.empty_view), new ErrorViewAdapter(this.mActivity));
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getLoaderManager().initLoader(0, null, this.mStatusLoaderCallback);
        restartDataLoader();
    }

    public void doRetry() {
        if (SearchConstants.isErrorStatus(this.mStatusHandleHelper.getResultStatus())) {
            restartDataLoader();
        }
    }

    private void restartDataLoader() {
        getLoaderManager().restartLoader(1, null, this.mDataLoaderCallback);
        this.mIsLoading = true;
        this.mStatusHandleHelper.refreshInfoViews();
    }

    public void onResume() {
        super.onResume();
        getLoaderManager().getLoader(0).forceLoad();
        doRetry();
    }

    public String getPageName() {
        return "search_navigation";
    }
}
