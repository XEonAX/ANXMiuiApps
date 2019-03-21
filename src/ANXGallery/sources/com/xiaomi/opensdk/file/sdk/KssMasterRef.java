package com.xiaomi.opensdk.file.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.exception.ServerMsgException;
import cn.kuaipan.android.http.IKscTransferListener;
import cn.kuaipan.android.http.KscHttpTransmitter;
import cn.kuaipan.android.kss.IKssDownloadRequestResult;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.download.KssDownloader;
import cn.kuaipan.android.kss.upload.KssUploadInfo;
import cn.kuaipan.android.kss.upload.KssUploader;
import cn.kuaipan.android.kss.upload.UploadFileInfo;
import cn.kuaipan.android.kss.upload.UploadTaskStore;
import cn.kuaipan.android.utils.ContextUtils;
import com.xiaomi.opensdk.file.model.DownloadParameter;
import com.xiaomi.opensdk.file.model.MiCloudFileListener;
import com.xiaomi.opensdk.file.model.UploadContext;
import com.xiaomi.opensdk.file.model.UploadParameter;
import com.xiaomi.opensdk.file.utils.FileSDKUtils;
import java.io.File;
import org.json.JSONException;

public class KssMasterRef implements KssDef {
    private final String TAG = "KssMasterRef";
    private final KssDownloader mDownloader;
    private final UploadTaskStore mTaskStore;
    private final KssUploader mUploader;

    private class KscTransferListener extends cn.kuaipan.android.http.IKscTransferListener.KscTransferListener {
        public MiCloudFileListener mMiCloudFileListener;

        public KscTransferListener(MiCloudFileListener miCloudFileListener) {
            this.mMiCloudFileListener = miCloudFileListener;
        }

        public void onDataSended(long pos, long total) {
            if (this.mMiCloudFileListener != null) {
                this.mMiCloudFileListener.onDataSended(pos, total);
            }
        }

        public void onDataReceived(long pos, long total) {
            if (this.mMiCloudFileListener != null) {
                this.mMiCloudFileListener.onDataReceived(pos, total);
            }
        }
    }

    public KssMasterRef(Context context) {
        this.mTaskStore = new UploadTaskStore(context, new FileDataFactory());
        KscHttpTransmitter transmitter = new KscHttpTransmitter(context);
        transmitter.setUserAgent(4, getUserAgent(context));
        this.mUploader = new KssUploader(transmitter, this.mTaskStore);
        this.mDownloader = new KssDownloader(transmitter);
    }

    public void upload(UploadContext uploadContext) throws KscException, InterruptedException {
        File localFile = uploadContext.getLocalFile();
        if (localFile == null || !localFile.isFile() || !localFile.canRead() || localFile.length() <= 0) {
            throw new KscRuntimeException(500003, localFile + " is not a exist file.");
        }
        KscTransferListener listener = new KscTransferListener(uploadContext.getListener());
        UploadFileInfo uploadFileInfo = UploadFileInfo.getFileInfo(localFile);
        int taskHash = getUploadHash(localFile, localFile.getAbsolutePath(), uploadFileInfo);
        if (hasStoredUploadInfo(taskHash) || uploadContext.getUploadParam() != null) {
            KssUploadInfo kssUploadInfo = null;
            while (!Thread.interrupted()) {
                if (kssUploadInfo == null) {
                    kssUploadInfo = getUploadInfo(uploadFileInfo, uploadContext, taskHash);
                }
                if (kssUploadInfo == null) {
                    if (listener != null) {
                        listener.setSendTotal(localFile.length());
                        listener.setSendPos(localFile.length());
                        return;
                    }
                    return;
                } else if (kssUploadInfo.isBroken()) {
                    uploadContext.setNeedRequestUpload(true);
                    uploadContext.setUploadParam(null);
                    return;
                } else if (kssUploadInfo.isCompleted()) {
                    if (listener != null) {
                        listener.setSendTotal(localFile.length());
                        listener.setSendPos(localFile.length());
                    }
                    deleteUploadInfo(taskHash);
                    uploadContext.setNeedRequestUpload(false);
                    uploadContext.setCommitString(kssUploadInfo.getCommitString());
                    uploadContext.setUploadId(kssUploadInfo.getUploadId());
                    uploadContext.setSha1(kssUploadInfo.getFileInfo().getSha1());
                    return;
                } else {
                    this.mUploader.upload(localFile, listener, taskHash, kssUploadInfo);
                }
            }
            throw new InterruptedException();
        }
        uploadContext.setNeedRequestUpload(true);
        uploadContext.setKssString(uploadFileInfo.getKssString());
        uploadContext.setSha1(uploadFileInfo.getSha1());
    }

    public void download(File savePath, DownloadParameter downloadParameter, MiCloudFileListener listener, boolean append) throws KscException, InterruptedException {
        if (savePath == null) {
            throw new KscRuntimeException(500003, "Save path can't be null.");
        }
        IKscTransferListener kscListener = new KscTransferListener(listener);
        try {
            IKssDownloadRequestResult requestResult = new FileDownloadRequestResult(FileSDKUtils.contentKssJsonToMap(downloadParameter.toJsonObject()));
            if (requestResult == null || requestResult.getStatus() != 0) {
                String errMsg = requestResult == null ? null : requestResult.getMessage();
                if (TextUtils.isEmpty(errMsg)) {
                    throw new KscException(503000, "Unknow error when requestDownload.");
                }
                throw new ServerMsgException(200, errMsg, "Failed on requestDownload");
            }
            this.mDownloader.download(savePath, append, kscListener, requestResult);
        } catch (JSONException e) {
            throw KscException.newException(e, "download failed");
        }
    }

    private KssUploadInfo getUploadInfo(UploadFileInfo uploadFileInfo, UploadContext uploadContext, int taskHash) throws KscException, InterruptedException {
        KssUploadInfo kssUploadInfo = this.mTaskStore == null ? null : this.mTaskStore.getUploadInfo(taskHash);
        if (kssUploadInfo == null) {
            UploadParameter uploadParameter = uploadContext.getUploadParam();
            if (uploadParameter == null) {
                throw new KscRuntimeException(500003, "uploadParam null");
            }
            try {
                kssUploadInfo = new KssUploadInfo(uploadFileInfo, new FileUploadRequestResult(FileSDKUtils.contentKssJsonToMap(uploadParameter.toJsonObject())));
                kssUploadInfo.setUploadId(uploadParameter.getUploadId());
                if (this.mTaskStore != null) {
                    this.mTaskStore.putUploadInfo(taskHash, kssUploadInfo);
                }
            } catch (JSONException e) {
                throw KscException.newException(e, "getUploadInfo failed");
            }
        }
        kssUploadInfo.setMaxChunkSize(uploadContext.getMaxChunkSize());
        Log.w("KssMasterRef", "KssUploadInfo Return:" + kssUploadInfo.getUploadId());
        return kssUploadInfo;
    }

    public boolean hasStoredUploadInfo(int taskHash) throws InterruptedException {
        Boolean bool;
        if (this.mTaskStore == null) {
            bool = null;
        } else {
            bool = Boolean.valueOf(this.mTaskStore.getUploadInfo(taskHash) != null);
        }
        return bool.booleanValue();
    }

    private void deleteUploadInfo(int taskHash) throws InterruptedException {
        if (this.mTaskStore != null) {
            this.mTaskStore.removeUploadInfo(taskHash);
        }
    }

    private static String getUserAgent(Context context) {
        String base = "KssRC4/1.0 %s/%s S3SDK/%s";
        return String.format("KssRC4/1.0 %s/%s S3SDK/%s", new Object[]{context.getPackageName(), ContextUtils.getAppVersion(context), "0.9.0a"});
    }

    private static int getUploadHash(File localFile, String fileIdentity, UploadFileInfo fileInfo) {
        String sha1 = fileInfo == null ? "" : fileInfo.getSha1();
        StringBuilder builder = new StringBuilder();
        builder.append(localFile);
        builder.append(":");
        builder.append(fileIdentity);
        builder.append(":");
        builder.append(sha1);
        return builder.toString().hashCode();
    }
}
