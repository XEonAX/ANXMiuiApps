.class public Lcom/miui/gallery/ui/FacePageGridItem;
.super Lcom/miui/gallery/ui/MicroThumbGridItem;
.source "FacePageGridItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V
    .locals 9
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "regionRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x1

    .line 19
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 20
    .local v2, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageGridItem;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v6, p4

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V

    .line 21
    return-void

    .line 19
    .end local v2    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_0
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0
.end method
