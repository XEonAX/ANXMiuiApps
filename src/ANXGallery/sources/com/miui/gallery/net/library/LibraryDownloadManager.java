package com.miui.gallery.net.library;

import android.net.Uri;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.library.LibraryItem;
import com.miui.gallery.assistant.library.LibraryManager.DownloadListener;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.net.download.GalleryDownloadManager;
import com.miui.gallery.net.download.Request;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.net.download.Verifier.Sha1;
import com.miui.gallery.net.resource.DownloadRequest;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import miui.net.ConnectivityHelper;

public class LibraryDownloadManager {
    private Map<Long, List<DownloadListener>> mDownloadListenerMap = Collections.synchronizedMap(new HashMap());
    private Set<Long> mDownloadingItems = Collections.synchronizedSet(new HashSet());
    private Map<Long, List<Request>> mRequestMap = Collections.synchronizedMap(new HashMap());

    public boolean isLibraryDownloading(long libraryId) {
        return this.mRequestMap.containsKey(Long.valueOf(libraryId));
    }

    public synchronized void download(long libraryId, boolean allowedOverMetered, Set<LibraryItem> downloadSet, DownloadListener libraryStatusListener) {
        if (checkCondition(allowedOverMetered)) {
            addListener(libraryId, libraryStatusListener);
            if (!this.mRequestMap.containsKey(Long.valueOf(libraryId))) {
                List<Request> downloadRequests = new ArrayList(downloadSet.size());
                this.mRequestMap.put(Long.valueOf(libraryId), downloadRequests);
                final Set<LibraryItem> downloadingSet = new HashSet(downloadSet);
                for (final LibraryItem libraryItem : downloadSet) {
                    if (!this.mDownloadingItems.contains(Long.valueOf(libraryItem.getId()))) {
                        final long j = libraryId;
                        Request request = download(libraryItem, allowedOverMetered, new Listener() {
                            public void onStart() {
                            }

                            public void onProgressUpdate(int progress) {
                            }

                            public void onComplete(int resultCode) {
                                LibraryDownloadManager.this.mDownloadingItems.remove(Long.valueOf(libraryItem.getId()));
                                if (resultCode == 0) {
                                    Log.d("LibraryDownloadManager", "Library " + libraryItem.getName() + " download success!");
                                    downloadingSet.remove(libraryItem);
                                    if (downloadingSet.isEmpty() || LibraryDownloadManager.this.isDownloadItemsExists(downloadingSet)) {
                                        LibraryDownloadManager.this.downloadResult(j, 0);
                                        return;
                                    }
                                    return;
                                }
                                Log.d("LibraryDownloadManager", "Library " + libraryItem.getName() + " download failed!");
                                LibraryDownloadManager.this.downloadResult(j, 1);
                            }
                        });
                        if (request == null) {
                            downloadResult(libraryId, 1);
                            break;
                        } else {
                            downloadRequests.add(request);
                            this.mDownloadingItems.add(Long.valueOf(libraryItem.getId()));
                        }
                    }
                }
            }
        } else if (libraryStatusListener != null) {
            libraryStatusListener.onDownloadResult(libraryId, 1);
        }
    }

    private synchronized void addListener(long libraryId, DownloadListener libraryStatusListener) {
        List<DownloadListener> listeners = (List) this.mDownloadListenerMap.get(Long.valueOf(libraryId));
        if (listeners == null) {
            listeners = new ArrayList();
            this.mDownloadListenerMap.put(Long.valueOf(libraryId), listeners);
        }
        listeners.add(libraryStatusListener);
    }

    private boolean isDownloadItemsExists(Set<LibraryItem> downloadingSet) {
        if (BaseMiscUtil.isValid(downloadingSet)) {
            for (LibraryItem item : downloadingSet) {
                if (!item.isExist()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void cancel(long libraryId) {
        downloadResult(libraryId, 2);
    }

    private Request download(LibraryItem libraryItem, boolean allowedOverMetered, Listener listener) {
        File targetFile = new File(libraryItem.getTargetPath(GalleryApp.sGetAndroidContext()));
        try {
            Object[] response = new DownloadRequest(libraryItem.getId()).executeSync();
            if (response != null && response.length > 0) {
                Request downloadRequest = new Request(Uri.parse(response[0].url), targetFile);
                downloadRequest.setVerifier(new Sha1(libraryItem.getSha1()));
                downloadRequest.setAllowedOverMetered(allowedOverMetered);
                downloadRequest.setListener(listener);
                GalleryDownloadManager.INSTANCE.enqueue(downloadRequest);
                return downloadRequest;
            }
        } catch (RequestError requestError) {
            Log.e("LibraryDownloadManager", "fetch library item info error:" + requestError);
            requestError.printStackTrace();
        }
        return null;
    }

    private void downloadResult(long libraryId, int result) {
        List<Request> requestList = (List) this.mRequestMap.get(Long.valueOf(libraryId));
        if (requestList != null) {
            if (result != 0) {
                for (Request request : requestList) {
                    GalleryDownloadManager.INSTANCE.cancel(request);
                }
            }
            requestList.clear();
        }
        List<DownloadListener> downloadListeners = (List) this.mDownloadListenerMap.get(Long.valueOf(libraryId));
        if (BaseMiscUtil.isValid(downloadListeners)) {
            for (DownloadListener listener : downloadListeners) {
                listener.onDownloadResult(libraryId, result);
            }
            downloadListeners.clear();
        }
        this.mRequestMap.remove(Long.valueOf(libraryId));
        this.mDownloadListenerMap.remove(Long.valueOf(libraryId));
    }

    public static boolean checkCondition(boolean allowedOverMetered) {
        if (!CTA.canConnectNetwork()) {
            Log.e("LibraryDownloadManager", "CTA not confirmed");
            return false;
        } else if (!NetworkUtils.isNetworkConnected()) {
            Log.e("LibraryDownloadManager", "No network");
            return false;
        } else if (!allowedOverMetered && !ConnectivityHelper.getInstance().isUnmeteredNetworkConnected()) {
            Log.e("LibraryDownloadManager", "No unmetered network connected");
            return false;
        } else if (haveEnoughSpace()) {
            return true;
        } else {
            Log.e("LibraryDownloadManager", "No enough space");
            return false;
        }
    }

    private static boolean haveEnoughSpace() {
        try {
            if (GalleryApp.sGetAndroidContext().getDir("libs", 0).getFreeSpace() > 104857600) {
                return true;
            }
            Log.e("LibraryDownloadManager", "Sd card has less than 100M space left");
            return false;
        } catch (Throwable e) {
            Log.e("LibraryDownloadManager", e);
            return false;
        }
    }
}
