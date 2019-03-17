.class public Lcom/miui/gallery/share/ShareUserAdapter;
.super Lcom/miui/gallery/share/ShareUserAdapterBase;
.source "ShareUserAdapter.java"


# instance fields
.field private final mAddSahrer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addSharer"    # Z
    .param p3, "creatorId"    # Ljava/lang/String;

    .prologue
    .line 19
    const v0, 0x7f040145

    invoke-direct {p0, p1, p3, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    iput-boolean p2, p0, Lcom/miui/gallery/share/ShareUserAdapter;->mAddSahrer:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected getAbsentSharerIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 46
    const v0, 0x7f02002c

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapter;->mShareUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/miui/gallery/share/ShareUserAdapter;->mAddSahrer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 41
    const v0, 0x7f02016c

    return v0
.end method

.method protected getIconEffect()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f02016d

    return v0
.end method

.method protected intialDisplayOptions()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 24
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 28
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 29
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f02016c

    .line 31
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 32
    return-void
.end method
