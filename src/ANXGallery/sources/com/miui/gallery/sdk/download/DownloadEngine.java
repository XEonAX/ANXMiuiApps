package com.miui.gallery.sdk.download;

import android.net.Uri;
import com.miui.gallery.sdk.download.DownloadOptions.Builder;
import com.miui.gallery.sdk.download.adapter.BaseUriAdapter;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.sdk.download.downloader.MicroThumbnailDownloader;
import com.miui.gallery.sdk.download.downloader.OriginDownloader;
import com.miui.gallery.sdk.download.downloader.ThumbnailDownloader;
import com.miui.gallery.sdk.download.executor.AbsDownloadExecutor;
import com.miui.gallery.sdk.download.executor.SingleThreadExecutor;
import com.miui.gallery.sdk.download.executor.ThreadPoolExecutor;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

class DownloadEngine {
    private static final Map<DownloadType, Integer> sDownloaderMap = new HashMap();
    private static final IDownloader[] sDownloaders = new IDownloader[3];
    private static final AbsDownloadExecutor[] sExecutors = new AbsDownloadExecutor[4];
    private static final Map<DownloadType, Integer> sExecutorsMap = new HashMap();
    final DownloadOptions mDefaultDownloadOptions = new Builder().setUriAdapter(new BaseUriAdapter()).build();
    private final Map<String, ReentrantLock> mUriLocks = new HashMap();

    static {
        sExecutorsMap.put(DownloadType.MICRO, Integer.valueOf(0));
        sExecutorsMap.put(DownloadType.THUMBNAIL, Integer.valueOf(1));
        sExecutorsMap.put(DownloadType.ORIGIN, Integer.valueOf(2));
        sExecutorsMap.put(DownloadType.ORIGIN_FORCE, Integer.valueOf(2));
        sExecutorsMap.put(DownloadType.THUMBNAIL_BATCH, Integer.valueOf(3));
        sExecutorsMap.put(DownloadType.ORIGIN_BATCH, Integer.valueOf(3));
        sDownloaderMap.put(DownloadType.MICRO, Integer.valueOf(0));
        sDownloaderMap.put(DownloadType.THUMBNAIL, Integer.valueOf(1));
        sDownloaderMap.put(DownloadType.THUMBNAIL_BATCH, Integer.valueOf(1));
        sDownloaderMap.put(DownloadType.ORIGIN, Integer.valueOf(2));
        sDownloaderMap.put(DownloadType.ORIGIN_FORCE, Integer.valueOf(2));
        sDownloaderMap.put(DownloadType.ORIGIN_BATCH, Integer.valueOf(2));
    }

    DownloadEngine() {
    }

    public void download(DownloadItem item, boolean atFirst, boolean interruptExecuting) {
        if (item == null || item.getKey() == null) {
            throw new IllegalArgumentException("Invalid download item");
        }
        getExecutor(item.getType()).download(item, atFirst, interruptExecuting);
    }

    private String generateLockKey(Uri uri, DownloadType type) {
        switch (type) {
            case THUMBNAIL:
            case THUMBNAIL_BATCH:
            case ORIGIN:
            case ORIGIN_BATCH:
            case ORIGIN_FORCE:
                return uri.toString();
            default:
                return DownloadUtil.generateKey(uri, type);
        }
    }

    public ReentrantLock getLockForUri(Uri uri, DownloadType type) {
        ReentrantLock lock;
        synchronized (this.mUriLocks) {
            String key = generateLockKey(uri, type);
            lock = (ReentrantLock) this.mUriLocks.get(key);
            if (lock == null) {
                lock = new ReentrantLock();
                this.mUriLocks.put(key, lock);
            }
        }
        return lock;
    }

    public boolean cancel(DownloadItem item) {
        return getExecutor(item.getType()).cancel(item);
    }

    public void cancelAll(DownloadType type) {
        getExecutor(type).cancelAll();
    }

    public void cancelAll() {
        for (int i = 0; i < sExecutors.length; i++) {
            if (sExecutors[i] != null) {
                sExecutors[i].cancelAll();
            }
        }
    }

    public boolean contains(DownloadItem item) {
        return getExecutor(item.getType()).contains(item);
    }

    public IDownloader getDownloader(DownloadType type) {
        IDownloader iDownloader;
        int index = ((Integer) sDownloaderMap.get(type)).intValue();
        synchronized (sDownloaders) {
            if (sDownloaders[index] == null) {
                sDownloaders[index] = createDownloader(index);
            }
            iDownloader = sDownloaders[index];
        }
        return iDownloader;
    }

    private static IDownloader createDownloader(int type) {
        switch (type) {
            case 0:
                return new MicroThumbnailDownloader();
            case 1:
                return new ThumbnailDownloader();
            case 2:
                return new OriginDownloader();
            default:
                throw new UnsupportedOperationException("Unsupported type: " + type);
        }
    }

    private static AbsDownloadExecutor getExecutor(DownloadType downloadType) {
        AbsDownloadExecutor absDownloadExecutor;
        int type = ((Integer) sExecutorsMap.get(downloadType)).intValue();
        synchronized (sExecutors) {
            if (sExecutors[type] == null) {
                sExecutors[type] = createExecutor(type);
            }
            absDownloadExecutor = sExecutors[type];
        }
        return absDownloadExecutor;
    }

    private static AbsDownloadExecutor createExecutor(int type) {
        switch (type) {
            case 0:
                return new ThreadPoolExecutor(10, 100);
            case 1:
                return new ThreadPoolExecutor(1, 100);
            case 2:
                return new SingleThreadExecutor(1, -1);
            case 3:
                return new ThreadPoolExecutor(10, -1);
            default:
                throw new IllegalArgumentException("invalidate executor type " + type);
        }
    }
}
