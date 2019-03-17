.class public final Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;
.super Lcom/nexstreaming/nexeditorsdk/nexEffect;
.source "nexTransitionEffect.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;
    }
.end annotation


# static fields
.field private static final TRANSITION_MAX_DURATION:I = 0x7530

.field private static final TRANSITON_MIN_DURATION:I = 0x1f4

.field private static s_cachedProperty:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEffectOffset:I

.field mEffectOverlap:I

.field private mMaxDuration:I

.field private mMinDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->s_cachedProperty:Landroid/util/LruCache;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    .line 92
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mDuration:I

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/b;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    .line 97
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mDuration:I

    .line 98
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setObserver(Lcom/nexstreaming/nexeditorsdk/b;)V

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 414
    iget-object v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    .line 415
    iget-object v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mAutoID:Ljava/lang/String;

    .line 416
    iget-object v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    .line 417
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    .line 418
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mDuration:I

    .line 419
    iget-object v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 424
    iget-boolean v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mIsResolveOptions:Z

    .line 426
    iget-boolean v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mOptionsUpdate:Z

    .line 427
    iget-object v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->m_effectOptions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->m_effectOptions:Ljava/util/HashMap;

    .line 429
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMinDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    .line 430
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMaxDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    .line 431
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOffset:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 432
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOverlap:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    .line 434
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setObserver(Lcom/nexstreaming/nexeditorsdk/b;)V

    .line 435
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 104
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mDuration:I

    .line 105
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;
    .locals 3

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    .line 81
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    .line 82
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 83
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 85
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    if-nez v1, :cond_1

    .line 364
    const-string v0, "None"

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 368
    const-string v0, "Theme"

    goto :goto_0

    .line 371
    :cond_2
    if-eqz p1, :cond_0

    .line 376
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    if-nez v1, :cond_1

    .line 304
    const-string v0, "None Transition Effect"

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 308
    const-string v0, "Theme Transition Effect"

    goto :goto_0

    .line 311
    :cond_2
    if-eqz p1, :cond_0

    .line 315
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    .line 341
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

    .line 347
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxDuration()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    return v0
.end method

.method public getMinDuration()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    if-nez v0, :cond_0

    .line 266
    const-string v0, "None Transition"

    .line 284
    :goto_0
    return-object v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 270
    const-string v0, "Theme Transition"

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    if-eqz p1, :cond_3

    .line 276
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 278
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    .line 284
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_3
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;-><init>()V

    .line 387
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mAutoID:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    .line 390
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    .line 391
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    .line 392
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 398
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mIsResolveOptions:Z

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    .line 400
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mOptionsUpdate:Z

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    .line 401
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->m_effectOptions:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->m_effectOptions:Ljava/util/HashMap;

    .line 403
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowStartTime:I

    .line 404
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowEndTime:I

    .line 406
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMinDuration:I

    .line 407
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMaxDuration:I

    .line 408
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOffset:I

    .line 409
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOverlap:I

    .line 410
    return-object v0
.end method

.method public setAutoTheme()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 172
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    if-eq v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mUpdated:Z

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setModified(Z)V

    .line 176
    :cond_0
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mType:I

    .line 177
    return-void
.end method

.method public setTransitionEffect(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffect(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setModified(Z)V

    .line 124
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 126
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->s_cachedProperty:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;

    .line 130
    if-nez v0, :cond_3

    .line 131
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/h;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    :goto_1
    if-nez v0, :cond_2

    .line 142
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 143
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    .line 149
    :goto_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->s_cachedProperty:Landroid/util/LruCache;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    invoke-direct {v1, p0, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_3
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMinDuration:I

    .line 156
    const/16 v0, 0x7530

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mMaxDuration:I

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v0, v1

    .line 138
    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 145
    :cond_2
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->b()I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 146
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/h;->c()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    goto :goto_2

    .line 152
    :cond_3
    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;->a:I

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOffset:I

    .line 153
    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect$a;->b:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->mEffectOverlap:I

    goto :goto_3
.end method
