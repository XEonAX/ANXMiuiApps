.class public final Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;,
        Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field private final cacheInMemory:Z

.field private final cacheOnDisk:Z

.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final isSyncLoading:Z

.field private final postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    .line 89
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    .line 90
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    .line 95
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    .line 96
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    .line 97
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 98
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    .line 100
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    .line 101
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 103
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 104
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 105
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$2000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$2100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$2200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$3100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public static createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDelayBeforeLoading()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 138
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
    .line 142
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
    .line 134
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
    .line 158
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public isCacheInMemory()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public isCacheOnDisk()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisk:Z

    return v0
.end method

.method public isConsiderExifParams()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public isResetViewBeforeLoading()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method isSyncLoading()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public shouldDelayBeforeLoading()Z
    .locals 1

    .prologue
    .line 130
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
    .line 126
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
    .line 122
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
    .line 114
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
    .line 118
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
    .line 110
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
