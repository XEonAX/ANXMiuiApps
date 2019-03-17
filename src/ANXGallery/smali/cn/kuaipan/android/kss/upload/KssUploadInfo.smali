.class public Lcn/kuaipan/android/kss/upload/KssUploadInfo;
.super Ljava/lang/Object;
.source "KssUploadInfo.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# instance fields
.field mBroken:Z

.field mExpectInfo:Lcn/kuaipan/android/kss/upload/ServerExpect;

.field private final mFileInfo:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

.field private final mGenerateTime:J

.field private mMaxChunkSize:J

.field private final mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

.field private mUploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;)V
    .locals 2
    .param p1, "fileInfo"    # Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .param p2, "requestResult"    # Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    .prologue
    .line 32
    invoke-static {}, Lcn/kuaipan/android/utils/OAuthTimeUtils;->currentTime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V
    .locals 3
    .param p1, "fileInfo"    # Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .param p2, "requestResult"    # Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .param p3, "generateTime"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mBroken:Z

    .line 28
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mMaxChunkSize:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mExpectInfo:Lcn/kuaipan/android/kss/upload/ServerExpect;

    .line 37
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mFileInfo:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    .line 38
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    .line 39
    iput-wide p3, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mGenerateTime:J

    .line 40
    return-void
.end method


# virtual methods
.method public getCommitString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v5    # "root":Lorg/json/JSONObject;
    .local v6, "root":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "file_meta"

    iget-object v8, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v8}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getFileMeta()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v7, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v7}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getBlockCount()I

    move-result v2

    .line 65
    .local v2, "count":I
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v1, "blocks":Lorg/json/JSONArray;
    iget-object v7, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    if-eqz v7, :cond_0

    if-lez v2, :cond_0

    .line 68
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v0, "blockObj":Lorg/json/JSONObject;
    const-string v7, "commit_meta"

    iget-object v8, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v8, v4}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getBlock(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v8

    iget-object v8, v8, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->meta:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "blockObj":Lorg/json/JSONObject;
    .end local v4    # "i":I
    :cond_0
    const-string v7, "commit_metas"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 79
    .end local v1    # "blocks":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v6    # "root":Lorg/json/JSONObject;
    .restart local v5    # "root":Lorg/json/JSONObject;
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 75
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Lorg/json/JSONException;
    :goto_2
    const-string v7, "KssUploadInfo"

    const-string v8, "Failed generate Json String for UploadRequestResult"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v5, 0x0

    goto :goto_1

    .line 75
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "root":Lorg/json/JSONObject;
    .restart local v6    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "root":Lorg/json/JSONObject;
    .restart local v5    # "root":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public getFileInfo()Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mFileInfo:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    return-object v0
.end method

.method public getGenerateTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mGenerateTime:J

    return-wide v0
.end method

.method public getMaxChunkSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mMaxChunkSize:J

    return-wide v0
.end method

.method public getRequestResult()Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isBroken()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mBroken:Z

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mRequestResult:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v0}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markBroken()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mBroken:Z

    .line 88
    return-void
.end method

.method public setMaxChunkSize(J)V
    .locals 1
    .param p1, "mMaxChunkSize"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mMaxChunkSize:J

    .line 104
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUploadId"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mUploadId:Ljava/lang/String;

    .line 96
    return-void
.end method
