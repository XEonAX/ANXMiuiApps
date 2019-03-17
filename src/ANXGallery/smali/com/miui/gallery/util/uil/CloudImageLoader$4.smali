.class Lcom/miui/gallery/util/uil/CloudImageLoader$4;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;->onSuccessLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

.field final synthetic val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V
    .locals 9
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    const/4 v6, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v8

    .line 259
    .local v8, "loadingListener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    if-eqz v8, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v4}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$400(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v1, v2, v4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->needDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 264
    .local v3, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$400(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFileCipher()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    if-eqz v3, :cond_3

    .line 267
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .line 268
    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$400(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFileCipher()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 274
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .line 275
    invoke-static {v2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$400(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageAware()Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    move-result-object v2

    .line 278
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;

    iget-object v7, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v5, v7, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 274
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 284
    .end local v3    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_2
    :goto_1
    return-void

    .line 270
    .restart local v3    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_3
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$400(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFileCipher()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    goto :goto_0

    .line 280
    .end local v3    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_4
    if-eqz v8, :cond_2

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v8, v0, v1, v2, v6}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
