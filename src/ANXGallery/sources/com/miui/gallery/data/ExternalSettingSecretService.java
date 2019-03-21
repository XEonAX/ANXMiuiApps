package com.miui.gallery.data;

import android.app.Service;
import android.content.Intent;
import android.database.Cursor;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.common.collect.Maps;
import com.miui.gallery.data.IExternalSettingSecretInterface.Stub;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.util.Map;

public class ExternalSettingSecretService extends Service {

    private class Deletor extends Stub {
        private Map<String, FileData> mPendingDeleteMap;

        private Deletor() {
            this.mPendingDeleteMap = Maps.newHashMap();
        }

        public void preSettingSecret(String[] paths) {
            if (!this.mPendingDeleteMap.isEmpty()) {
                throw new IllegalStateException("we are not done with " + this.mPendingDeleteMap + " yet!!");
            } else if (paths != null) {
                for (String path : paths) {
                    preSettingSecret(path);
                }
            }
        }

        private void preSettingSecret(String path) {
            Log.i("ExternalSettingSecretService", "pre-process path: " + path);
            if (!TextUtils.isEmpty(path)) {
                if (new File(path).exists()) {
                    String mimeType = BaseFileMimeUtil.getMimeType(path);
                    if (BaseFileMimeUtil.isImageFromMimeType(mimeType) || BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
                        String relativePath = StorageUtils.getRelativePath(ExternalSettingSecretService.this, path);
                        if (TextUtils.isEmpty(relativePath) || !relativePath.startsWith("MIUI/Gallery/cloud/sharer")) {
                            String folderPath = StorageUtils.getRelativePath(ExternalSettingSecretService.this, FileUtils.getParentFolderPath(path));
                            if (TextUtils.isEmpty(folderPath)) {
                                Log.i("ExternalSettingSecretService", "cannot get folder path through %s, skip ", (Object) path);
                                return;
                            }
                            int localGroupId = getLocalGroupId(folderPath);
                            if (localGroupId == -1) {
                                Log.i("ExternalSettingSecretService", "album '%s' not exists, skip ", folderPath, path);
                                return;
                            }
                            String fileNameInExif = null;
                            String sha1InExif = null;
                            try {
                                String fileTitle = FileUtils.getFileTitle(FileUtils.getFileName(path));
                                UserCommentData data = ExifUtil.getUserCommentData(path);
                                if (data != null) {
                                    fileNameInExif = data.getFileName(fileTitle);
                                    sha1InExif = data.getSha1();
                                }
                                this.mPendingDeleteMap.put(path, new FileData(FileUtils.getSha1(path), sha1InExif, fileNameInExif, localGroupId));
                                return;
                            } catch (Exception e) {
                                throw new RuntimeException(e);
                            }
                        }
                        throw new IllegalArgumentException("unsupported folder: MIUI/Gallery/cloud/sharer");
                    }
                    Log.i("ExternalSettingSecretService", "skip non-media file: " + path);
                    return;
                }
                Log.i("ExternalSettingSecretService", "skip non-exist file: " + path);
            }
        }

        private int getLocalGroupId(String folderPath) {
            Cursor cursor = ExternalSettingSecretService.this.getContentResolver().query(Cloud.CLOUD_URI, new String[]{"_id"}, "localFile like ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{folderPath}, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToNext()) {
                        int i = cursor.getInt(0);
                        return i;
                    }
                    cursor.close();
                } finally {
                    cursor.close();
                }
            }
            return -1;
        }

        public void onFinishSettingSecret(String[] succPaths, String[] failedPaths) {
            if (succPaths != null) {
                for (String succPath : succPaths) {
                    FileData fileData = (FileData) this.mPendingDeleteMap.remove(succPath);
                    if (fileData != null) {
                        Log.i("ExternalSettingSecretService", "about to delete: " + succPath);
                        String sha1 = fileData.mSha1;
                        String sha1InExif = fileData.mSha1InExif;
                        String fileNameInExif = fileData.mFileNameInExif;
                        int localGroupId = fileData.mLocalGroupId;
                        if (!TextUtils.isEmpty(sha1InExif)) {
                            if (TextUtils.isEmpty(fileNameInExif)) {
                                Log.w("ExternalSettingSecretService", "failed to get fileName from exif of " + succPath);
                                deleteInGroup(sha1InExif, FileUtils.getFileName(succPath), localGroupId);
                            } else {
                                deleteInGroup(sha1InExif, fileNameInExif, localGroupId);
                            }
                        }
                        deleteInGroup(sha1, FileUtils.getFileName(succPath), localGroupId);
                    }
                }
            }
            if (!(failedPaths == null || this.mPendingDeleteMap.isEmpty())) {
                for (String failedPath : failedPaths) {
                    this.mPendingDeleteMap.remove(failedPath);
                }
            }
            if (!this.mPendingDeleteMap.isEmpty()) {
                throw new IllegalStateException("setting secret results of paths in " + this.mPendingDeleteMap + " must be provided!");
            }
        }

        private void deleteInGroup(String sha1, String fileName, int localGroupId) {
            Cursor cursor = ExternalSettingSecretService.this.getContentResolver().query(Cloud.CLOUD_URI, new String[]{"_id"}, String.format("%s AND %s = '%s' AND %s = '%s' AND %s = %s", new Object[]{"(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", "sha1", sha1, "fileName", fileName, "localGroupId", String.valueOf(localGroupId)}), null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        long[] ids = new long[cursor.getCount()];
                        for (int i = 0; i < cursor.getCount(); i++) {
                            cursor.moveToPosition(i);
                            ids[i] = cursor.getLong(0);
                        }
                        long[] deleteIds = CloudUtils.deleteById(ExternalSettingSecretService.this, 53, ids);
                        Log.i("ExternalSettingSecretService", "delete %d rows from cloud", Integer.valueOf(deleteIds == null ? 0 : deleteIds.length));
                    }
                    cursor.close();
                } catch (Throwable th) {
                    cursor.close();
                }
            }
        }
    }

    private static final class FileData {
        final String mFileNameInExif;
        final int mLocalGroupId;
        final String mSha1;
        final String mSha1InExif;

        FileData(String sha1, String sha1InExif, String fileNameInExif, int localGroupId) {
            this.mSha1 = sha1;
            this.mSha1InExif = sha1InExif;
            this.mFileNameInExif = fileNameInExif;
            this.mLocalGroupId = localGroupId;
        }
    }

    public IBinder onBind(Intent intent) {
        return new Deletor();
    }
}
