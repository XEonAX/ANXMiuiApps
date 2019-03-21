package com.xiaomi.micloudsdk.file;

import android.content.Context;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import com.xiaomi.opensdk.file.model.MiCloudFileClient;
import com.xiaomi.opensdk.file.model.MiCloudFileListener;
import com.xiaomi.opensdk.file.model.UploadContext;
import java.io.File;
import org.json.JSONObject;

public class MiCloudFileMaster<T> {
    private Context mContext;
    private MiCloudFileRequestor<T> mRequestor;

    public MiCloudFileMaster(Context context, MiCloudFileRequestor<T> requestor) {
        this.mContext = context;
        this.mRequestor = requestor;
    }

    public T upload(T remoteInfo, File localFile, MiCloudFileListener listener) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        if (remoteInfo == null || localFile == null) {
            throw new UnretriableException("参数错误，请参考API文档");
        }
        UploadContext uploadContext = new UploadContext(localFile, listener);
        MiCloudFileClient.getInstance(this.mContext).upload(uploadContext);
        int retryTime = 0;
        while (uploadContext.isNeedRequestUpload() && retryTime < 5) {
            try {
                JSONObject resultJson = this.mRequestor.requestUpload(remoteInfo, MiCloudFileClient.getInstance(this.mContext).getRequestUploadParameter(uploadContext));
                T handleRequestUploadResultJson = this.mRequestor.handleRequestUploadResultJson(remoteInfo, resultJson);
                if (handleRequestUploadResultJson != null) {
                    return handleRequestUploadResultJson;
                }
                uploadContext.setUploadParam(MiCloudFileClient.getInstance(this.mContext).getUploadParameterForSFS(resultJson.getJSONObject("data")));
                MiCloudFileClient.getInstance(this.mContext).upload(uploadContext);
                retryTime++;
            } catch (Throwable e) {
                throw new UnretriableException(e);
            }
        }
        return this.mRequestor.handleCommitUploadResult(remoteInfo, this.mRequestor.commitUpload(remoteInfo, MiCloudFileClient.getInstance(this.mContext).getCommitParameter(uploadContext)));
    }

    public void download(T remoteInfo, File saveFile, MiCloudFileListener listener) throws RetriableException, UnretriableException, AuthenticationException, InterruptedException {
        if (saveFile == null) {
            throw new UnretriableException("参数错误，请参考API文档");
        }
        try {
            JSONObject resultJson = this.mRequestor.requestDownload(remoteInfo);
            if (this.mRequestor.handleRequestDownloadResultJson(remoteInfo, resultJson)) {
                MiCloudFileClient.getInstance(this.mContext).download(saveFile, MiCloudFileClient.getInstance(this.mContext).getDownloadParameterForSFS(resultJson.getJSONObject("data")), listener);
            }
        } catch (Throwable e) {
            throw new UnretriableException(e);
        }
    }
}
