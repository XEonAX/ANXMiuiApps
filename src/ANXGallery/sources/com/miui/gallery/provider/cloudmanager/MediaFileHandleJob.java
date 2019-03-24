package com.miui.gallery.provider.cloudmanager;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareAlbum;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import miui.provider.ExtraTelephony.DeletableSyncColumns;
import miui.yellowpage.YellowPageContract.Search;

class MediaFileHandleJob {
    private String mAlbumDir;
    private long mId;
    private String mLocalFile;
    private int mLocalFlag;
    private int mReason;
    private String mServerAlbumId;
    private String mThumbnail;

    private MediaFileHandleJob(String serverAlbumId, long id, String thumbnail, String localFile, String albumDir, String fileName, int localFlag, int reason) {
        this.mId = id;
        this.mThumbnail = thumbnail;
        this.mLocalFile = localFile;
        this.mAlbumDir = albumDir;
        this.mLocalFlag = localFlag;
        this.mServerAlbumId = serverAlbumId;
        this.mReason = reason;
    }

    public static MediaFileHandleJob from(ContentResolver resolver, Cursor cursor, long dirtyId, int reason) {
        Cursor album = null;
        try {
            String serverAlbumId;
            long id;
            String localPath = cursor.getString(7);
            String thumbPath = cursor.getString(8);
            String fileName = cursor.getString(6);
            int localFlag = cursor.getInt(2);
            long id2 = cursor.getLong(0);
            String albumDir = null;
            ContentResolver contentResolver;
            if (cursor.getLong(3) == -1000) {
                albumDir = "MIUI/Gallery/cloud/.secretAlbum";
                serverAlbumId = null;
                id = id2;
            } else if (ShareMediaManager.isOtherShareMediaId(dirtyId)) {
                contentResolver = resolver;
                album = contentResolver.query(ShareAlbum.OTHER_SHARE_URI, new String[]{"albumId"}, "_id=?", new String[]{String.valueOf(albumId)}, null);
                if (album == null || !album.moveToFirst()) {
                    serverAlbumId = null;
                } else {
                    serverAlbumId = album.getString(0);
                }
                albumDir = CloudManager.genRelativePath(null, true);
                id = ShareMediaManager.convertToMediaId(id2);
            } else {
                contentResolver = resolver;
                album = contentResolver.query(Cloud.CLOUD_URI, CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(albumId)}, null);
                if (album != null && album.moveToFirst()) {
                    albumDir = album.getString(7);
                    if (TextUtils.isEmpty(albumDir)) {
                        albumDir = CloudManager.genRelativePath(album.getString(6), false);
                        serverAlbumId = null;
                        id = id2;
                    }
                }
                serverAlbumId = null;
                id = id2;
            }
            MediaFileHandleJob mediaFileHandleJob = new MediaFileHandleJob(serverAlbumId, id, thumbPath, localPath, albumDir, fileName, localFlag, reason);
            return mediaFileHandleJob;
        } finally {
            if (album != null) {
                album.close();
            }
        }
    }

    /* JADX WARNING: Missing block: B:4:0x000b, code:
            doCopy(r5, r0);
     */
    /* JADX WARNING: Missing block: B:6:0x0010, code:
            doDelete(r5, r0);
     */
    /* JADX WARNING: Missing block: B:7:0x0013, code:
            if (r0 == false) goto L_?;
     */
    /* JADX WARNING: Missing block: B:11:?, code:
            return true;
     */
    /* JADX WARNING: Missing block: B:12:?, code:
            return true;
     */
    /* JADX WARNING: Missing block: B:13:?, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean run(Context context) {
        boolean local = false;
        switch (this.mLocalFlag) {
            case -2:
                local = true;
                break;
            case -1:
                local = true;
                break;
            case 2:
            case 11:
                break;
            case 5:
            case 7:
            case 8:
                doMove(context);
                return true;
            case 6:
            case 9:
                break;
            default:
                return false;
        }
    }

    private void doMove(Context context) {
        editFile(context, false, false);
    }

    private void doCopy(Context context, boolean local) {
        editFile(context, true, local);
    }

    private void editFile(Context context, boolean copy, boolean local) {
        File src;
        Object des;
        Log.d("CloudManager.MediaFileHandleJob", "editFile");
        boolean success = false;
        Object values = new ContentValues();
        if (!TextUtils.isEmpty(this.mLocalFile)) {
            src = new File(this.mLocalFile);
            des = getDesFile(context, src);
            if (des == src) {
                success = true;
                values.putNull("thumbnailFile");
            } else if (des != null) {
                if (copy) {
                    success = FileUtils.copyFile(src, des);
                } else {
                    success = FileUtils.move(src, des);
                    if (success) {
                        MediaFileUtils.deleteFileType(FileType.NORMAL, src.getAbsolutePath());
                    }
                }
                if (success) {
                    Log.d("CloudManager.MediaFileHandleJob", "edit localFile finish, with des(%s)", des);
                    values.put("localFile", des.getAbsolutePath());
                    values.putNull("thumbnailFile");
                    notifyMediaProviderScanFile(des.getAbsolutePath());
                }
            }
        }
        if (!(success || TextUtils.isEmpty(this.mThumbnail))) {
            src = new File(this.mThumbnail);
            des = getDesFile(context, src);
            if (des == src) {
                success = true;
                values.putNull("localFile");
            } else if (des != null) {
                if (copy) {
                    success = FileUtils.copyFile(src, des);
                } else {
                    success = FileUtils.move(src, des);
                    if (success) {
                        MediaFileUtils.deleteFileType(FileType.NORMAL, src.getAbsolutePath());
                    }
                }
                if (success) {
                    Log.d("CloudManager.MediaFileHandleJob", "edit thumbnail finish, with des(%s)", des);
                    values.put("thumbnailFile", des.getAbsolutePath());
                    values.putNull("localFile");
                    notifyMediaProviderScanFile(des.getAbsolutePath());
                }
            }
        }
        int count = 0;
        if (success) {
            if (copy && local) {
                values.put("localFlag", Integer.valueOf(8));
            }
            Log.d("CloudManager.MediaFileHandleJob", "edit success, update db: %s", values);
            if (ShareMediaManager.isOtherShareMediaId(this.mId)) {
                long originId = ShareMediaManager.getOriginalMediaId(this.mId);
                count = context.getContentResolver().update(ShareImage.SHARE_URI, values, "_id=?", new String[]{String.valueOf(originId)});
            } else {
                count = context.getContentResolver().update(Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(this.mId)});
            }
        } else {
            Log.e("CloudManager.MediaFileHandleJob", "both thumbnail and localFile edit failed.");
        }
        Log.d("CloudManager.MediaFileHandleJob", "edit finish with updates(%d)", Integer.valueOf(count));
    }

    private File getDesFile(Context context, File src) {
        String fileParent = StorageUtils.getRelativePath(context, src.getParent());
        if (TextUtils.isEmpty(fileParent)) {
            Log.w("CloudManager.MediaFileHandleJob", "Could't get relative path for %s", src.getParent());
            return null;
        } else if (fileParent.equalsIgnoreCase(this.mAlbumDir)) {
            Log.w("CloudManager.MediaFileHandleJob", "skip copy localFile(%s), album(%s)", fileParent, this.mAlbumDir);
            return src;
        } else {
            String destFileName = src.getName();
            boolean isOtherSharedMedia = ShareMediaManager.isOtherShareMediaId(this.mId);
            if (isOtherSharedMedia) {
                destFileName = ShareMediaManager.getMediaFileName(destFileName, this.mServerAlbumId);
                Log.d("CloudManager.MediaFileHandleJob", "Other shared dest filename %s", (Object) destFileName);
            }
            File folder = new File(StorageUtils.getSafePathInPriorStorage(this.mAlbumDir));
            if (!folder.exists()) {
                folder.mkdirs();
            }
            File des = new File(folder, destFileName);
            if (des.exists()) {
                File tmp = FileUtils.forceCreate(des.getParent(), des.getName(), 0);
                if (FileUtils.move(des, tmp)) {
                    ContentValues rename = new ContentValues();
                    if (isOtherSharedMedia) {
                        rename.put("thumbnailFile", tmp.getAbsolutePath());
                        context.getContentResolver().update(ShareImage.SHARE_URI, rename, "thumbnailFile=?", new String[]{des.getAbsolutePath()});
                    } else {
                        rename.put("thumbnailFile", tmp.getAbsolutePath());
                        context.getContentResolver().update(Cloud.CLOUD_URI, rename, "thumbnailFile=?", new String[]{des.getAbsolutePath()});
                    }
                }
            }
            return des.exists() ? null : des;
        }
    }

    public void doDelete(Context context, boolean local) {
        if (!TextUtils.isEmpty(this.mThumbnail)) {
            Log.d("CloudManager.MediaFileHandleJob", "delete thumbnail(%s)", this.mThumbnail);
            if (delete(context, this.mThumbnail)) {
                DeleteRecorder.record(new DeleteRecord(this.mReason, this.mThumbnail, "CloudManager.MediaFileHandleJob"));
            }
        }
        if (!TextUtils.isEmpty(this.mLocalFile)) {
            Log.d("CloudManager.MediaFileHandleJob", "delete localFile(%s)", this.mLocalFile);
            if (delete(context, this.mLocalFile)) {
                DeleteRecorder.record(new DeleteRecord(this.mReason, this.mLocalFile, "CloudManager.MediaFileHandleJob"));
            }
        }
        if (local) {
            if (ShareMediaManager.isOtherShareMediaId(this.mId)) {
                long originId = ShareMediaManager.getOriginalMediaId(this.mId);
                context.getContentResolver().delete(ShareImage.SHARE_URI, "_id=?", new String[]{String.valueOf(originId)});
            } else {
                context.getContentResolver().delete(Cloud.CLOUD_URI, "_id=?", new String[]{String.valueOf(this.mId)});
            }
        }
        if (!TextUtils.isEmpty(this.mLocalFile)) {
            long lastModify = new File(this.mLocalFile).lastModified();
            long interval = (System.currentTimeMillis() - lastModify) / 1000;
            if (lastModify > 0 && interval < 60) {
                Map<String, String> params = new HashMap();
                params.put(Search.LOCAL_SEARCH, String.valueOf(local));
                BaseSamplingStatHelper.recordCountEvent("Sync", "sync_photo_delete_in_one_minute", params);
                BaseSamplingStatHelper.recordNumericPropertyEvent("Sync", "sync_photo_delete_interval", interval);
            }
        }
    }

    private boolean delete(Context context, String path) {
        File src = new File(path);
        String fileParent = StorageUtils.getRelativePath(context, src.getParent());
        if (TextUtils.isEmpty(fileParent)) {
            Log.w("CloudManager.MediaFileHandleJob", "Could't get relative path for %s", src.getParent());
            return false;
        } else if (fileParent.equalsIgnoreCase(this.mAlbumDir)) {
            MediaFileUtils.deleteFileType(FileType.NORMAL, path);
            Log.d("CloudManager.MediaFileHandleJob", DeletableSyncColumns.DELETED);
            return true;
        } else {
            Log.w("CloudManager.MediaFileHandleJob", "file not exist, skip.");
            return false;
        }
    }

    private static void notifyMediaProviderScanFile(String filePath) {
        MediaFileUtils.triggerMediaScan(true, new File(filePath));
    }
}
