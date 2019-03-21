package com.miui.gallery.data;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.collect.Sets;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.ThumbnailMetaWriter;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.ConcatConverter;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.deprecated.Storage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class OldThumbnailTransferer {
    private final Set<String> mThumbnailWrittenExif;

    private static class SingletonHolder {
        private static OldThumbnailTransferer sInstance = new OldThumbnailTransferer();
    }

    /* synthetic */ OldThumbnailTransferer(AnonymousClass1 x0) {
        this();
    }

    static OldThumbnailTransferer getInstance() {
        return SingletonHolder.sInstance;
    }

    private OldThumbnailTransferer() {
        this.mThumbnailWrittenExif = Sets.newHashSet();
    }

    public static void transfer(Context context) {
        if (!PreferenceHelper.getBoolean(PrefKeys.UPGRADE_OLD_THUMBNAIL_TRANSFERED, false)) {
            BackgroundJobService.startJobTransferOldThumbnail(context);
        }
    }

    void transfer() {
        int[] maxTransferCount = new int[]{500};
        List<String> transferedUbiIds = new ArrayList();
        List<String> transferedUbiServerIds = new ArrayList();
        transfer(GalleryCloudUtils.CLOUD_URI, maxTransferCount, transferedUbiIds, transferedUbiServerIds);
        transferSubUbiImage(GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, "ownerSubUbifocus", "cloud", transferedUbiIds, transferedUbiServerIds);
        transferedUbiIds.clear();
        transferedUbiServerIds.clear();
        transfer(GalleryCloudUtils.SHARE_IMAGE_URI, maxTransferCount, transferedUbiIds, transferedUbiServerIds);
        transferSubUbiImage(GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI, "shareSubUbifocus", "shareImage", transferedUbiIds, transferedUbiServerIds);
        for (Object folder : Storage.getCloudThumbnailFilePath()) {
            MediaFileUtils.deleteFileType(FileType.FOLDER, Log.i("OldThumbnailTransferer", "thumbnails transfered. delete old thumbnail folder: %s", folder));
        }
        for (Object file : Storage.getCloudThumbnailModifiedTimeMapFilePath()) {
            Log.i("OldThumbnailTransferer", "thumbnails transfered. delete thumbnail modified time file: %s", file);
            MediaFileUtils.deleteFileType(FileType.THUMBNAIL, file);
        }
        PreferenceHelper.putBoolean(PrefKeys.UPGRADE_OLD_THUMBNAIL_TRANSFERED, true);
    }

    private void transfer(Uri uri, int[] maxTransferCount, List<String> transferedUbiIds, List<String> transferedUbiServerIds) {
        if (maxTransferCount[0] > 0) {
            final String[] thumbnailFolders = Storage.getCloudThumbnailFilePath();
            Context sGetAndroidContext = GalleryApp.sGetAndroidContext();
            String[] strArr = new String[]{"*"};
            Object[] objArr = new Object[]{"serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "serverStatus", "serverStatus", "serverStatus", "custom", "localFlag", Integer.valueOf(2), "thumbnailFile"};
            final int[] iArr = maxTransferCount;
            final Uri uri2 = uri;
            final List<String> list = transferedUbiIds;
            final List<String> list2 = transferedUbiServerIds;
            AnonymousClass1 anonymousClass1 = new QueryHandler<Void>() {
                public Void handle(Cursor cursor) {
                    if (cursor != null) {
                        while (cursor.moveToNext() && iArr[0] > 0) {
                            DBImage dbImage = CloudUtils.createDBImageByUri(uri2, cursor);
                            if (OldThumbnailTransferer.this.transfer(dbImage, thumbnailFolders)) {
                                int[] iArr = iArr;
                                iArr[0] = iArr[0] - 1;
                                if (dbImage.isUbiFocus()) {
                                    list.add(dbImage.getId());
                                    list2.add(dbImage.getServerId());
                                }
                            }
                        }
                    }
                    return null;
                }
            };
            SafeDBUtil.safeQuery(sGetAndroidContext, uri, strArr, String.format(Locale.US, "(%s=%d OR %s=%d) AND (%s IS NULL OR %s='' OR %s='%s') AND %s!=%d AND %s NOT NULL", objArr), null, "mixedDateTime DESC", (QueryHandler) anonymousClass1);
        }
    }

    private void transferSubUbiImage(final Uri uri, String subUbiTable, String mainUbiTable, List<String> transferedUbiIds, List<String> transferedUbiServerIds) {
        ConcatConverter<String> converter = new ConcatConverter<String>() {
            public String convertToString(String src) {
                return TextUtils.isEmpty(src) ? null : "'" + src + "'";
            }
        };
        String ubiIds = GalleryUtils.concatAll(transferedUbiIds, ",", converter);
        String ubiServerIds = GalleryUtils.concatAll(transferedUbiServerIds, ",", converter);
        if (!TextUtils.isEmpty(ubiIds) || !TextUtils.isEmpty(ubiServerIds)) {
            final String[] thumbnailFolders = Storage.getCloudThumbnailFilePath();
            String str = subUbiTable;
            SafeDBUtil.safeQuery(GalleryDBHelper.getInstance().getReadableDatabase(), str, new String[]{"*"}, String.format(Locale.US, "(%s IN (%s) OR %s IN (%s))", new Object[]{"ubiLocalId", ubiIds, "ubiServerId", ubiServerIds}), null, null, new QueryHandler<Void>() {
                public Void handle(Cursor cursor) {
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            OldThumbnailTransferer.this.transfer(CloudUtils.createDBImageByUri(uri, cursor), thumbnailFolders);
                        }
                    }
                    return null;
                }
            });
        }
    }

    private boolean inThumbnailFolder(String[] thumbnailFolders, String thumbnail) {
        for (String thumbnailFolder : thumbnailFolders) {
            if (ExtraTextUtils.startsWithIgnoreCase(thumbnail, thumbnailFolder)) {
                return true;
            }
        }
        return false;
    }

    private boolean transfer(DBImage dbImage, String[] thumbnailFolders) {
        String id = dbImage.getId();
        Object thumbnail = dbImage.getThumbnailFile();
        String sha1 = dbImage.getSha1();
        String origin = RequestCloudItem.getDownloadOriginalFilePath(dbImage);
        ContentValues values;
        if (!TextUtils.isEmpty(origin)) {
            values = new ContentValues();
            values.putNull("thumbnailFile");
            CloudUtils.updateToLocalDB(dbImage.getBaseUri(), values, dbImage.getId());
            Log.i("OldThumbnailTransferer", "original file %s for %s exists. skip transfering", origin, id);
            return false;
        } else if (!TextUtils.isEmpty(thumbnail) && inThumbnailFolder(thumbnailFolders, thumbnail) && new File(thumbnail).exists()) {
            String destFileName;
            String destFilePath;
            if (dbImage.isSecretItem()) {
                if (!refillMetaForSecretItem(thumbnail, dbImage)) {
                    Log.e("OldThumbnailTransferer", "failed to refill meta for %s. end transfering", thumbnail);
                    return false;
                }
            } else if (!this.mThumbnailWrittenExif.contains(sha1)) {
                if (new ThumbnailMetaWriter(dbImage).write(thumbnail)) {
                    this.mThumbnailWrittenExif.add(sha1);
                } else {
                    Log.e("OldThumbnailTransferer", "failed to write exif for %s. end transfering", thumbnail);
                    return false;
                }
            }
            if (dbImage.isSecretItem()) {
                destFileName = FileUtils.getFileName(thumbnail);
            } else {
                destFileName = DownloadPathHelper.getThumbnailDownloadFileNameNotSecret(dbImage);
            }
            Object destFilePath2 = BaseFileUtils.concat(DownloadPathHelper.getDownloadFolderPath(dbImage), destFileName);
            if (!new File(destFilePath2).exists()) {
                destFilePath2 = CloudUtils.copyImage(thumbnail, destFilePath2, dbImage.isSecretItem());
            } else if (dbImage.isSecretItem() || isTheSameItem(dbImage, destFilePath2)) {
                Log.i("OldThumbnailTransferer", "destFile %s already exists", destFilePath2);
            } else {
                Log.i("OldThumbnailTransferer", "rename before transfering %s", destFilePath2);
                CloudUtils.renameForPhotoConflict(destFilePath2);
                destFilePath2 = CloudUtils.copyImage(thumbnail, destFilePath2, dbImage.isSecretItem());
            }
            if (TextUtils.equals(destFilePath2, thumbnail)) {
                Log.w("OldThumbnailTransferer", "failed to transfer %s to ", thumbnail, destFilePath2);
                return false;
            }
            values = new ContentValues();
            values.put("thumbnailFile", destFilePath2);
            SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), dbImage.getBaseUri(), values, String.format(Locale.US, "%s=?", new Object[]{"_id"}), new String[]{String.valueOf(id)});
            Log.i("OldThumbnailTransferer", "transfered %s to %s successfully", thumbnail, destFilePath2);
            return true;
        } else {
            Log.i("OldThumbnailTransferer", "skip transfering thumbnail %s for %s", thumbnail, id);
            return false;
        }
    }

    private boolean isTheSameItem(DBImage dbImage, String filePath) {
        try {
            String sha1 = dbImage.getSha1();
            UserCommentData data = ExifUtil.getUserCommentData(filePath);
            if (TextUtils.equals(sha1, data != null ? data.getSha1() : null) || TextUtils.equals(sha1, FileUtils.getSha1(filePath))) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private boolean refillMetaForSecretItem(String file, DBImage dbImage) {
        boolean ret = false;
        String tmpFile = file + ".tmp";
        if (!GalleryAes.decryptFile(file, tmpFile, dbImage.getSecretKey())) {
            Log.w("OldThumbnailTransferer", "fail to decrypt file %s", file);
        } else if (!new ThumbnailMetaWriter(dbImage).write(tmpFile)) {
            Log.w("OldThumbnailTransferer", "fail to write meta for %s", file);
        } else if (GalleryAes.encryptFile(tmpFile, file, dbImage.getSecretKey())) {
            ret = true;
            Log.i("OldThumbnailTransferer", "refill meta for file %s successfully", (Object) file);
        } else {
            Log.w("OldThumbnailTransferer", "fail to encrypt file %s", file);
        }
        new File(tmpFile).delete();
        return ret;
    }
}
