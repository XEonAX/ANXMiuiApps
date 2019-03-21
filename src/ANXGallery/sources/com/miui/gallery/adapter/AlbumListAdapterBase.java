package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.ShareAlbumManager;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.HashMap;
import java.util.Map;

public abstract class AlbumListAdapterBase extends BaseAdapter {
    protected static final String[] PROJECTION = new String[]{"_id", "name", "cover_id", "cover_path", "cover_sha1", "cover_sync_state", "media_count", "face_people_id", "baby_info", "thumbnail_info", "serverId", "attributes", "immutable", "top_time", "sortBy", "baby_sharer_info", "local_path", Cloud.ALIAS_ALBUM_CLASSIFICATION + " AS " + "classification"};
    public static final String[] SHARED_ALBUM_PROJECTION = new String[]{"_id", "creatorId", "count", "nickname"};
    protected DisplayImageOptions mDisplayImageOption;
    private Bundle mPeopleFaceCover = null;
    private Map<String, ShareAlbum> mSharedAlbums;

    public static class ShareAlbum {
        String mAlbumId;
        String mCreatorId;
        String mOwnerNickName;
        int mUserCount;
    }

    public AlbumListAdapterBase(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mDisplayImageOptionBuilder.showStubImage(R.drawable.default_album_cover);
        this.mDisplayImageOption = this.mDisplayImageOptionBuilder.build();
    }

    public void setSharedAlbums(Cursor cursor) {
        if (this.mSharedAlbums != null) {
            this.mSharedAlbums.clear();
        }
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                do {
                    ShareAlbum shareAlbum = new ShareAlbum();
                    shareAlbum.mAlbumId = cursor.getString(0);
                    shareAlbum.mCreatorId = cursor.getString(1);
                    shareAlbum.mUserCount = cursor.getInt(2);
                    shareAlbum.mOwnerNickName = cursor.getString(3);
                    if (this.mSharedAlbums == null) {
                        this.mSharedAlbums = new HashMap();
                    }
                    this.mSharedAlbums.put(shareAlbum.mAlbumId, shareAlbum);
                } while (cursor.moveToNext());
            }
            if (getCount() > 0) {
                notifyDataSetChanged();
            }
        }
    }

    public String getLocalPath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 3, 4);
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 5, 2);
    }

    public String getAlbumName(int position) {
        return getAlbumName(getCursorByPosition(position));
    }

    protected int getAlbumCount(Cursor cursor) {
        return cursor.getInt(6);
    }

    protected boolean isVideoAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483647L;
    }

    protected boolean isPanoAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483645;
    }

    private boolean isFaceAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483646;
    }

    public static boolean isRecentAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483644;
    }

    public static boolean isFavoritesAlbum(Cursor cursor) {
        return cursor.getLong(0) == 2147483642;
    }

    protected String getAlbumName(Cursor cursor) {
        if (isCameraAlbum(cursor)) {
            return this.mContext.getString(R.string.album_camera_name);
        }
        if (isScreenshotsAlbum(cursor)) {
            return this.mContext.getString(R.string.album_screenshot_name);
        }
        if (isVideoAlbum(cursor)) {
            return this.mContext.getString(R.string.album_videos_name);
        }
        if (isFaceAlbum(cursor)) {
            return this.mContext.getString(R.string.album_faces_name);
        }
        if (isPanoAlbum(cursor)) {
            return this.mContext.getString(R.string.album_pano_name);
        }
        if (isRecentAlbum(cursor)) {
            return this.mContext.getString(R.string.album_name_recent_discovery);
        }
        if (isFavoritesAlbum(cursor)) {
            return this.mContext.getString(R.string.album_favorites_name);
        }
        return cursor.getString(1);
    }

    public boolean isOwnerShareAlbum(int position) {
        return isOwnerShareAlbum(getCursorByPosition(position));
    }

    protected boolean isOwnerShareAlbum(Cursor cursor) {
        int albumId = cursor.getInt(0);
        if (albumId >= 2147383647 || this.mSharedAlbums == null || !this.mSharedAlbums.containsKey(String.valueOf(albumId))) {
            return false;
        }
        return true;
    }

    protected static boolean isOtherShareAlbum(Cursor cursor) {
        return ShareAlbumManager.isOtherShareAlbumId((long) cursor.getInt(0));
    }

    public boolean isBabyAlbum(int position) {
        return isBabyAlbum(getCursorByPosition(position));
    }

    protected static boolean isBabyAlbum(Cursor cursor) {
        return !TextUtils.isEmpty(cursor.getString(8));
    }

    public boolean isCameraAlbum(int position) {
        return isCameraAlbum(getCursorByPosition(position));
    }

    protected boolean isCameraAlbum(Cursor cursor) {
        return String.valueOf(1).equals(cursor.getString(10));
    }

    private static boolean isScreenshotsAlbum(Cursor cursor) {
        return String.valueOf(2).equals(cursor.getString(10));
    }

    protected static boolean isSystemAlbum(Cursor cursor) {
        String serverId = cursor.getString(10);
        for (Long albumId : Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
            if (String.valueOf(albumId).equals(serverId)) {
                return true;
            }
        }
        return false;
    }

    public boolean isAutoUploadedAlbum(int position) {
        return isAutoUploadedAlbum(getCursorByPosition(position));
    }

    protected static boolean isAutoUploadedAlbum(Cursor cursor) {
        return (cursor.getLong(11) & 1) != 0 || ((isSystemAlbum(cursor) && !isScreenshotsAlbum(cursor)) || isOtherShareAlbum(cursor));
    }

    public String[] getProjection() {
        return PROJECTION;
    }
}
