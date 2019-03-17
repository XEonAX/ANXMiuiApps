.class public Lcom/miui/gallery/assistant/model/ImageFeatureGroup;
.super Ljava/lang/Object;
.source "ImageFeatureGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/assistant/model/ImageFeatureItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mImageFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    .local p1, "childrens":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mImageFeatures:Ljava/util/List;

    .line 12
    iget-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mImageFeatures:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 14
    .local v0, "imageFeatureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    iget-object v2, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    if-nez v2, :cond_1

    .line 15
    iput-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    invoke-interface {v2}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 18
    invoke-interface {v2}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getScore()D

    move-result-wide v2

    invoke-interface {v0}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeature;->getScore()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 19
    iput-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    goto :goto_0

    .line 23
    .end local v0    # "imageFeatureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    :cond_2
    return-void
.end method


# virtual methods
.method getBestImage()Lcom/miui/gallery/assistant/model/ImageFeatureItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->mBestImage:Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    return-object v0
.end method
