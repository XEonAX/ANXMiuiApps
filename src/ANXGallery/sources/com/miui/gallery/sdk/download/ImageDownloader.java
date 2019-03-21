package com.miui.gallery.sdk.download;

import android.net.Uri;
import android.util.Log;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.SyncStatus;
import com.miui.gallery.sdk.download.adapter.BaseUriAdapter;
import com.miui.gallery.sdk.download.adapter.IUriAdapter;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadItem.Builder;
import com.miui.gallery.sdk.download.assist.DownloadItemStatus;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.sdk.download.listener.DownloadListener;
import com.miui.gallery.sdk.download.listener.DownloadProgressListener;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.FileUtils;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

public class ImageDownloader {
    private static volatile ImageDownloader sInstance;
    private DownloadEngine mEngine = new DownloadEngine();

    public static ImageDownloader getInstance() {
        if (sInstance == null) {
            synchronized (ImageDownloader.class) {
                if (sInstance == null) {
                    sInstance = new ImageDownloader();
                }
            }
        }
        return sInstance;
    }

    private ImageDownloader() {
    }

    public void load(Uri uri, DownloadType type, DownloadOptions options) {
        load(uri, type, options, null);
    }

    public void load(Uri uri, DownloadType type, DownloadOptions options, DownloadListener downloadListener) {
        load(uri, type, options, downloadListener, null);
    }

    public void load(Uri uri, DownloadType type, DownloadOptions options, DownloadListener downloadListener, DownloadProgressListener progressListener) {
        if (uri != null && type != null) {
            options = ensureDownloadOptions(options);
            IUriAdapter adapter = options.getUriAdapter();
            ReentrantLock lock = this.mEngine.getLockForUri(uri, type);
            this.mEngine.download(new Builder().setUri(uri).setType(type).setUriAdapter(adapter).setUriLock(lock).setDownloadListener(downloadListener).setProgressListener(progressListener).setDownloader(this.mEngine.getDownloader(type)).setRequirePower(options.isRequirePower()).setRequireCharging(options.isRequireCharging()).setRequireWLAN(options.isRequireWLAN()).setRequireDeviceStorage(options.isRequireDeviceStorage()).setManual(options.isManual()).build(), options.isQueueFirst(), options.isInterruptExecuting());
        } else if (downloadListener != null) {
            downloadListener.onDownloadFail(uri, type, new DownloadFailReason(ErrorCode.PARAMS_ERROR, "", null));
        }
    }

    public DownloadedItem loadSync(Uri uri, DownloadType type, DownloadOptions options) {
        if (uri == null || type == null) {
            return null;
        }
        options = ensureDownloadOptions(options);
        IUriAdapter adapter = options.getUriAdapter();
        ReentrantLock lock = this.mEngine.getLockForUri(uri, type);
        IDownloader downloader = this.mEngine.getDownloader(type);
        AccountInfo info = AccountCache.getAccountInfo();
        if (info == null) {
            return null;
        }
        final DownloadedItem[] downloadedItem = new DownloadedItem[]{null};
        DownloadItem item = new Builder().setUri(uri).setType(type).setUriAdapter(adapter).setUriLock(lock).setDownloadListener(new DownloadListener() {
            public void onDownloadStarted(Uri uri, DownloadType type) {
            }

            public void onDownloadSuccess(Uri uri, DownloadType type, DownloadedItem item) {
                downloadedItem[0] = item;
            }

            public void onDownloadFail(Uri uri, DownloadType type, DownloadFailReason reason) {
            }

            public void onDownloadCancel(Uri uri, DownloadType type) {
            }
        }).setDownloader(downloader).setRequirePower(options.isRequirePower()).setRequireCharging(options.isRequireCharging()).setRequireWLAN(options.isRequireWLAN()).setRequireDeviceStorage(options.isRequireDeviceStorage()).setManual(options.isManual()).build();
        List<DownloadItem> items = new LinkedList();
        items.add(item);
        downloader.download(info.mAccount, info.mToken, items);
        return downloadedItem[0];
    }

    public DownloadOptions ensureDownloadOptions(DownloadOptions options) {
        if (options == null) {
            Log.d("ImageDownloader", "download options is null, use default");
            options = this.mEngine.mDefaultDownloadOptions;
        }
        if (options.getUriAdapter() != null) {
            return options;
        }
        Log.d("ImageDownloader", "uri adapter is null, use default");
        return new DownloadOptions.Builder().cloneFrom(options).setUriAdapter(new BaseUriAdapter()).build();
    }

    public void cancel(Uri uri, DownloadType type) {
        this.mEngine.cancel(new Builder().setUri(uri).setType(type).build());
    }

    public void cancelAll(DownloadType type) {
        this.mEngine.cancelAll(type);
    }

    public void cancelAll() {
        this.mEngine.cancelAll();
    }

    public boolean contains(Uri uri, DownloadType type) {
        return this.mEngine.contains(new Builder().setUri(uri).setType(type).build());
    }

    public boolean isOrigin(DownloadType imageType) {
        return imageType != null && (imageType == DownloadType.ORIGIN || imageType == DownloadType.ORIGIN_FORCE);
    }

    public DownloadItemStatus getStatusSync(Uri uri, DownloadType downloadType) {
        SyncStatus status = SyncStatus.STATUS_NONE;
        DownloadedItem downloadedItem = null;
        DBImage image;
        String path;
        if (getInstance().contains(uri, downloadType)) {
            status = SyncStatus.STATUS_INIT;
        } else if (isOrigin(downloadType)) {
            image = new BaseUriAdapter().getDBItemForUri(uri);
            if (image != null) {
                path = new RequestCloudItem(downloadType.getPriority(), image).getVerifiedDownloadFilePathForRead();
                if (FileUtils.isFileExist(path)) {
                    status = SyncStatus.STATUS_SUCCESS;
                    downloadedItem = new DownloadedItem(path, image.getSecretKeyNoGenerate());
                } else {
                    int dbStatus = CloudUtils.getDownloadFileStatusFromDB(image);
                    if (2 == dbStatus) {
                        dbStatus = -1;
                        DownloadUtil.persistDownloadStatus(image, 0);
                    }
                    status = SyncStatus.toSyncStatus(dbStatus);
                }
            }
        } else {
            image = new BaseUriAdapter().getDBItemForUri(uri);
            if (image != null) {
                path = new RequestCloudItem(downloadType.getPriority(), image).getVerifiedDownloadFilePathForRead();
                if (FileUtils.isFileExist(path)) {
                    status = SyncStatus.STATUS_SUCCESS;
                    downloadedItem = new DownloadedItem(path, image.getSecretKeyNoGenerate());
                }
            }
        }
        return new DownloadItemStatus(status, downloadedItem);
    }
}
