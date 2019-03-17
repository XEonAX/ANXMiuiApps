.class public Lcom/miui/gallery/util/BindImageHelper;
.super Ljava/lang/Object;
.source "BindImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;
    }
.end annotation


# static fields
.field private static final PLACE_HOLDER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/BindImageHelper;->PLACE_HOLDER:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/gallery/util/BindImageHelper;->PLACE_HOLDER:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/miui/gallery/util/BindImageHelper;->bindCloudImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method private static bindCloudImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 12
    .param p0, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 102
    if-nez p0, :cond_1

    .line 103
    const-string v0, "BindImageHelper"

    const-string v1, "bindCloudImage view is null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v11

    .line 107
    .local v11, "imageHolder":Lcom/miui/gallery/util/uil/CloudImageHolder;
    const-string v0, "BindImageHelper"

    const-string v1, "downloadImage %s"

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    .line 110
    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v6

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    move-result-object v7

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->isDelayRequest()Z

    move-result v9

    invoke-virtual {v11}, Lcom/miui/gallery/util/uil/CloudImageHolder;->isShowLoadingImage()Z

    move-result v10

    move-object v3, p0

    .line 109
    invoke-virtual/range {v0 .. v10}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;ZZ)V

    goto :goto_0
.end method

.method public static bindFaceImage(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Z)V
    .locals 7
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "decodeRegion"    # Landroid/graphics/RectF;
    .param p6, "delayRequest"    # Z

    .prologue
    .line 80
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindFaceImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Z)V

    .line 81
    return-void
.end method

.method public static bindFaceImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Z)V
    .locals 9
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "decodeRegion"    # Landroid/graphics/RectF;
    .param p6, "delayRequest"    # Z

    .prologue
    .line 86
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V

    .line 91
    :cond_0
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 7
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 34
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 35
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V
    .locals 9
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x1

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V

    .line 39
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V
    .locals 10
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;
    .param p7, "delayRequest"    # Z
    .param p8, "showDownloadingImage"    # Z

    .prologue
    .line 42
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 43
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
    .locals 10
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;
    .param p7, "delayRequest"    # Z
    .param p8, "showDownloadingImage"    # Z
    .param p9, "listener"    # Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .prologue
    .line 46
    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v3, p3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 47
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V
    .locals 9
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x1

    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V

    .line 55
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V
    .locals 10
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;
    .param p7, "delayRequest"    # Z
    .param p8, "showDownloadingImage"    # Z

    .prologue
    .line 58
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 59
    return-void
.end method

.method public static bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
    .locals 9
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "decodeRegion"    # Landroid/graphics/RectF;
    .param p7, "delayRequest"    # Z
    .param p8, "showDownloadingImage"    # Z
    .param p9, "listener"    # Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .prologue
    .line 62
    if-nez p3, :cond_0

    .line 63
    const-string v1, "BindImageHelper"

    const-string v2, "bindImage view is null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    const v1, 0x7f120009

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setTag(ILjava/lang/Object;)V

    .line 67
    invoke-static/range {p1 .. p9}, Lcom/miui/gallery/util/BindImageHelper;->setCloudHolder(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {p3}, Lcom/miui/gallery/util/BindImageHelper;->bindCloudImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 72
    invoke-virtual {v2, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    move-object/from16 v0, p9

    invoke-static {p3, v0}, Lcom/miui/gallery/util/BindImageHelper;->getLocalLoadingListener(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    .line 71
    invoke-virtual/range {v1 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private static getLocalLoadingListener(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .locals 2
    .param p0, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p1, "listener"    # Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .prologue
    const v1, 0x7f120023

    .line 154
    invoke-interface {p0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/miui/gallery/util/BindImageHelper$2;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/BindImageHelper$2;-><init>(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 199
    .local v0, "obj":Lcom/miui/gallery/util/BindImageHelper$2;
    invoke-interface {p0, v1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setTag(ILjava/lang/Object;)V

    .line 201
    .end local v0    # "obj":Lcom/miui/gallery/util/BindImageHelper$2;
    :cond_0
    check-cast v0, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-object v0
.end method

.method public static isViewBindDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 94
    const v0, 0x7f120009

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setCloudHolder(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
    .locals 4
    .param p0, "downloadUri"    # Landroid/net/Uri;
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "aware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "regionRect"    # Landroid/graphics/RectF;
    .param p6, "delayRequest"    # Z
    .param p7, "showDownloadingImage"    # Z
    .param p8, "listener"    # Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .prologue
    .line 115
    invoke-static {p2}, Lcom/miui/gallery/util/uil/CloudImageHolder;->getImageHolder(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v1

    .line 116
    .local v1, "holder":Lcom/miui/gallery/util/uil/CloudImageHolder;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, p1}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, p3}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 119
    invoke-virtual {v2, p4}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 120
    invoke-virtual {v2, p5}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setRegionDecodeRect(Landroid/graphics/RectF;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setNeedDisplay(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p6}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setDelayRequest(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;

    move-result-object v2

    .line 123
    invoke-virtual {v2, p7}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setShowLoadingImage(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;

    .line 124
    if-eqz p8, :cond_0

    .line 125
    new-instance v0, Lcom/miui/gallery/util/BindImageHelper$1;

    invoke-direct {v0, p8, p2}, Lcom/miui/gallery/util/BindImageHelper$1;-><init>(Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 149
    .local v0, "cloudImageLoadingListener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;->setImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)Lcom/miui/gallery/util/uil/CloudImageHolder;

    .line 151
    .end local v0    # "cloudImageLoadingListener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    :cond_0
    return-void
.end method
