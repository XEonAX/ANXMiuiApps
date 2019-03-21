package com.miui.gallery.util.uil;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;

public interface CloudImageLoadingListener {
    void onDownloadComplete(Uri uri, DownloadType downloadType, View view, String str);

    void onLoadingCancelled(Uri uri, DownloadType downloadType, View view);

    void onLoadingComplete(Uri uri, DownloadType downloadType, View view, Bitmap bitmap);

    void onLoadingFailed(Uri uri, DownloadType downloadType, View view, ErrorCode errorCode);

    void onLoadingStarted(Uri uri, DownloadType downloadType, View view);
}
