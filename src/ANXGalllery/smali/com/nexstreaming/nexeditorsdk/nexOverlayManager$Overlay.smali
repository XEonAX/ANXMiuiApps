.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;
.super Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;
.source "nexOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overlay"
.end annotation


# instance fields
.field private aspect:[F

.field private ids:[Ljava/lang/String;

.field private maxAspect:I

.field private selectAspect:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 93
    return-void
.end method

.method static synthetic access$200(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    move-result-object v0

    return-object v0
.end method

.method private static promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;
    .locals 2

    .prologue
    .line 216
    invoke-interface {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 223
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectAspect()V
    .locals 5

    .prologue
    .line 252
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v3

    .line 253
    const/high16 v1, 0x40400000    # 3.0f

    .line 254
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    if-ge v0, v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    aget v2, v2, v0

    sub-float v2, v3, v2

    .line 256
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    .line 257
    :cond_0
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 259
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect:I

    move v1, v2

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect:I

    aget v0, v0, v1

    return v0
.end method

.method public getSupportedAspects()[F
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    new-array v1, v0, [F

    .line 233
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getSupportedLocales()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->tag:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->thumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hidden()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->hidden()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->ids:[Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public includeSubtitle()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->ids:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->ids:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 187
    const-string/jumbo v5, "sub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const/4 v0, 0x1

    .line 192
    :cond_0
    return v0

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isDelete()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->isDelete()Z

    move-result v0

    return v0
.end method

.method public name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    return-object v0
.end method

.method public selectAspect(I)V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    if-gt v0, p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect:I

    goto :goto_0
.end method

.method setAspect(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 265
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    if-lt v0, v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    if-nez v0, :cond_1

    .line 269
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    .line 270
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->ids:[Ljava/lang/String;

    .line 273
    :cond_1
    const-string v0, "9v16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    const/high16 v2, 0x3f100000    # 0.5625f

    aput v2, v0, v1

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->ids:[Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    aput-object p1, v0, v1

    .line 287
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    .line 289
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->selectAspect()V

    goto :goto_0

    .line 275
    :cond_2
    const-string v0, "2v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    goto :goto_1

    .line 277
    :cond_3
    const-string v0, "1v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    goto :goto_1

    .line 279
    :cond_4
    const-string v0, "1v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->aspect:[F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->maxAspect:I

    const v2, 0x3fe38e39

    aput v2, v0, v1

    goto :goto_1
.end method

.method public setTag(I)V
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->tag:I

    .line 213
    return-void
.end method

.method public bridge synthetic thumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->thumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validate()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->validate()Z

    move-result v0

    return v0
.end method
