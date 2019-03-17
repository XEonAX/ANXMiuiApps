.class Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScannerFileClient"
.end annotation


# instance fields
.field private final mBatchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

.field private final mBulkNotify:Z

.field private final mInserter:Lcom/miui/gallery/scanner/MediaBulkInserter;

.field private final mIsInternalScanRequest:Z

.field private mNonBulkInsertCount:I

.field private final mTriggerSync:Z


# direct methods
.method constructor <init>(ZLcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;ZZ)V
    .locals 0
    .param p1, "bulkNotify"    # Z
    .param p2, "inserter"    # Lcom/miui/gallery/scanner/MediaBulkInserter;
    .param p3, "batchOperator"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    .param p4, "triggerSync"    # Z
    .param p5, "isInternalScanRequest"    # Z

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-boolean p1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mBulkNotify:Z

    .line 731
    iput-boolean p4, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mTriggerSync:Z

    .line 732
    iput-object p3, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mBatchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    .line 733
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mInserter:Lcom/miui/gallery/scanner/MediaBulkInserter;

    .line 734
    iput-boolean p5, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mIsInternalScanRequest:Z

    .line 735
    return-void
.end method


# virtual methods
.method public scanFile(Landroid/content/Context;Ljava/io/File;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "album"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 738
    iget-boolean v0, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isOnlyLinkFolder:Z

    if-eqz v0, :cond_1

    .line 740
    const-wide/16 v8, 0x0

    .line 769
    :cond_0
    :goto_0
    return-wide v8

    .line 753
    :cond_1
    iget-boolean v0, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isShareAlbum:Z

    if-eqz v0, :cond_2

    iget-wide v0, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getUniformAlbumId(J)J

    move-result-wide v2

    .line 754
    .local v2, "albumId":J
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mInserter:Lcom/miui/gallery/scanner/MediaBulkInserter;

    if-eqz v0, :cond_4

    .line 755
    new-instance v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    iget-boolean v1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mTriggerSync:Z

    if-eqz v1, :cond_3

    iget v1, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    .line 757
    invoke-static {v1}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isSyncable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iget-boolean v6, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mBulkNotify:Z

    iget-boolean v7, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mIsInternalScanRequest:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JZIZZ)V

    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mInserter:Lcom/miui/gallery/scanner/MediaBulkInserter;

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mBatchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    .line 755
    invoke-static {p1, v0, v1, v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)J

    move-result-wide v8

    .line 761
    .local v8, "result":J
    const-wide/16 v0, -0x4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 762
    iget v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mNonBulkInsertCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mNonBulkInsertCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 763
    iput v10, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mNonBulkInsertCount:I

    .line 764
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mInserter:Lcom/miui/gallery/scanner/MediaBulkInserter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    goto :goto_0

    .line 753
    .end local v2    # "albumId":J
    .end local v8    # "result":J
    :cond_2
    iget-wide v2, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    goto :goto_1

    .restart local v2    # "albumId":J
    :cond_3
    move v4, v10

    .line 757
    goto :goto_2

    .line 769
    :cond_4
    new-instance v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    iget-boolean v1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mTriggerSync:Z

    if-eqz v1, :cond_5

    iget v1, p3, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    .line 772
    invoke-static {v1}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isSyncable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-boolean v6, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mBulkNotify:Z

    iget-boolean v7, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->mIsInternalScanRequest:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JZIZZ)V

    .line 769
    invoke-static {p1, v0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v8

    goto :goto_0

    :cond_5
    move v4, v10

    .line 772
    goto :goto_3
.end method
