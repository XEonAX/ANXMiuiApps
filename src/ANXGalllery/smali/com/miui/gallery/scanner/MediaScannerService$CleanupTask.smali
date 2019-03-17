.class Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
.super Lcom/miui/gallery/scanner/ScanTask;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanupTask"
.end annotation


# instance fields
.field private mAlbumIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;ZI)V
    .locals 1
    .param p2, "foreground"    # Z
    .param p3, "priority"    # I

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;ZILjava/util/List;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;ZILjava/util/List;)V
    .locals 2
    .param p2, "foreground"    # Z
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p4, "albumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 421
    invoke-direct {p0, p3, p2}, Lcom/miui/gallery/scanner/ScanTask;-><init>(IZ)V

    .line 422
    iput-object p4, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    .line 423
    const-string v0, "MediaScannerService"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method


# virtual methods
.method protected canRunningInBackground()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    if-eqz p1, :cond_5

    instance-of v5, p1, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;

    if-eqz v5, :cond_5

    move-object v1, p1

    .line 456
    check-cast v1, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;

    .line 457
    .local v1, "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
    invoke-virtual {v1}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->getPriority()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->getPriority()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 476
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
    :cond_0
    :goto_0
    return v3

    .line 461
    .restart local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->getAlbumIds()Ljava/util/List;

    move-result-object v0

    .line 462
    .local v0, "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 463
    goto :goto_0

    .line 465
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 466
    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .end local v2    # "id":Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 471
    goto :goto_0

    .line 476
    .end local v0    # "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
    :cond_5
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getAlbumIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 432
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 433
    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    .line 434
    .local v0, "hasExternalStorageMounted":Z
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->isPrimaryStorageWritable(Landroid/content/Context;)Z

    move-result v1

    .line 435
    .local v1, "hasMainSDCard":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 436
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    iget-object v3, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-static {v2, p1, v3}, Lcom/miui/gallery/scanner/MediaScanner;->cleanup(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Ljava/util/List;)V

    .line 445
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 438
    :cond_1
    if-nez v0, :cond_2

    .line 439
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/scanner/MediaScannerService;->access$000(Lcom/miui/gallery/scanner/MediaScannerService;)V

    .line 441
    :cond_2
    if-nez v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/scanner/MediaScannerService;->access$100(Lcom/miui/gallery/scanner/MediaScannerService;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 485
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "CleanupTask priority [%d], foreground [%s], album ids: [%s]"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->isForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->mAlbumIds:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    .line 485
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    const-string v0, "all"

    goto :goto_0
.end method
