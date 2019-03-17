.class public Lcom/xiaomi/opensdk/file/model/UploadContext;
.super Ljava/lang/Object;
.source "UploadContext.java"


# instance fields
.field private isNeedRequestUpload:Z

.field private mCommitString:Ljava/lang/String;

.field private mKssString:Ljava/lang/String;

.field private final mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

.field private final mLocalFile:Ljava/io/File;

.field private mMaxChunkSize:J

.field private mSha1:Ljava/lang/String;

.field private mUploadID:Ljava/lang/String;

.field private mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 2
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .prologue
    .line 37
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;J)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;J)V
    .locals 1
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .param p3, "size"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Ljava/io/File;

    .line 42
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 43
    iput-wide p3, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mMaxChunkSize:J

    .line 44
    return-void
.end method


# virtual methods
.method public getCommitString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mCommitString:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKssString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mKssString:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    return-object v0
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Ljava/io/File;

    return-object v0
.end method

.method public getMaxChunkSize()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mMaxChunkSize:J

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadID:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;

    return-object v0
.end method

.method public isNeedRequestUpload()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload:Z

    return v0
.end method

.method public setCommitString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCommitString"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mCommitString:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setKssString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKssString"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mKssString:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setNeedRequestUpload(Z)V
    .locals 0
    .param p1, "isNeedRequestUpload"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload:Z

    .line 76
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSha1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mSha1:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUploadID"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadID:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V
    .locals 0
    .param p1, "mUploadParam"    # Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .line 68
    return-void
.end method
