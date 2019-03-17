.class public Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveParams"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mAlbumSyncState:I

.field private final mBulkNotify:Z

.field private final mIsInternalScanRequest:Z

.field private final mLocalFlag:I

.field private final mSaveFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;JIZ)V
    .locals 2
    .param p1, "saveFile"    # Ljava/io/File;
    .param p2, "albumId"    # J
    .param p4, "localFlag"    # I
    .param p5, "isInternalScanRequest"    # Z

    .prologue
    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mSaveFile:Ljava/io/File;

    .line 1052
    iput-wide p2, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumId:J

    .line 1053
    iput p4, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mLocalFlag:I

    .line 1054
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumSyncState:I

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mBulkNotify:Z

    .line 1056
    iput-boolean p5, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mIsInternalScanRequest:Z

    .line 1057
    return-void
.end method

.method public constructor <init>(Ljava/io/File;JZIZZ)V
    .locals 2
    .param p1, "saveFile"    # Ljava/io/File;
    .param p2, "albumId"    # J
    .param p4, "albumSyncable"    # Z
    .param p5, "localFlag"    # I
    .param p6, "bulkNotify"    # Z
    .param p7, "isInternalScanRequest"    # Z

    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p1, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mSaveFile:Ljava/io/File;

    .line 1071
    iput-wide p2, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumId:J

    .line 1072
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumSyncState:I

    .line 1073
    iput p5, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mLocalFlag:I

    .line 1074
    iput-boolean p6, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mBulkNotify:Z

    .line 1075
    iput-boolean p7, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mIsInternalScanRequest:Z

    .line 1076
    return-void

    .line 1072
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 1083
    iget-wide v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumId:J

    return-wide v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mLocalFlag:I

    return v0
.end method

.method public getSaveFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mSaveFile:Ljava/io/File;

    return-object v0
.end method

.method public isAlbumSyncable()Z
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumSyncState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBulkNotify()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mBulkNotify:Z

    return v0
.end method

.method public isInternalScanRequest()Z
    .locals 1

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mIsInternalScanRequest:Z

    return v0
.end method

.method public isValidSyncValue()Z
    .locals 2

    .prologue
    .line 1087
    iget v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->mAlbumSyncState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
