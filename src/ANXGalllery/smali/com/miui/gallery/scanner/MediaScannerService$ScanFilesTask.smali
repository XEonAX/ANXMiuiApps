.class Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;
.super Lcom/miui/gallery/scanner/ScanTask;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanFilesTask"
.end annotation


# instance fields
.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanStartIndex:I

.field private mScanType:I

.field private mTaskStartTime:J

.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZIJ)V
    .locals 2
    .param p3, "priority"    # I
    .param p4, "foreground"    # Z
    .param p5, "scanType"    # I
    .param p6, "taskStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZIJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 267
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/scanner/ScanTask;-><init>(IZ)V

    .line 268
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    .line 269
    iput p5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanType:I

    .line 270
    iput-wide p6, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mTaskStartTime:J

    .line 271
    const-string v0, "MediaScannerService"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected canRunningInBackground()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 311
    if-eqz p1, :cond_3

    instance-of v4, p1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 312
    check-cast v1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;

    .line 313
    .local v1, "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;
    invoke-virtual {v1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->getFiles()Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "existingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 315
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "file":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    .end local v0    # "existingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;
    .end local v2    # "file":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 320
    .restart local v0    # "existingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "existingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "existingTask":Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getFiles()Ljava/util/List;
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
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v10, 0x0

    .line 285
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanStartIndex:I

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v10

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    iget v5, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanStartIndex:I

    iget-object v6, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    const-string v4, "MediaScannerService"

    const-string v5, "%s %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 294
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v4, v0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->scanFiles(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)I

    move-result v1

    .line 295
    .local v1, "nextScanIndex":I
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanStartIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanStartIndex:I

    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 297
    :cond_2
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 298
    iget-wide v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mTaskStartTime:J

    invoke-static {v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastImagesScanTime(J)V

    .line 303
    :cond_3
    :goto_1
    const-string v5, "MediaScannerService"

    const-string v6, "ScanFilesTask [%s], scan [%d] files costs [%d]"

    if-eqz p1, :cond_5

    .line 304
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "interrupted"

    .line 305
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 303
    invoke-static {v5, v6, v4, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_4
    iget v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mScanType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 300
    iget-wide v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mTaskStartTime:J

    invoke-static {v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastVideosScanTime(J)V

    goto :goto_1

    .line 304
    :cond_5
    const-string v4, "finished"

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ScanFilesTask priority %d, foreground %s, files %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->isForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;->mFiles:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
