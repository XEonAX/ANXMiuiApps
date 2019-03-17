.class public final Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;
.super Ljava/lang/Object;
.source "nexEffectLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary$OnInstallPluginEffectPackageAsyncListener;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static getEffectLibrary(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    iget-object v1, v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    sput-object v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    .line 69
    :cond_0
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    invoke-direct {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    .line 72
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;

    return-object v0
.end method

.method public static getPluginDirPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 484
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method checkEffectID(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/String;Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Z

    move-result v0

    .line 464
    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/String;Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Z

    move-result v0

    .line 467
    :cond_0
    return v0
.end method

.method public findClipEffectById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 266
    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v2, v3, :cond_0

    .line 271
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    invoke-direct {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getMethodType(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    goto :goto_0
.end method

.method public findOverlayFilterById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 312
    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v1, v2, :cond_0

    .line 317
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-direct {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findThemeById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTheme;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTransitionEffectById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 292
    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v2, v3, :cond_0

    .line 297
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    invoke-direct {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getMethodType(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    goto :goto_0
.end method

.method public getClipEffects()[Lcom/nexstreaming/nexeditorsdk/nexClipEffect;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 189
    .line 190
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v3

    .line 192
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 193
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 196
    goto :goto_0

    .line 197
    :cond_0
    new-array v1, v1, [Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    .line 199
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 200
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 202
    aget-object v4, v1, v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getMethodType(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    :cond_2
    return-object v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getEffectOptions(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;
    .locals 12

    .prologue
    .line 356
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_13

    .line 358
    const/4 v0, 0x0

    .line 360
    const/4 v2, 0x0

    .line 361
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v3, v4, :cond_1

    .line 362
    const/4 v0, 0x4

    move v1, v0

    .line 371
    :goto_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    invoke-direct {v0, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;-><init>(Ljava/lang/String;I)V

    .line 374
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 381
    :goto_1
    if-nez v1, :cond_3

    .line 458
    :cond_0
    :goto_2
    return-object v0

    .line 363
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v3, v4, :cond_2

    .line 364
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->filter:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v3, v4, :cond_17

    .line 366
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v1, v3, :cond_17

    .line 367
    const/4 v0, 0x5

    move v1, v0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v1, v2

    .line 379
    goto :goto_1

    .line 377
    :catch_1
    move-exception v1

    .line 378
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    .line 384
    :cond_3
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->a()Ljava/util/List;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;

    .line 386
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->i()Ljava/util/Map;

    move-result-object v1

    .line 387
    const/4 v2, 0x0

    .line 388
    if-eqz v1, :cond_16

    .line 389
    const-string v3, "label"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 390
    if-eqz v1, :cond_16

    .line 391
    const-string v2, "en"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    :goto_4
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGBA:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-eq v2, v3, :cond_5

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RGB:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-ne v2, v3, :cond_7

    .line 396
    :cond_5
    if-nez v1, :cond_6

    .line 397
    const-string v1, "Color"

    .line 399
    :cond_6
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->addColorOpt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 400
    :cond_7
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->TEXT:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-ne v2, v3, :cond_a

    .line 401
    if-nez v1, :cond_8

    .line 402
    const-string v1, "Text"

    .line 404
    :cond_8
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    :goto_5
    invoke-virtual {v0, v3, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->addTextOpt(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    .line 405
    :cond_a
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->CHOICE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-ne v2, v3, :cond_f

    .line 406
    if-nez v1, :cond_15

    .line 407
    const-string v2, "Choice"

    .line 409
    :goto_6
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->j()Ljava/util/List;

    move-result-object v10

    .line 411
    const/4 v5, 0x0

    .line 412
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 413
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 416
    const/4 v1, 0x0

    move v7, v1

    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_e

    .line 417
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;->a()Ljava/util/Map;

    move-result-object v1

    .line 418
    const/4 v8, 0x0

    .line 419
    if-eqz v1, :cond_b

    .line 420
    const-string v11, "label"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 421
    if-eqz v1, :cond_b

    .line 422
    const-string v8, "en"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    .line 426
    :cond_b
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    move v5, v7

    .line 430
    :cond_c
    if-nez v8, :cond_d

    .line 431
    new-instance v8, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 433
    :cond_d
    aput-object v8, v3, v7

    .line 434
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 416
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_7

    .line 436
    :cond_e
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->addSelectOpt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 437
    :cond_f
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->RANGE:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-ne v2, v3, :cond_10

    .line 438
    if-nez v1, :cond_14

    .line 439
    const-string v2, "Range"

    .line 441
    :goto_8
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 442
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->g()I

    move-result v4

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->h()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->addRangeOpt(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_3

    .line 443
    :cond_10
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->SWITCH:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    if-ne v2, v3, :cond_4

    .line 444
    if-nez v1, :cond_11

    .line 445
    const-string v1, "Switch"

    .line 447
    :cond_11
    const/4 v2, 0x0

    .line 449
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12

    .line 450
    const/4 v2, 0x1

    .line 452
    :cond_12
    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->addSwitchOpt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 458
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_14
    move-object v2, v1

    goto :goto_8

    :cond_15
    move-object v2, v1

    goto/16 :goto_6

    :cond_16
    move-object v1, v2

    goto/16 :goto_4

    :cond_17
    move v1, v0

    goto/16 :goto_0
.end method

.method public getOverlayFilters()[Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;
    .locals 5

    .prologue
    .line 217
    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 222
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v3, v4, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 231
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 233
    :cond_2
    return-object v3
.end method

.method public getThemes()[Lcom/nexstreaming/nexeditorsdk/nexTheme;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 112
    return-object v0
.end method

.method public getThemesEx()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTheme;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    return-object v0
.end method

.method public getTransitionEffects()[Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 153
    .line 154
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v3

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 157
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 160
    goto :goto_0

    .line 162
    :cond_0
    new-array v1, v1, [Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    .line 164
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 165
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 167
    aget-object v4, v1, v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getMethodType(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    iput-object v0, v4, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    :cond_2
    return-object v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getTransitionEffectsEx()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 129
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    return-object v1
.end method

.method public installPluginEffectPackageAsync([Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary$OnInstallPluginEffectPackageAsyncListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method
