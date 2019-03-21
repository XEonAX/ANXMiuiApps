package com.miui.gallery.provider;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.model.FavoriteInfo;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Favorites;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;

public class FavoritesManager {
    private static final String[] PROJECTION = new String[]{"_id", "sha1", "localGroupId", "size"};
    private static String TAG = "FavoritesManager";

    private static Cursor queryCloudItemByPath(Context context, String path, boolean strictMode) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        if (FileUtils.isFileExist(path)) {
            try {
                UserCommentData data = ExifUtil.getUserCommentData(path);
                String exifSha1 = data != null ? data.getSha1() : null;
                if (TextUtils.isEmpty(StorageUtils.getRelativePath(context, FileUtils.getParentFolderPath(path)))) {
                    Log.w(TAG, "Could't get album path for %s", path);
                    return null;
                } else if (TextUtils.isEmpty(exifSha1)) {
                    Cursor cursor = context.getContentResolver().query(Cloud.CLOUD_URI, PROJECTION, "fileName LIKE ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)", new String[]{FileUtils.getFileName(path), albumPath}, null);
                    if (!strictMode || cursor == null || !cursor.moveToFirst() || cursor.getLong(3) == FileUtils.getFileSize(path)) {
                        return cursor;
                    }
                    Log.w(TAG, "file size not equals, can not favorite: %s", path);
                    BaseMiscUtil.closeSilently(cursor);
                    return null;
                } else {
                    return context.getContentResolver().query(Cloud.CLOUD_URI, PROJECTION, "sha1 = ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)", new String[]{exifSha1, albumPath}, null);
                }
            } catch (Exception e) {
                Log.w("StorageItem", "exif exifSha1 read fail %s", e);
                return null;
            }
        }
        return context.getContentResolver().query(Cloud.CLOUD_URI, PROJECTION, "(localFile LIKE ? or thumbnailFile LIKE ?) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{path, path}, null);
    }

    public static FavoriteInfo queryFavoriteInfoByFilePath(String filePath, boolean strictMode) {
        FavoriteInfo info = new FavoriteInfo();
        Context context = GalleryApp.sGetAndroidContext();
        try {
            Cursor cursor = !TextUtils.isEmpty(filePath) ? queryCloudItemByPath(context, filePath, strictMode) : null;
            if (cursor != null && cursor.moveToFirst()) {
                info.setFavoriteUsable(!((cursor.getLong(2) > -1000 ? 1 : (cursor.getLong(2) == -1000 ? 0 : -1)) == 0));
                if (info.isFavoriteUsable()) {
                    String sha1 = cursor.getString(1);
                    Integer isFavorite = (Integer) SafeDBUtil.safeQuery(context, Favorites.URI, new String[]{"isFavorite"}, "sha1 = ?", new String[]{sha1}, null, new QueryHandler<Integer>() {
                        public Integer handle(Cursor cursor) {
                            if (cursor == null || !cursor.moveToFirst()) {
                                return Integer.valueOf(0);
                            }
                            return Integer.valueOf(cursor.getInt(0));
                        }
                    });
                    boolean z = isFavorite != null && isFavorite.intValue() > 0;
                    info.setFavorite(z);
                }
            }
            BaseMiscUtil.closeSilently(cursor);
        } catch (Throwable ex) {
            Log.e(TAG, ex);
            BaseMiscUtil.closeSilently(null);
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            throw th;
        }
        return info;
    }
}
