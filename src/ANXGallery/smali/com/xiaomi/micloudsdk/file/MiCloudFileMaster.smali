.class public Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;
.super Ljava/lang/Object;
.source "MiCloudFileMaster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<TT;>;"
    .local p2, "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    .line 29
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 6
    .param p2, "saveFile"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<TT;>;"
    .local p1, "remoteInfo":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 70
    new-instance v4, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string/jumbo v5, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {v4, v5}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v4, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 74
    .local v3, "resultJson":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v4, p1, v3}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getDownloadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    move-result-object v1

    .line 77
    .local v1, "downloadParameter":Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v4

    invoke-virtual {v4, p2, v1, p3}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "downloadParameter":Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    :cond_1
    return-void

    .line 79
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v4, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Ljava/lang/Object;
    .locals 11
    .param p2, "localFile"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<TT;>;"
    .local p1, "remoteInfo":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 34
    :cond_0
    new-instance v9, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string/jumbo v10, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {v9, v10}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 36
    :cond_1
    new-instance v7, Lcom/xiaomi/opensdk/file/model/UploadContext;

    invoke-direct {v7, p2, p3}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 37
    .local v7, "uploadContext":Lcom/xiaomi/opensdk/file/model/UploadContext;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    .line 39
    const/4 v6, 0x0

    .line 40
    .local v6, "retryTime":I
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x5

    if-ge v6, v9, :cond_2

    .line 42
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    move-result-object v3

    .line 44
    .local v3, "requestUploadParameter":Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v9, p1, v3}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lorg/json/JSONObject;

    move-result-object v5

    .line 45
    .local v5, "resultJson":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v9, p1, v5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    .local v4, "result":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_3

    .line 47
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    .local v1, "data":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getUploadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object v8

    .line 51
    .local v8, "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    invoke-virtual {v7, v8}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    .line 52
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    goto :goto_0

    .line 59
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "requestUploadParameter":Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    .end local v8    # "uploadParameter":Lcom/xiaomi/opensdk/file/model/UploadParameter;
    :cond_2
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;

    move-result-object v0

    .line 60
    .local v0, "commitParameter":Lcom/xiaomi/opensdk/file/model/CommitParameter;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v9, p1, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->commitUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lorg/json/JSONObject;

    move-result-object v5

    .line 61
    .restart local v5    # "resultJson":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v9, p1, v5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v0    # "commitParameter":Lcom/xiaomi/opensdk/file/model/CommitParameter;
    :cond_3
    return-object v4

    .line 62
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v9, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method
