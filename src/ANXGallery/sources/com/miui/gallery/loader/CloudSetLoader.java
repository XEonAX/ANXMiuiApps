package com.miui.gallery.loader;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.model.BaseCloudDataSet;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.CloudItem;
import com.miui.gallery.model.CursorDataSet;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.util.MediaCursorHelper;

public class CloudSetLoader extends CursorSetLoader {
    protected long mAlbumId = -1;
    protected String mAlbumName;
    protected int mInitPos;
    protected String mOrderBy;
    protected String mSelection;
    protected String[] mSelectionArgs;
    protected Uri mUri;

    protected static class CloudDataSet extends BaseCloudDataSet {
        public CloudDataSet(Cursor cursor, int initPos, int dupType, long albumId, String albumName) {
            super(cursor, initPos, dupType, albumId, albumName);
        }

        protected void bindItem(BaseDataItem item, int position) {
            if (moveToPosition(position)) {
                long id = MediaCursorHelper.getMediaId(this.mCursor);
                item.setKey(id).setMicroPath(MediaCursorHelper.getMicroThumbnailPath(this.mCursor)).setThumbPath(MediaCursorHelper.getThumbnailPath(this.mCursor)).setFilePath(MediaCursorHelper.getFilePath(this.mCursor)).setMimeType(MediaCursorHelper.getMimeType(this.mCursor)).setCreateTime(MediaCursorHelper.getCreateTime(this.mCursor)).setLocation(MediaCursorHelper.getLocation(this.mCursor)).setSize(MediaCursorHelper.getSize(this.mCursor)).setWidth(MediaCursorHelper.getWidth(this.mCursor)).setHeight(MediaCursorHelper.getHeight(this.mCursor)).setDuration(MediaCursorHelper.getDuration(this.mCursor)).setSecretKey(MediaCursorHelper.getSecretKey(this.mCursor)).setLatitude(MediaCursorHelper.getLatitude(this.mCursor)).setLongitude(MediaCursorHelper.getLongitude(this.mCursor));
                CloudItem cloudItem = (CloudItem) item;
                cloudItem.setId(id).setSynced(MediaCursorHelper.isSynced(this.mCursor)).setSha1(MediaCursorHelper.getSha1(this.mCursor)).setShare(ShareMediaManager.isOtherShareMediaId(id)).setCreatorId(MediaCursorHelper.getCreator(this.mCursor)).setIsFavorite(MediaCursorHelper.isFavorite(this.mCursor)).setServerId(MediaCursorHelper.getServerId(this.mCursor));
                cloudItem.setLocalGroupId(MediaCursorHelper.getAlbumId(this.mCursor));
            }
        }

        public long getItemKey(int position) {
            if (moveToPosition(position)) {
                return MediaCursorHelper.getMediaId(this.mCursor);
            }
            return -1;
        }

        protected String getItemPath(int position) {
            if (moveToPosition(position)) {
                return MediaCursorHelper.getFilePath(this.mCursor);
            }
            return null;
        }
    }

    public CloudSetLoader(Context context, Uri uri, Bundle data) {
        super(context);
        this.mUri = uri;
        if (data != null) {
            this.mInitPos = data.getInt("photo_init_position", 0);
            this.mSelection = data.getString("photo_selection", null);
            this.mSelectionArgs = data.getStringArray("photo_selection_args");
            this.mOrderBy = data.getString("photo_order_by", null);
            this.mAlbumName = data.getString("album_name", null);
            this.mAlbumId = data.getLong("album_id", -1);
        }
    }

    protected String[] getProjection() {
        return MediaCursorHelper.PROJECTION;
    }

    protected Uri getUri() {
        return this.mUri == null ? Media.URI : this.mUri;
    }

    protected String getSelection() {
        return this.mSelection;
    }

    protected String[] getSelectionArgs() {
        return this.mSelectionArgs;
    }

    protected String getOrder() {
        return TextUtils.isEmpty(this.mOrderBy) ? "alias_create_time DESC " : this.mOrderBy;
    }

    private static boolean isVirtualAlbum(long albumId) {
        return albumId == 2147483647L || albumId == 2147483645 || albumId == 2147483642;
    }

    private static boolean isStoryAlbum(long albumId) {
        return albumId == 2147483640;
    }

    protected int getOperationDupType() {
        if (!this.mUri.getBooleanQueryParameter("remove_duplicate_items", false)) {
            return 0;
        }
        if (isVirtualAlbum(this.mAlbumId) || isStoryAlbum(this.mAlbumId)) {
            return 3;
        }
        if (this.mAlbumId != -1) {
            return 2;
        }
        return 1;
    }

    protected CursorDataSet wrapDataSet(Cursor cursor) {
        return new CloudDataSet(cursor, this.mInitPos, getOperationDupType(), this.mAlbumId, this.mAlbumName);
    }
}
