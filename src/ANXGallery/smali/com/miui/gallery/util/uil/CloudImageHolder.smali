.class public Lcom/miui/gallery/util/uil/CloudImageHolder;
.super Ljava/lang/Object;
.source "CloudImageHolder.java"


# instance fields
.field private mDelayRequest:Z

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mImageLoadingProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

.field private mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private mNeedDisplay:Z

.field private mRegionDecodeRect:Landroid/graphics/RectF;

.field private mShowLoadingImage:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mNeedDisplay:Z

    .line 27
    iput-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mShowLoadingImage:Z

    return-void
.end method

.method public static getImageHolder(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 2
    .param p0, "image"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    const v1, 0x7f12001e

    .line 173
    invoke-interface {p0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageHolder;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-direct {v0}, Lcom/miui/gallery/util/uil/CloudImageHolder;-><init>()V

    .line 176
    .local v0, "obj":Lcom/miui/gallery/util/uil/CloudImageHolder;
    invoke-interface {p0, v1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setTag(ILjava/lang/Object;)V

    .line 178
    .end local v0    # "obj":Lcom/miui/gallery/util/uil/CloudImageHolder;
    :cond_0
    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageHolder;

    return-object v0
.end method


# virtual methods
.method public getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method public getImageLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method public getImageLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageLoadingProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    return-object v0
.end method

.method public getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getImageType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method public getRegionDecodeRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mRegionDecodeRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDelayRequest()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mDelayRequest:Z

    return v0
.end method

.method public isShowLoadingImage()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mShowLoadingImage:Z

    return v0
.end method

.method public needDisplay()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mNeedDisplay:Z

    return v0
.end method

.method public setDelayRequest(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "delayRequest"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mDelayRequest:Z

    .line 116
    return-object p0
.end method

.method public setDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 62
    return-object p0
.end method

.method public setImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "imageLoadingListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 89
    return-object p0
.end method

.method public setImageLoadingProgressListener(Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "imageLoadingProgressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageLoadingProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .line 98
    return-object p0
.end method

.method public setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 71
    return-object p0
.end method

.method public setImageType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 44
    return-object p0
.end method

.method public setNeedDisplay(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "needDisplay"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mNeedDisplay:Z

    .line 107
    return-object p0
.end method

.method public setRegionDecodeRect(Landroid/graphics/RectF;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mRegionDecodeRect:Landroid/graphics/RectF;

    .line 80
    return-object p0
.end method

.method public setShowLoadingImage(Z)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "showLoadingImage"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mShowLoadingImage:Z

    .line 125
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/miui/gallery/util/uil/CloudImageHolder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageHolder;->mUri:Landroid/net/Uri;

    .line 35
    return-object p0
.end method
