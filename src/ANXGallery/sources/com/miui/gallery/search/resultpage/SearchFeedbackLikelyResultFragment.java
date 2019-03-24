package com.miui.gallery.search.resultpage;

import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.feedback.SearchFeedbackHelper;
import com.miui.gallery.search.feedback.SearchFeedbackHelper.OnFeedbackCompleteListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.CheckableView;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import miui.gallery.support.MiuiSdkCompat;

public class SearchFeedbackLikelyResultFragment extends SearchImageResultFragmentBase implements OnClickListener {
    private LongSparseArray<Integer> mCheckedIds = new LongSparseArray();
    private View mContentView;
    private TextView mReportButton;
    private Button mSelectAllBtn;

    private class LikelyResultAdapter extends ImageResultSimpleAdapter {
        public LikelyResultAdapter(Context context) {
            super(context);
        }

        public View getView(final int position, View convertView, ViewGroup parent) {
            View view = super.getView(position, convertView, parent);
            if (view instanceof CheckableView) {
                final CheckableView checkable = (CheckableView) view;
                checkable.setCheckable(true);
                checkable.setChecked(SearchFeedbackLikelyResultFragment.this.isChecked(position));
                checkable.setCheckableListener(new OnClickListener() {
                    public void onClick(View view) {
                        boolean checked = SearchFeedbackLikelyResultFragment.this.isChecked(position);
                        if (checked) {
                            SearchFeedbackLikelyResultFragment.this.mCheckedIds.delete(SearchFeedbackLikelyResultFragment.this.mAdapter.getItemId(position));
                        } else {
                            SearchFeedbackLikelyResultFragment.this.mCheckedIds.put(SearchFeedbackLikelyResultFragment.this.mAdapter.getItemId(position), Integer.valueOf(position));
                        }
                        checkable.setChecked(!checked);
                        SearchFeedbackLikelyResultFragment.this.updateReportButtonState();
                    }
                });
            }
            return view;
        }
    }

    protected void updateTitle(String title) {
    }

    protected int getLayoutResource() {
        return R.layout.search_likely_result_fragment;
    }

    private void initTopBar() {
        View customView = LayoutInflater.from(this.mActivity).inflate(R.layout.search_feedback_likely_result_page_title, null);
        ((TextView) customView.findViewById(R.id.home_text)).setText(String.format(getString(R.string.search_feedback_false_negative_title), new Object[]{this.mQueryText}));
        customView.findViewById(R.id.home_arrow).setOnClickListener(this);
        this.mSelectAllBtn = (Button) customView.findViewById(R.id.select_mode_button);
        MiuiSdkCompat.setEditActionModeButton(this.mActivity, this.mSelectAllBtn, 0);
        this.mSelectAllBtn.setOnClickListener(this);
        this.mSelectAllBtn.setEnabled(false);
        this.mActivity.getActionBar().setDisplayOptions(16);
        this.mActivity.getActionBar().setCustomView(customView, new LayoutParams(-1, -1, 19));
    }

    protected void onInflateView(View view, Bundle savedInstanceState, Uri intentUri) {
        bind((StickyGridHeadersGridView) view.findViewById(R.id.grid), new LikelyResultAdapter(this.mActivity));
        this.mGridView.setAdapter(this.mAdapter);
        this.mGridView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                SearchFeedbackLikelyResultFragment.this.goToPhotoPage(parent, position, "from_likely_image_result");
                BaseSamplingStatHelper.recordNumericPropertyEvent(SearchFeedbackLikelyResultFragment.this.getPageName(), "click_micro_thumb", (long) position);
            }
        });
        this.mContentView = view.findViewById(R.id.content_container);
        this.mReportButton = (TextView) view.findViewById(R.id.report_button);
        this.mReportButton.setOnClickListener(this);
        initTopBar();
    }

    public void onClick(View v) {
        if (v != null) {
            switch (v.getId()) {
                case R.id.home_arrow /*2131886290*/:
                    finish();
                    return;
                case R.id.select_mode_button /*2131886702*/:
                    toggleSelectAll();
                    return;
                case R.id.report_button /*2131886718*/:
                    report();
                    return;
                default:
                    return;
            }
        }
    }

    protected View getResultView() {
        return this.mContentView;
    }

    protected Builder initResultQueryInfoBuilder(Uri uri) {
        Builder builder = super.initResultQueryInfoBuilder(uri);
        builder.setSearchType(SearchType.SEARCH_TYPE_FEEDBACK_LIKELY_RESULT);
        return builder;
    }

    protected void restartSectionLoader(Bundle extras) {
        this.mSectionDataResultHelper = new SearchImageResultHelper(this.mActivity, this.mResultSectionQueryInfo, false, new BaseSuggestionSection(this.mResultSectionQueryInfo, SectionType.SECTION_TYPE_IMAGE_LIST, null, this.mActivity.getIntent().getData().toString(), null, null, null));
        openLoadMore();
        onLoadMoreRequested();
    }

    protected void restartSectionDataLoader(Bundle extras) {
        if (getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(1, extras, this.mSectionDataLoaderCallback);
        }
    }

    protected Builder getSectionDataQueryInfoBuilder() {
        Builder queryInfoBuilder = super.getSectionDataQueryInfoBuilder();
        queryInfoBuilder.setSearchType(SearchType.SEARCH_TYPE_FEEDBACK_LIKELY_RESULT);
        return queryInfoBuilder;
    }

    protected String getFrom() {
        return "from_likely_image_result";
    }

    protected Loader getLoader() {
        Loader loader = getLoaderManager().getLoader(1);
        return loader != null ? loader : null;
    }

    protected void changeSuggestions(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
        super.changeSuggestions(queryInfo, suggestionCursor);
        updateReportButtonState();
    }

    public String getPageName() {
        return "search_likely_image_result";
    }

    public void onLoadMoreRequested() {
        if (this.mAdapter.isEmpty()) {
            super.onLoadMoreRequested();
        } else {
            closeLoadMore();
        }
    }

    private void toggleSelectAll() {
        if (isCheckedAll()) {
            this.mCheckedIds.clear();
        } else {
            for (int i = 0; i < this.mAdapter.getCount(); i++) {
                this.mCheckedIds.put(this.mAdapter.getItemId(i), Integer.valueOf(i));
            }
        }
        this.mAdapter.notifyDataSetChanged();
        updateReportButtonState();
    }

    private void report() {
        ArrayList<String> checkedServerIds = getCheckedServerIdList(getCheckedPositions());
        if (checkedServerIds.size() > 0) {
            SearchFeedbackHelper.reportFalseNegativeImages(this.mActivity, this.mQueryText, this.mInFeedbackTaskMode, checkedServerIds, new OnFeedbackCompleteListener() {
                public void onComplete(int count) {
                    if (count > 0) {
                        SearchFeedbackLikelyResultFragment.this.mActivity.setResult(-1);
                        SearchFeedbackLikelyResultFragment.this.finish();
                    }
                }
            });
        }
    }

    private boolean isCheckedAll() {
        int checkedCount = getCheckedItemCount();
        return checkedCount > 0 && checkedCount == this.mAdapter.getCount();
    }

    private boolean isChecked(int position) {
        return this.mCheckedIds.indexOfKey(this.mAdapter.getItemId(position)) >= 0;
    }

    private int getCheckedItemCount() {
        return this.mCheckedIds.size();
    }

    private SparseBooleanArray getCheckedPositions() {
        SparseBooleanArray checkedPositions = new SparseBooleanArray(this.mAdapter.getCount());
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            if (isChecked(i)) {
                checkedPositions.put(i, true);
            }
        }
        return checkedPositions;
    }

    private void updateReportButtonState() {
        boolean z;
        int i = 1;
        this.mReportButton.setEnabled(getCheckedItemCount() > 0);
        Button button = this.mSelectAllBtn;
        if (this.mAdapter.getCount() > 0) {
            z = true;
        } else {
            z = false;
        }
        button.setEnabled(z);
        Context context = this.mActivity;
        button = this.mSelectAllBtn;
        if (!isCheckedAll()) {
            i = 0;
        }
        MiuiSdkCompat.setEditActionModeButton(context, button, i);
    }

    protected void restartFilterLoader(Bundle extras) {
    }

    protected void changeFilterData(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
    }
}
