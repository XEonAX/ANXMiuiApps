.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
.super Ljava/lang/Object;
.source "nexOverlayImage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexOverlayImage"

.field public static final kOverlayType_Asset:I = 0x6

.field public static final kOverlayType_ResourceImage:I = 0x1

.field public static final kOverlayType_RunTimeImage:I = 0x4

.field public static final kOverlayType_SolidColorImage:I = 0x5

.field public static final kOverlayType_UserImage:I = 0x2

.field public static final kOverlayType_UserVideo:I = 0x3

.field private static sOverlayImageItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorPoint:I

.field private cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

.field private mAssetManager:Z

.field private mBitmapHeight:I

.field private mBitmapInSample:I

.field private mBitmapPath:Ljava/lang/String;

.field private mBitmapWidth:I

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

.field public mRecommandDuration:I

.field protected mResourceId:I

.field private mSolidColor:I

.field private mType:I

.field protected mUpdate:Z

.field private mUpdateInfo:Z

.field private mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 301
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 302
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 303
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 304
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 306
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 308
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 309
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 310
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 311
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 562
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 563
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 564
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 565
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 566
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 567
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 568
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 569
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 570
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 571
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 572
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 573
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 268
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 269
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 270
    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 271
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 273
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 274
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 275
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 277
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 278
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 279
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 280
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 281
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 284
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 285
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 286
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 287
    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 289
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 290
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 291
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 293
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 294
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 295
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 296
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 297
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->initSample()V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 414
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 415
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 417
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 419
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 420
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 421
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 422
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 423
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 425
    iput-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 427
    iput-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 428
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 429
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 430
    iput-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 431
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 510
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 511
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 512
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 513
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 514
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 516
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 517
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 518
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasAudio()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$002(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z

    .line 519
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasVideo()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$102(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z

    .line 520
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$202(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$302(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    .line 522
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$402(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    .line 523
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$502(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    .line 525
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 526
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 553
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 529
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isSolid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 531
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSolidColor()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 532
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    goto :goto_0

    .line 534
    :cond_1
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 535
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 536
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->initSample()V

    goto :goto_0

    .line 541
    :cond_2
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 542
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 543
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 544
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    const-string v1, "Audio not supported!"

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 479
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 480
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 481
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 483
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 484
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 485
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 486
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 487
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 491
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 353
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 355
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 356
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 357
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 359
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 361
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 362
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 363
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 364
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 366
    invoke-static {p2}, Lcom/nexstreaming/app/common/util/FileType;->fromFile(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->initSample()V

    .line 393
    :goto_0
    return-void

    .line 371
    :cond_0
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 372
    invoke-static {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 373
    if-nez v0, :cond_1

    .line 374
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 377
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 378
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;-><init>()V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 379
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasAudio()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$002(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z

    .line 380
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->hasVideo()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$102(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z

    .line 381
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$202(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$302(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    .line 383
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$402(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    .line 384
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$502(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I

    goto :goto_0

    .line 386
    :cond_2
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 101
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 315
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    .line 316
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    .line 317
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    .line 318
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    .line 320
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 322
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 323
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 324
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 325
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 326
    iput-boolean p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mAssetManager:Z

    .line 327
    return-void
.end method

.method static allClearRegisterOverlayImage()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    .line 199
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .prologue
    .line 762
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 763
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 764
    const/4 v0, 0x1

    .line 766
    if-gt v1, p3, :cond_0

    if-le v2, p2, :cond_1

    .line 769
    :cond_0
    int-to-float v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 770
    int-to-float v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 775
    if-ge v0, v1, :cond_2

    .line 778
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 775
    goto :goto_0
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 113
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 783
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 784
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 785
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 786
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 787
    if-eqz v2, :cond_2

    .line 788
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 790
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 791
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p2

    div-float v3, v1, v3

    .line 793
    cmpl-float v1, v3, v0

    if-lez v1, :cond_0

    .line 794
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 795
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 801
    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 807
    :goto_1
    return-object v0

    .line 797
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 798
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 804
    goto :goto_1

    .line 807
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    .line 207
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    return-object v0
.end method

.method private getSolidRect()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 965
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    .line 966
    const/16 v2, 0x20

    .line 967
    const/16 v3, 0x12

    .line 968
    const/16 v0, 0x240

    new-array v4, v0, [I

    .line 969
    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 970
    aput v1, v4, v0

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    if-nez v0, :cond_5

    .line 232
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mAssetManager:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x6

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 234
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 263
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 239
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 244
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0

    .line 247
    :cond_2
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    if-eqz v0, :cond_3

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 249
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0

    .line 252
    :cond_3
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mSolidColor:I

    if-eqz v0, :cond_4

    .line 253
    const/4 v0, 0x5

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 254
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    .line 259
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0

    .line 263
    :cond_5
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mType:I

    goto :goto_0
.end method

.method private initSample()V
    .locals 6

    .prologue
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 975
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 976
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 977
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 979
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 982
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v4, :cond_1

    .line 988
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 989
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapInSample:I

    .line 990
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 992
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 993
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 994
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 995
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 997
    :cond_0
    return-void

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0
.end method

.method static registerOverlayImage(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;)Z
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    .line 178
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 181
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static unregisterOverlayImage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    .line 190
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->sOverlayImageItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method private updateInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 600
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    .line 603
    packed-switch v0, :pswitch_data_0

    .line 623
    :pswitch_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getUserBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 625
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 628
    :goto_0
    :pswitch_1
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    .line 630
    :cond_0
    return-void

    .line 605
    :pswitch_2
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getUserBitmap()Landroid/graphics/Bitmap;

    .line 607
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 608
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    goto :goto_0

    .line 616
    :pswitch_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$400(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    .line 617
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->access$500(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    .line 618
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdateInfo:Z

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAnchorPoint()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    return v0
.end method

.method getBound(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->updateInfo()V

    .line 658
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 659
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 660
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 661
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 662
    return-void
.end method

.method public getDefaultDuration()I
    .locals 2

    .prologue
    .line 1015
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    if-gez v0, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v1

    .line 1017
    const/4 v0, 0x0

    .line 1018
    packed-switch v1, :pswitch_data_0

    .line 1030
    :goto_0
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    .line 1032
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mRecommandDuration:I

    return v0

    .line 1021
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getOverlayAssetBitmap()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    move-result-object v1

    .line 1022
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;->getDefaultDuration()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v1

    .line 1024
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1025
    :catch_1
    move-exception v1

    .line 1026
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->updateInfo()V

    .line 653
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getOverlayAssetBitmap()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mAssetManager:Z

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAssetFactory;->forItem(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->cachedOverlayAsset:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    .line 671
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    return v0
.end method

.method protected getUserBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v1

    .line 676
    const/4 v0, 0x0

    .line 677
    packed-switch v1, :pswitch_data_0

    .line 704
    :pswitch_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    if-nez v0, :cond_0

    .line 705
    const/16 v0, 0x500

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 707
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    if-nez v0, :cond_1

    .line 708
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 713
    :goto_0
    :pswitch_1
    return-object v0

    .line 680
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getOverlayAssetBitmap()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 685
    :catch_1
    move-exception v1

    .line 686
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 691
    :pswitch_3
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 694
    :pswitch_4
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getSolidRect()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 700
    :pswitch_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;->makeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected getUserBitmapID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    if-eqz v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    invoke-interface {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;->getBitmapID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 753
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mVideoClipInfo:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->updateInfo()V

    .line 641
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mWidth:I

    return v0
.end method

.method isAniMate()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mMakeBitMap:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;->isAniMate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAssetManager()Z
    .locals 2

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 959
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    return v0
.end method

.method isVideo()Z
    .locals 2

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBitmap()V
    .locals 0

    .prologue
    .line 824
    return-void
.end method

.method public resizeBitmap(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 741
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 742
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 744
    :cond_0
    return-void
.end method

.method public setAnchorPoint(I)V
    .locals 0

    .prologue
    .line 1000
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->anchorPoint:I

    .line 1001
    return-void
.end method

.method public setCrop(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 733
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapWidth:I

    .line 734
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mBitmapHeight:I

    .line 736
    :cond_0
    return-void
.end method
