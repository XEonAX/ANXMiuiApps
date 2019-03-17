.class public Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.super Ljava/lang/Object;
.source "KssMasterRef.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDownloader:Lcn/kuaipan/android/kss/download/KssDownloader;

.field private final mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

.field private final mUploader:Lcn/kuaipan/android/kss/upload/KssUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v2, "KssMasterRef"

    iput-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;-><init>()V

    .line 46
    .local v0, "dataFactory":Lcn/kuaipan/android/kss/IDataFactory;
    new-instance v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {v2, p1, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;-><init>(Landroid/content/Context;Lcn/kuaipan/android/kss/IDataFactory;)V

    iput-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .line 48
    new-instance v1, Lcn/kuaipan/android/http/KscHttpTransmitter;

    invoke-direct {v1, p1}, Lcn/kuaipan/android/http/KscHttpTransmitter;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "transmitter":Lcn/kuaipan/android/http/KscHttpTransmitter;
    const/4 v2, 0x4

    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/kuaipan/android/http/KscHttpTransmitter;->setUserAgent(ILjava/lang/String;)V

    .line 51
    new-instance v2, Lcn/kuaipan/android/kss/upload/KssUploader;

    iget-object v3, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {v2, v1, v3}, Lcn/kuaipan/android/kss/upload/KssUploader;-><init>(Lcn/kuaipan/android/http/KscHttpTransmitter;Lcn/kuaipan/android/kss/upload/UploadTaskStore;)V

    iput-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mUploader:Lcn/kuaipan/android/kss/upload/KssUploader;

    .line 52
    new-instance v2, Lcn/kuaipan/android/kss/download/KssDownloader;

    invoke-direct {v2, v1}, Lcn/kuaipan/android/kss/download/KssDownloader;-><init>(Lcn/kuaipan/android/http/KscHttpTransmitter;)V

    iput-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/KssDownloader;

    .line 53
    return-void
.end method

.method private deleteUploadInfo(I)V
    .locals 1
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->removeUploadInfo(I)V

    goto :goto_0
.end method

.method private static getUploadHash(Ljava/io/File;Ljava/lang/String;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I
    .locals 3
    .param p0, "localFile"    # Ljava/io/File;
    .param p1, "fileIdentity"    # Ljava/lang/String;
    .param p2, "fileInfo"    # Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    .prologue
    .line 201
    if-nez p2, :cond_0

    const-string v1, ""

    .line 202
    .local v1, "sha1":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    return v2

    .line 201
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "sha1":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUploadInfo(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .locals 8
    .param p1, "uploadFileInfo"    # Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .param p2, "uploadContext"    # Lcom/xiaomi/opensdk/file/model/UploadContext;
    .param p3, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v5, :cond_0

    const/4 v2, 0x0

    .line 154
    .local v2, "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :goto_0
    if-nez v2, :cond_2

    .line 155
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object v4

    .line 156
    .local v4, "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    const/4 v0, 0x0

    .line 157
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_1

    .line 158
    new-instance v5, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v6, 0x7a123

    const-string/jumbo v7, "uploadParam null"

    invoke-direct {v5, v6, v7}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 153
    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .end local v4    # "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v5, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->getUploadInfo(I)Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    move-result-object v2

    goto :goto_0

    .line 162
    .restart local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .restart local v4    # "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    invoke-direct {v3, v0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V

    .line 169
    .local v3, "requestResult":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    new-instance v2, Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    .end local v2    # "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    invoke-direct {v2, p1, v3}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;)V

    .line 171
    .restart local v2    # "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    invoke-virtual {v4}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->getUploadId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->setUploadId(Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-eqz v5, :cond_2

    .line 173
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v5, p3, v2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->putUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;)V

    .line 177
    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "requestResult":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .end local v4    # "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getMaxChunkSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->setMaxChunkSize(J)V

    .line 178
    const-string v5, "KssMasterRef"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KssUploadInfo Return:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v2

    .line 163
    .restart local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "getUploadInfo failed"

    invoke-static {v1, v5}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v5

    throw v5
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v0, "KssRC4/1.0 %s/%s S3SDK/%s"

    .line 196
    .local v0, "base":Ljava/lang/String;
    const-string v1, "KssRC4/1.0 %s/%s S3SDK/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcn/kuaipan/android/utils/ContextUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0.9.0a"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Z)V
    .locals 8
    .param p1, "savePath"    # Ljava/io/File;
    .param p2, "downloadParameter"    # Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .param p3, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v5, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v6, 0x7a123

    const-string v7, "Save path can\'t be null."

    invoke-direct {v5, v6, v7}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 124
    :cond_0
    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-direct {v3, p0, p3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 125
    .local v3, "kscListener":Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
    const/4 v0, 0x0

    .line 127
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    new-instance v4, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    invoke-direct {v4, v0}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;-><init>(Ljava/util/Map;)V

    .line 133
    .local v4, "requestResult":Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    if-eqz v4, :cond_1

    .line 134
    invoke-interface {v4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getStatus()I

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    :cond_1
    if-nez v4, :cond_2

    const/4 v2, 0x0

    .line 136
    .local v2, "errMsg":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    new-instance v5, Lcn/kuaipan/android/exception/KscException;

    const v6, 0x7acd8

    const-string v7, "Unknow error when requestDownload."

    invoke-direct {v5, v6, v7}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 128
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v4    # "requestResult":Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "download failed"

    invoke-static {v1, v5}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v5

    throw v5

    .line 135
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "requestResult":Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    :cond_2
    invoke-interface {v4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 140
    .restart local v2    # "errMsg":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 v6, 0xc8

    const-string v7, "Failed on requestDownload"

    invoke-direct {v5, v6, v2, v7}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 144
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/KssDownloader;

    invoke-virtual {v5, p1, p4, v3, v4}, Lcn/kuaipan/android/kss/download/KssDownloader;->download(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V

    .line 145
    return-void
.end method

.method public hasStoredUploadInfo(I)Z
    .locals 1
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->getUploadInfo(I)Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .locals 11
    .param p1, "uploadContext"    # Lcom/xiaomi/opensdk/file/model/UploadContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 58
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getLocalFile()Ljava/io/File;

    move-result-object v2

    .line 59
    .local v2, "localFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 61
    :cond_0
    new-instance v5, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v6, 0x7a123

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a exist file."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 65
    :cond_1
    new-instance v1, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getListener()Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 67
    .local v1, "listener":Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
    invoke-static {v2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getFileInfo(Ljava/io/File;)Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v4

    .line 68
    .local v4, "uploadFileInfo":Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadHash(Ljava/io/File;Ljava/lang/String;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I

    move-result v3

    .line 70
    .local v3, "taskHash":I
    invoke-virtual {p0, v3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->hasStoredUploadInfo(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object v5

    if-nez v5, :cond_3

    .line 72
    invoke-virtual {p1, v10}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 73
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getKssString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setKssString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    .line 116
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 80
    .local v0, "kssUploadInfo":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 84
    :cond_4
    if-nez v0, :cond_5

    .line 85
    invoke-direct {p0, v4, p1, v3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadInfo(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    move-result-object v0

    .line 88
    :cond_5
    if-nez v0, :cond_6

    .line 90
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->setSendTotal(J)V

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->setSendPos(J)V

    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 97
    invoke-virtual {p1, v10}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    goto :goto_0

    .line 100
    :cond_7
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 101
    if-eqz v1, :cond_8

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->setSendTotal(J)V

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->setSendPos(J)V

    .line 105
    :cond_8
    invoke-direct {p0, v3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->deleteUploadInfo(I)V

    .line 106
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 107
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getCommitString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setCommitString(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadId(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getFileInfo()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_9
    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mUploader:Lcn/kuaipan/android/kss/upload/KssUploader;

    invoke-virtual {v5, v2, v1, v3, v0}, Lcn/kuaipan/android/kss/upload/KssUploader;->upload(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;ILcn/kuaipan/android/kss/upload/KssUploadInfo;)V

    goto :goto_1
.end method
