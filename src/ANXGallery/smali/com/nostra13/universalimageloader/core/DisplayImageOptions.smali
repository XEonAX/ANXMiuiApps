.class public final Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field private blurRadius:I

.field private final cacheInMemory:Z

.field private cacheInSubMemory:Z

.field private final cacheOnDisk:Z

.field private final cacheThumbnail:Z

.field private final considerExifParams:Z

.field private considerFileLength:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final delayCacheThumbnail:Z

.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private fileLength:J

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private isCacheBigPhoto:Z

.field private isHighPriority:Z

.field private isLoadFromBigPhotoCache:Z

.field private isLoadFromMemoryOnly:Z

.field private isLoadFromMicroCache:Z

.field private isLoadOriginScaleThumbnail:Z

.field private isLoadThumbnail:Z

.field private isPreferSyncLoadFromMicroCache:Z

.field private isSecretImage:Z

.field private isSyncLoadFromThumbCache:Z

.field private final isSyncLoading:Z

.field private final postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z

.field private reusedBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

.field private secretKey:[B

.field private usingRegionDecoderFace:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    .line 120
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    .line 121
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    .line 122
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    .line 126
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    .line 127
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    .line 128
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 129
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 130
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    .line 131
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    .line 132
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    .line 133
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 134
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 135
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 136
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    .line 137
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    .line 139
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheThumbnail:Z

    .line 140
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayCacheThumbnail:Z

    .line 141
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->usingRegionDecoderFace:Z

    .line 143
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSecretImage:Z

    .line 144
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->secretKey:[B

    .line 146
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoadFromThumbCache:Z

    .line 147
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->reusedBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    .line 148
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadThumbnail:Z

    .line 149
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadOriginScaleThumbnail:Z

    .line 150
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMicroCache:Z

    .line 151
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$2900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheBigPhoto:Z

    .line 152
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromBigPhotoCache:Z

    .line 153
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMemoryOnly:Z

    .line 154
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isPreferSyncLoadFromMicroCache:Z

    .line 155
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isHighPriority:Z

    .line 156
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerFileLength:Z

    .line 157
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->fileLength:J

    .line 158
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->blurRadius:I

    .line 159
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$3700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInSubMemory:Z

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$3900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$4000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$4100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$5000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheThumbnail:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayCacheThumbnail:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->usingRegionDecoderFace:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSecretImage:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)[B
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->secretKey:[B

    return-object v0
.end method

.method static synthetic access$6200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoadFromThumbCache:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/miui/gallery/util/ReusedBitmapCache;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->reusedBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadThumbnail:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadOriginScaleThumbnail:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMicroCache:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheBigPhoto:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromBigPhotoCache:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMemoryOnly:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isPreferSyncLoadFromMicroCache:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerFileLength:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)J
    .locals 2
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->fileLength:J

    return-wide v0
.end method

.method static synthetic access$7300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->blurRadius:I

    return v0
.end method

.method static synthetic access$7400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInSubMemory:Z

    return v0
.end method

.method public static createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 812
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->blurRadius:I

    return v0
.end method

.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDelayBeforeLoading()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->fileLength:J

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 191
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 195
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 187
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getReusedBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->reusedBitmapCache:Lcom/miui/gallery/util/ReusedBitmapCache;

    return-object v0
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->secretKey:[B

    return-object v0
.end method

.method public isCacheBigPhoto()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheBigPhoto:Z

    return v0
.end method

.method public isCacheInMemory()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public isCacheInSubMemory()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInSubMemory:Z

    return v0
.end method

.method public isCacheOnDisk()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method public isCacheThumbnail()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheThumbnail:Z

    return v0
.end method

.method public isConsiderExifParams()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public isConsiderFileLength()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerFileLength:Z

    return v0
.end method

.method public isDelayCacheThumbnail()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayCacheThumbnail:Z

    return v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isHighPriority:Z

    return v0
.end method

.method public isLoadFromBigPhotoCache()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromBigPhotoCache:Z

    return v0
.end method

.method public isLoadFromMemoryOnly()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMemoryOnly:Z

    return v0
.end method

.method public isLoadFromMicroCache()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMicroCache:Z

    return v0
.end method

.method public isLoadOriginScaleThumbnail()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadOriginScaleThumbnail:Z

    return v0
.end method

.method public isLoadThumbnail()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadThumbnail:Z

    return v0
.end method

.method public isPreferSyncLoadFromMicroCache()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isPreferSyncLoadFromMicroCache:Z

    return v0
.end method

.method public isResetViewBeforeLoading()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method public isSecretImage()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSecretImage:Z

    return v0
.end method

.method public isSyncLoadFromThumbCache()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoadFromThumbCache:Z

    return v0
.end method

.method isSyncLoading()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public shouldDelayBeforeLoading()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPostProcess()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPreProcess()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageForEmptyUri()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageOnFail()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageOnLoading()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usingRegionDecoderFace()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->usingRegionDecoderFace:Z

    return v0
.end method
