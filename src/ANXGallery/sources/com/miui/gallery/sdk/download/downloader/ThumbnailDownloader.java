package com.miui.gallery.sdk.download.downloader;

import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.ThumbnailMetaWriter;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import java.io.File;

public class ThumbnailDownloader extends AbsThumbnailDownloader {
    protected boolean updateDataBase(RequestItem item, String downloadPath) {
        File downloadFile = new File(downloadPath);
        downloadFile.setLastModified(item.mDBItem.getDateModified());
        ContentValues values = new ContentValues();
        values.put("thumbnailFile", downloadFile.getAbsolutePath());
        values.put("localFile", Cloud.INVALID_FILE_PATH_NULL_MARK);
        CloudUtils.updateToLocalDB(item.mDBItem.getBaseUri(), values, item.mDBItem.getId());
        GalleryApp.sGetAndroidContext().getContentResolver().notifyChange(Album.URI, null, false);
        if (!(item.mDBItem.isSecretItem() || item.mDBItem.isSubUbiFocus())) {
            MediaFileUtils.triggerMediaScan(true, downloadFile);
        }
        return true;
    }

    protected int getRequestWidth() {
        return ScreenConfig.getScreenWidth();
    }

    protected int getRequestHeight() {
        return ScreenConfig.getScreenHeight();
    }

    protected String checkAndReturnValidPath(RequestItem request) {
        String path = DownloadUtil.checkAndReturnValidFilePathForType(request.mDBItem, DownloadType.THUMBNAIL);
        if (TextUtils.isEmpty(path)) {
            path = DownloadUtil.checkAndReturnValidOriginalFilePath(request.mDBItem, DownloadType.ORIGIN);
            if (TextUtils.isEmpty(path)) {
                return null;
            }
            Log.d("ThumbnailDownloader", "already exist original file");
            return path;
        }
        Log.d("ThumbnailDownloader", "already exist thumbnail file");
        return path;
    }

    protected boolean handleDownloadTempFile(RequestItem item, String downloadTemp) {
        return new ThumbnailMetaWriter(item.mDBItem).write(downloadTemp);
    }

    protected String getTag() {
        return "ThumbnailDownloader";
    }
}
