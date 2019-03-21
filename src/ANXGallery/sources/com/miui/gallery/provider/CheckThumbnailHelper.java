package com.miui.gallery.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.util.HashMap;
import java.util.Map;

public class CheckThumbnailHelper {
    /* JADX WARNING: Missing block: B:10:0x0032, code:
            if (checkOriginalRecordExist(r14, r4.getPath(), r0) != false) goto L_0x0034;
     */
    /* JADX WARNING: Missing block: B:15:0x004d, code:
            if (checkUserCommentSha1Exist(r4.getPath()) == false) goto L_0x004f;
     */
    /* JADX WARNING: Missing block: B:16:0x004f, code:
            r5 = 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Cursor checkThumbnail(Context context, String[] filePaths, boolean strictMode) {
        if (filePaths == null) {
            return null;
        }
        long startTime = System.currentTimeMillis();
        Cursor matrixCursor = new MatrixCursor(new String[]{"check_thumbnail_result"}, filePaths.length);
        Map<String, Long> cachedAlbumMap = new HashMap();
        for (String mediaFile : filePaths) {
            int result = 1;
            try {
                Uri mediaFileUri = Uri.parse(mediaFile);
                if (mediaFileUri != null) {
                    if (strictMode) {
                    }
                    result = 0;
                }
            } catch (Exception e) {
                Log.e("CheckThumbnailHelper", "Failed checking file %s\n %s", mediaFile, e);
            }
            matrixCursor.addRow(new Integer[]{Integer.valueOf(result)});
        }
        Log.d("CheckThumbnailHelper", "Checked %d files, cost %ss", Integer.valueOf(filePaths.length), String.valueOf(System.currentTimeMillis() - startTime));
        return matrixCursor;
    }

    private static boolean checkUserCommentSha1Exist(String filePath) {
        return !TextUtils.isEmpty(ExifUtil.getUserCommentSha1(filePath));
    }

    private static boolean checkOriginalRecordExist(Context context, String filePath, Map<String, Long> cachedAlbumMap) throws Exception {
        if (TextUtils.isEmpty(ExifUtil.getUserCommentSha1(filePath))) {
            return false;
        }
        boolean isThumbnail = false;
        Cursor cursor = null;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String parentPath = FileUtils.getParentFolderPath(StorageUtils.getRelativePath(context, filePath)).toLowerCase();
            if (DownloadPathHelper.isShareFolderRelativePath(parentPath)) {
                cursor = contentResolver.query(ShareImage.SHARE_URI, new String[]{"_id"}, String.format("%s LIKE '%s'", new Object[]{"sha1", sha1}), null, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    isThumbnail = false;
                } else {
                    isThumbnail = true;
                }
            } else {
                Long albumId = (Long) cachedAlbumMap.get(parentPath);
                if (albumId == null) {
                    String where = "serverId = %s";
                    if (CloudUtils.getCameraLocalFile().equalsIgnoreCase(parentPath)) {
                        where = String.format(where, new Object[]{Long.valueOf(1)});
                    } else if (CloudUtils.getScreenshotsLocalFile().equalsIgnoreCase(parentPath)) {
                        where = String.format(where, new Object[]{Long.valueOf(2)});
                    } else {
                        where = String.format("%s LIKE '%s' AND %s AND %s", new Object[]{"localFile", parentPath, "(serverType=0)", "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))"});
                    }
                    cursor = contentResolver.query(Cloud.CLOUD_URI, new String[]{"_id"}, where, null, null);
                    if (cursor != null && cursor.moveToFirst()) {
                        albumId = Long.valueOf(cursor.getLong(0));
                        cachedAlbumMap.put(parentPath, albumId);
                    }
                    BaseMiscUtil.closeSilently(cursor);
                }
                if (albumId != null) {
                    ContentResolver contentResolver2 = contentResolver;
                    cursor = contentResolver2.query(Cloud.CLOUD_URI, new String[]{"_id"}, String.format("%s=%s AND %s LIKE '%s'", new Object[]{"localGroupId", String.valueOf(albumId), "sha1", sha1}), null, null);
                    if (cursor == null || !cursor.moveToFirst()) {
                        isThumbnail = false;
                    } else {
                        isThumbnail = true;
                    }
                }
            }
            BaseMiscUtil.closeSilently(cursor);
            return isThumbnail;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
        }
    }
}
