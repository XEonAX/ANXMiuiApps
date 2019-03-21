package com.miui.gallery.util.uil;

import android.net.Uri;
import android.view.View;
import com.miui.gallery.sdk.download.DownloadType;

public interface CloudImageLoadingProgressListener {
    void onProgressUpdate(Uri uri, DownloadType downloadType, View view, int i, int i2);
}
