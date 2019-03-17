.class public Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;
.super Ljava/util/HashSet;
.source "ImageFeatureGroupSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/assistant/model/ImageFeatureItem;",
        ">",
        "Ljava/util/HashSet",
        "<",
        "Lcom/miui/gallery/assistant/model/ImageFeatureGroup",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet<TT;>;"
    .local p1, "clusterFeatureItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 18
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 19
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    .line 20
    .local v4, "featureSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 21
    .local v2, "featureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    invoke-interface {v2}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getMediaSha1()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 22
    invoke-interface {v2}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getMediaId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 25
    .end local v2    # "featureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/jni/cluster/Cluster;

    .line 26
    .local v0, "cluster":Lcom/miui/gallery/assistant/jni/cluster/Cluster;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "featureItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/jni/cluster/Cluster;->getImageIds()[J

    move-result-object v10

    array-length v11, v10

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_4

    aget-wide v6, v10, v8

    .line 28
    .local v6, "id":J
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 29
    .local v1, "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    if-eqz v1, :cond_3

    .line 30
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 33
    .end local v1    # "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TT;"
    .end local v6    # "id":J
    :cond_4
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    new-instance v5, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;

    invoke-direct {v5, v3}, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;-><init>(Ljava/util/Collection;)V

    .line 35
    .local v5, "imageFeatureGroup":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    invoke-virtual {p0, v5}, Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    .end local v0    # "cluster":Lcom/miui/gallery/assistant/jni/cluster/Cluster;
    .end local v3    # "featureItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "featureSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TT;>;"
    .end local v5    # "imageFeatureGroup":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public getSelectedImages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;

    .line 44
    .local v0, "imageFeatureGroup":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeatureGroup;->getBestImage()Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v0    # "imageFeatureGroup":Lcom/miui/gallery/assistant/model/ImageFeatureGroup;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroup<TT;>;"
    :cond_0
    return-object v1
.end method
