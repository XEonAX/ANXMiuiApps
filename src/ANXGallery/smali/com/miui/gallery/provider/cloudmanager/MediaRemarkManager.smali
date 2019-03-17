.class public Lcom/miui/gallery/provider/cloudmanager/MediaRemarkManager;
.super Ljava/lang/Object;
.source "MediaRemarkManager.java"


# direct methods
.method public static varargs addFileHandleMediaIds([J)I
    .locals 10
    .param p0, "ids"    # [J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-static {p0}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 20
    const/4 v4, 0x0

    .line 21
    .local v4, "rows":I
    array-length v5, p0

    if-lez v5, :cond_2

    .line 22
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 23
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    invoke-direct {v1}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;-><init>()V

    .line 24
    .local v1, "info":Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;
    invoke-virtual {v1, v6}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->setOperationType(I)V

    .line 25
    array-length v9, p0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-wide v2, p0, v8

    .line 26
    .local v2, "id":J
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->setCloudId(J)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/miui/gallery/dao/base/EntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v4, v5

    .line 25
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    :cond_0
    move v5, v7

    .line 27
    goto :goto_1

    .line 29
    .end local v2    # "id":J
    :cond_1
    const-string v5, "CloudManager.MediaRemarkManager"

    const-string v6, "Done insert %d ids, result %d"

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v1    # "info":Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;
    :cond_2
    return v4
.end method

.method public static varargs doneHandleFileForMediaIds([J)Z
    .locals 7
    .param p0, "ids"    # [J

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-static {p0}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 58
    array-length v2, p0

    if-lez v2, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 60
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v2, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    const-string v3, "%s = %s AND %s IN (%s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "operationType"

    aput-object v5, v4, v1

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "mediaId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ","

    .line 62
    invoke-static {v6, p0}, Lcom/miui/gallery/util/StringUtils;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 60
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 63
    .local v1, "result":Z
    const-string v2, "CloudManager.MediaRemarkManager"

    const-string v3, "Delete %d ids, result %s"

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v1    # "result":Z
    :cond_0
    return v1
.end method

.method public static loadFileHandleMediaIds()[J
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 38
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 39
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    const-string v2, "operationType = ?"

    new-array v3, v9, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 40
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    const-string v4, "_id ASC"

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 42
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 43
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [J

    .line 44
    .local v7, "ids":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, v7

    if-ge v6, v1, :cond_1

    .line 45
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->getCloudId()J

    move-result-wide v2

    aput-wide v2, v7, v6

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v7    # "ids":[J
    :cond_0
    move-object v7, v5

    .line 49
    :cond_1
    return-object v7
.end method

.method public static onAccountDelete()Z
    .locals 3

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "CloudManager.MediaRemarkManager"

    const-string v2, "onAccountDelete occur error. %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method
