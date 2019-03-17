.class abstract Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
.super Lcom/miui/gallery/util/uil/CloudImageLoadingListenerAdapter;
.source "BulkDownloadHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/BulkDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BulkItemLoadingListener"
.end annotation


# instance fields
.field private mDownloadItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoadingListenerAdapter;-><init>()V

    .line 215
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    .line 216
    return-void
.end method

.method private isValidate()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {v0, p4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->setDownloadPath(Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->onLoadingSuccess(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "BulkDownloadHelper"

    const-string v1, "onLoadingComplete not validate"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {p0, v0, p4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->onLoadingFailed(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "BulkDownloadHelper"

    const-string v1, "onLoadingFailed not validate"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onLoadingFailed(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;Lcom/miui/gallery/error/core/ErrorCode;)V
.end method

.method public abstract onLoadingProgress(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;JJ)V
.end method

.method public abstract onLoadingSuccess(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
.end method

.method public onProgressUpdate(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;II)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "current"    # I
    .param p5, "total"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    if-gt p4, p5, :cond_0

    .line 251
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p4

    mul-float/2addr v0, v1

    int-to-float v1, p5

    div-float v6, v0, v1

    .line 252
    .local v6, "progress":F
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getSize()J

    move-result-wide v4

    .line 253
    .local v4, "size":J
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->mDownloadItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    long-to-float v0, v4

    mul-float/2addr v0, v6

    float-to-long v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;->onLoadingProgress(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;JJ)V

    .line 258
    .end local v4    # "size":J
    .end local v6    # "progress":F
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v0, "BulkDownloadHelper"

    const-string v1, "onProgressUpdate not validate"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
