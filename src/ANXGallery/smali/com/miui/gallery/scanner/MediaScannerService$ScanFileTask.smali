.class Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;
.super Lcom/miui/gallery/scanner/ScanTask;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanFileTask"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/lang/String;IZZ)V
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "foreground"    # Z
    .param p5, "forceScan"    # Z

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 226
    invoke-direct {p0, p3, p4, p5}, Lcom/miui/gallery/scanner/ScanTask;-><init>(IZZ)V

    .line 227
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    .line 228
    const-string v0, "MediaScannerService"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    check-cast p1, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 246
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFileForExternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ScanFileTask priority %d, foreground %s, path %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->isForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;->mPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
