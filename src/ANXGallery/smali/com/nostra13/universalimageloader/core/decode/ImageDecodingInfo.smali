.class public Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"


# instance fields
.field private final considerExifParams:Z

.field private final considerFileLength:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final fileLength:J

.field private final imageKey:Ljava/lang/String;

.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final imageUri:Ljava/lang/String;

.field private final inBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

.field private final isCacheBigPhoto:Z

.field private final isDecodeThumbnail:Z

.field private final isLoadFromBigPhotoCache:Z

.field private final isRegionDecodeFace:Z

.field private final isSecretImage:Z

.field private final originalImageUri:Ljava/lang/String;

.field private final regionDecodeRect:Landroid/graphics/RectF;

.field private final secretKey:[B

.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private final viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 2
    .param p1, "imageKey"    # Ljava/lang/String;
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "originalImageUri"    # Ljava/lang/String;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p6, "downloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .param p7, "displayOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 74
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 75
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 77
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 78
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    .line 80
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isConsiderExifParams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    .line 81
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 82
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->regionDecodeRect:Landroid/graphics/RectF;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isRegionDecodeFace:Z

    .line 86
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSecretImage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isSecretImage:Z

    .line 87
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getSecretKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->secretKey:[B

    .line 88
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getReusedBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->inBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    .line 89
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isDecodeThumbnail:Z

    .line 90
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheBigPhoto()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto:Z

    .line 91
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromBigPhotoCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isLoadFromBigPhotoCache:Z

    .line 92
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isConsiderFileLength()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerFileLength:Z

    .line 93
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->fileLength:J

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "imageKey"    # Ljava/lang/String;
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "originalImageUri"    # Ljava/lang/String;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p6, "downloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .param p7, "displayOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p8, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 106
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 107
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 109
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 110
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    .line 112
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isConsiderExifParams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    .line 113
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 114
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 116
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->regionDecodeRect:Landroid/graphics/RectF;

    .line 117
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->usingRegionDecoderFace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isRegionDecodeFace:Z

    .line 118
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSecretImage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isSecretImage:Z

    .line 119
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getSecretKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->secretKey:[B

    .line 120
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getReusedBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->inBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    .line 121
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isDecodeThumbnail:Z

    .line 122
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheBigPhoto()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto:Z

    .line 123
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromBigPhotoCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isLoadFromBigPhotoCache:Z

    .line 124
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isConsiderFileLength()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerFileLength:Z

    .line 125
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->fileLength:J

    .line 126
    return-void
.end method

.method private copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 129
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 130
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 131
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 132
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 134
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 135
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 137
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 138
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 139
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 142
    :cond_1
    return-void
.end method

.method private copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 192
    return-void
.end method

.method private copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 196
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 198
    return-void
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->fileLength:J

    return-wide v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getInBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->inBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    return-object v0
.end method

.method public getRegionDecodeRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->regionDecodeRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->secretKey:[B

    return-object v0
.end method

.method public getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public isCacheBigPhoto()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto:Z

    return v0
.end method

.method public isConsiderFileLength()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerFileLength:Z

    return v0
.end method

.method public isDecodeThumbnail()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isDecodeThumbnail:Z

    return v0
.end method

.method public isLoadFromBigPhotoCache()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isLoadFromBigPhotoCache:Z

    return v0
.end method

.method public isRegionDecodeFace()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isRegionDecodeFace:Z

    return v0
.end method

.method public isSecretImage()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isSecretImage:Z

    return v0
.end method

.method public shouldConsiderExifParams()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    return v0
.end method
