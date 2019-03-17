.class public Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
.super Lcom/miui/gallery/assistant/manager/AlgorithmRequest;
.source "ClusterGroupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/miui/gallery/assistant/model/ImageFeatureItem;",
        ">",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageFeatureItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mImageFeatures:[Lcom/miui/gallery/assistant/model/ImageFeature;

.field private final mSaveResult:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Z)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p3, "saveRuslt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "Ljava/util/List",
            "<TE;>;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    .local p2, "imageFeatureItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;)V

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mSaveResult:Z

    .line 42
    return-void
.end method

.method private generateGroupId(J)J
    .locals 7
    .param p1, "startNano"    # J

    .prologue
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    const-wide/32 v4, 0xf4240

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic onSaveResult(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->onSaveResult(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V

    return-void
.end method

.method protected onSaveResult(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V
    .locals 26
    .param p1, "algorithmResult"    # Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    .prologue
    .line 97
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mSaveResult:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getResultCode()I

    move-result v19

    if-nez v19, :cond_6

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getClusters()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 100
    new-instance v8, Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 101
    .local v8, "featureSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 102
    .local v7, "featureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    invoke-interface {v7}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getMediaSha1()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 103
    invoke-interface {v7}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getMediaId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v7    # "featureItem":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 107
    .local v14, "start":J
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getClusters()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/assistant/jni/cluster/Cluster;

    .line 108
    .local v4, "cluster":Lcom/miui/gallery/assistant/jni/cluster/Cluster;
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/jni/cluster/Cluster;->getImageIds()[J

    move-result-object v9

    .line 109
    .local v9, "imageIdArray":[J
    if-eqz v9, :cond_2

    array-length v0, v9

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 112
    const-wide/16 v16, -0x1

    .line 113
    .local v16, "targetGroupId":J
    array-length v0, v9

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-wide v10, v9, v19

    .line 114
    .local v10, "id":J
    invoke-virtual {v8, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    .line 115
    .local v6, "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v22

    if-eqz v22, :cond_5

    invoke-interface {v6}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterGroupId()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 116
    invoke-interface {v6}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterGroupId()J

    move-result-wide v16

    .line 120
    .end local v6    # "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    .end local v10    # "id":J
    :cond_3
    const-wide/16 v22, 0x0

    cmp-long v19, v16, v22

    if-gez v19, :cond_4

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->generateGroupId(J)J

    move-result-wide v16

    .line 126
    :cond_4
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v5

    .line 127
    .local v5, "em":Lcom/miui/gallery/dao/GalleryEntityManager;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v18, "values":Landroid/content/ContentValues;
    const-string v19, "clusterGroupId"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v12

    .line 130
    .local v12, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v19, "%s IN (%s)"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "imageId"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, ","

    .line 132
    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 130
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "selection":Ljava/lang/String;
    const-class v19, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v13, v2}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 136
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->onImageFeaturesChanged(Ljava/util/List;)V

    goto/16 :goto_1

    .line 113
    .end local v5    # "em":Lcom/miui/gallery/dao/GalleryEntityManager;
    .end local v12    # "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "selection":Ljava/lang/String;
    .end local v18    # "values":Landroid/content/ContentValues;
    .restart local v6    # "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    .restart local v10    # "id":J
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 139
    .end local v4    # "cluster":Lcom/miui/gallery/assistant/jni/cluster/Cluster;
    .end local v6    # "feature":Lcom/miui/gallery/assistant/model/ImageFeatureItem;, "TE;"
    .end local v8    # "featureSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .end local v9    # "imageIdArray":[J
    .end local v10    # "id":J
    .end local v14    # "start":J
    .end local v16    # "targetGroupId":J
    :cond_6
    return-void
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->process()Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    .locals 13

    .prologue
    .line 46
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;, "Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest<TE;>;"
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 47
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->TAG:Ljava/lang/String;

    const-string v10, "Process %d images"

    iget-object v11, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "inputCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 50
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    invoke-interface {v9}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v4

    .line 51
    .local v4, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterFeature()[F

    move-result-object v9

    if-eqz v9, :cond_0

    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->TAG:Ljava/lang/String;

    const-string v10, "Valid image count:%d"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    mul-int/lit16 v9, v5, 0x400

    new-array v2, v9, [F

    .line 57
    .local v2, "featureArray":[F
    new-array v8, v5, [J

    .line 58
    .local v8, "timeArray":[J
    new-array v7, v5, [J

    .line 59
    .local v7, "keyArray":[J
    new-array v9, v5, [Lcom/miui/gallery/assistant/model/ImageFeature;

    iput-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatures:[Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "j":I
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    if-ge v6, v5, :cond_3

    .line 62
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    invoke-interface {v9}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v4

    .line 63
    .restart local v4    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterFeature()[F

    move-result-object v9

    if-eqz v9, :cond_2

    .line 64
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatures:[Lcom/miui/gallery/assistant/model/ImageFeature;

    aput-object v4, v9, v6

    .line 65
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterFeature()[F

    move-result-object v9

    const/4 v10, 0x0

    mul-int/lit16 v11, v6, 0x400

    const/16 v12, 0x400

    invoke-static {v9, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->mImageFeatureItems:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/ImageFeatureItem;

    invoke-interface {v9}, Lcom/miui/gallery/assistant/model/ImageFeatureItem;->getDateTime()J

    move-result-wide v10

    aput-wide v10, v8, v6

    .line 67
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v10

    aput-wide v10, v7, v6

    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 61
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    .end local v4    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v9

    const-wide/32 v10, 0xf51e1

    invoke-virtual {v9, v10, v11}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary(J)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    const/16 v9, 0x8

    invoke-static {v9}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;

    .line 74
    .local v0, "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    array-length v9, v7

    invoke-virtual {v0, v2, v8, v7, v9}, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->getClusterResult([F[J[JI)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .local v1, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 76
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->TAG:Ljava/lang/String;

    const-string v10, "ClusterAlgorithm execute success!"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v9, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    invoke-direct {v9, v1}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(Ljava/util/ArrayList;)V

    .line 86
    .end local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .end local v1    # "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    .end local v2    # "featureArray":[F
    .end local v3    # "i":I
    .end local v5    # "inputCount":I
    .end local v6    # "j":I
    .end local v7    # "keyArray":[J
    .end local v8    # "timeArray":[J
    :goto_2
    return-object v9

    .line 79
    .restart local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .restart local v1    # "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    .restart local v2    # "featureArray":[F
    .restart local v3    # "i":I
    .restart local v5    # "inputCount":I
    .restart local v6    # "j":I
    .restart local v7    # "keyArray":[J
    .restart local v8    # "timeArray":[J
    :cond_4
    new-instance v9, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(I)V

    goto :goto_2

    .line 82
    .end local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .end local v1    # "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    :cond_5
    iget-object v9, p0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->TAG:Ljava/lang/String;

    const-string v10, "Load library %s failed"

    const-string v11, "ClusterAlgorithm"

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance v9, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(I)V

    goto :goto_2

    .line 86
    .end local v2    # "featureArray":[F
    .end local v3    # "i":I
    .end local v5    # "inputCount":I
    .end local v6    # "j":I
    .end local v7    # "keyArray":[J
    .end local v8    # "timeArray":[J
    :cond_6
    new-instance v9, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(I)V

    goto :goto_2
.end method
