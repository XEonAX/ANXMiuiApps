.class public Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;
.super Lcom/miui/gallery/share/ShareUserAdapterBase;
.source "BabyAlbumShareUserAdapter.java"


# static fields
.field private static sParentIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creatorId"    # Ljava/lang/String;

    .prologue
    .line 30
    const v0, 0x7f04002d

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    sget v0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->sParentIconSize:I

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->sParentIconSize:I

    .line 36
    :cond_0
    return-void
.end method

.method private isSharerParent(Lcom/miui/gallery/share/CloudUserCacheEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 101
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    const-string v1, "father"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    const-string v1, "mother"

    .line 102
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getAbsentSharerIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->isSharerParent(Lcom/miui/gallery/share/CloudUserCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020039

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02003a

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->mShareUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->isSharerParent(Lcom/miui/gallery/share/CloudUserCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02003b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02003c

    goto :goto_0
.end method

.method protected getDisplayName(Landroid/content/res/Resources;Lcom/miui/gallery/share/UserInfo;Lcom/miui/gallery/share/CloudUserCacheEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "user"    # Lcom/miui/gallery/share/UserInfo;
    .param p3, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 41
    iget-object v0, p3, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelationText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p2}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDisplayName(Landroid/content/res/Resources;Lcom/miui/gallery/share/UserInfo;Lcom/miui/gallery/share/CloudUserCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p3, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelationText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getIconEffect()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f020169

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->getItem(I)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v0

    .line 56
    .local v0, "entry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    const-string v2, "father"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 60
    :cond_0
    iget-object v1, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    const-string v2, "mother"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    return v0
.end method

.method protected intialDisplayOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 108
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 111
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 112
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f02003b

    .line 114
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 115
    return-void
.end method

.method protected setIconSize(Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->isSharerParent(Lcom/miui/gallery/share/CloudUserCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget v0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->sParentIconSize:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    sget v0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;->sParentIconSize:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/share/ShareUserAdapterBase;->setIconSize(Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
