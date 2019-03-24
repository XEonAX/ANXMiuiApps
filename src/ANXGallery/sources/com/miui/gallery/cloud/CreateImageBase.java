package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.cloud.control.ServerTagCache;
import com.miui.gallery.cloud.control.SyncMonitor;
import com.miui.gallery.cloud.control.SyncMonitor.UploadMonitorInfo;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deprecated.Storage;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import miui.provider.ExtraTelephony.FirewallLog;

public abstract class CreateImageBase implements Operation {
    protected Context mContext;

    protected abstract void doUpload(RequestCloudItem requestCloudItem, File file) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException;

    protected abstract DBImage getDBImage(RequestCloudItem requestCloudItem);

    protected abstract SpaceFullListener getSpaceFullListener();

    public CreateImageBase(Context context) {
        this.mContext = context;
    }

    public GallerySyncResult execute(Account account, GalleryExtendedAuthToken extToken, String ckey, RequestItemBase requestItem) throws Exception {
        long startTime = System.currentTimeMillis();
        if (requestItem instanceof RequestCloudItem) {
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            DBImage oldImage = requestCloudItem.dbCloud;
            SyncLog.d("CreateImageBase", "create image start %s", oldImage.getId());
            if (getSpaceFullListener().isSpaceFull(requestCloudItem)) {
                return GallerySyncResult.NotContinueError;
            }
            DBImage newImage = getDBImage(requestCloudItem);
            if (newImage == null) {
                SyncLog.d("CreateImageBase", "item not exist %s", oldImage.getFileName());
                return GallerySyncResult.NotRetryError;
            } else if (!TextUtils.equals(oldImage.getSha1(), newImage.getSha1())) {
                SyncLog.d("CreateImageBase", "item has changed old[%s], new[%s]", oldImage.getFileName(), newImage.getFileName());
                return GallerySyncResult.NotRetryError;
            } else if (newImage.getLocalFlag() == 0) {
                SyncLog.d("CreateImageBase", "item already synced, id[%s], fileName[%s]", newImage.getId(), newImage.getFileName());
                return GallerySyncResult.Ok;
            } else if (isNormalFlag(newImage.getLocalFlag())) {
                if (!(CloudUtils.canUpload(newImage.getLocalFile()) == 0)) {
                    SyncLog.d("CreateImageBase", "this type of media can't upload, id[%s], fileName[%s]", newImage.getId(), newImage.getFileName());
                    boolean isInvalid = isInvalidData(newImage);
                    if (isInvalid) {
                        SyncLog.w("CreateImageBase", "dirty data %s", newImage.getLocalFile());
                        CloudUtils.deleteDirty(newImage);
                    }
                    statCannotUpload(oldImage, newImage, isInvalid);
                    return GallerySyncResult.NotRetryError;
                } else if (ensureExifAndSha1Valid(newImage)) {
                    requestCloudItem.dbCloud = newImage;
                    if (!TextUtils.equals(oldImage.getFileName(), newImage.getFileName())) {
                        SyncLog.d("CreateImageBase", "file name changed old[%s], new[%s]", oldImage.getFileName(), newImage.getFileName());
                    }
                    File file = new File(requestCloudItem.dbCloud.getLocalFile());
                    DBImage updateToDateItem;
                    String oldFileName;
                    String newFileName;
                    ContentValues values;
                    try {
                        doUpload(requestCloudItem, file);
                        updateToDateItem = CloudUtils.getItem(oldImage.getBaseUri(), this.mContext, "_id", oldImage.getId());
                        ServerTagCache.getInstance().add(String.valueOf(updateToDateItem.getServerTag()));
                        if (updateToDateItem != null) {
                            oldFileName = file.getName();
                            newFileName = updateToDateItem.getFileName();
                            if (TextUtils.equals(oldImage.getOriginSha1(), updateToDateItem.getSha1())) {
                                SyncLog.d("CreateImageBase", "duplication is found by server, file=%s", file.getAbsolutePath());
                                MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                                values = new ContentValues();
                                values.putNull("localFile");
                                values.putNull("thumbnailFile");
                                GalleryUtils.safeUpdate(oldImage.getBaseUri(), values, "_id = " + oldImage.getId(), null);
                            } else if (!TextUtils.equals(oldFileName, newFileName)) {
                                CloudUtils.renameAnItemInLocal(updateToDateItem, newFileName, oldFileName, true);
                            }
                        }
                        if (Storage.startsWithFilePath(Storage.getCloudWaitUploadFilePath(), file.getAbsolutePath()) && !CloudUtils.isFileNeedUpload(file.getAbsolutePath())) {
                            MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                        }
                        SyncLog.d("CreateImageBase", "create image end %s", requestCloudItem.dbCloud.getFileName());
                        statImageCreate(file, System.currentTimeMillis() - startTime);
                        SyncMonitor.monitorUploadInfo(new UploadMonitorInfo(System.currentTimeMillis() - startTime, file.length()));
                        return GallerySyncResult.Ok;
                    } catch (UnretriableException e) {
                        e.printStackTrace();
                        GallerySyncResult result;
                        if (requestCloudItem.result != null) {
                            result = requestCloudItem.result;
                            requestCloudItem.result = null;
                            SyncLog.e("CreateImageBase", "upload error, result=" + result);
                            updateToDateItem = CloudUtils.getItem(oldImage.getBaseUri(), this.mContext, "_id", oldImage.getId());
                            ServerTagCache.getInstance().add(String.valueOf(updateToDateItem.getServerTag()));
                            if (updateToDateItem == null) {
                                return result;
                            }
                            oldFileName = file.getName();
                            newFileName = updateToDateItem.getFileName();
                            if (TextUtils.equals(oldImage.getOriginSha1(), updateToDateItem.getSha1())) {
                                SyncLog.d("CreateImageBase", "duplication is found by server, file=%s", file.getAbsolutePath());
                                MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                                values = new ContentValues();
                                values.putNull("localFile");
                                values.putNull("thumbnailFile");
                                GalleryUtils.safeUpdate(oldImage.getBaseUri(), values, "_id = " + oldImage.getId(), null);
                                return result;
                            } else if (TextUtils.equals(oldFileName, newFileName)) {
                                return result;
                            } else {
                                CloudUtils.renameAnItemInLocal(updateToDateItem, newFileName, oldFileName, true);
                                return result;
                            }
                        }
                        SyncLog.e("CreateImageBase", "upload error, no result.");
                        result = GallerySyncResult.NotRetryCurrent;
                        updateToDateItem = CloudUtils.getItem(oldImage.getBaseUri(), this.mContext, "_id", oldImage.getId());
                        ServerTagCache.getInstance().add(String.valueOf(updateToDateItem.getServerTag()));
                        if (updateToDateItem == null) {
                            return result;
                        }
                        oldFileName = file.getName();
                        newFileName = updateToDateItem.getFileName();
                        if (TextUtils.equals(oldImage.getOriginSha1(), updateToDateItem.getSha1())) {
                            SyncLog.d("CreateImageBase", "duplication is found by server, file=%s", file.getAbsolutePath());
                            MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                            values = new ContentValues();
                            values.putNull("localFile");
                            values.putNull("thumbnailFile");
                            GalleryUtils.safeUpdate(oldImage.getBaseUri(), values, "_id = " + oldImage.getId(), null);
                            return result;
                        } else if (TextUtils.equals(oldFileName, newFileName)) {
                            return result;
                        } else {
                            CloudUtils.renameAnItemInLocal(updateToDateItem, newFileName, oldFileName, true);
                            return result;
                        }
                    } catch (Throwable th) {
                        updateToDateItem = CloudUtils.getItem(oldImage.getBaseUri(), this.mContext, "_id", oldImage.getId());
                        ServerTagCache.getInstance().add(String.valueOf(updateToDateItem.getServerTag()));
                        if (updateToDateItem != null) {
                            oldFileName = file.getName();
                            newFileName = updateToDateItem.getFileName();
                            if (TextUtils.equals(oldImage.getOriginSha1(), updateToDateItem.getSha1())) {
                                SyncLog.d("CreateImageBase", "duplication is found by server, file=%s", file.getAbsolutePath());
                                MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                                values = new ContentValues();
                                values.putNull("localFile");
                                values.putNull("thumbnailFile");
                                GalleryUtils.safeUpdate(oldImage.getBaseUri(), values, "_id = " + oldImage.getId(), null);
                            } else if (!TextUtils.equals(oldFileName, newFileName)) {
                                CloudUtils.renameAnItemInLocal(updateToDateItem, newFileName, oldFileName, true);
                            }
                        }
                    }
                } else {
                    SyncLog.e("CreateImageBase", "reject to upload!!");
                    return GallerySyncResult.NotRetryError;
                }
            } else {
                SyncLog.d("CreateImageBase", "item already deleted, id[%s], fileName[%s]", newImage.getId(), newImage.getFileName());
                return GallerySyncResult.NotRetryError;
            }
        }
        SyncLog.e("CreateImageBase", "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    public int checkState(RequestItemBase item) {
        return SyncConditionManager.checkForItem(item);
    }

    private boolean isNormalFlag(int localFlag) {
        return (localFlag == -1 || localFlag == 2) ? false : true;
    }

    private void statCannotUpload(DBImage oldData, DBImage newData, boolean isInvalid) {
        Map<String, String> params = new HashMap();
        params.put("localFile", oldData.getLocalFile() + " : " + newData.getLocalFile());
        params.put("localGroupId", oldData.getLocalGroupId() + " : " + newData.getLocalGroupId());
        params.put(FirewallLog.REASON, String.valueOf(CloudUtils.canUpload(oldData.getLocalFile())));
        BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_cannot_upload", params);
        if (isInvalid) {
            params.clear();
            params.put("localFile", newData.getLocalFile());
            BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_invalid_data", params);
        }
    }

    private boolean isInvalidData(DBImage newData) {
        if (newData == null) {
            return false;
        }
        if ((newData.getLocalFlag() != 7 && newData.getLocalFlag() != 8) || FileUtils.isFileExist(newData.getLocalFile())) {
            return false;
        }
        DBImage album = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, this.mContext, "_id", newData.getLocalGroupId());
        if (album == null || TextUtils.isEmpty(album.getLocalFile()) || !album.getLocalFile().equalsIgnoreCase(FileUtils.getParentFolderPath(StorageUtils.getRelativePath(this.mContext, newData.getLocalFile())))) {
            return false;
        }
        return true;
    }

    private void statImageCreate(File file, long cost) {
        long time = (long) Math.round((1.0f * ((float) cost)) / 1000.0f);
        long size = (long) Math.round(((1.0f * ((float) file.length())) / 1024.0f) / 1024.0f);
        HashMap<String, String> params = new HashMap();
        params.put("size", String.valueOf(size));
        params.put("time", String.valueOf(time));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_upload_time_one_photo", params);
        long timely = (long) Math.round((1.0f * ((float) (System.currentTimeMillis() - file.lastModified()))) / 60000.0f);
        params.clear();
        params.put("timely", String.valueOf(timely));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_upload_timely", params);
    }

    private boolean ensureExifAndSha1Valid(DBImage dbCloud) throws IOException {
        long dateModified = dbCloud.getDateModified();
        long fileSize = dbCloud.getSize();
        String localFile = dbCloud.getLocalFile();
        File file = new File(localFile);
        String originalSha1 = ExifUtil.getUserCommentSha1(localFile);
        String originalFileName = CloudUtils.readFileNameFromExif(localFile);
        if (dateModified == file.lastModified() && fileSize == file.length() && TextUtils.isEmpty(originalSha1) && TextUtils.isEmpty(originalFileName)) {
            return true;
        }
        ContentValues values = new ContentValues();
        if (!(TextUtils.isEmpty(originalSha1) && TextUtils.isEmpty(originalFileName))) {
            boolean succ = new ThumbnailMetaWriter(dbCloud, "", "").write(localFile);
            dbCloud.setOriginInfo(originalSha1, originalFileName);
            if (!succ) {
                return false;
            }
            Map<String, String> params = new HashMap();
            params.put("model", Build.MODEL);
            params.put("version", VERSION.INCREMENTAL);
            params.put("hasSha1InExif", String.valueOf(!TextUtils.isEmpty(originalSha1)));
            BaseSamplingStatHelper.recordCountEvent("micloud_sync", "upload_thumbnail", params);
            values.put("sha1", FileUtils.getSha1(localFile));
        }
        values.put("size", Long.valueOf(file.length()));
        values.put("dateModified", Long.valueOf(file.lastModified()));
        if (!dbCloud.isVideoType()) {
            GalleryCloudUtils.putValuesForImage(localFile, values);
        } else if (!GalleryCloudUtils.putValuesForVideo(localFile, values)) {
            return false;
        }
        GalleryUtils.safeUpdate(dbCloud.getBaseUri(), values, "_id = ? ", new String[]{dbCloud.getId()});
        final DBImage dBImage = dbCloud;
        GalleryUtils.safeQuery(CloudUtils.getLimitUri(dbCloud.getBaseUri(), 1), CloudUtils.getProjectionAll(), "_id = ? ", new String[]{dbCloud.getId()}, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    dBImage.reloadData(cursor);
                }
                return null;
            }
        });
        return true;
    }
}
