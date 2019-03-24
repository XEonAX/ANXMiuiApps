package com.miui.gallery.search.resultpage;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.feedback.SearchFeedbackHelper;
import com.miui.gallery.search.feedback.SearchFeedbackHelper.OnFeedbackCompleteListener;
import com.miui.gallery.search.resultpage.ImageResultAdapter.OnHeaderItemClickedListener;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.TwoStageDrawer;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.yellowpage.YellowPageContract.Search;

public class SearchImageResultFragment extends SearchImageResultFragmentBase {
    private ChoiceModeListener mChoiceModeListener = new ChoiceModeListener(this, null);
    private SearchFeedbackLikelyController mFeedbackLikelyController = null;
    private FilterBarController mFilterBarController = null;
    private int mFilterVisibleFilterThreshold = 0;
    private int mFilterVisibleImageThreshold = 0;
    protected EditableListViewWrapperDeprecated mGridViewWrapper;
    private VoiceAssistantReceiver mVoiceAssistantReceiver;

    private class ChoiceModeListener implements MultiChoiceModeListener {
        private MenuItem mAddToAlbum;
        private MenuItem mCreativity;
        private MenuItem mDelete;
        private MenuItem mFeedback;
        private ActionMode mMode;
        private MenuItem mSend;

        private ChoiceModeListener() {
        }

        /* synthetic */ ChoiceModeListener(SearchImageResultFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            updateMenuState();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            updateMenuState();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            this.mMode = mode;
            boolean isMiuiSdkLevelGte15 = BuildUtil.isMiuiSdkGte15(SearchImageResultFragment.this.mActivity);
            if (SearchImageResultFragment.this.supportFeedback()) {
                mode.getMenuInflater().inflate(isMiuiSdkLevelGte15 ? R.menu.v15_image_result_image_menu : R.menu.image_result_image_menu, menu);
            } else {
                mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(SearchImageResultFragment.this.mActivity) ? R.menu.v15_home_page_menu : R.menu.home_page_menu, menu);
            }
            this.mFeedback = menu.findItem(R.id.feedback);
            this.mAddToAlbum = menu.findItem(R.id.add_to_album);
            this.mDelete = menu.findItem(R.id.delete);
            this.mCreativity = menu.findItem(R.id.action_produce);
            this.mSend = menu.findItem(R.id.action_send);
            if (SearchImageResultFragment.this.mInFeedbackTaskMode) {
                this.mAddToAlbum.setVisible(false);
                this.mDelete.setVisible(false);
                this.mCreativity.setVisible(false);
                this.mSend.setVisible(false);
            }
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            if (SearchImageResultFragment.this.mFeedbackLikelyController != null) {
                SearchImageResultFragment.this.mFeedbackLikelyController.hideLikelyBar();
            }
            return false;
        }

        public boolean onActionItemClicked(final ActionMode mode, MenuItem item) {
            final String checkedServerIds;
            switch (item.getItemId()) {
                case R.id.delete /*2131886699*/:
                    checkedServerIds = SearchImageResultFragment.this.getCheckedServerIds(SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemPositions());
                    MediaAndAlbumOperations.delete(SearchImageResultFragment.this.mActivity, "SearchImageResultFragmentDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
                        public void onDeleted(int count, long[] deleteIds) {
                            if (SearchImageResultFragment.this.mActivity != null) {
                                ToastUtils.makeText(SearchImageResultFragment.this.mActivity, SearchImageResultFragment.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                                if (count > 0) {
                                    SoundUtils.playSoundForOperation(SearchImageResultFragment.this.mActivity, 0);
                                }
                                mode.finish();
                                Map<String, String> map = new HashMap();
                                map.put("queryText", SearchImageResultFragment.this.mQueryText);
                                map.put("count", String.valueOf(count));
                                map.put("serverIds", checkedServerIds);
                                SearchStatUtils.reportEvent("from_image_result", "client_image_operation_delete", map);
                            }
                        }
                    }, -1, "", 0, 27, SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemIds());
                    break;
                case R.id.action_produce /*2131886849*/:
                    MediaAndAlbumOperations.doProduceCreation(SearchImageResultFragment.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            mode.finish();
                        }
                    }, SearchImageResultFragment.this.mGridViewWrapper.getCheckedItems());
                    BaseSamplingStatHelper.recordCountEvent(Search.DIRECTORY, "produce");
                    break;
                case R.id.action_send /*2131886850*/:
                    SearchImageResultFragment.this.onSend(null, null);
                    break;
                case R.id.add_to_album /*2131886852*/:
                    checkedServerIds = SearchImageResultFragment.this.getCheckedServerIds(SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemPositions());
                    MediaAndAlbumOperations.addToAlbum(SearchImageResultFragment.this.mActivity, new OnAddAlbumListener() {
                        public void onComplete(long[] result, boolean deleteOrigin) {
                            ChoiceModeListener.this.mMode.finish();
                            if (result != null) {
                                Map<String, String> map = new HashMap();
                                map.put("queryText", SearchImageResultFragment.this.mQueryText);
                                map.put("count", String.valueOf(result.length));
                                map.put("serverIds", checkedServerIds);
                                SearchStatUtils.reportEvent("from_image_result", "client_image_operation_add_to_album", map);
                            }
                        }
                    }, 0, true, true, SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemIds());
                    break;
                case R.id.feedback /*2131886853*/:
                    SearchFeedbackHelper.reportFalsePositiveImages(SearchImageResultFragment.this.mActivity, SearchImageResultFragment.this.mQueryText, SearchImageResultFragment.this.mInFeedbackTaskMode, SearchImageResultFragment.this.getCheckedServerIdList(SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemPositions()), new OnFeedbackCompleteListener() {
                        public void onComplete(int count) {
                            mode.finish();
                            if (count > 0) {
                                SearchImageResultFragment.this.mSectionDataResultHelper.resetCacheInfo();
                                Bundle bundle = new Bundle(1);
                                bundle.putBoolean("force_requery", true);
                                SearchImageResultFragment.this.restartSectionDataLoader(bundle);
                            }
                        }
                    });
                    break;
                default:
                    return false;
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
            this.mMode = null;
            if (SearchImageResultFragment.this.mFeedbackLikelyController != null) {
                SearchImageResultFragment.this.mFeedbackLikelyController.showLikelyBar();
            }
        }

        public boolean inChoiceMode() {
            return this.mMode != null;
        }

        private void updateMenuState() {
            if (SearchImageResultFragment.this.mGridViewWrapper.getCheckedItemCount() < 1) {
                this.mAddToAlbum.setEnabled(false);
                this.mDelete.setEnabled(false);
                this.mCreativity.setEnabled(false);
                this.mSend.setEnabled(false);
                if (this.mFeedback != null) {
                    this.mFeedback.setEnabled(false);
                    return;
                }
                return;
            }
            this.mAddToAlbum.setEnabled(true);
            this.mDelete.setEnabled(true);
            this.mCreativity.setEnabled(true);
            this.mSend.setEnabled(true);
            if (this.mFeedback != null) {
                this.mFeedback.setEnabled(true);
            }
        }
    }

    private class SearchFeedbackLikelyController implements LoaderCallbacks<DataListSourceResult> {
        private Boolean mHasLikelyItems = null;
        private View mLikelyGuide = null;
        private ViewStub mLikelyGuideStub = null;

        public SearchFeedbackLikelyController(ViewStub likelyGuideStub) {
            this.mLikelyGuideStub = likelyGuideStub;
        }

        public void showLikelyBar() {
            if (this.mHasLikelyItems == null) {
                this.mHasLikelyItems = Boolean.valueOf(false);
                SearchImageResultFragment.this.getLoaderManager().restartLoader(4, null, this);
            } else if (this.mHasLikelyItems.booleanValue()) {
                if (this.mLikelyGuide == null && this.mLikelyGuideStub != null) {
                    this.mLikelyGuide = this.mLikelyGuideStub.inflate();
                    this.mLikelyGuide.findViewById(R.id.click_view).setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            Builder uriBuilder = GalleryContract.Search.URI_LIKELY_RESULT_PAGE.buildUpon().appendQueryParameter("title", SearchImageResultFragment.this.mQueryText).appendQueryParameter("tagName", SearchImageResultFragment.this.mQueryText);
                            Bundle extras = new Bundle(3);
                            extras.putBoolean("start_activity_for_result", true);
                            extras.putInt("request_code", 1);
                            extras.putString("from", "from_image_result");
                            ActionURIHandler.handleUri(SearchImageResultFragment.this.mActivity, uriBuilder.build(), extras);
                        }
                    });
                }
                if (this.mLikelyGuide != null) {
                    this.mLikelyGuide.setVisibility(0);
                    ((TextView) this.mLikelyGuide.findViewById(R.id.title)).setText(String.format(SearchImageResultFragment.this.getString(R.string.search_feedback_likely_title), new Object[]{SearchImageResultFragment.this.mQueryText}));
                }
            }
        }

        public void hideLikelyBar() {
            if (this.mLikelyGuide != null) {
                this.mLikelyGuide.setVisibility(8);
            }
        }

        public Loader<DataListSourceResult> onCreateLoader(int id, Bundle args) {
            return new QueryLoader(SearchImageResultFragment.this.mActivity, new QueryInfo.Builder(SearchType.SEARCH_TYPE_FEEDBACK_LIKELY_RESULT).addParam("pos", "0").addParam("num", "1").addParam("tagName", SearchImageResultFragment.this.mQueryText).addParam("inFeedbackTaskMode", String.valueOf(SearchImageResultFragment.this.mInFeedbackTaskMode)).build(), new DataListResultProcessor(), false, SearchImageResultFragment.this.receiveResultUpdates(), false);
        }

        public void onLoadFinished(Loader<DataListSourceResult> loader, DataListSourceResult data) {
            boolean z = (data == null || data.getData() == null || data.getData().getCount() <= 0) ? false : true;
            this.mHasLikelyItems = Boolean.valueOf(z);
            SearchLog.d("SearchImageResultFragment", "On query likely item finished [%s]", this.mHasLikelyItems);
            showLikelyBar();
            SearchImageResultFragment.this.getLoaderManager().destroyLoader(4);
        }

        public void onLoaderReset(Loader<DataListSourceResult> loader) {
        }
    }

    private class VoiceAssistantReceiver extends BroadcastReceiver {
        private VoiceAssistantReceiver() {
        }

        /* synthetic */ VoiceAssistantReceiver(SearchImageResultFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (SearchImageResultFragment.this.mGridViewWrapper.isInActionMode()) {
                SearchImageResultFragment.this.onSend(intent.getStringExtra("assistant_target_package"), intent.getStringExtra("assistant_target_class"));
            }
        }
    }

    protected int getLayoutResource() {
        return R.layout.search_image_result_fragment;
    }

    protected void onInflateView(View view, Bundle savedInstanceState, Uri intentUri) {
        ImageResultAdapter imageResultAdapter = new ImageResultAdapter(this.mActivity);
        bind((StickyGridHeadersGridView) view.findViewById(R.id.grid), imageResultAdapter);
        imageResultAdapter.setHeaderClickListener(new OnHeaderItemClickedListener() {
            public void onHeaderItemClicked(int groupIndex) {
                IntentUtil.gotoDailyAlbumDetailPage(SearchImageResultFragment.this.mActivity, ((ImageResultAdapter) SearchImageResultFragment.this.mAdapter).getGroupCreateDate(groupIndex));
                SearchStatUtils.reportEvent(SearchImageResultFragment.this.getFrom(), "client_image_operation_jump_to_daily", "queryText", SearchImageResultFragment.this.mQueryText);
            }
        });
        this.mGridViewWrapper = new EditableListViewWrapperDeprecated(this.mGridView);
        this.mGridViewWrapper.setAdapter(this.mAdapter);
        this.mGridViewWrapper.setChoiceMode(3);
        this.mGridViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
        this.mGridViewWrapper.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                SearchImageResultFragment.this.goToPhotoPage(adapterView, position, "from_image_result");
                BaseSamplingStatHelper.recordNumericPropertyEvent(Search.DIRECTORY, "click_micro_thumb", (long) position);
            }
        });
        this.mFilterVisibleImageThreshold = getResources().getInteger(R.integer.search_filter_visible_image_threshold);
        this.mFilterVisibleFilterThreshold = getResources().getInteger(R.integer.search_filter_visible_filter_threshold);
        if (this.mInFeedbackTaskMode && SearchFeedbackHelper.needToQueryLikelyImagesForFeedbackTask(this.mQueryText)) {
            this.mFeedbackLikelyController = new SearchFeedbackLikelyController((ViewStub) view.findViewById(R.id.likely_results));
        }
    }

    protected void updateTitle(String title) {
        if (this.mInFeedbackTaskMode && !TextUtils.isEmpty(title)) {
            title = String.format(getString(R.string.search_feedback_false_positive_title), new Object[]{title});
        }
        super.updateTitle(title);
    }

    protected View getResultView() {
        return this.mGridView;
    }

    protected SearchResultHelper createSearchResultHelper(QueryInfo queryInfo, GroupedSuggestionCursor<SuggestionSection> sections) {
        return new SearchImageResultHelper(getActivity(), queryInfo, false, (GroupedSuggestionCursor) sections);
    }

    protected boolean receiveResultUpdates() {
        return true;
    }

    protected void restartSectionLoader(Bundle extras) {
        if (getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(1, extras, this.mSectionsLoaderCallback);
        }
    }

    protected void restartSectionDataLoader(Bundle extras) {
        if (getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(2, extras, this.mSectionDataLoaderCallback);
        }
    }

    protected void restartFilterLoader(Bundle extras) {
        if (!this.mInFeedbackTaskMode && getActivity() != null && getLoaderManager() != null) {
            getLoaderManager().restartLoader(3, extras, this.mFilterLoaderCallback);
        }
    }

    protected void changeSuggestions(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
        super.changeSuggestions(queryInfo, suggestionCursor);
        showFilterBar();
        if (SearchConstants.isHorizontalDocumentStyle(SearchUtils.getRankInfo(suggestionCursor))) {
            this.mGridViewWrapper.disableScaleImageViewAniWhenInActionMode();
        } else {
            this.mGridViewWrapper.enableScaleImageViewAniWhenInActionMode();
        }
        if (this.mFeedbackLikelyController != null && !this.mChoiceModeListener.inChoiceMode()) {
            this.mFeedbackLikelyController.showLikelyBar();
        }
    }

    protected void changeFilterData(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
        if (this.mFilterBarController == null) {
            this.mFilterBarController = new FilterBarController(getActivity(), (TwoStageDrawer) getView(), "from_image_result");
        }
        this.mFilterBarController.swapCursor(queryInfo, suggestionCursor);
        showFilterBar();
    }

    private void showFilterBar() {
        boolean z = true;
        if (this.mFilterBarController != null) {
            boolean imageResultFulfill;
            if (this.mAdapter == null || this.mAdapter.getCount() < this.mFilterVisibleImageThreshold) {
                imageResultFulfill = false;
            } else {
                imageResultFulfill = true;
            }
            boolean filterDataFulfill;
            if (this.mFilterBarController.getFilterDataCount() >= this.mFilterVisibleFilterThreshold) {
                filterDataFulfill = true;
            } else {
                filterDataFulfill = false;
            }
            FilterBarController filterBarController = this.mFilterBarController;
            if (!(imageResultFulfill && filterDataFulfill)) {
                z = false;
            }
            filterBarController.showFilterBar(z);
        }
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
        loader = getLoaderManager().getLoader(3);
        if (loader != null) {
            ret.add(loader);
        }
        return ret;
    }

    private void restartSectionLoader(boolean forceRequery) {
        Bundle bundle = null;
        if (forceRequery) {
            bundle = new Bundle(1);
            bundle.putBoolean("force_requery", true);
        }
        restartSectionLoader(bundle);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1 && resultCode == -1) {
            if (this.mFeedbackLikelyController != null) {
                this.mFeedbackLikelyController.hideLikelyBar();
                this.mFeedbackLikelyController = null;
            }
            restartSectionLoader(true);
        }
    }

    public String getPageName() {
        return "search_image_result";
    }

    protected String getFrom() {
        return "from_image_result";
    }

    public void onResume() {
        super.onResume();
        if (this.mVoiceAssistantReceiver == null) {
            this.mVoiceAssistantReceiver = new VoiceAssistantReceiver(this, null);
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mVoiceAssistantReceiver, new IntentFilter("com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"));
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mVoiceAssistantReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mVoiceAssistantReceiver);
            this.mVoiceAssistantReceiver = null;
        }
    }

    private void onSend(String targetPackage, String targetClass) {
        int i;
        int initPos = Integer.MAX_VALUE;
        SparseBooleanArray selectedItems = this.mGridViewWrapper.getCheckedItemPositions();
        ArrayList<Integer> arrayList = new ArrayList(selectedItems.size());
        ArrayList<Long> arrayList2 = new ArrayList(selectedItems.size());
        for (i = 0; i < selectedItems.size(); i++) {
            int key = selectedItems.keyAt(i);
            if (selectedItems.get(key)) {
                arrayList.add(Integer.valueOf(key));
                arrayList2.add(Long.valueOf(this.mAdapter.getItemKey(key)));
                if (key < initPos) {
                    initPos = key;
                }
            }
        }
        if (arrayList.size() != 0) {
            int[] selectedPos = new int[arrayList.size()];
            long[] selectedId = new long[arrayList2.size()];
            for (i = 0; i < arrayList.size(); i++) {
                selectedPos[i] = ((Integer) arrayList.get(i)).intValue();
                selectedId[i] = ((Long) arrayList2.get(i)).longValue();
            }
            if (initPos == Integer.MAX_VALUE) {
                initPos = 0;
            }
            IntentUtil.gotoPreviewSelectPage(this, getPhotoPageDataLoaderUri(), initPos, this.mAdapter.getCount(), getSelection(), getSelectionArguments(), getOrder(), new ImageLoadParams(this.mAdapter.getItemKey(initPos), this.mAdapter.getLocalPath(initPos), getMicroThumbnailSize(), this.mAdapter.getItemDecodeRectF(initPos), initPos, this.mAdapter.getMimeType(initPos), this.mAdapter.getFileLength(initPos)), selectedId, selectedPos, targetPackage, targetClass);
            this.mGridViewWrapper.stopActionMode();
            Map<String, String> map = new HashMap();
            Map<String, String> map2 = map;
            map2.put("queryText", this.mQueryText);
            map.put("count", String.valueOf(selectedItems.size()));
            map2 = map;
            map2.put("serverIds", getCheckedServerIds(selectedItems));
            SearchStatUtils.reportEvent("from_image_result", "client_image_operation_share", map);
        }
    }
}
