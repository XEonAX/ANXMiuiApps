.class public Lcom/miui/gallery/card/CardUtil;
.super Ljava/lang/Object;
.source "CardUtil.java"


# direct methods
.method public static bindImageFeatures(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v3, 0x0

    .line 136
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v8, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 139
    .local v9, "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v9    # "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_0
    const-string v0, "%s IN (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "imageId"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, ","

    .line 144
    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const-string v4, "createTime DESC"

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 149
    .restart local v9    # "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 150
    .local v6, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-nez v3, :cond_2

    .line 151
    invoke-virtual {v9, v6}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V

    goto :goto_1

    .line 158
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v7    # "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v8    # "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9    # "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_3
    return-void
.end method

.method public static concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 4
    .param p0, "arr1"    # [Ljava/lang/Integer;
    .param p1, "arr2"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 161
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 162
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 163
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/Integer;

    .line 164
    .local v0, "result":[Ljava/lang/Integer;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    .end local v0    # "result":[Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 168
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 171
    goto :goto_0
.end method

.method public static downloadCoverThumb(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 306
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 307
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 308
    .local v3, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v2}, Lcom/miui/gallery/card/CardUtil;->getDownloadType(II)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 309
    .local v0, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v5, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v5, :cond_0

    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    sget-object v5, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v5, :cond_2

    .line 310
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    :cond_1
    const/4 v5, 0x1

    invoke-static {v3, v0, v5}, Lcom/miui/gallery/assistant/process/BaseImageTask;->getImageFilePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    .line 312
    .local v1, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 313
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 314
    sget-object v5, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v5, :cond_3

    .line 315
    invoke-virtual {v3, v4}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setThumbnailPath(Ljava/lang/String;)V

    .line 306
    .end local v1    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .restart local v1    # "future":Lcom/miui/gallery/threadpool/Future;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v4}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setMicroThumbnailPath(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    .end local v0    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v1    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v2    # "i":I
    .end local v3    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static getAlbumUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "cardAction"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_CARD_ACTION:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "actionType"

    .line 240
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCardCovers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "covers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 198
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_items"

    .line 39
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(localGroupId!=-1000) AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%s IN (\'%s\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "serverId"

    aput-object v7, v5, v6

    const-string v6, "\',\'"

    .line 43
    invoke-static {v6, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->MEDIA_PROJECTION:[Ljava/lang/String;

    const-string v5, "alias_create_time DESC"

    new-instance v6, Lcom/miui/gallery/card/CardUtil$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/CardUtil$1;-><init>(Ljava/util/List;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 79
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getDownloadType(II)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1
    .param p0, "totalImageCount"    # I
    .param p1, "position"    # I

    .prologue
    .line 278
    packed-switch p0, :pswitch_data_0

    .line 296
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    :goto_0
    return-object v0

    .line 282
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 284
    :pswitch_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 285
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 287
    :cond_0
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 290
    :pswitch_2
    if-nez p1, :cond_1

    .line 291
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getImageIdsFromMediaItems(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 248
    .local v0, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v0    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_0
    return-object v1
.end method

.method public static getLastCardCreateTime()J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 178
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v2, "ignored = 0"

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v2

    .line 182
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getMovieTemplateFromCard(Lcom/miui/gallery/card/Card;)I
    .locals 5
    .param p0, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    const/4 v3, 0x0

    .line 326
    if-nez p0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v3

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v2

    .line 330
    .local v2, "scenarioId":I
    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getScenarioId()I

    move-result v2

    .line 333
    :cond_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 360
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getPrimaryKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    .local v1, "holidayId":I
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_3

    .line 364
    const/4 v3, 0x6

    goto :goto_0

    .line 337
    .end local v1    # "holidayId":I
    :sswitch_1
    const/4 v3, 0x1

    goto :goto_0

    .line 345
    :sswitch_2
    const/4 v3, 0x2

    goto :goto_0

    .line 348
    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 351
    :sswitch_4
    const/4 v3, 0x4

    goto :goto_0

    .line 354
    :sswitch_5
    const/4 v3, 0x7

    goto :goto_0

    .line 356
    :sswitch_6
    const/16 v3, 0x8

    goto :goto_0

    .line 358
    :sswitch_7
    const/16 v3, 0x9

    goto :goto_0

    .line 365
    .restart local v1    # "holidayId":I
    :cond_3
    const/16 v4, 0xcd

    if-ne v1, v4, :cond_0

    .line 366
    const/4 v3, 0x5

    goto :goto_0

    .line 368
    .end local v1    # "holidayId":I
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CardUtil"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x6f -> :sswitch_3
        0x72 -> :sswitch_1
        0x73 -> :sswitch_3
        0x76 -> :sswitch_1
        0x78 -> :sswitch_2
        0x79 -> :sswitch_4
        0xc9 -> :sswitch_1
        0x191 -> :sswitch_6
        0x192 -> :sswitch_7
        0x193 -> :sswitch_4
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_2
        0x2715 -> :sswitch_2
        0x2773 -> :sswitch_2
        0x2774 -> :sswitch_5
        0x27d7 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "serverId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 85
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-object v4

    .line 89
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_items"

    .line 92
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v0, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "serverId"

    aput-object v6, v2, v8

    const-string v6, ","

    .line 96
    invoke-static {v6, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    .line 94
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "%s DESC"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v6, "alias_create_time"

    aput-object v6, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "IMAGE_ORDER":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/card/CardManager;->CONVERT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/card/CardUtil$2;

    invoke-direct {v6}, Lcom/miui/gallery/card/CardUtil$2;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    goto :goto_0
.end method

.method public static getSha1sFromImages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "selectImageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 232
    .local v0, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMediaSha1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v0    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_0
    return-object v1
.end method

.method public static getUnProcessedMediaItems(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v4, 0x0

    .line 206
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 208
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v5, Lcom/miui/gallery/assistant/model/ImageFeature;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_FEATURE_PROCESSED_SELECTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "imageId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IN (\'%s\') "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\',\'"

    .line 210
    invoke-static {p0}, Lcom/miui/gallery/card/CardUtil;->getImageIdsFromMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 209
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual {v0, v5, v6, v4}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 211
    .local v3, "processedList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    .local v4, "unProcessedMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 215
    .local v2, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 216
    .local v1, "feature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getSha1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v1    # "feature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v2    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v3    # "processedList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v4    # "unProcessedMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_2
    return-object v4
.end method

.method public static isCoverMediaPathEmpty(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 258
    .local v2, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v1}, Lcom/miui/gallery/card/CardUtil;->getDownloadType(II)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 259
    .local v0, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v3, :cond_2

    .line 261
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    :cond_1
    const-string v3, "CardUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has no local image of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v3, 0x1

    .line 267
    .end local v0    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v1    # "i":I
    .end local v2    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :goto_1
    return v3

    .line 256
    .restart local v0    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .restart local v1    # "i":I
    .restart local v2    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v1    # "i":I
    .end local v2    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/Card;)Z
    .locals 2
    .param p0, "card"    # Lcom/miui/gallery/card/Card;
    .param p1, "cardOther"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)Z
    .locals 3
    .param p0, "card"    # Lcom/miui/gallery/card/Card;
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 119
    .local v0, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    .end local v0    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
