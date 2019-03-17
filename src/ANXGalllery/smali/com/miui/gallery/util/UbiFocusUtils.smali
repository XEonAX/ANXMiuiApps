.class public Lcom/miui/gallery/util/UbiFocusUtils;
.super Ljava/lang/Object;
.source "UbiFocusUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;,
        Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;,
        Lcom/miui/gallery/util/UbiFocusUtils$UbiQuery;
    }
.end annotation


# direct methods
.method public static getMainDBImage(ZLjava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;
    .locals 7
    .param p0, "isShare"    # Z
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 305
    new-instance v6, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;

    invoke-direct {v6, p0, p1, p2}, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v6, "mainUbiQuery":Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;
    invoke-virtual {v6}, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-object v4

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 310
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryString:Ljava/lang/String;

    iget-object v3, v6, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryArgs:[Ljava/lang/String;

    new-instance v5, Lcom/miui/gallery/util/UbiFocusUtils$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/util/UbiFocusUtils$4;-><init>(Z)V

    .line 309
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static getSubUbiCount(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "isShare"    # Z
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->getMainDBImage(ZLjava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 326
    .local v0, "mainDbImage":Lcom/miui/gallery/data/DBImage;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v1

    .line 329
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSubUbiImage(ZLjava/lang/String;)Lcom/miui/gallery/data/DBImage;
    .locals 8
    .param p0, "isShare"    # Z
    .param p1, "subUbiFileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 169
    :goto_0
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=?"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "fileName"

    aput-object v5, v4, v6

    .line 170
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object p1, v3, v6

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/util/UbiFocusUtils$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/util/UbiFocusUtils$1;-><init>(Z)V

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getSubUbiImage(ZLjava/lang/String;Ljava/lang/String;I)Lcom/miui/gallery/data/DBImage;
    .locals 7
    .param p0, "isShare"    # Z
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 211
    new-instance v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p1, p2, v0}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v6, "subUbiQuery":Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;
    invoke-virtual {v6}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "UbiFocusUtils"

    const-string v1, "getSubUbiImage, subUbiQuery.isValid."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-object v4

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 217
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    iget-object v3, v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    new-instance v5, Lcom/miui/gallery/util/UbiFocusUtils$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/util/UbiFocusUtils$2;-><init>(Z)V

    .line 216
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static getSubUbiImages(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "isShare"    # Z
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/DBImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/miui/gallery/util/UbiFocusUtils$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/UbiFocusUtils$3;-><init>(Z)V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/UbiFocusUtils;->queryForSubUbiImages(ZLjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getUbiServerIdByUbiLocalId(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "ubiLocalId"    # Ljava/lang/String;
    .param p1, "isShare"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "shareId"

    :goto_1
    const-string v2, "_id"

    invoke-static {v1, v0, v2, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "serverId"

    goto :goto_1
.end method

.method public static handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .locals 2
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .param p1, "isShare"    # Z
    .param p2, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_0

    const-string/jumbo v1, "shareId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "requestId":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 104
    .end local v0    # "requestId":Ljava/lang/String;
    :cond_0
    const-string v1, "id"

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .param p1, "isShare"    # Z
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v9, "isUbiImage"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 112
    .local v2, "isUbiImage":Z
    if-eqz v2, :cond_8

    .line 113
    const-string/jumbo v9, "ubiSubImageContentMap"

    .line 114
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 115
    .local v6, "subUbiImageMap":Lorg/json/JSONObject;
    const-string/jumbo v9, "ubiSubImageCount"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 116
    .local v4, "subUbiImageCount":I
    const-string/jumbo v9, "ubiDefaultIndex"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 117
    .local v7, "subUbiMainIndex":I
    if-eqz v6, :cond_8

    .line 119
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-gt v1, v4, :cond_8

    .line 120
    if-ne v1, v7, :cond_1

    .line 119
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    .local v5, "subUbiImageJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 128
    invoke-static {v5}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAllAndThumbNull(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v8

    .line 129
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "ubiServerId"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v9, "ubiSubIndex"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 132
    const-string/jumbo v9, "ubiLocalId"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    const-string v9, "groupId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    const-string v9, "groupId"

    const-string v10, "groupId"

    .line 136
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_3
    if-eqz p1, :cond_4

    const-string/jumbo v9, "shareId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 139
    const-string/jumbo v9, "shareId"

    const-string/jumbo v10, "shareId"

    .line 140
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 139
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_4
    if-eqz p1, :cond_6

    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    :goto_2
    monitor-enter v9

    .line 145
    :try_start_0
    invoke-static {p1, p2, p3, v1}, Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiImage(ZLjava/lang/String;Ljava/lang/String;I)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 147
    .local v0, "dbSubUbiImage":Lcom/miui/gallery/data/DBImage;
    if-nez v0, :cond_7

    .line 148
    const-string v10, "fileName"

    .line 149
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-static {p1, v10}, Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiImage(ZLjava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v3

    .line 150
    .local v3, "oldItemWithTheSameName":Lcom/miui/gallery/data/DBImage;
    if-eqz v3, :cond_5

    .line 151
    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Z)V

    .line 154
    :cond_5
    invoke-static {p1, v8}, Lcom/miui/gallery/util/UbiFocusUtils;->safeInsertSubUbiImage(ZLandroid/content/ContentValues;)V

    .line 160
    .end local v3    # "oldItemWithTheSameName":Lcom/miui/gallery/data/DBImage;
    :goto_3
    monitor-exit v9

    goto :goto_1

    .end local v0    # "dbSubUbiImage":Lcom/miui/gallery/data/DBImage;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 143
    :cond_6
    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_2

    .line 156
    .restart local v0    # "dbSubUbiImage":Lcom/miui/gallery/data/DBImage;
    :cond_7
    :try_start_1
    invoke-static {p1, v8, p2, p3, v1}, Lcom/miui/gallery/util/UbiFocusUtils;->safeUpdateSubUbiImage(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    const/4 v10, 0x0

    invoke-static {v0, v8, v10}, Lcom/miui/gallery/cloud/CloudUtils;->renameItemIfNeeded(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 165
    .end local v0    # "dbSubUbiImage":Lcom/miui/gallery/data/DBImage;
    .end local v1    # "index":I
    .end local v4    # "subUbiImageCount":I
    .end local v5    # "subUbiImageJson":Lorg/json/JSONObject;
    .end local v6    # "subUbiImageMap":Lorg/json/JSONObject;
    .end local v7    # "subUbiMainIndex":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_8
    return-void
.end method

.method public static queryForSubUbiImages(ZLjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;
    .locals 7
    .param p0, "isShare"    # Z
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p3, "handler":Lcom/miui/gallery/util/GalleryUtils$QueryHandler;, "Lcom/miui/gallery/util/GalleryUtils$QueryHandler<TT;>;"
    const/4 v4, 0x0

    .line 235
    new-instance v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;

    invoke-direct {v6, p1, p2, v4}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v6, "subUbiQuery":Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;
    invoke-virtual {v6}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-object v4

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 240
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    iget-object v3, v6, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    move-object v5, p3

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static safeDeleteSubUbi(Lcom/miui/gallery/data/DBImage;)V
    .locals 5
    .param p0, "mainDbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v0, "subUbiQuery":Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;
    invoke-virtual {v0}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, "UbiFocusUtils"

    const-string v3, "safeDeleteSubUbiImage, subUbiQuery.isValid."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 297
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v2, v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private static safeInsertSubUbiImage(ZLandroid/content/ContentValues;)V
    .locals 1
    .param p0, "isShare"    # Z
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 189
    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static safeUpdateSubUbiImage(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "isShare"    # Z
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "localId"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 193
    new-instance v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, "subUbiQuery":Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;
    invoke-virtual {v0}, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "UbiFocusUtils"

    const-string v2, "safeUpdateSubUbiImage, subUbiQuery.isValid."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    :goto_1
    iget-object v2, v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    invoke-static {v1, p1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    goto :goto_1
.end method
