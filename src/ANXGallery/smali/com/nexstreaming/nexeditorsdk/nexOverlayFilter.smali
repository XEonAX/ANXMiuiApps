.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;
.super Ljava/lang/Object;
.source "nexOverlayFilter.java"


# static fields
.field private static final kMaxStringTrackCount:I = 0x8


# instance fields
.field private cacheEncodeOption:Ljava/lang/String;

.field private cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

.field private height:I

.field private id:Ljava/lang/String;

.field private isRelativeHeight:Z

.field private isRelativeWidth:Z

.field private mTitles:[Ljava/lang/String;

.field private option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

.field private relativeHeight:F

.field private relativeWidth:F

.field private updateBound:Z

.field private updateOption:Z

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x2bc

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cacheEncodeOption:Ljava/lang/String;

    .line 56
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->width:I

    .line 57
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->height:I

    .line 58
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeWidth:F

    .line 59
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeHeight:F

    .line 60
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeWidth:Z

    .line 61
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeHeight:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method getBound(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 286
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 287
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 288
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 289
    return-void
.end method

.method public getEffectOption()Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->getEffectLibrary(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->getEffectOptions(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    .line 254
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->setEffectType(I)V

    .line 256
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateOption:Z

    .line 257
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    return-object v0
.end method

.method getEncodedEffectOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    if-nez v0, :cond_0

    .line 272
    const-string v0, ""

    .line 279
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateOption:Z

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateOption:Z

    .line 276
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->clearUpadted()V

    .line 277
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;->getTitleOptions(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cacheEncodeOption:Ljava/lang/String;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cacheEncodeOption:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeWidth:Z

    if-nez v0, :cond_0

    .line 195
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->height:I

    .line 197
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 197
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeHeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOverlayAssetFilter()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->forItem(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    return-object v0
.end method

.method public getRelativeHeight()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeHeight:F

    return v0
.end method

.method public getRelativeWidth()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeWidth:F

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method getTitles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeWidth:Z

    if-nez v0, :cond_0

    .line 183
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->width:I

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 185
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeWidth:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateBound:Z

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    if-nez v0, :cond_1

    .line 296
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->option:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->isUpdated()Z

    move-result v0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeHeight:Z

    .line 171
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->height:I

    if-eq v0, p1, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateBound:Z

    .line 173
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->height:I

    .line 174
    return-void
.end method

.method public setRelativeHeight(F)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 238
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeHeight:Z

    .line 240
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 241
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateBound:Z

    .line 243
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeHeight:F

    .line 244
    return-void
.end method

.method public setRelativeWidth(F)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeWidth:Z

    .line 217
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 218
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateBound:Z

    .line 220
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->relativeWidth:F

    .line 221
    return-void
.end method

.method public setTitle(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 123
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    .line 127
    :cond_0
    if-ge p1, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->mTitles:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 130
    :cond_1
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isRelativeWidth:Z

    .line 159
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->width:I

    if-eq v0, p1, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->updateBound:Z

    .line 161
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->width:I

    .line 162
    return-void
.end method
