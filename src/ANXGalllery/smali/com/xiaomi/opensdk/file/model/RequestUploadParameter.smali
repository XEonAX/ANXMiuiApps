.class public Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
.super Ljava/lang/Object;
.source "RequestUploadParameter.java"


# instance fields
.field private mAwsString:Ljava/lang/String;

.field private mFileMimeType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSHA1:Ljava/lang/String;

.field private mFileSize:J

.field private mKssString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "kssString"    # Ljava/lang/String;
    .param p2, "awsString"    # Ljava/lang/String;
    .param p3, "fileSha1"    # Ljava/lang/String;
    .param p4, "fileSize"    # J
    .param p6, "fileName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mAwsString:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    .line 34
    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 35
    iput-object p6, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getFileSHA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    return-object v0
.end method

.method public getKssString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    return-object v0
.end method
