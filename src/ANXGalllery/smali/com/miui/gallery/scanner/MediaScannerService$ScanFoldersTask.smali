.class Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;
.super Lcom/miui/gallery/scanner/ScanTask;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanFoldersTask"
.end annotation


# instance fields
.field private mBulkNotify:Z

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecursiveScan:Z

.field private mScanStartIndex:I

.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZZ)V
    .locals 2
    .param p3, "priority"    # I
    .param p4, "recursiveScan"    # Z
    .param p5, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 345
    invoke-direct {p0, p3, p5}, Lcom/miui/gallery/scanner/ScanTask;-><init>(IZ)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mBulkNotify:Z

    .line 346
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    .line 347
    iput-boolean p4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mRecursiveScan:Z

    .line 348
    const-string v0, "MediaScannerService"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZZZ)V
    .locals 0
    .param p3, "priority"    # I
    .param p4, "recursiveScan"    # Z
    .param p5, "foreground"    # Z
    .param p6, "bulkNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZZ)V

    .line 353
    iput-boolean p6, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mBulkNotify:Z

    .line 354
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 381
    if-eqz p1, :cond_4

    instance-of v4, p1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 382
    check-cast v1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;

    .line 383
    .local v1, "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;
    invoke-virtual {v1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->getPriority()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 399
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;
    :cond_0
    :goto_0
    return v3

    .line 387
    .restart local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->getPaths()Ljava/util/List;

    move-result-object v0

    .line 388
    .local v0, "existingPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 389
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 394
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "existingPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;
    :cond_4
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getPaths()Ljava/util/List;
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
    .line 357
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v10, 0x0

    .line 362
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mScanStartIndex:I

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v10

    .line 365
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    iget v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mScanStartIndex:I

    iget-object v6, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    const-string v4, "MediaScannerService"

    const-string v5, "%s %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 371
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    iget-boolean v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mRecursiveScan:Z

    iget-boolean v6, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mBulkNotify:Z

    invoke-static {v4, v1, p1, v5, v6}, Lcom/miui/gallery/scanner/MediaScanner;->scanDirectories(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;ZZ)I

    move-result v0

    .line 372
    .local v0, "nextScanIndex":I
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mScanStartIndex:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mScanStartIndex:I

    .line 373
    const-string v5, "MediaScannerService"

    const-string v6, "ScanFoldersTask [%s], scan [%d] directories costs [%d]"

    if-eqz p1, :cond_2

    .line 374
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "interrupted"

    .line 375
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 373
    invoke-static {v5, v6, v4, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_2
    const-string v4, "finished"

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 408
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ScanFoldersTask priority %d, recursiveScan %b, foreground %b, paths %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mRecursiveScan:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->isForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;->mPaths:Ljava/util/List;

    aput-object v4, v2, v3

    .line 408
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
