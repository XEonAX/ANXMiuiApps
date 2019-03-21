package com.xiaomi.opensdk.file.model;

import android.content.Context;
import android.text.TextUtils;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.exception.NetworkException;
import cn.kuaipan.android.exception.ServerException;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import com.xiaomi.opensdk.file.sdk.KssMasterRef;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public final class MiCloudFileClient {
    private static volatile MiCloudFileClient sInstance;
    private KssMasterRef mKssMasterRef;

    private MiCloudFileClient(Context context) {
        this.mKssMasterRef = new KssMasterRef(context);
    }

    public static MiCloudFileClient getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MiCloudFileClient.class) {
                if (sInstance == null) {
                    if (context == null) {
                        throw new IllegalArgumentException("context can't be null");
                    }
                    sInstance = new MiCloudFileClient(context);
                }
            }
        }
        return sInstance;
    }

    public void upload(UploadContext uploadContext) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        try {
            this.mKssMasterRef.upload(uploadContext);
        } catch (KscException e) {
            transferException(e);
        } catch (KscRuntimeException e2) {
            transferException(e2);
        }
    }

    public void download(File savePath, DownloadParameter downloadParameter, MiCloudFileListener listener) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        if (TextUtils.isEmpty(downloadParameter.getKssDownloadString())) {
            throw new IllegalArgumentException("Cannot detect download sdk");
        }
        try {
            this.mKssMasterRef.download(savePath, downloadParameter, listener, true);
        } catch (KscException e) {
            transferException(e);
        } catch (KscRuntimeException e2) {
            transferException(e2);
        }
    }

    public RequestUploadParameter getRequestUploadParameter(UploadContext uploadContext) {
        return new RequestUploadParameter(uploadContext.getKssString(), null, uploadContext.getSha1(), uploadContext.getFileSize(), uploadContext.getFilePath());
    }

    public UploadParameter getUploadParameterForSFS(JSONObject data) throws JSONException {
        UploadParameter uploadParameter = new UploadParameter();
        uploadParameter.setUploadId(data.getString("upload_id"));
        uploadParameter.setKssUploadString(data.getJSONObject("kss").toString());
        return uploadParameter;
    }

    public CommitParameter getCommitParameter(UploadContext uploadTask) {
        return new CommitParameter(uploadTask.getCommitString(), null, uploadTask.getUploadId(), uploadTask.getSha1(), uploadTask.getFileSize());
    }

    public DownloadParameter getDownloadParameterForSFS(JSONObject data) throws JSONException {
        DownloadParameter downloadParameter = new DownloadParameter();
        downloadParameter.setKssDownloadString(data.getJSONObject("kss").toString());
        return downloadParameter;
    }

    private void transferException(Exception e) throws RetriableException, UnretriableException, AuthenticationException {
        if (e instanceof KscException) {
            String simpleMsg = ((KscException) e).getSimpleMessage();
            if (e instanceof NetworkException) {
                throw new RetriableException(simpleMsg, 300000);
            } else if ((e instanceof ServerException) && ((ServerException) e).getStatusCode() / 100 == 5) {
                throw new RetriableException(simpleMsg, 300000);
            } else {
                throw new UnretriableException(simpleMsg);
            }
        } else if (e instanceof KscRuntimeException) {
            throw new UnretriableException(e, ((KscRuntimeException) e).getErrorCode());
        }
    }
}
