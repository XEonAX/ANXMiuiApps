.class Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDownloadManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-void
.end method


# virtual methods
.method protected doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onSelected()V

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1000(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->onSelected()V

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onSelected()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onSelected()V

    goto :goto_0
.end method

.method protected doOnLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V

    .line 283
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 285
    .local v0, "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$400(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$800(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$700(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;)V

    .line 289
    .end local v0    # "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    :cond_0
    return-void
.end method
