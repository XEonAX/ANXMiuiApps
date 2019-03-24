package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.HostManager.OwnerAlbum;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UbiFocusUtils;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.deprecated.Storage;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import miui.provider.ExtraTelephony.DeletableSyncColumns;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class DeleteCloudItem extends RequestOperationBase {
    public DeleteCloudItem(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestCloudItem) {
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            if (!tryDeleteDirtyItem(requestCloudItem.dbCloud)) {
                return super.onPreRequest(requestItem);
            }
            SyncLog.d(getTag(), "serverId is null means item is deleted by user, delete this dirty record: %s", requestCloudItem.dbCloud.getFileName());
            return GallerySyncResult.NotRetryError;
        }
        SyncLog.e(getTag(), "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        Builder builder = new Builder();
        String requestId;
        String deleteUrl;
        if (requestCloudItem.dbCloud.isItemType()) {
            DBImage dbCloud = requestCloudItem.dbCloud;
            requestId = dbCloud.getRequestId();
            if (TextUtils.isEmpty(requestId)) {
                return null;
            }
            deleteUrl = CloudUrlProvider.getUrlProvider(dbCloud.isShareItem(), dbCloud.isVideoType()).getDeleteUrl(account.name, requestId);
            ArrayList<NameValuePair> params = new ArrayList();
            if (dbCloud.isShareItem()) {
                params.add(new BasicNameValuePair("sharedGalleryId", requestId));
            }
            builder.setUrl(deleteUrl).setMethod(2).setParams(params).setPostData(new JSONObject().put("content", requestCloudItem.dbCloud.toJSONObject())).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false);
        } else {
            requestId = requestCloudItem.dbCloud.getServerId();
            if (TextUtils.isEmpty(requestId)) {
                return null;
            }
            deleteUrl = OwnerAlbum.getDeleteAlbumUrl(requestId);
            String serverTag = String.valueOf(requestCloudItem.dbCloud.getServerTag());
            ArrayList<NameValuePair> parameters = new ArrayList();
            parameters.add(new BasicNameValuePair("tag", serverTag));
            builder.setUrl(deleteUrl).setMethod(2).setParams(parameters).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false);
        }
        return builder.build();
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        if (Preference.sGetCloudGalleryRecyclebinFull()) {
            Preference.sSetCloudGalleryRecyclebinFull(false);
        }
        updateForDeleteOrPurgedOnLocal(requestCloudItem.dbCloud.getBaseUri(), this.mContext, requestCloudItem.dbCloud, data);
        SyncLog.d(getTag(), "Delete item success: %s, type: %s", requestCloudItem.dbCloud.getFileName(), Integer.valueOf(requestCloudItem.dbCloud.getServerType()));
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok && result != GallerySyncResult.AlbumNotExist) {
            requestItem.otherRetryTimes++;
        }
    }

    private static boolean tryDeleteDirtyItem(DBImage dbImage) {
        int rows = GalleryUtils.safeDelete(dbImage.getBaseUri(), "_id = ? AND serverId IS NULL ", new String[]{dbImage.getId()});
        UbiFocusUtils.safeDeleteSubUbi(dbImage);
        if (rows > 0) {
            return true;
        }
        return false;
    }

    public static void updateForDeleteOrPurgedOnLocal(Uri uri, Context context, DBImage cloud, JSONObject schemaJson) throws JSONException {
        int i = 0;
        if (cloud.getServerType() == 1 || cloud.getServerType() == 2) {
            updateForDeleteOrPurgedOnLocalNotDeleteFile(uri, context, cloud, schemaJson);
            ImageFeatureManger.getInstance().onImageDelete(cloud.getId());
            for (String onePath : StorageUtils.getMicroThumbnailDirectories(context)) {
                deleteDownloadAndTempFiles(FileType.MICRO_THUMBNAIL, onePath + File.separator + cloud.getSha1FileName());
            }
            String[] cloudThumbnailFilePath = Storage.getCloudThumbnailFilePath();
            int length = cloudThumbnailFilePath.length;
            while (i < length) {
                deleteDownloadAndTempFiles(FileType.THUMBNAIL, cloudThumbnailFilePath[i] + File.separator + cloud.getSha1FileName());
                i++;
            }
            deleteOriginalFileAndThumbnail(cloud);
        } else if (cloud.getServerType() != 0) {
        } else {
            if (CloudUtils.hasCreateCopyMoveImageByGroupId(context, cloud.getId())) {
                CreateGroupItem.recreateGroup(cloud.getId());
            } else {
                updateForDeleteOrPurgedGroupOnLocal(context, cloud, schemaJson);
            }
        }
    }

    private static void deleteOriginalFileAndThumbnail(DBImage dbImage) {
        Collection deleteRecords = new ArrayList();
        String localFile = dbImage.getLocalFile();
        String thumbnailFile = dbImage.getThumbnailFile();
        if (FileUtils.isFileExist(localFile) && new File(localFile).length() == dbImage.getSize()) {
            MediaFileUtils.deleteFileType(FileType.ORIGINAL, localFile);
            deleteRecords.add(new DeleteRecord(1, localFile, "DeleteCloudItem"));
        }
        if (!(TextUtils.isEmpty(thumbnailFile) || TextUtils.equals(localFile, thumbnailFile))) {
            MediaFileUtils.deleteFileType(FileType.THUMBNAIL, thumbnailFile);
            deleteRecords.add(new DeleteRecord(1, thumbnailFile, "DeleteCloudItem"));
        }
        String fileName = dbImage.getFileName();
        String fileNameOfLocalStorage;
        if (dbImage.isShareItem()) {
            fileNameOfLocalStorage = DownloadPathHelper.getDownloadFileNameNotSecret(dbImage, fileName);
        } else {
            fileNameOfLocalStorage = fileName;
        }
        for (String filePath : DownloadPathHelper.getAllFilePathForRead(StorageUtils.getPathsInExternalStorage(GalleryApp.sGetAndroidContext(), DownloadPathHelper.getDownloadFolderRelativePath(dbImage)), fileNameOfLocalStorage)) {
            String sha1 = ExifUtil.getUserCommentSha1(filePath);
            if (TextUtils.isEmpty(sha1)) {
                sha1 = FileUtils.getSha1(filePath);
            }
            if (TextUtils.equals(sha1, dbImage.getSha1())) {
                MediaFileUtils.deleteFileType(FileType.ORIGINAL, filePath);
                deleteRecords.add(new DeleteRecord(1, filePath, "DeleteCloudItem"));
            }
        }
        if (BaseMiscUtil.isValid(deleteRecords)) {
            DeleteRecorder.record(deleteRecords);
        }
    }

    public static void updateForDeleteOrPurgedOnLocalNotDeleteFile(Uri uri, Context context, DBImage cloud, JSONObject schemaJson) throws JSONException {
        ContentValues values = CloudUtils.getContentValuesForUploadDeletePurged(schemaJson);
        values.putNull("thumbnailFile");
        values.putNull("microthumbfile");
        GalleryUtils.safeUpdate(uri, values, "_id = '" + cloud.getId() + "'", null);
        UbiFocusUtils.safeDeleteSubUbi(cloud);
    }

    public static void updateForDeleteOrPurgedGroupOnLocal(Context context, DBImage cloud, JSONObject schemaJson) throws JSONException {
        ContentValues values = CloudUtils.getContentValuesForUploadDeletePurged(schemaJson);
        if (!values.containsKey("serverStatus")) {
            values.put("serverStatus", DeletableSyncColumns.DELETED);
        }
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_URI, values, "_id = '" + cloud.getId() + "'", null);
    }

    private static void deleteDownloadAndTempFiles(FileType fileType, String path) {
        if (!CloudUtils.isFileInCloudDB(path)) {
            MediaFileUtils.deleteFileType(fileType, path);
            MediaFileUtils.deleteFileType(FileType.TEMP, path + ".temp");
        }
    }
}
