package com.miui.gallery.sdk.download.downloader;

import android.accounts.Account;
import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.GalleryKssManager;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.SpecialTypeMediaUtils;
import com.xiaomi.opensdk.file.model.MiCloudFileListener;
import java.io.File;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

public class OriginDownloader implements IDownloader {
    public void download(Account account, GalleryExtendedAuthToken extToken, List<DownloadItem> items) {
        if (items != null && items.size() > 0) {
            Log.d("OriginalFileDownloader", "Start downloading items [%s] total count %d", items, Integer.valueOf(items.size()));
            for (Object downloadItem : items) {
                if (checkConditionPermitted(downloadItem)) {
                    ReentrantLock lock = downloadItem.getUriLock();
                    if (lock.isLocked()) {
                        Log.d("OriginalFileDownloader", "%s wait lock", downloadItem);
                    }
                    lock.lock();
                    DBImage dbImage = downloadItem.getUriAdapter().getDBItemForUri(downloadItem.getUri());
                    Log.d("OriginalFileDownloader", "Start downloading origin file for uri [%s] size [%d]", downloadItem.getUri(), Long.valueOf(dbImage != null ? dbImage.getSize() : -1));
                    RequestItem requestItem = new RequestItem(downloadItem, dbImage);
                    if (!TextUtils.isEmpty(DownloadUtil.checkAndReturnValidFilePathForType(dbImage, downloadItem.getType()))) {
                        Log.d("OriginalFileDownloader", "Original file for id %s already exist, no need to download again", requestItem.mDBItem.getId());
                        if (downloadItem.compareAnsSetStatus(0, 3)) {
                            DownloadUtil.persistDownloadStatus(requestItem);
                            DownloadItem.callbackSuccess(downloadItem, packageDownloadedItem(dbImage));
                        }
                        lock.unlock();
                    } else if (checkDBImageValid(requestItem)) {
                        RequestCloudItem requestCloudItem = new RequestCloudItem(requestItem.mDownloadItem.getType().getPriority(), requestItem.mDBItem);
                        if (requestItem.mDownloadItem.isStatusOk()) {
                            if (requestItem.mDownloadItem.isManual()) {
                                DownloadUtil.persistDownloadStatus(requestItem.mDBItem, 1);
                            }
                            if (Thread.currentThread().isInterrupted()) {
                                Log.d("OriginalFileDownloader", "Origin download thread is interrupted!");
                                lock.unlock();
                                return;
                            }
                            String downloadTempPath = null;
                            try {
                                ErrorCode errorCode = DownloadUtil.ensureDownloadTempFolder(requestCloudItem.dbCloud, downloadItem.getType());
                                if (errorCode != ErrorCode.NO_ERROR) {
                                    Log.d("OriginalFileDownloader", "Failed to create temp download folder [%s] for image [%s]", DownloadUtil.getDownloadTempFolderPath(requestCloudItem.dbCloud, downloadItem.getType()));
                                    fireFailEvent(requestItem, new DownloadFailReason(errorCode, "Failed to create temp download folder", null), null);
                                    if (requestItem.mDownloadItem.isManual()) {
                                        DownloadUtil.persistDownloadStatus(requestItem);
                                    }
                                    lock.unlock();
                                } else {
                                    downloadTempPath = DownloadUtil.getDownloadTempFilePath(requestCloudItem.dbCloud, downloadItem.getType());
                                    if (requestItem.mDBItem.isShareItem()) {
                                        GalleryKssManager.doSharerDownload(requestCloudItem, downloadTempPath, createListener(requestCloudItem, requestItem));
                                    } else {
                                        GalleryKssManager.doOwnerDownload(requestCloudItem, downloadTempPath, createListener(requestCloudItem, requestItem));
                                    }
                                    Log.d("OriginalFileDownloader", "Done downloading temp file [%s] for image [%s]", downloadTempPath, requestItem.mDBItem);
                                    dbImage = downloadItem.getUriAdapter().getDBItemForUri(downloadItem.getUri());
                                    if (!checkDBImageValid(requestItem)) {
                                        Log.d("OriginalFileDownloader", "DBImage [%s] is invalid after download file for uri [%s] finished", dbImage, downloadItem.getUri());
                                        DownloadUtil.persistDownloadStatus(requestItem.mDBItem, 0);
                                    } else if (doPostOriginDownloadWork(requestItem, requestCloudItem, downloadTempPath)) {
                                        if (requestItem.mDownloadItem.compareAnsSetStatus(0, 3)) {
                                            DownloadItem.callbackSuccess(requestItem.mDownloadItem, packageDownloadedItem(requestItem.mDBItem));
                                        }
                                        Log.d("OriginalFileDownloader", "Successfully complete origin download work for image [%s]!", requestItem.mDBItem);
                                    } else {
                                        Log.d("OriginalFileDownloader", "Error occurred when doing post origin download work for image [%s]!", requestItem.mDBItem);
                                    }
                                    if (requestItem.mDownloadItem.isManual()) {
                                        DownloadUtil.persistDownloadStatus(requestItem);
                                    }
                                    lock.unlock();
                                }
                            } catch (Throwable th) {
                                lock.unlock();
                            }
                        } else {
                            Log.d("OriginalFileDownloader", "Item %s status %s", requestItem.mDownloadItem.getKey(), Integer.valueOf(requestItem.mDownloadItem.getStatus()));
                            lock.unlock();
                        }
                    } else {
                        Log.d("OriginalFileDownloader", "Invalid dbImage [%s] for download uri [%s]!", dbImage, downloadItem.getUri());
                        lock.unlock();
                    }
                } else {
                    Log.d("OriginalFileDownloader", "Download condition not ok type %s", downloadItem.getType());
                }
            }
        }
    }

    private boolean checkConditionPermitted(DownloadItem item) {
        DownloadFailReason reason = DownloadUtil.checkCondition(item);
        if (reason == null) {
            return true;
        }
        if (item.isStatusOk()) {
            DownloadItem.callbackError(item, reason);
        }
        return false;
    }

    private boolean doPostOriginDownloadWork(RequestItem requestItem, RequestCloudItem requestCloudItem, String downloadTempPath) {
        RequestItem requestItem2;
        if (DownloadUtil.isOriginalFileValid(downloadTempPath, requestCloudItem.dbCloud, true)) {
            ErrorCode errorCode = DownloadUtil.ensureDownloadFolder(requestCloudItem.dbCloud, requestItem.mDownloadItem.getType());
            if (errorCode != ErrorCode.NO_ERROR) {
                Log.d("OriginalFileDownloader", "Cannot create folder [%s] to download", DownloadUtil.getDownloadFolderPath(requestCloudItem.dbCloud, requestItem.mDownloadItem.getType()));
                requestItem2 = requestItem;
                fireFailEvent(requestItem2, new DownloadFailReason(errorCode, String.format("Cannot create folder [%s] to download", new Object[]{downloadFolder}), null), downloadTempPath);
                return false;
            }
            String downloadPath = DownloadUtil.getDownloadFilePath(requestCloudItem.dbCloud, requestItem.mDownloadItem.getType());
            if (TextUtils.isEmpty(downloadPath)) {
                Log.d("OriginalFileDownloader", "Cannot find valid download path for image [%s]", requestItem.mDBItem);
                requestItem2 = requestItem;
                fireFailEvent(requestItem2, new DownloadFailReason(ErrorCode.UNKNOWN, String.format("Cannot find valid download path for image [%s]", new Object[]{requestItem.mDBItem}), null), downloadTempPath);
                return false;
            }
            boolean succeed;
            if (requestItem.mDBItem.isVideoType() || !requestItem.mDBItem.isSecretItem()) {
                succeed = FileUtils.move(new File(downloadTempPath), new File(downloadPath));
            } else {
                succeed = GalleryAes.encryptFile(downloadTempPath, downloadPath, requestItem.mDBItem.getSecretKey());
            }
            if (succeed) {
                new File(downloadPath).setLastModified(requestItem.mDBItem.getDateModified());
                ContentValues values = new ContentValues();
                if (!requestItem.mDBItem.isSecretItem()) {
                    String thumbnailFilePath = DownloadUtil.checkAndReturnValidFilePathForType(requestItem.mDBItem, DownloadType.THUMBNAIL);
                    if (!(TextUtils.isEmpty(thumbnailFilePath) || thumbnailFilePath.equalsIgnoreCase(downloadPath))) {
                        Log.d("OriginalFileDownloader", "Delete thumbnail [%s] of image [%s], because we already have original file", thumbnailFilePath, requestItem.mDBItem);
                        MediaFileUtils.deleteFileType(FileType.THUMBNAIL, thumbnailFilePath);
                    }
                    if (!TextUtils.isEmpty(requestItem.mDBItem.getThumbnailFile())) {
                        Log.d("OriginalFileDownloader", "Delete thumbnail record [%s] of image [%s], because we already have original file", requestItem.mDBItem.getThumbnailFile(), requestItem.mDBItem);
                        requestItem.mDBItem.setThumbnailFile(null);
                        values.putNull("thumbnailFile");
                    }
                }
                requestItem.mDBItem.setLocalFile(downloadPath);
                values.put("localFile", downloadPath);
                if (requestItem.mDBItem.isImageType()) {
                    values.put("specialTypeFlags", Long.valueOf(SpecialTypeMediaUtils.parseFlagsForImage(downloadPath)));
                } else if (requestItem.mDBItem.isVideoType()) {
                    values.put("specialTypeFlags", Long.valueOf(SpecialTypeMediaUtils.parseFlagsForVideo(downloadPath)));
                }
                if (CloudUtils.updateToLocalDB(requestItem.mDBItem.getBaseUri(), values, requestItem.mDBItem.getId()) <= 0) {
                    Log.d("OriginalFileDownloader", "Update database failed after download original file for image [%s]", requestItem.mDBItem);
                    MediaFileUtils.deleteFileType(FileType.NORMAL, downloadPath);
                    return false;
                }
                if (!requestItem.mDBItem.isSecretItem()) {
                    MediaFileUtils.triggerMediaScan(true, new File(downloadPath));
                }
                return true;
            }
            Log.d("OriginalFileDownloader", "Move or encrypt failed for image [%s]", requestItem.mDBItem);
            MediaFileUtils.deleteFileType(FileType.NORMAL, downloadPath);
            requestItem2 = requestItem;
            fireFailEvent(requestItem2, new DownloadFailReason(ErrorCode.FILE_OPERATE_ERROR, String.format("Move or encrypt failed for image [%s]", new Object[]{requestItem.mDBItem}), null), downloadTempPath);
            return false;
        }
        Log.d("OriginalFileDownloader", "Downloaded original file [%s] is invalid", (Object) downloadTempPath);
        requestItem2 = requestItem;
        fireFailEvent(requestItem2, new DownloadFailReason(ErrorCode.SERVER_ERROR, String.format("Downloaded original file [%s] is invalid", new Object[]{downloadTempPath}), null), downloadTempPath);
        return false;
    }

    private static boolean checkDBImageValid(RequestItem item) {
        DBImage dbImage = item.mDBItem;
        if (DownloadUtil.canDownloadStatus(dbImage)) {
            return true;
        }
        if (dbImage == null) {
            fireFailEvent(item, new DownloadFailReason(ErrorCode.PARAMS_ERROR, "item null", null), null);
        } else {
            String downloadTempPath = DownloadUtil.getDownloadTempFilePath(dbImage, item.mDownloadItem.getType());
            if (DownloadUtil.isNotSyncedStatus(dbImage)) {
                fireFailEvent(item, new DownloadFailReason(ErrorCode.NOT_SYNCED, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null), downloadTempPath);
            } else {
                fireFailEvent(item, new DownloadFailReason(ErrorCode.PARAMS_ERROR, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null), downloadTempPath);
            }
        }
        return false;
    }

    private static void fireFailEvent(RequestItem item, DownloadFailReason reason, String deleteFile) {
        Log.d("OriginalFileDownloader", "download fail %s", (Object) reason);
        if (reason.getCause() != null) {
            Log.e("OriginalFileDownloader", reason.getCause());
        }
        MediaFileUtils.deleteFileType(FileType.NORMAL, deleteFile);
        if (item.mDownloadItem.isStatusOk()) {
            DownloadItem.callbackError(item.mDownloadItem, reason);
        }
        DownloadUtil.statDownloadError(item, null, reason);
    }

    private static MiCloudFileListener createListener(final RequestCloudItem requestCloudItem, final RequestItem requestItem) {
        return new MiCloudFileListener() {
            public void onDataSended(long pos, long total) {
            }

            public void onDataReceived(long pos, long total) {
                if (SyncConditionManager.check(requestCloudItem.priority) != 0) {
                    Log.i("OriginalFileDownloader", "net work is changed, interrupt this thread item: %s", requestCloudItem.getFileName());
                    Thread.currentThread().interrupt();
                }
                requestCloudItem.mDownloadedSize = pos;
                requestCloudItem.mTotalSize = total;
                DownloadItem.callbackProgress(requestItem.mDownloadItem, pos, total);
            }
        };
    }

    private static DownloadedItem packageDownloadedItem(DBImage image) {
        return new DownloadedItem(image.getLocalFile(), image.isSecretItem() ? image.getSecretKeyNoGenerate() : null);
    }
}
