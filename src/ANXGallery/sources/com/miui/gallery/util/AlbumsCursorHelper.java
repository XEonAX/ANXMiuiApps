package com.miui.gallery.util;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.ShareAlbumManager;

public class AlbumsCursorHelper {
    public static final String[] ALL_ALBUMS_PROJECTION = new String[]{"_id", "name", "cover_id", "cover_path", "cover_sha1", "cover_sync_state", "media_count", "face_people_id", "baby_info", "thumbnail_info", "serverId", "attributes", "immutable", "top_time", "sortBy", "baby_sharer_info", "local_path"};
    private LongSparseArray<Integer> mAlbumId2CursorPosMapping;
    private Context mContext;
    private Cursor mCursor;

    public AlbumsCursorHelper(Context context) {
        this.mContext = context;
    }

    public boolean isAlbumDataValid(long albumId) {
        return (this.mAlbumId2CursorPosMapping == null || this.mAlbumId2CursorPosMapping.get(albumId) == null) ? false : true;
    }

    public synchronized void setAlbumsData(Cursor cursor) {
        if (this.mAlbumId2CursorPosMapping != null) {
            this.mAlbumId2CursorPosMapping.clear();
        }
        if (cursor == null || cursor.isClosed()) {
            this.mCursor = null;
            this.mAlbumId2CursorPosMapping = null;
        } else {
            this.mCursor = cursor;
            if (this.mAlbumId2CursorPosMapping == null) {
                this.mAlbumId2CursorPosMapping = new LongSparseArray(cursor.getCount());
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                this.mAlbumId2CursorPosMapping.put(getAlbumId(cursor), Integer.valueOf(cursor.getPosition()));
                cursor.moveToNext();
            }
        }
    }

    private boolean moveCursorToPosition(int position) {
        return this.mCursor != null && this.mCursor.moveToPosition(position);
    }

    public long getAlbumId(int position) {
        moveCursorToPosition(position);
        return getAlbumId(this.mCursor);
    }

    private long getAlbumId(Cursor cursor) {
        return (long) cursor.getInt(0);
    }

    public String getAlbumLocalPath(Long albumId) {
        return getAlbumLocalPath(((Integer) this.mAlbumId2CursorPosMapping.get(albumId.longValue())).intValue());
    }

    private String getAlbumLocalPath(int position) {
        moveCursorToPosition(position);
        return getAlbumLocalPath(this.mCursor);
    }

    private String getAlbumLocalPath(Cursor cursor) {
        return cursor.getString(16);
    }

    public String getAlbumName(long albumId) {
        return getAlbumName(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    public String getAlbumName(int position) {
        moveCursorToPosition(position);
        return getAlbumName(this.mCursor);
    }

    private String getAlbumName(Cursor cursor) {
        return getAlbumName(this.mContext, cursor.getLong(0), cursor.getString(10), cursor.getString(1));
    }

    public static String getAlbumName(Context context, long albumId, String albumServerId, String albumName) {
        if (isVideoAlbum(albumId)) {
            return context.getString(R.string.album_videos_name);
        }
        if (isFaceAlbum(albumId)) {
            return context.getString(R.string.album_faces_name);
        }
        if (isPanoAlbum(albumId)) {
            return context.getString(R.string.album_pano_name);
        }
        if (isCameraAlbum(albumServerId)) {
            return context.getString(R.string.album_camera_name);
        }
        if (isScreenshotsAlbum(albumServerId)) {
            return context.getString(R.string.album_screenshot_name);
        }
        if (isRecentAlbum(albumId)) {
            return context.getString(R.string.album_name_recent_discovery);
        }
        if (isFavoritesAlbum(albumId)) {
            return context.getString(R.string.album_favorites_name);
        }
        return albumName;
    }

    public long getAttributes(long albumId) {
        return getAttributes(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    public long getAttributes(int position) {
        moveCursorToPosition(position);
        return getAttributes(this.mCursor);
    }

    private long getAttributes(Cursor cursor) {
        return cursor.getLong(11);
    }

    public String getServerId(long albumId) {
        return getServerId(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    public String getServerId(int position) {
        moveCursorToPosition(position);
        return getServerId(this.mCursor);
    }

    private String getServerId(Cursor cursor) {
        return cursor.getString(10);
    }

    private static boolean isVideoAlbum(long id) {
        return id == 2147483647L;
    }

    public static boolean isFaceAlbum(long albumId) {
        return albumId == 2147483646;
    }

    public static boolean isRecentAlbum(long id) {
        return id == 2147483644;
    }

    public static boolean isPanoAlbum(long id) {
        return id == 2147483645;
    }

    private static boolean isCameraAlbum(String serverId) {
        return String.valueOf(1).equals(serverId);
    }

    private static boolean isFavoritesAlbum(long albumId) {
        return 2147483642 == albumId;
    }

    public boolean isOtherShareAlbum(long albumId) {
        return isOtherShareAlbum(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private boolean isOtherShareAlbum(int position) {
        moveCursorToPosition(position);
        return isOtherShareAlbum(this.mCursor);
    }

    private boolean isOtherShareAlbum(Cursor cursor) {
        return ShareAlbumManager.isOtherShareAlbumId((long) cursor.getInt(0));
    }

    private static boolean isScreenshotsAlbum(Cursor cursor) {
        return isScreenshotsAlbum(cursor.getString(10));
    }

    private static boolean isScreenshotsAlbum(String serverId) {
        return String.valueOf(2).equals(serverId);
    }

    private static boolean isSystemAlbum(Cursor cursor) {
        String serverId = cursor.getString(10);
        for (Long albumId : Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
            if (String.valueOf(albumId).equals(serverId)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAutoUploadedAlbum(Cursor cursor) {
        return (cursor.getLong(11) & 1) != 0 || ((isSystemAlbum(cursor) && !isScreenshotsAlbum(cursor)) || isOtherShareAlbum(cursor));
    }

    public boolean isLocalAlbum(long albumId) {
        return isLocalAlbum(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private boolean isLocalAlbum(int position) {
        moveCursorToPosition(position);
        return isLocalAlbum(this.mCursor);
    }

    private boolean isLocalAlbum(Cursor cursor) {
        return !isAutoUploadedAlbum(cursor);
    }

    public boolean isBabyAlbum(long albumId) {
        return isBabyAlbum(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private boolean isBabyAlbum(int position) {
        moveCursorToPosition(position);
        return isBabyAlbum(this.mCursor);
    }

    protected boolean isBabyAlbum(Cursor cursor) {
        return !TextUtils.isEmpty(cursor.getString(8));
    }

    public String getBabyAlbumPeopleId(long albumId) {
        return getBabyAlbumPeopleId(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private String getBabyAlbumPeopleId(int position) {
        moveCursorToPosition(position);
        return getBabyAlbumPeopleId(this.mCursor);
    }

    private String getBabyAlbumPeopleId(Cursor cursor) {
        return cursor.getString(7);
    }

    public String getThumbnailInfoOfBaby(long albumId) {
        return getThumbnailInfoOfBaby(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private String getThumbnailInfoOfBaby(int position) {
        moveCursorToPosition(position);
        return getThumbnailInfoOfBaby(this.mCursor);
    }

    private String getThumbnailInfoOfBaby(Cursor cursor) {
        return cursor.getString(9);
    }

    public String getBabyInfo(long albumId) {
        return getBabyInfo(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private String getBabyInfo(int position) {
        moveCursorToPosition(position);
        return getBabyInfo(this.mCursor);
    }

    private String getBabyInfo(Cursor cursor) {
        return cursor.getString(8);
    }

    public String getBabySharerInfo(long albumId) {
        return getBabySharerInfo(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    private String getBabySharerInfo(int position) {
        moveCursorToPosition(position);
        return getBabySharerInfo(this.mCursor);
    }

    private String getBabySharerInfo(Cursor cursor) {
        return cursor.getString(15);
    }

    public boolean albumUnwriteable(long albumId) {
        return albumUnwriteable(((Integer) this.mAlbumId2CursorPosMapping.get(albumId)).intValue());
    }

    public boolean albumUnwriteable(int position) {
        moveCursorToPosition(position);
        if (this.mCursor.getInt(12) == 1) {
            return true;
        }
        return false;
    }
}
