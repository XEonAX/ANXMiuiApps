package com.miui.gallery.loader;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.data.LocationUtil;
import com.miui.gallery.model.BaseCloudDataSet;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.CloudItem;
import com.miui.gallery.model.CursorDataSet;

public class FaceCloudSetLoader extends CloudSetLoader {
    private static final String[] PROJECTION = new String[]{"photo_id", "microthumbfile", "thumbnailFile", "localFile", "mimeType", " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END ", "location", "size", "exifImageWidth", "exifImageLength", "duration", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "localGroupId", "secretKey", "sha1", "photo_server_id", "exifOrientation", "isFavorite"};

    private static class CloudDataSet extends BaseCloudDataSet {
        public CloudDataSet(Cursor cursor, int initPos, int dupType, long albumId, String albumName) {
            super(cursor, initPos, dupType, albumId, albumName);
        }

        protected void bindItem(BaseDataItem item, int position) {
            boolean z = true;
            if (isValidate(position)) {
                this.mCursor.moveToPosition(position);
                item.setKey(this.mCursor.getLong(0)).setMicroPath(this.mCursor.getString(1)).setThumbPath(this.mCursor.getString(2)).setFilePath(this.mCursor.getString(3)).setMimeType(this.mCursor.getString(4)).setCreateTime(this.mCursor.getLong(5)).setLocation(this.mCursor.getString(6)).setSize(this.mCursor.getLong(7)).setWidth(this.mCursor.getInt(8)).setHeight(this.mCursor.getInt(9)).setDuration(this.mCursor.getInt(10)).setSecretKey(this.mCursor.getBlob(16));
                String latitude = this.mCursor.getString(11);
                if (!TextUtils.isEmpty(latitude)) {
                    String latitudeRef = this.mCursor.getString(12);
                    String longitude = this.mCursor.getString(13);
                    String longitudeRef = this.mCursor.getString(14);
                    item.setLatitude(LocationUtil.convertRationalLatLonToDouble(latitude, latitudeRef));
                    item.setLongitude(LocationUtil.convertRationalLatLonToDouble(longitude, longitudeRef));
                }
                CloudItem cloudItem = (CloudItem) item;
                cloudItem.setId(this.mCursor.getLong(0)).setSynced(true).setSha1(this.mCursor.getString(17)).setLocalGroupId(this.mCursor.getLong(15));
                String serverId = this.mCursor.getString(18);
                cloudItem.setServerId(serverId);
                if (TextUtils.isEmpty(serverId)) {
                    z = false;
                }
                cloudItem.setHasFace(z);
                cloudItem.setOrientation(this.mCursor.getInt(19));
                cloudItem.setIsFavorite(this.mCursor.getInt(20));
            }
        }

        protected boolean isAlbumRemovable() {
            return false;
        }

        public long getItemKey(int position) {
            if (!isValidate(position)) {
                return -1;
            }
            this.mCursor.moveToPosition(position);
            return this.mCursor.getLong(0);
        }

        protected String getItemPath(int position) {
            if (!isValidate(position)) {
                return null;
            }
            this.mCursor.moveToPosition(position);
            return this.mCursor.getString(3);
        }
    }

    public FaceCloudSetLoader(Context context, Uri uri, Bundle data) {
        super(context, uri, data);
    }

    protected String[] getProjection() {
        return PROJECTION;
    }

    protected CursorDataSet wrapDataSet(Cursor cursor) {
        return new CloudDataSet(cursor, this.mInitPos, getOperationDupType(), this.mAlbumId, this.mAlbumName);
    }
}
