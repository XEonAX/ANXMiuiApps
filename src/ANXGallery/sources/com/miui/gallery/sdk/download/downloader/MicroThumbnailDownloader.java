package com.miui.gallery.sdk.download.downloader;

import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.Log;
import java.io.File;

public class MicroThumbnailDownloader extends AbsThumbnailDownloader {
    protected boolean updateDataBase(RequestItem item, String downloadPath) {
        File downloadFile = new File(downloadPath);
        downloadFile.setLastModified(item.mDBItem.getDateModified());
        ContentValues values = new ContentValues();
        values.put("microthumbfile", downloadFile.getAbsolutePath());
        CloudUtils.updateToLocalDB(item.mDBItem.getBaseUri(), values, item.mDBItem.getId());
        return true;
    }

    protected int getRequestWidth() {
        return 250;
    }

    protected int getRequestHeight() {
        return 250;
    }

    protected String checkAndReturnValidPath(RequestItem request) {
        String path = DownloadUtil.checkAndReturnValidFilePathForType(request.mDBItem, DownloadType.MICRO);
        if (TextUtils.isEmpty(path)) {
            path = DownloadUtil.checkAndReturnValidFilePathForType(request.mDBItem, DownloadType.THUMBNAIL);
            if (TextUtils.isEmpty(path)) {
                path = DownloadUtil.checkAndReturnValidOriginalFilePath(request.mDBItem, DownloadType.ORIGIN);
                if (TextUtils.isEmpty(path)) {
                    return null;
                }
                Log.d("MicroThumbnailDownloader", "already exist original file");
                return path;
            }
            Log.d("MicroThumbnailDownloader", "already exist thumbnail file");
            return path;
        }
        Log.d("MicroThumbnailDownloader", "already exist micro thumbnail file");
        return path;
    }

    protected String getTag() {
        return "MicroThumbnailDownloader";
    }
}
