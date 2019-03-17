.class public final Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
.super Ljava/lang/Object;
.source "MiCloudFileClient.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;


# instance fields
.field private mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    if-nez v0, :cond_2

    .line 34
    const-class v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    if-nez v0, :cond_1

    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 41
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_2
    sget-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    return-object v0
.end method

.method private transferException(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x493e0

    .line 129
    instance-of v1, p1, Lcn/kuaipan/android/exception/KscException;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 130
    check-cast v1, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {v1}, Lcn/kuaipan/android/exception/KscException;->getSimpleMessage()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "simpleMsg":Ljava/lang/String;
    instance-of v1, p1, Lcn/kuaipan/android/exception/NetworkException;

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-direct {v1, v0, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    .line 133
    :cond_0
    instance-of v1, p1, Lcn/kuaipan/android/exception/ServerException;

    if-eqz v1, :cond_1

    .line 134
    check-cast p1, Lcn/kuaipan/android/exception/ServerException;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcn/kuaipan/android/exception/ServerException;->getStatusCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 135
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-direct {v1, v0, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    .line 138
    :cond_1
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "simpleMsg":Ljava/lang/String;
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2
    instance-of v1, p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    if-eqz v1, :cond_3

    .line 140
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    move-object v1, p1

    check-cast v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    invoke-virtual {v1}, Lcn/kuaipan/android/exception/KscRuntimeException;->getErrorCode()I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 142
    :cond_3
    return-void
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 3
    .param p1, "savePath"    # Ljava/io/File;
    .param p2, "downloadParameter"    # Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .param p3, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->getKssDownloadString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Z)V
    :try_end_0
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcn/kuaipan/android/exception/KscException;
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Lcn/kuaipan/android/exception/KscException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Lcn/kuaipan/android/exception/KscRuntimeException;
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 73
    .end local v0    # "e":Lcn/kuaipan/android/exception/KscRuntimeException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot detect download sdk"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .locals 8
    .param p1, "uploadTask"    # Lcom/xiaomi/opensdk/file/model/UploadContext;

    .prologue
    .line 107
    new-instance v1, Lcom/xiaomi/opensdk/file/model/CommitParameter;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getCommitString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/opensdk/file/model/CommitParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    .local v1, "commitParameter":Lcom/xiaomi/opensdk/file/model/CommitParameter;
    return-object v1
.end method

.method public getDownloadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;-><init>()V

    .line 124
    .local v0, "downloadParameter":Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->setKssDownloadString(Ljava/lang/String;)V

    .line 125
    return-object v0
.end method

.method public getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .locals 7
    .param p1, "uploadContext"    # Lcom/xiaomi/opensdk/file/model/UploadContext;

    .prologue
    .line 78
    new-instance v0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getKssString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 82
    .local v0, "parameter":Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    return-object v0
.end method

.method public getUploadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;-><init>()V

    .line 101
    .local v0, "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    const-string/jumbo v1, "upload_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setUploadId(Ljava/lang/String;)V

    .line 102
    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setKssUploadString(Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .locals 2
    .param p1, "uploadContext"    # Lcom/xiaomi/opensdk/file/model/UploadContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-virtual {v1, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    :try_end_0
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lcn/kuaipan/android/exception/KscException;
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 52
    .end local v0    # "e":Lcn/kuaipan/android/exception/KscException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Lcn/kuaipan/android/exception/KscRuntimeException;
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
