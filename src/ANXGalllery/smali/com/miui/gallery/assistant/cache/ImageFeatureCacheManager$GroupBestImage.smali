.class public Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
.super Ljava/lang/Object;
.source "ImageFeatureCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupBestImage"
.end annotation


# instance fields
.field mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

.field volatile mImageCount:I


# direct methods
.method public constructor <init>(ILcom/miui/gallery/assistant/model/TinyImageFeature;)V
    .locals 1
    .param p1, "imageCount"    # I
    .param p2, "bestImage"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    .line 287
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->isPoorImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iput-object p2, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 309
    return-void
.end method

.method public increase()V
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    .line 294
    return-void
.end method

.method public tryReplcae(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V
    .locals 4
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .prologue
    .line 297
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->isPoorImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 299
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 300
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 304
    :cond_1
    return-void
.end method
