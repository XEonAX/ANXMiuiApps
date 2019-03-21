package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseAdapter;
import com.miui.gallery.adapter.BaseMediaSyncStateAdapter;
import com.miui.gallery.adapter.CheckableAdapter;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.RequestLoadMoreListener;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.ui.HomePageGridItem;
import com.miui.gallery.ui.MicroThumbGridItem;
import com.miui.gallery.util.TalkBackUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;

public class ImageResultSimpleAdapter extends BaseMediaSyncStateAdapter implements CheckableAdapter {
    private int INDEX_CLOUD_ID;
    private int INDEX_CREATE_TIME;
    private int INDEX_DURATION;
    private int INDEX_IS_FAVORITE;
    private int INDEX_LOCATION;
    private int INDEX_MICRO_THUMBNAIL_PATH;
    private int INDEX_MIME_TYPE;
    private int INDEX_ORIGINAL_PATH;
    private int INDEX_SERVER_ID;
    private int INDEX_SHA1;
    private int INDEX_SIZE;
    private int INDEX_SPECIAL_TYPE_FLAGS;
    private int INDEX_SYNC_STATE;
    private int INDEX_THUMBNAIL_PATH;
    private boolean mCheckable;
    private boolean mLoadMoreRequested = false;
    private boolean mNextLoadEnable = false;
    protected QueryInfo mQueryInfo;
    protected RankInfo mRankInfo;
    private RequestLoadMoreListener mRequestLoadMoreListener;

    public void setRequestLoadMoreListener(RequestLoadMoreListener requestLoadMoreListener) {
        this.mRequestLoadMoreListener = requestLoadMoreListener;
    }

    public void openLoadMore() {
        this.mNextLoadEnable = true;
        this.mLoadMoreRequested = false;
    }

    public void closeLoadMore() {
        if (this.mNextLoadEnable) {
            this.mNextLoadEnable = false;
        }
        this.mLoadMoreRequested = false;
    }

    public boolean isLoading() {
        return this.mNextLoadEnable;
    }

    private void requestLoadMoreIfNeeded() {
        if (this.mNextLoadEnable && this.mRequestLoadMoreListener != null && !this.mLoadMoreRequested) {
            this.mLoadMoreRequested = true;
            this.mRequestLoadMoreListener.onLoadMoreRequested();
        }
    }

    public void loadComplete() {
        if (this.mNextLoadEnable) {
            this.mNextLoadEnable = false;
        }
        this.mLoadMoreRequested = false;
    }

    public ImageResultSimpleAdapter(Context context) {
        super(context);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        MicroThumbGridItem item;
        if (SearchConstants.isHorizontalDocumentStyle(this.mRankInfo)) {
            item = (SearchDocumentGridItem) LayoutInflater.from(context).inflate(R.layout.search_document_grid_item, viewGroup, false);
        } else {
            item = (MicroThumbGridItem) LayoutInflater.from(context).inflate(R.layout.home_page_grid_item, viewGroup, false);
        }
        item.setImageSize(getMicroThumbnailSize());
        item.setImageForeground(R.drawable.rect_item_fg_with_stroke);
        return item;
    }

    public void doBindView(View view, Context context, Cursor cursor) {
        MicroThumbGridItem item = (MicroThumbGridItem) view;
        int position = cursor.getPosition();
        item.bindImage(getLocalPath(position), getDownloadUri(position), getDisplayImageOptions(position));
        String type = cursor.getString(this.INDEX_MIME_TYPE);
        item.bindIndicator(type, cursor.getLong(this.INDEX_DURATION), cursor.getLong(this.INDEX_SPECIAL_TYPE_FLAGS));
        item.bindFavoriteIndicator(isFavorite(position));
        item.setCheckable(this.mCheckable);
        item.setContentDescription(TalkBackUtil.getContentDescriptionForImage(context, cursor.getLong(this.INDEX_CREATE_TIME), cursor.getString(this.INDEX_LOCATION), type));
        if (position == getCount() - 1) {
            requestLoadMoreIfNeeded();
        }
    }

    protected DisplayImageOptions getDisplayImageOptions(int position) {
        if (!SearchConstants.isHorizontalDocumentStyle(this.mRankInfo)) {
            return super.getDisplayImageOptions(position);
        }
        this.mDisplayImageOptionBuilder.cacheThumbnail(false);
        this.mDisplayImageOptionBuilder.loadFromMicroCache(false);
        this.mDisplayImageOptionBuilder.cacheInMemory(true);
        return this.mDisplayImageOptionBuilder.build();
    }

    public ImageSize getMicroThumbnailSize() {
        if (SearchConstants.isHorizontalDocumentStyle(this.mRankInfo)) {
            return ThumbConfig.get().sMicroHorizontalDocumentTargetSize;
        }
        return ThumbConfig.get().sMicroTargetSize;
    }

    public String getLocalPath(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_MICRO_THUMBNAIL_PATH);
    }

    public String getMicroThumbFilePath(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_MICRO_THUMBNAIL_PATH);
    }

    public String getOriginFilePath(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_ORIGINAL_PATH);
    }

    public String getThumbFilePath(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_THUMBNAIL_PATH);
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getSuggestionCursorByPosition(position).getInt(this.INDEX_SYNC_STATE), getItemKey(position));
    }

    public long getItemKey(int position) {
        return getSuggestionCursorByPosition(position).getLong(this.INDEX_CLOUD_ID);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(this.INDEX_SHA1);
    }

    public String getMimeType(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_MIME_TYPE);
    }

    public boolean isFavorite(int position) {
        return getSuggestionCursorByPosition(position).getInt(this.INDEX_IS_FAVORITE) > 0;
    }

    public long getFileLength(int position) {
        return getSuggestionCursorByPosition(position).getLong(this.INDEX_SIZE);
    }

    public String getServerId(int position) {
        return getSuggestionCursorByPosition(position).getString(this.INDEX_SERVER_ID);
    }

    private SuggestionCursor getSuggestionCursorByPosition(int position) {
        return (SuggestionCursor) getCursorByPosition(position);
    }

    public View getCheckableView(View itemView) {
        return ((HomePageGridItem) itemView).getCheckBox();
    }

    public void changeSuggestions(QueryInfo queryInfo, RankInfo rankInfo, SuggestionCursor suggestionCursor) {
        this.mQueryInfo = queryInfo;
        this.mRankInfo = rankInfo;
        swapCursor(suggestionCursor);
    }

    public ImageResultSuggestionCursor getResultCursor() {
        return getCursor() == null ? null : (ImageResultSuggestionCursor) getCursor();
    }

    public String getImageIds() {
        return getResultCursor().getImageIds();
    }

    public Cursor swapCursor(Cursor newCursor) {
        if (newCursor != null) {
            this.INDEX_SERVER_ID = newCursor.getColumnIndex("serverId");
            this.INDEX_MICRO_THUMBNAIL_PATH = newCursor.getColumnIndex("alias_micro_thumbnail");
            this.INDEX_THUMBNAIL_PATH = newCursor.getColumnIndex("thumbnailFile");
            this.INDEX_ORIGINAL_PATH = newCursor.getColumnIndex("localFile");
            this.INDEX_SHA1 = newCursor.getColumnIndex("sha1");
            this.INDEX_MIME_TYPE = newCursor.getColumnIndex("mimeType");
            this.INDEX_SYNC_STATE = newCursor.getColumnIndex("alias_sync_state");
            this.INDEX_CLOUD_ID = newCursor.getColumnIndex("_id");
            this.INDEX_DURATION = newCursor.getColumnIndex("duration");
            this.INDEX_IS_FAVORITE = newCursor.getColumnIndex("alias_is_favorite");
            this.INDEX_LOCATION = newCursor.getColumnIndex("location");
            this.INDEX_CREATE_TIME = newCursor.getColumnIndex("alias_create_time");
            this.INDEX_SPECIAL_TYPE_FLAGS = newCursor.getColumnIndex("specialTypeFlags");
            this.INDEX_SIZE = newCursor.getColumnIndex("size");
        }
        return super.swapCursor(newCursor);
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
