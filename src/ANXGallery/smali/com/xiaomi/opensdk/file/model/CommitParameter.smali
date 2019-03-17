.class public Lcom/xiaomi/opensdk/file/model/CommitParameter;
.super Ljava/lang/Object;
.source "CommitParameter.java"


# instance fields
.field private mAwsString:Ljava/lang/String;

.field private mFileSHA1:Ljava/lang/String;

.field private mFileSize:J

.field private mKssString:Ljava/lang/String;

.field private mUploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "kssString"    # Ljava/lang/String;
    .param p2, "awsString"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;
    .param p4, "fileSha1"    # Ljava/lang/String;
    .param p5, "fileSize"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 30
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mAwsString:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSHA1:Ljava/lang/String;

    .line 34
    iput-wide p5, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 35
    return-void
.end method


# virtual methods
.method public getKssString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    return-object v0
.end method
