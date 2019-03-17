.class public Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileFilter"
.end annotation


# instance fields
.field private mHasMediaFile:Z

.field private mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p1, "jobContext"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .line 1524
    return-void
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1528
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1530
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1531
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1532
    invoke-static {v0}, Lcom/miui/gallery/scanner/MediaScanner;->isScannableDirectory(Ljava/io/File;)Z

    move-result v1

    .line 1545
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 1533
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1534
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1537
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v3

    .line 1538
    .local v1, "hasMedia":Z
    :cond_3
    iget-boolean v4, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mHasMediaFile:Z

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 1539
    iput-boolean v3, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mHasMediaFile:Z

    goto :goto_0
.end method

.method public hasMediaFile()Z
    .locals 1

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->mHasMediaFile:Z

    return v0
.end method
