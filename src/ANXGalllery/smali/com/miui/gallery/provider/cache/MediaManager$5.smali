.class final Lcom/miui/gallery/provider/cache/MediaManager$5;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/cache/MediaManager;->getFeatureComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 6
    .param p1, "o1"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "o2"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 521
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v0

    .line 522
    .local v0, "feature1":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v1

    .line 523
    .local v1, "feature2":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 524
    const/4 v2, 0x1

    .line 532
    :goto_0
    return v2

    .line 526
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 527
    const/4 v2, -0x1

    goto :goto_0

    .line 529
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    goto :goto_0

    .line 532
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 518
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaManager$5;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
