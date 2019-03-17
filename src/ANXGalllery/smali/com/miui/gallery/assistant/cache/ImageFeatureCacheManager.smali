.class public Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
.super Ljava/lang/Object;
.source "ImageFeatureCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;,
        Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;
    }
.end annotation


# instance fields
.field private mGroupBestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;",
            ">;"
        }
    .end annotation
.end field

.field private mImageTinyFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mIsFirstShowImageSelection:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mIsFirstShowImageSelection:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;-><init>()V

    return-void
.end method

.method private addImageFeature(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V
    .locals 4
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 237
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    invoke-direct {v0, p2}, Lcom/miui/gallery/assistant/model/TinyImageFeature;-><init>(Landroid/database/Cursor;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_1
    return-void
.end method

.method private declared-synchronized getAllImageFeatures()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "allFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "imageId ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 211
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v9, v10}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-object v9

    .line 207
    .end local v9    # "allFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getImageFeaturesById(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v10, "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "imageId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, ","

    .line 225
    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "imageId ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 229
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v10, v9}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v3    # "selection":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    monitor-exit p0

    return-object v10

    .line 222
    .end local v10    # "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getImagesByGroup(J)Ljava/util/List;
    .locals 13
    .param p1, "clusterGroupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 137
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v11, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION_GROUP:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "clusterGroupId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "imageId ASC"

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 142
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 144
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v10

    .line 148
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageFeatureCacheManager"

    const-string v1, "init mGroupBestMap fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v11

    .line 150
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;->access$100()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initGroupBestMap()V
    .locals 4

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 255
    .local v1, "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 257
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v1    # "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 260
    .restart local v1    # "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    .locals 5
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .param p2, "isNewAdded"    # Z

    .prologue
    .line 269
    monitor-enter p0

    if-nez p1, :cond_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 272
    .local v0, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz p2, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->increase()V

    .line 275
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->tryReplcae(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 277
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;-><init>(ILcom/miui/gallery/assistant/model/TinyImageFeature;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getBestImageCount(Z)I
    .locals 6
    .param p1, "considerSingleImage"    # Z

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "count":I
    iget-boolean v3, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 171
    .local v2, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    iget v4, v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    :cond_1
    iget-object v4, v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    if-eqz v4, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;>;"
    .end local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :cond_2
    return v0
.end method

.method public getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .locals 3
    .param p1, "imageId"    # J

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-nez v5, :cond_4

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, "start":J
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getAllImageFeatures()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    invoke-direct {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v6, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    .line 54
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    :cond_0
    invoke-direct {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    .line 55
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 57
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-object v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v2    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .restart local v2    # "start":J
    :cond_1
    move v5, v4

    .line 53
    goto :goto_0

    .line 59
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 61
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->initGroupBestMap()V

    .line 62
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->isFirstShowImageSelection()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mIsFirstShowImageSelection:Z

    .line 63
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    .line 64
    const-string v4, "ImageFeatureCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialize use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "ImageFeatureCacheManager"

    const-string v5, "ImageFeature count: %d ; Cluster group count: %d "

    iget-object v6, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v2    # "start":J
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public isBestImage(JZ)Z
    .locals 9
    .param p1, "imageId"    # J
    .param p3, "considerSingleImage"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v1

    .line 190
    .local v1, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-boolean v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 191
    iget-object v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 192
    .local v0, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    if-le v4, v2, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 195
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 197
    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :goto_0
    return v2

    .restart local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :cond_1
    move v2, v3

    .line 195
    goto :goto_0

    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :cond_2
    move v2, v3

    .line 197
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    return v0
.end method

.method public declared-synchronized onImageDelete(J)Z
    .locals 13
    .param p1, "imageId"    # J

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v6

    .line 108
    .local v6, "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-boolean v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 109
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "imageType"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v8, "%s = %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "imageId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 111
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v8

    const-class v9, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v5, v10}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 115
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v0

    .line 116
    .local v0, "clusterGroupId":J
    iget-object v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 117
    .local v2, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz v2, :cond_0

    .line 118
    iget v8, v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 119
    iget-object v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    const/4 v8, 0x1

    .line 132
    .end local v0    # "clusterGroupId":J
    .end local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v8

    .line 121
    .restart local v0    # "clusterGroupId":J
    .restart local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->clear()V

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImagesByGroup(J)Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, "groupImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 125
    .local v4, "image":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    .end local v0    # "clusterGroupId":J
    .end local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .end local v3    # "groupImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "image":Ljava/lang/Long;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 132
    .restart local v6    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onImageFeaturesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeaturesById(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "tinyFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 94
    .local v0, "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->addImageFeature(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V

    goto :goto_0

    .line 97
    .end local v0    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_0
    return-void
.end method

.method public setFirstShowImageSelection(Z)V
    .locals 0
    .param p1, "firstShowImageSelection"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mIsFirstShowImageSelection:Z

    .line 79
    return-void
.end method

.method public shouldShowImageSelectionTip()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mIsFirstShowImageSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
