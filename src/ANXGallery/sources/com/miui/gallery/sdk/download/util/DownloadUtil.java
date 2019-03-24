package com.miui.gallery.sdk.download.util;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.LocalUbifocus;
import com.miui.gallery.data.UbiIndexMapper;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.sdk.download.DownloadOptions;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.ImageDownloader;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadItem.Builder;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.os.C0002FileUtils;
import miui.yellowpage.Tag.TagWebService.CommonResult;

public class DownloadUtil {
    private static final int[] DOWNLOAD_FILE_PRIORITY = new int[]{9, 10, 11};

    public static boolean isOriginalFileValid(String originalFilePath, DBImage dbImage) {
        return isOriginalFileValid(originalFilePath, dbImage, false);
    }

    public static boolean isOriginalFileValid(String originalFilePath, DBImage dbImage, boolean report) {
        if (TextUtils.isEmpty(originalFilePath)) {
            Log.d("DownloadUtil", "Empty original file path for %s", (Object) dbImage);
            return false;
        }
        File file = new File(originalFilePath);
        if (file.exists() && file.isFile()) {
            Map<String, String> params;
            if (file.length() < dbImage.getSize()) {
                Log.d("DownloadUtil", "File [%s] size [%d] is smaller than expected [%d] for image %s", originalFilePath, Long.valueOf(file.length()), Long.valueOf(dbImage.getSize()), dbImage);
                if (report) {
                    params = new HashMap();
                    params.put("Params", String.format("ServerId:%s, expectedSize:%d, realSize:%d", new Object[]{dbImage.getServerId(), Long.valueOf(dbImage.getSize()), Long.valueOf(fileSize)}));
                    BaseSamplingStatHelper.recordErrorEvent(String.format("file_download_%s", new Object[]{"origin"}), "file_download_wrong_size", params);
                }
                return false;
            }
            String fileSha1 = FileUtils.getSha1(file);
            if (fileSha1 != null && fileSha1.equalsIgnoreCase(dbImage.getSha1())) {
                return true;
            }
            String str = "DownloadUtil";
            String str2 = "File [%s]'s sha1 [%s] is different from [%s], %s";
            Object[] objArr = new Object[4];
            objArr[0] = originalFilePath;
            objArr[1] = fileSha1 == null ? "null" : fileSha1;
            objArr[2] = dbImage.getSha1();
            objArr[3] = dbImage;
            Log.d(str, str2, objArr);
            if (report) {
                params = new HashMap();
                params.put("Params", String.format("ServerId:%s, expectedSha1:%s, realSha1:%s", new Object[]{dbImage.getServerId(), dbImage.getSha1(), fileSha1}));
                BaseSamplingStatHelper.recordErrorEvent(String.format("file_download_%s", new Object[]{"origin"}), "file_download_wrong_sha1", params);
            }
            return false;
        }
        Log.d("DownloadUtil", "File [%s] doesn't exist or is not a file %s", originalFilePath, dbImage);
        return false;
    }

    public static boolean isThumbnailFileValid(String thumbnailFile, DBImage dbImage) {
        if (TextUtils.isEmpty(thumbnailFile)) {
            return false;
        }
        return TextUtils.equals(dbImage.getSha1(), ExifUtil.getUserCommentSha1(thumbnailFile));
    }

    public static boolean isMicro(DownloadType type) {
        return type == DownloadType.MICRO;
    }

    public static boolean isThumbnail(DownloadType type) {
        return type == DownloadType.THUMBNAIL || type == DownloadType.THUMBNAIL_BATCH;
    }

    public static boolean isOrigin(DownloadType type) {
        return type == DownloadType.ORIGIN || type == DownloadType.ORIGIN_FORCE || type == DownloadType.ORIGIN_BATCH;
    }

    public static String checkAndReturnValidFilePathForType(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        if (isMicro(downloadType)) {
            return checkAndReturnValidMicroFilePath(dbImage, downloadType);
        }
        if (isThumbnail(downloadType)) {
            return checkAndReturnValidThumbnailFilePath(dbImage, downloadType);
        }
        if (isOrigin(downloadType)) {
            return checkAndReturnValidOriginalFilePath(dbImage, downloadType);
        }
        throw new UnsupportedOperationException("bad checktype, checktype=" + downloadType);
    }

    public static String getDownloadTempFilePath(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        if (isMicro(downloadType)) {
            return BaseFileUtils.concat(StorageUtils.getMicroThumbnailTempDirectory(), dbImage.getFileName() + ".temp");
        }
        if (isThumbnail(downloadType)) {
            return BaseFileUtils.concat(StorageUtils.getThumbnailTempDirectory(), dbImage.getSha1() + "." + dbImage.getId());
        }
        if (isOrigin(downloadType)) {
            return BaseFileUtils.concat(StorageUtils.getOriginTempDirectory(), dbImage.getSha1() + "." + dbImage.getId());
        }
        return null;
    }

    public static ErrorCode ensureDownloadFolder(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return ErrorCode.UNKNOWN;
        }
        String folder = getDownloadFolderPath(dbImage, downloadType);
        boolean shouldHide = isMicro(downloadType) || dbImage.isSecretItem();
        return ensureFolder(folder, shouldHide);
    }

    public static String getDownloadFolderPath(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        if (isMicro(downloadType)) {
            return StorageUtils.getPriorMicroThumbnailDirectory();
        }
        if (isThumbnail(downloadType) || isOrigin(downloadType)) {
            return DownloadPathHelper.getDownloadFolderPath(dbImage);
        }
        return null;
    }

    public static String getDownloadFilePath(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        String fileName = getDownloadFileName(dbImage, downloadType);
        if (isOrigin(downloadType) && (dbImage.isUbiFocus() || dbImage.isSubUbiFocus())) {
            fileName = LocalUbifocus.createInnerFileName(fileName, UbiIndexMapper.cloudToLocal(dbImage.getSubUbiIndex(), dbImage.getSubUbiImageCount() + 1), dbImage.getSubUbiImageCount() + 1);
        }
        String filePath = BaseFileUtils.concat(getDownloadFolderPath(dbImage, downloadType), fileName);
        if ((!isThumbnail(downloadType) && !isOrigin(downloadType)) || !new File(filePath).exists() || isOriginalFileValid(filePath, dbImage) || isThumbnailFileValid(filePath, dbImage)) {
            return filePath;
        }
        fileName = String.format("%s_%s.%s", new Object[]{FileUtils.getFileNameWithoutExtension(fileName), Long.valueOf(System.currentTimeMillis()), C0002FileUtils.getExtension(fileName)});
        filePath = BaseFileUtils.concat(getDownloadFolderPath(dbImage, downloadType), fileName);
        Log.d("DownloadUtil", "There exist a file with same name that doesn't belong to image [%s], so we rename current to %s", dbImage, fileName);
        return filePath;
    }

    public static ErrorCode ensureDownloadTempFolder(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return ErrorCode.UNKNOWN;
        }
        return ensureFolder(getDownloadTempFolderPath(dbImage, downloadType), true);
    }

    private static ErrorCode ensureFolder(String folderPath, boolean hideFolder) {
        if (TextUtils.isEmpty(folderPath)) {
            return ErrorCode.UNKNOWN;
        }
        if (FileUtils.createFolder(folderPath, hideFolder)) {
            return ErrorCode.NO_ERROR;
        }
        if (StorageUtils.isInPrimaryStorage(folderPath)) {
            return ErrorCode.PRIMARY_STORAGE_WRITE_ERROR;
        }
        if (StorageUtils.isInSecondaryStorage(folderPath)) {
            return ErrorCode.SECONDARY_STORAGE_WRITE_ERROR;
        }
        Log.w("DownloadUtil", "Failed to create folder under unknown volume %s", folderPath);
        return ErrorCode.UNKNOWN;
    }

    public static String getDownloadTempFolderPath(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        if (isMicro(downloadType)) {
            return StorageUtils.getMicroThumbnailTempDirectory();
        }
        if (isThumbnail(downloadType)) {
            return StorageUtils.getThumbnailTempDirectory();
        }
        if (isOrigin(downloadType)) {
            return StorageUtils.getOriginTempDirectory();
        }
        return null;
    }

    public static String getDownloadFileName(DBImage dbImage, DownloadType downloadType) {
        if (dbImage == null || downloadType == null) {
            return null;
        }
        if (isMicro(downloadType)) {
            if (dbImage.isSecretItem()) {
                return dbImage.getSha1ThumbnailSA();
            }
            return dbImage.getSha1Thumbnail();
        } else if (isThumbnail(downloadType)) {
            if (dbImage.isSecretItem()) {
                return dbImage.getSha1ThumbnailSA();
            }
            return DownloadPathHelper.getThumbnailDownloadFileNameNotSecret(dbImage);
        } else if (!isOrigin(downloadType)) {
            throw new UnsupportedOperationException("bad checktype, checktype=" + downloadType);
        } else if (dbImage.isSecretItem()) {
            return dbImage.getEncodedFileName();
        } else {
            return DownloadPathHelper.getOriginDownloadFileNameNotSecret(dbImage);
        }
    }

    public static String checkAndReturnValidOriginalFilePath(DBImage dbImage, DownloadType downloadType) {
        String verifiedPath;
        if (new File(dbImage.getLocalFile()).exists()) {
            verifiedPath = dbImage.getLocalFile();
        } else {
            verifiedPath = DownloadPathHelper.getFilePathForRead(DownloadPathHelper.getDownloadFolderRelativePath(dbImage), getDownloadFileName(dbImage, downloadType));
        }
        if (TextUtils.isEmpty(verifiedPath)) {
            return null;
        }
        boolean succeeded = true;
        if (!dbImage.isSecretItem()) {
            succeeded = isOriginalFileValid(verifiedPath, dbImage);
        }
        if (succeeded && !verifiedPath.equalsIgnoreCase(dbImage.getLocalFile())) {
            succeeded = updateImageColumnValue(dbImage, "localFile", verifiedPath);
            if (succeeded) {
                dbImage.setLocalFile(verifiedPath);
            }
        }
        if (succeeded) {
            return verifiedPath;
        }
        return null;
    }

    public static String checkAndReturnValidThumbnailFilePath(DBImage dbImage, DownloadType downloadType) {
        String verifiedPath;
        if (new File(dbImage.getThumbnailFile()).exists()) {
            verifiedPath = dbImage.getThumbnailFile();
        } else {
            verifiedPath = DownloadPathHelper.getFilePathForRead(DownloadPathHelper.getDownloadFolderRelativePath(dbImage), getDownloadFileName(dbImage, downloadType));
        }
        if (TextUtils.isEmpty(verifiedPath)) {
            return null;
        }
        boolean succeeded = true;
        if (!dbImage.isSecretItem()) {
            succeeded = isThumbnailFileValid(verifiedPath, dbImage);
        }
        if (succeeded && !verifiedPath.equalsIgnoreCase(dbImage.getThumbnailFile())) {
            succeeded = updateImageColumnValue(dbImage, "thumbnailFile", verifiedPath);
            if (succeeded) {
                dbImage.setThumbnailFile(verifiedPath);
            }
        }
        if (succeeded) {
            return verifiedPath;
        }
        return null;
    }

    public static String checkAndReturnValidMicroFilePath(DBImage dbImage, DownloadType downloadType) {
        String verifiedPath;
        if (new File(dbImage.getMicroThumbnailFile()).exists()) {
            verifiedPath = dbImage.getMicroThumbnailFile();
        } else {
            verifiedPath = DownloadPathHelper.getFilePathForRead(StorageUtils.getMicroThumbnailDirectories(GalleryApp.sGetAndroidContext()), getDownloadFileName(dbImage, downloadType));
        }
        if (TextUtils.isEmpty(verifiedPath)) {
            return null;
        }
        boolean succeeded = true;
        if (!verifiedPath.equalsIgnoreCase(dbImage.getMicroThumbnailFile())) {
            succeeded = updateImageColumnValue(dbImage, "microthumbfile", verifiedPath);
            if (succeeded) {
                dbImage.setMicroThumbFile(verifiedPath);
            }
        }
        if (succeeded) {
            return verifiedPath;
        }
        return null;
    }

    private static boolean updateImageColumnValue(DBImage dbImage, String columnName, String value) {
        ContentValues values = new ContentValues();
        values.put(columnName, value);
        if (CloudUtils.updateToLocalDB(dbImage.getBaseUri(), values, dbImage.getId()) >= 1) {
            return true;
        }
        return false;
    }

    public static void persistDownloadStatus(RequestItem request) {
        int status = request.mDownloadItem.getStatus();
        DBImage dbCloud = request.mDBItem;
        if (dbCloud != null) {
            int dbStatus = 0;
            switch (status) {
                case 0:
                    dbStatus = 1;
                    break;
                case 1:
                    dbStatus = 0;
                    break;
                case 2:
                    dbStatus = 2;
                    break;
                case 3:
                    dbStatus = 3;
                    break;
            }
            persistDownloadStatus(dbCloud, dbStatus);
        }
    }

    public static void persistDownloadStatus(DBImage dbCloud, int newStatus) {
        Log.i("DownloadUtil", "persistDownloadStatus id %s, status %d", dbCloud.getId(), Integer.valueOf(newStatus));
        String where = "_id=?";
        if (newStatus == 1) {
            ContentValues updateTimeValues = new ContentValues();
            updateTimeValues.put("downloadFileTime", Long.valueOf(System.currentTimeMillis()));
            SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), dbCloud.getBaseUri(), updateTimeValues, String.format(Locale.US, "(%s) AND (%s is null OR %s=%d)", new Object[]{"_id=?", "downloadFileStatus", "downloadFileStatus", Integer.valueOf(0)}), new String[]{dbCloud.getId()});
        }
        ContentValues values = new ContentValues();
        values.put("downloadFileStatus", Integer.valueOf(newStatus));
        SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), dbCloud.getBaseUri(), values, "_id=?", new String[]{dbCloud.getId()});
    }

    public static int resumeInterrupted() {
        int i;
        for (int priority : DOWNLOAD_FILE_PRIORITY) {
            if (SyncConditionManager.check(priority) != 0) {
                return 0;
            }
        }
        Uri[] uris = new Uri[]{Cloud.CLOUD_URI, ShareImage.SHARE_URI};
        final List<DownloadItem> items = new ArrayList();
        String[] PROJECTION = new String[]{"_id", "serverType"};
        int length = uris.length;
        int i2 = 0;
        while (true) {
            i = i2;
            if (i >= length) {
                break;
            }
            Uri uri = uris[i];
            final boolean isShared = uri == ShareImage.SHARE_URI;
            SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), uri, PROJECTION, "(downloadFileStatus=? OR downloadFileStatus=?) AND (localFlag = 0 AND serverStatus = 'custom')", new String[]{String.valueOf(2), String.valueOf(1)}, "downloadFileTime DESC", new QueryHandler() {
                public Object handle(Cursor cursor) {
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            long id = isShared ? ShareMediaManager.convertToMediaId(cursor.getLong(0)) : cursor.getLong(0);
                            int serverType = cursor.getInt(1);
                            items.add(new Builder().setUri(CloudUriAdapter.getDownloadUri(id)).setType(DownloadType.ORIGIN).build());
                        }
                    }
                    return null;
                }
            });
            i2 = i + 1;
        }
        DownloadOptions options = new DownloadOptions.Builder().setRequireWLAN(true).build();
        for (Object item : items) {
            Log.i("DownloadUtil", "resume item %s", item);
            ImageDownloader.getInstance().load(item.getUri(), item.getType(), options);
        }
        return items.size();
    }

    private static String getStatCategory(RequestItem item) {
        return String.format(Locale.US, "file_download_%s", new Object[]{item.mDownloadItem.getType().name()});
    }

    public static boolean canDownloadStatus(DBImage dbImage) {
        return dbImage != null && "custom".equals(dbImage.getServerStatus()) && dbImage.getLocalFlag() == 0;
    }

    public static boolean isNotSyncedStatus(DBImage dbImage) {
        return (dbImage == null || dbImage.getLocalFlag() == 11 || dbImage.getLocalFlag() == 2 || dbImage.getLocalFlag() == -1) ? false : true;
    }

    public static DownloadFailReason checkCondition(DownloadItem item) {
        if (!CTA.canConnectNetwork()) {
            return new DownloadFailReason(ErrorCode.NO_CTA_PERMISSION, "no cta permission", null);
        }
        if (!NetworkUtils.isNetworkConnected()) {
            return new DownloadFailReason(ErrorCode.NO_NETWORK, "no network", null);
        }
        if (item.isRequireWLAN() && NetworkUtils.isActiveNetworkMetered()) {
            return new DownloadFailReason(ErrorCode.NO_WIFI_CONNECTED, "no wifi", null);
        }
        if (item.isRequirePower() && !Sync.getPowerCanSync()) {
            return new DownloadFailReason(ErrorCode.POWER_LOW, "power low", null);
        }
        if (!item.isRequireCharging() || Sync.getIsPlugged()) {
            return (item.isRequireDeviceStorage() && Sync.isDeviceStorageLow()) ? new DownloadFailReason(ErrorCode.STORAGE_LOW, "storage low", null) : null;
        } else {
            return new DownloadFailReason(ErrorCode.NO_CHARGING, "not charging", null);
        }
    }

    public static void statDownloadError(RequestItem item, String url, DownloadFailReason reason) {
        Map<String, String> params = new HashMap();
        params.put("status", String.valueOf(false));
        if (!TextUtils.isEmpty(url)) {
            params.put("url", url);
        }
        params.put(CommonResult.RESULT_CODE, String.valueOf(reason.getCode()));
        params.put("desc", String.valueOf(reason.getDesc()));
        if (reason.getCause() != null) {
            params.put("throwable", reason.getCause().getMessage());
            NetworkInfo networkInfo = NetworkUtils.getActiveNetworkInfo();
            if (networkInfo != null) {
                params.put("netInfo", networkInfo.getTypeName() + "_" + networkInfo.getExtraInfo());
            }
        }
        BaseSamplingStatHelper.recordCountEvent(getStatCategory(item), "file_download_status", params);
    }

    public static void statDownloadSuccess(RequestItem item) {
        Map<String, String> params = new HashMap();
        params.put("status", String.valueOf(true));
        BaseSamplingStatHelper.recordCountEvent(getStatCategory(item), "file_download_status", params);
    }

    public static void statDownloadRetryTimes(RequestItem item, int times, int maxTimes) {
        String event = String.format(Locale.US, "file_download_retry_times_%s", new Object[]{Integer.valueOf(maxTimes)});
        Map<String, String> params = new HashMap();
        params.put("times", String.valueOf(times));
        BaseSamplingStatHelper.recordCountEvent(getStatCategory(item), event, params);
    }

    public static String generateKey(Uri uri, DownloadType type) {
        if (uri == null || type == null) {
            return null;
        }
        return uri.buildUpon().appendQueryParameter("type", type.name()).build().toString();
    }
}
