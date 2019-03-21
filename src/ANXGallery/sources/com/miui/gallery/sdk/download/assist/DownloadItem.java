package com.miui.gallery.sdk.download.assist;

import android.net.Uri;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.adapter.IUriAdapter;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.sdk.download.listener.DownloadListener;
import com.miui.gallery.sdk.download.listener.DownloadProgressListener;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

public class DownloadItem {
    private final DownloadListener mDownloadListener;
    private final IDownloader mDownloader;
    private final boolean mManual;
    private final DownloadProgressListener mProgressListener;
    private final boolean mRequireCharging;
    private final boolean mRequireDeviceStorage;
    private final boolean mRequirePower;
    private final boolean mRequireWLAN;
    private AtomicInteger mStatus;
    private final DownloadType mType;
    private final Uri mUri;
    private final IUriAdapter mUriAdapter;
    private final ReentrantLock mUriLock;

    public static class Builder {
        private DownloadListener mDownloadListener;
        private IDownloader mDownloader;
        private boolean mManual;
        private DownloadProgressListener mProgressListener;
        private boolean mRequireCharging;
        private boolean mRequireDeviceStorage;
        private boolean mRequirePower;
        private boolean mRequireWLAN;
        private DownloadType mType;
        private Uri mUri;
        private IUriAdapter mUriAdapter;
        private ReentrantLock mUriLock;

        public Builder setUri(Uri uri) {
            this.mUri = uri;
            return this;
        }

        public Builder setUriAdapter(IUriAdapter uriAdapter) {
            this.mUriAdapter = uriAdapter;
            return this;
        }

        public Builder setUriLock(ReentrantLock uriLock) {
            this.mUriLock = uriLock;
            return this;
        }

        public Builder setType(DownloadType type) {
            this.mType = type;
            return this;
        }

        public Builder setDownloadListener(DownloadListener downloadListener) {
            this.mDownloadListener = downloadListener;
            return this;
        }

        public Builder setProgressListener(DownloadProgressListener progressListener) {
            this.mProgressListener = progressListener;
            return this;
        }

        public Builder setDownloader(IDownloader downloader) {
            this.mDownloader = downloader;
            return this;
        }

        public Builder setRequirePower(boolean requirePower) {
            this.mRequirePower = requirePower;
            return this;
        }

        public Builder setRequireCharging(boolean requireCharging) {
            this.mRequireCharging = requireCharging;
            return this;
        }

        public Builder setRequireWLAN(boolean requireWLAN) {
            this.mRequireWLAN = requireWLAN;
            return this;
        }

        public Builder setRequireDeviceStorage(boolean requireDeviceStorage) {
            this.mRequireDeviceStorage = requireDeviceStorage;
            return this;
        }

        public Builder setManual(boolean manual) {
            this.mManual = manual;
            return this;
        }

        public Builder cloneFrom(DownloadItem item) {
            this.mUri = item.getUri();
            this.mType = item.getType();
            this.mUriAdapter = item.getUriAdapter();
            this.mUriLock = item.getUriLock();
            this.mDownloadListener = item.getDownloadListener();
            this.mProgressListener = item.getProgressListener();
            this.mDownloader = item.getDownloader();
            this.mRequirePower = item.isRequirePower();
            this.mRequireCharging = item.isRequireCharging();
            this.mRequireWLAN = item.isRequireWLAN();
            this.mRequireDeviceStorage = item.isRequireDeviceStorage();
            this.mManual = item.isManual();
            return this;
        }

        public DownloadItem build() {
            return new DownloadItem(this);
        }
    }

    private DownloadItem(Builder builder) {
        this.mStatus = new AtomicInteger(0);
        this.mUri = builder.mUri;
        this.mUriAdapter = builder.mUriAdapter;
        this.mUriLock = builder.mUriLock;
        this.mType = builder.mType;
        this.mDownloadListener = builder.mDownloadListener;
        this.mProgressListener = builder.mProgressListener;
        this.mDownloader = builder.mDownloader;
        this.mRequirePower = builder.mRequirePower;
        this.mRequireCharging = builder.mRequireCharging;
        this.mRequireWLAN = builder.mRequireWLAN;
        this.mRequireDeviceStorage = builder.mRequireDeviceStorage;
        this.mManual = builder.mManual;
    }

    public DownloadItem(DownloadItem item) {
        this(new Builder().cloneFrom(item));
    }

    public Uri getUri() {
        return this.mUri;
    }

    public DownloadType getType() {
        return this.mType;
    }

    public IUriAdapter getUriAdapter() {
        return this.mUriAdapter;
    }

    public ReentrantLock getUriLock() {
        return this.mUriLock;
    }

    public DownloadListener getDownloadListener() {
        return this.mDownloadListener;
    }

    public DownloadProgressListener getProgressListener() {
        return this.mProgressListener;
    }

    public IDownloader getDownloader() {
        return this.mDownloader;
    }

    public boolean isRequirePower() {
        return this.mRequirePower;
    }

    public boolean isRequireCharging() {
        return this.mRequireCharging;
    }

    public boolean isRequireWLAN() {
        return this.mRequireWLAN;
    }

    public boolean isRequireDeviceStorage() {
        return this.mRequireDeviceStorage;
    }

    public boolean isManual() {
        return this.mManual;
    }

    public String getKey() {
        return DownloadUtil.generateKey(this.mUri, this.mType);
    }

    public int getPriority() {
        int base = 1000;
        if (!isManual()) {
            base = 1000 - 1;
        }
        if (isRequireWLAN()) {
            base -= 3;
        }
        if (isRequirePower()) {
            base -= 5;
        }
        if (isRequireDeviceStorage()) {
            base -= 11;
        }
        if (isRequireCharging()) {
            return base - 21;
        }
        return base;
    }

    public int getStatus() {
        return this.mStatus.get();
    }

    public boolean compareAnsSetStatus(int expect, int update) {
        return this.mStatus.compareAndSet(expect, update);
    }

    public boolean isStatusOk() {
        return getStatus() == 0;
    }

    public String toString() {
        return String.format(Locale.US, "uri[%s], type[%s]", new Object[]{this.mUri, this.mType.name()});
    }

    public static void callbackStarted(DownloadItem item) {
        DownloadListener listener = item.getDownloadListener();
        if (listener != null) {
            listener.onDownloadStarted(item.getUri(), item.getType());
        }
    }

    public static void callbackSuccess(DownloadItem item, DownloadedItem downloaded) {
        DownloadListener listener = item.getDownloadListener();
        if (listener != null) {
            listener.onDownloadSuccess(item.getUri(), item.getType(), downloaded);
        }
    }

    public static void callbackError(DownloadItem item, DownloadFailReason reason) {
        DownloadListener listener = item.getDownloadListener();
        if (listener != null) {
            listener.onDownloadFail(item.getUri(), item.getType(), reason);
        }
    }

    public static void callbackCancel(DownloadItem item) {
        DownloadListener listener = item.getDownloadListener();
        if (listener != null) {
            listener.onDownloadCancel(item.getUri(), item.getType());
        }
    }

    public static void callbackProgress(DownloadItem item, long cur, long total) {
        DownloadProgressListener listener = item.getProgressListener();
        if (listener != null) {
            listener.onDownloadProgress(item.getUri(), item.getType(), cur, total);
        }
    }
}
