package com.miui.gallery.sdk.download.listener;

import android.net.Uri;
import com.miui.gallery.sdk.download.DownloadType;

public interface DownloadProgressListener {
    void onDownloadProgress(Uri uri, DownloadType downloadType, long j, long j2);
}
