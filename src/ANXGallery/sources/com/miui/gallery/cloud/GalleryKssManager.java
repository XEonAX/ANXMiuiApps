package com.miui.gallery.cloud;

import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.xiaomi.micloudsdk.file.MiCloudFileMaster;
import com.xiaomi.micloudsdk.file.MiCloudFileRequestor;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import com.xiaomi.opensdk.file.model.MiCloudFileListener;
import java.io.File;

public class GalleryKssManager {
    private static MiCloudFileMaster<RequestCloudItem>[] sMaster = new MiCloudFileMaster[4];

    public static synchronized void reset() {
        synchronized (GalleryKssManager.class) {
            for (int i = 0; i < sMaster.length; i++) {
                sMaster[i] = null;
            }
        }
    }

    private static synchronized MiCloudFileMaster<RequestCloudItem> createRequestor(boolean isShared, boolean isVideo) {
        MiCloudFileMaster<RequestCloudItem> miCloudFileMaster;
        int i = 0;
        synchronized (GalleryKssManager.class) {
            int i2 = isShared ? 0 : 1;
            if (!isVideo) {
                i = 2;
            }
            int index = i2 + i;
            if (sMaster[index] == null) {
                AccountInfo info = AccountCache.getAccountInfo();
                if (info == null) {
                    miCloudFileMaster = null;
                } else {
                    MiCloudFileRequestor<RequestCloudItem> requestor;
                    Context context = GalleryApp.sGetAndroidContext();
                    CloudUrlProvider urlProvider = CloudUrlProvider.getUrlProvider(isShared, isVideo);
                    if (isShared) {
                        requestor = new CloudGallerySharerRequestor(info.mAccount, urlProvider);
                    } else {
                        requestor = new CloudGalleryOwnerRequestor(info.mAccount, urlProvider);
                    }
                    sMaster[index] = new MiCloudFileMaster(context, requestor);
                }
            }
            miCloudFileMaster = sMaster[index];
        }
        return miCloudFileMaster;
    }

    public static void doOwnerUpload(RequestCloudItem requestCloudItem, File file) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        MiCloudFileMaster<RequestCloudItem> master = createRequestor(false, requestCloudItem.dbCloud.isVideoType());
        if (master != null) {
            ApplicationHelper.getMiCloudProvider().doFileSDKUpload(master, requestCloudItem, file, new UploadTransferLisener(requestCloudItem));
        }
    }

    public static void doSharerUpload(RequestCloudItem requestCloudItem, File file) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        MiCloudFileMaster<RequestCloudItem> master = createRequestor(true, requestCloudItem.dbCloud.isVideoType());
        if (master != null) {
            ApplicationHelper.getMiCloudProvider().doFileSDKUpload(master, requestCloudItem, file, new UploadTransferLisener(requestCloudItem));
        }
    }

    public static void doOwnerDownload(RequestCloudItem requestItem, String downloadFilePath, MiCloudFileListener l) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        doDownload(createRequestor(false, requestItem.dbCloud.isVideoType()), requestItem, downloadFilePath, l);
    }

    public static void doSharerDownload(RequestCloudItem requestItem, String downloadFilePath, MiCloudFileListener l) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        doDownload(createRequestor(true, requestItem.dbCloud.isVideoType()), requestItem, downloadFilePath, l);
    }

    private static void doDownload(MiCloudFileMaster<RequestCloudItem> master, RequestCloudItem requestItem, String downloadFilePath, MiCloudFileListener l) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        if (master != null) {
            ApplicationHelper.getMiCloudProvider().doFileSDKDownload(master, requestItem, new File(downloadFilePath), l);
        }
    }
}
