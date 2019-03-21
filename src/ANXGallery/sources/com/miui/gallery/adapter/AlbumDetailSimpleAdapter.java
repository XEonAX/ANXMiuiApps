package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.miui.gallery.Config.SecretAlbumConfig;
import com.miui.gallery.Config.ShareAlbumConfig;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.ui.AlbumDetailGridItem;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;

public class AlbumDetailSimpleAdapter extends PreloadMediaAdapter implements CheckableAdapter {
    public static final String[] PROJECTION = MiscUtil.copyStringArray(PROJECTION_INTERNAL);
    protected static final String[] PROJECTION_INTERNAL = new String[]{"_id", "alias_micro_thumbnail", "localFile", "title", "alias_create_date", "alias_create_time", "location", "sha1", "serverType", "duration", "mimeType", "size", "alias_sync_state", "secretKey", "thumbnailFile", "localFile", "creatorId", "alias_sort_time", "alias_clear_thumbnail", "alias_is_favorite", "specialTypeFlags"};
    private AlbumType mAlbumType = AlbumType.NORMAL;
    private SortBy mSortBy;

    public enum AlbumType {
        NORMAL,
        SECRET,
        BABY,
        SCREENSHOT,
        OTHER_SHARE,
        PANO,
        RECENT,
        FAVORITES
    }

    public AlbumDetailSimpleAdapter(Context context) {
        super(context, DisplayScene.SCENE_IN_CHECK_MODE);
    }

    public AlbumDetailSimpleAdapter(Context context, DisplayScene scene) {
        super(context, scene);
    }

    public AlbumDetailSimpleAdapter(Context context, DisplayScene type, int syncStateDisplayOptions) {
        super(context, type, syncStateDisplayOptions);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        AlbumDetailGridItem item;
        if (isScreenshotAlbum()) {
            item = (AlbumDetailGridItem) LayoutInflater.from(context).inflate(R.layout.album_detail_screenshot_grid_item, viewGroup, false);
            item.setImageSize(getDisplayImageSize());
            item.setImageForeground(R.drawable.rect_item_fg_with_stroke);
            return item;
        } else if (isPanoAlbum()) {
            item = (AlbumDetailGridItem) LayoutInflater.from(context).inflate(R.layout.album_detail_pano_grid_item, viewGroup, false);
            item.setImageSize(getDisplayImageSize());
            return item;
        } else if (!isRecentAlbum()) {
            return LayoutInflater.from(context).inflate(R.layout.album_detail_grid_item, viewGroup, false);
        } else {
            item = (AlbumDetailGridItem) LayoutInflater.from(context).inflate(R.layout.album_detail_grid_item, viewGroup, false);
            item.setImageSize(getDisplayImageSize());
            item.setImageForeground(R.drawable.rect_item_fg_with_stroke);
            return item;
        }
    }

    private boolean isNoCacheDisplayAlbum() {
        return isScreenshotAlbum() || isPanoAlbum();
    }

    private ImageSize getDisplayImageSize() {
        if (isScreenshotAlbum()) {
            return ThumbConfig.get().sMicroScreenshotTargetSize;
        }
        if (isPanoAlbum()) {
            return ThumbConfig.get().sMicroPanoTargetSize;
        }
        if (isRecentAlbum()) {
            return ThumbConfig.get().sMicroRecentTargetSize;
        }
        return ThumbConfig.get().sMicroTargetSize;
    }

    protected ImageSize getDisplayImageSize(int position) {
        return getDisplayImageSize();
    }

    protected DisplayImageOptions getDisplayImageOptions(int position) {
        DisplayImageOptions options = super.getDisplayImageOptions(position);
        if (isSecretAlbum()) {
            Cursor cursor = getCursorByPosition(position);
            if (cursor != null) {
                return buildSecretPhotoDisplayOptions(cursor.getBlob(13));
            }
            return options;
        } else if (isNoCacheDisplayAlbum()) {
            return buildNoDiskCacheDisplayOptions();
        } else {
            return options;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x007f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void doBindData(View view, Context context, Cursor cursor) {
        boolean z;
        int newSyncState;
        long id;
        AlbumDetailGridItem item = (AlbumDetailGridItem) view;
        int position = cursor.getPosition();
        item.bindImage(getClearThumbFilePath(position), getDownloadUri(position), getDisplayImageOptions(position));
        String type = cursor.getString(10);
        long duration = cursor.getLong(9);
        if (this.mSortBy == SortBy.SIZE) {
            item.bindFileSize(cursor.getLong(11));
            item.bindIndicator(null, 0, 0);
        } else {
            long specialTypeFlags = cursor.getLong(20);
            if (isSecretAlbum()) {
                specialTypeFlags = SecretAlbumConfig.getSupportedSpecialTypeFlags(specialTypeFlags);
            } else if (isOtherShareAlbum()) {
                specialTypeFlags = ShareAlbumConfig.getSupportedSpecialTypeFlags(specialTypeFlags);
            }
            item.bindFileSize(0);
            item.bindIndicator(type, duration, specialTypeFlags);
        }
        if (!isSecretAlbum()) {
            if (isFavorite(cursor.getPosition())) {
                z = true;
                item.bindFavoriteIndicator(z);
                newSyncState = getSyncState(cursor);
                id = cursor.getLong(0);
                item.bindSyncIndicator(id, newSyncState, this.mShowScene, this.mSyncStateDisplayOptions);
                if (this.mViewScrollState == 0) {
                    bindContentDescription(item, position);
                }
                item.setIsSimilarBestImage(ImageFeatureCacheManager.getInstance().isBestImage(id, false));
            }
        }
        z = false;
        item.bindFavoriteIndicator(z);
        newSyncState = getSyncState(cursor);
        id = cursor.getLong(0);
        item.bindSyncIndicator(id, newSyncState, this.mShowScene, this.mSyncStateDisplayOptions);
        if (this.mViewScrollState == 0) {
        }
        item.setIsSimilarBestImage(ImageFeatureCacheManager.getInstance().isBestImage(id, false));
    }

    public void onViewScrollStateChanged(AbsListView view, int scrollState) {
        super.onViewScrollStateChanged(view, scrollState);
        if (scrollState == 0) {
            int childCount = view.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View item = view.getChildAt(i);
                Object position = item.getTag(R.id.tag_item_position);
                if (position != null) {
                    bindContentDescription(item, ((Integer) position).intValue());
                }
            }
        }
    }

    private void bindContentDescription(View item, int position) {
        Cursor cursor = getCursorByPosition(position);
        item.setContentDescription(TalkBackUtil.getContentDescriptionForImage(item.getContext(), cursor.getLong(5), cursor.getString(6), cursor.getString(10)));
    }

    protected int getSyncState(Cursor cursor) {
        return getSyncStateInternal(cursor.getInt(12));
    }

    private DisplayImageOptions buildSecretPhotoDisplayOptions(byte[] secretKey) {
        if (secretKey == null) {
            return this.mDefaultDisplayImageOptions;
        }
        this.mDisplayImageOptionBuilder.secretKey(secretKey);
        return this.mDisplayImageOptionBuilder.build();
    }

    private DisplayImageOptions buildNoDiskCacheDisplayOptions() {
        this.mDisplayImageOptionBuilder.cacheThumbnail(false);
        this.mDisplayImageOptionBuilder.loadFromMicroCache(false);
        this.mDisplayImageOptionBuilder.cacheInMemory(true);
        return this.mDisplayImageOptionBuilder.build();
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 12, 0);
    }

    public String getLocalPath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 1, 7);
    }

    public String getClearThumbFilePath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 18, 7);
    }

    public String getMicroThumbFilePath(int position) {
        return getCursorByPosition(position).getString(1);
    }

    public String getOriginFilePath(int position) {
        return getCursorByPosition(position).getString(15);
    }

    public String getThumbFilePath(int position) {
        return getCursorByPosition(position).getString(14);
    }

    public long getItemKey(int position) {
        return getCursorByPosition(position).getLong(0);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(7);
    }

    public byte[] getItemSecretKey(int position) {
        if (isSecretAlbum()) {
            return getCursorByPosition(position).getBlob(13);
        }
        return super.getItemSecretKey(position);
    }

    public String getMimeType(int position) {
        return getCursorByPosition(position).getString(10);
    }

    public boolean isFavorite(int position) {
        return getCursorByPosition(position).getInt(19) > 0;
    }

    public long getFileLength(int position) {
        return getCursorByPosition(position).getLong(11);
    }

    public String getCreatorId(int position) {
        return getCursorByPosition(position).getString(16);
    }

    public void setCurrentSortBy(SortBy sortBy) {
        this.mSortBy = sortBy;
    }

    public boolean isBabyAlbum() {
        return this.mAlbumType == AlbumType.BABY;
    }

    public boolean isSecretAlbum() {
        return this.mAlbumType == AlbumType.SECRET;
    }

    public boolean isOtherShareAlbum() {
        return this.mAlbumType == AlbumType.OTHER_SHARE;
    }

    public boolean isScreenshotAlbum() {
        return this.mAlbumType == AlbumType.SCREENSHOT;
    }

    public boolean isPanoAlbum() {
        return this.mAlbumType == AlbumType.PANO;
    }

    public boolean isRecentAlbum() {
        return this.mAlbumType == AlbumType.RECENT;
    }

    public void setAlbumType(AlbumType albumType) {
        this.mAlbumType = albumType;
        if (isNoCacheDisplayAlbum()) {
            setPreloadNum(0);
        }
    }

    public View getCheckableView(View itemView) {
        return ((AlbumDetailGridItem) itemView).getCheckBox();
    }
}
