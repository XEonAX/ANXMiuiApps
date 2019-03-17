.class public final Lcom/nexstreaming/nexeditorsdk/nexClipEffect;
.super Lcom/nexstreaming/nexeditorsdk/nexEffect;
.source "nexClipEffect.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mShowEndTime:I

.field private mShowStartTime:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 58
    const/16 v0, 0x2710

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 58
    const/16 v0, 0x2710

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 414
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    .line 415
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mAutoID:Ljava/lang/String;

    .line 416
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    .line 417
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    .line 418
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mDuration:I

    .line 419
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 425
    iget-boolean v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mIsResolveOptions:Z

    .line 427
    iget-boolean v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mOptionsUpdate:Z

    .line 428
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->m_effectOptions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->m_effectOptions:Ljava/util/HashMap;

    .line 430
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowStartTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 431
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowEndTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 432
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 58
    const/16 v0, 0x2710

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 79
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    .line 81
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexClipEffect;)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 66
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 68
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    if-nez v0, :cond_0

    .line 370
    const-string v0, "None"

    .line 381
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    const-string v0, "Theme"

    goto :goto_0

    .line 377
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_2

    .line 379
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    if-nez v1, :cond_1

    .line 196
    const-string v0, "None Clip Effect"

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 200
    const-string v0, "Theme Clip Effect"

    goto :goto_0

    .line 203
    :cond_2
    if-eqz p1, :cond_0

    .line 207
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
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
    .line 227
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 231
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

    .line 237
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    if-nez v0, :cond_0

    .line 159
    const-string v0, "None Clip Effect"

    .line 177
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 163
    const-string v0, "Theme Clip Effect"

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    if-eqz p1, :cond_3

    .line 169
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 171
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    .line 177
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v0

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;-><init>()V

    .line 387
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mAutoID:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    .line 390
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    .line 391
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    .line 392
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 398
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mIsResolveOptions:Z

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    .line 400
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mOptionsUpdate:Z

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    .line 401
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->m_effectOptions:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->m_effectOptions:Ljava/util/HashMap;

    .line 403
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowStartTime:I

    .line 404
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowEndTime:I

    .line 406
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMinDuration:I

    .line 407
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMaxDuration:I

    .line 408
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOffset:I

    .line 409
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOverlap:I

    .line 410
    return-object v0
.end method

.method public getShowEndTime()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    return v0
.end method

.method public getShowStartTime()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAutoTheme()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mType:I

    .line 355
    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x2

    invoke-super {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEffect;->setEffect(Ljava/lang/String;I)Z

    .line 101
    return-void
.end method

.method public setEffectShowTime(II)V
    .locals 1

    .prologue
    .line 295
    if-ge p2, p1, :cond_0

    .line 296
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 298
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 299
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 300
    return-void
.end method

.method public setShowEndTime(I)V
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    if-le v0, p1, :cond_0

    .line 276
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    invoke-direct {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 278
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    .line 279
    return-void
.end method

.method public setShowStartTime(I)V
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    if-ge v0, p1, :cond_0

    .line 256
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowEndTime:I

    invoke-direct {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 258
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mShowStartTime:I

    .line 259
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->mUpdated:Z

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setTitle(ILjava/lang/String;)V

    .line 122
    return-void
.end method
