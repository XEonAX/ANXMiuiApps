package com.miui.gallery.util.uil;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;

public class CloudImageLoadingListenerAdapter implements CloudImageLoadingListener {
    public void onLoadingStarted(Uri uri, DownloadType type, View view) {
    }

    public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
    }

    public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
    }

    public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
    }

    public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
    }
}
