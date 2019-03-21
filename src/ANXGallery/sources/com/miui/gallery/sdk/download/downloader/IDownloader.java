package com.miui.gallery.sdk.download.downloader;

import android.accounts.Account;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import java.util.List;

public interface IDownloader {
    void download(Account account, GalleryExtendedAuthToken galleryExtendedAuthToken, List<DownloadItem> list);
}
