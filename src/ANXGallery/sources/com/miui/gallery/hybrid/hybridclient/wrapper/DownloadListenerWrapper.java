package com.miui.gallery.hybrid.hybridclient.wrapper;

import android.webkit.DownloadListener;

public class DownloadListenerWrapper implements DownloadListener {
    protected DownloadListener downloadListener;

    public DownloadListenerWrapper(DownloadListener downloadListener) {
        this.downloadListener = downloadListener;
    }

    public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
        if (this.downloadListener != null) {
            this.downloadListener.onDownloadStart(url, userAgent, contentDisposition, mimetype, contentLength);
        }
    }

    public DownloadListener getWrapped() {
        return this.downloadListener;
    }
}
