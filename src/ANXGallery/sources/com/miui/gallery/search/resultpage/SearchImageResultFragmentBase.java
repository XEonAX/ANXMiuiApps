package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.GalleryContract.SearchResultPhoto;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.RequestLoadMoreListener;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.IntentUtil;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;

public abstract class SearchImageResultFragmentBase extends SearchResultFragmentBase implements RequestLoadMoreListener {
    protected ImageResultSimpleAdapter mAdapter;
    protected int mColumnCount = 0;
    private ErrorViewAdapter mErrorViewAdapter = null;
    protected StickyGridHeadersGridView mGridView;
    private View mLoadCompleteFooter;

    private class ErrorViewAdapter extends AbstractErrorViewAdapter {
        public ErrorViewAdapter(Context context) {
            super(context);
        }

        public void requestRetry() {
            SearchImageResultFragmentBase.this.doRetry();
        }

        public boolean isEmptyDataView() {
            return SearchImageResultFragmentBase.this.mAdapter.getCount() <= 0;
        }

        public boolean isLoading() {
            return SearchImageResultFragmentBase.this.mAdapter.isLoading();
        }

        public void addHeaderView(View view) {
            SearchImageResultFragmentBase.this.mGridView.addHeaderView(view);
        }

        public void removeHeaderView(View view) {
            SearchImageResultFragmentBase.this.mGridView.removeHeaderView(view);
        }

        public void addFooterView(View view) {
            SearchImageResultFragmentBase.this.mGridView.addFooterView(view);
        }

        public void removeFooterView(View view) {
            SearchImageResultFragmentBase.this.mGridView.removeFooterView(view);
        }

        protected View getInfoItemView(View convertView, int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FOOTER) {
                return this.mInflater.inflate(R.layout.search_item_error_footer_layout, null);
            }
            return super.getInfoItemView(convertView, status, position);
        }
    }

    protected final void bind(StickyGridHeadersGridView gridView, ImageResultSimpleAdapter adapter) {
        this.mGridView = gridView;
        this.mAdapter = adapter;
        this.mAdapter.setRequestLoadMoreListener(this);
    }

    protected boolean supportFeedback() {
        return this.mInFeedbackTaskMode || super.supportFeedback();
    }

    protected void changeSuggestions(QueryInfo queryInfo, SuggestionCursor suggestionCursor) {
        int columnCount;
        int paddingPixel;
        RankInfo rankInfo = SearchUtils.getRankInfo(suggestionCursor);
        boolean isDocument = SearchConstants.isHorizontalDocumentStyle(rankInfo);
        if (isDocument) {
            ThumbConfig.get().getClass();
            columnCount = 2;
        } else {
            columnCount = ThumbConfig.get().sMicroThumbColumnsPortrait;
        }
        if (isDocument) {
            paddingPixel = getResources().getDimensionPixelSize(R.dimen.micro_thumb_document_spacing);
        } else {
            paddingPixel = getResources().getDimensionPixelSize(R.dimen.micro_thumb_horizontal_spacing);
        }
        if (this.mColumnCount != columnCount) {
            this.mColumnCount = columnCount;
            this.mGridView.setNumColumns(this.mColumnCount);
            this.mGridView.setVerticalSpacing(paddingPixel);
            this.mGridView.setHorizontalSpacing(paddingPixel);
        }
        this.mAdapter.changeSuggestions(queryInfo, rankInfo, suggestionCursor);
    }

    protected AbstractErrorViewAdapter getErrorViewAdapter() {
        if (this.mErrorViewAdapter == null) {
            this.mErrorViewAdapter = new ErrorViewAdapter(this.mActivity);
        }
        return this.mErrorViewAdapter;
    }

    protected void openLoadMore() {
        this.mAdapter.openLoadMore();
    }

    protected void closeLoadMore() {
        this.mAdapter.closeLoadMore();
        this.mStatusHandleHelper.refreshInfoViews();
    }

    protected void onLoadComplete() {
        this.mAdapter.loadComplete();
        this.mStatusHandleHelper.refreshInfoViews();
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (SearchImageResultFragmentBase.this.moreThanOnePage()) {
                    if (SearchImageResultFragmentBase.this.mLoadCompleteFooter == null) {
                        SearchImageResultFragmentBase.this.mLoadCompleteFooter = LayoutInflater.from(SearchImageResultFragmentBase.this.mActivity).inflate(R.layout.search_item_load_complete_layout, SearchImageResultFragmentBase.this.mGridView, false);
                        SearchImageResultFragmentBase.this.mGridView.addFooterView(SearchImageResultFragmentBase.this.mLoadCompleteFooter);
                    }
                    SearchImageResultFragmentBase.this.mStatusHandleHelper.refreshInfoViews();
                } else if (SearchImageResultFragmentBase.this.mLoadCompleteFooter != null) {
                    SearchImageResultFragmentBase.this.mGridView.removeFooterView(SearchImageResultFragmentBase.this.mLoadCompleteFooter);
                    SearchImageResultFragmentBase.this.mLoadCompleteFooter = null;
                }
            }
        });
    }

    protected boolean moreThanOnePage() {
        int firstVisibleView = this.mGridView.getFirstVisiblePosition();
        int lastItemIndex = Integer.MAX_VALUE;
        for (int i = this.mGridView.getLastVisiblePosition(); i > firstVisibleView; i--) {
            if (this.mGridView.getItemIndexByItemPosition(i) > 0) {
                lastItemIndex = this.mGridView.getItemIndexByItemPosition(i);
                break;
            }
        }
        if (firstVisibleView > 0 || lastItemIndex < this.mAdapter.getCount() - 1) {
            return true;
        }
        return false;
    }

    protected boolean usePersistentResponse() {
        return true;
    }

    protected void goToPhotoPage(AdapterView<?> adapterView, int position, String from) {
        ImageLoadParams item = new ImageLoadParams(this.mAdapter.getItemKey(position), this.mAdapter.getLocalPath(position), getMicroThumbnailSize(), this.mAdapter.getItemDecodeRectF(position), position, this.mAdapter.getMimeType(position), this.mAdapter.getFileLength(position));
        IntentUtil.gotoPhotoPage(this, adapterView, getPhotoPageDataLoaderUri(), position, this.mAdapter.getCount(), getSelection(), getSelectionArguments(), getOrder(), item);
        SearchStatUtils.reportEvent(from, "client_image_operation_open_photo_page", "serverIds", this.mAdapter.getServerId(position), "queryText", this.mQueryText);
    }

    protected String getImageIds() {
        return this.mAdapter != null ? this.mAdapter.getImageIds() : null;
    }

    protected Uri getPhotoPageDataLoaderUri() {
        return SearchResultPhoto.URI;
    }

    protected String getSelection() {
        return null;
    }

    protected String[] getSelectionArguments() {
        String imageIds = getImageIds();
        if (TextUtils.isEmpty(imageIds)) {
            return null;
        }
        return imageIds.split(",");
    }

    protected String getOrder() {
        return null;
    }

    protected ImageSize getMicroThumbnailSize() {
        if (this.mAdapter != null) {
            return this.mAdapter.getMicroThumbnailSize();
        }
        return ThumbConfig.get().sMicroTargetSize;
    }

    protected ArrayList<String> getCheckedServerIdList(SparseBooleanArray positions) {
        ArrayList<String> list = new ArrayList();
        if (positions != null && positions.size() > 0) {
            for (int i = 0; i < positions.size(); i++) {
                if (positions.valueAt(i)) {
                    list.add(this.mAdapter.getServerId(positions.keyAt(i)));
                }
            }
        }
        return list;
    }

    protected String getCheckedServerIds(SparseBooleanArray positions) {
        return TextUtils.join(",", getCheckedServerIdList(positions));
    }

    public void onDestroy() {
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
