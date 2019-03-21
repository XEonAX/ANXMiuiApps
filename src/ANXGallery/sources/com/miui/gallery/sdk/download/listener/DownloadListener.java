package com.miui.gallery.sdk.download.listener;

import android.net.Uri;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadedItem;

public interface DownloadListener {
    void onDownloadCancel(Uri uri, DownloadType downloadType);

    void onDownloadFail(Uri uri, DownloadType downloadType, DownloadFailReason downloadFailReason);

    void onDownloadStarted(Uri uri, DownloadType downloadType);

    void onDownloadSuccess(Uri uri, DownloadType downloadType, DownloadedItem downloadedItem);
}
