.class public abstract Lcom/miui/gallery/cloud/SyncCloudBase;
.super Lcom/miui/gallery/cloud/SyncFromServer;
.source "SyncCloudBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromServer;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 58
    return-void
.end method

.method private final getLargerTags(J)Ljava/util/Set;
    .locals 9
    .param p1, "syncTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 429
    .local v7, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 431
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 432
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "serverTag"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverTag > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "serverTag ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 441
    if-eqz v6, :cond_1

    .line 442
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 447
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_2

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_2
    return-object v7
.end method

.method private final handleCustom(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 382
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 384
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "editedColumns"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 387
    invoke-static {v2, p1}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 390
    const-string v3, "serverType"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 391
    .local v1, "serverType":I
    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_5

    .line 393
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/SyncCloudBase;->getLocalGroupId(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "localGroupId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 395
    invoke-direct {p0, v2, p2}, Lcom/miui/gallery/cloud/SyncCloudBase;->logForNullLocalGroupId(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 399
    :goto_0
    invoke-static {v2, p1}, Lcom/miui/gallery/cloud/CloudUtils;->reviseSpecialTypeFlags(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 404
    .end local v0    # "localGroupId":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 406
    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_3

    .line 408
    :cond_2
    const-string/jumbo v3, "sha1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "isFavorite"

    .line 409
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    const-string/jumbo v3, "sha1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleFavoriteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 413
    :cond_3
    return-void

    .line 397
    .restart local v0    # "localGroupId":Ljava/lang/String;
    :cond_4
    const-string v3, "localGroupId"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0    # "localGroupId":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/cloud/SyncCloudBase;->updateLocalGroupIdInGroup(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1
.end method

.method private final handleDelete(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/gallery/cloud/DeleteCloudItem;->updateForDeleteOrPurgedOnLocal(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    .line 419
    return-void
.end method

.method static handleNewGroup(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/cloud/CloudUtils;->isUmodifyAlbum(Ljava/lang/String;)Z

    move-result v7

    .line 151
    .local v7, "isSystemAlbum":Z
    if-eqz v7, :cond_4

    .line 155
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v4

    .line 156
    .local v4, "dbImage":Lcom/miui/gallery/data/DBImage;
    if-eqz v4, :cond_0

    .line 157
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 159
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v15

    .line 250
    .end local v4    # "dbImage":Lcom/miui/gallery/data/DBImage;
    :goto_0
    return-object v15

    .line 161
    .restart local v4    # "dbImage":Lcom/miui/gallery/data/DBImage;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->getServerAlbumName(J)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupByFileName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v3

    .line 163
    .local v3, "conflictItem":Lcom/miui/gallery/data/DBCloud;
    :goto_1
    if-eqz v3, :cond_1

    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "newAlbumName":Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v14, "valuesWithNewName":Landroid/content/ContentValues;
    const-string v15, "fileName"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p1

    invoke-static {v0, v14, v3}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    .line 169
    .end local v9    # "newAlbumName":Ljava/lang/String;
    .end local v14    # "valuesWithNewName":Landroid/content/ContentValues;
    :cond_1
    const-string v15, "localFlag"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 171
    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/util/GalleryUtils;->safeInsertImage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 172
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 162
    .end local v3    # "conflictItem":Lcom/miui/gallery/data/DBCloud;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 172
    .restart local v3    # "conflictItem":Lcom/miui/gallery/data/DBCloud;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 176
    .end local v3    # "conflictItem":Lcom/miui/gallery/data/DBCloud;
    .end local v4    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    .line 178
    .local v2, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isAutoUploadFeatureOpen()Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "appKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 179
    const-string v15, "appKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v15

    .line 180
    invoke-static {v15, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupByAppKey(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v11

    .line 182
    .local v11, "oldCloud":Lcom/miui/gallery/data/DBCloud;
    if-eqz v11, :cond_5

    .line 183
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 185
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 191
    .end local v11    # "oldCloud":Lcom/miui/gallery/data/DBCloud;
    :cond_5
    const-string v15, "localFile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "newItemLocalFile":Ljava/lang/String;
    const-string v15, "fileName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupByFileName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v11

    .line 194
    .restart local v11    # "oldCloud":Lcom/miui/gallery/data/DBCloud;
    if-eqz v11, :cond_6

    .line 195
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/miui/gallery/cloud/CloudUtils;->isUmodifyAlbum(Ljava/lang/String;)Z

    move-result v8

    .line 196
    .local v8, "isUnmodifyAlbum":Z
    if-eqz v8, :cond_8

    .line 197
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/cloud/SyncCloudBase;->statSuspiciousAlbum(Landroid/content/ContentValues;)V

    .line 222
    .end local v8    # "isUnmodifyAlbum":Z
    :cond_6
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 223
    invoke-static {v6, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getOwnerAlbumLocalFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 224
    const/16 v15, 0x26

    invoke-static {v15}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "editedColumns":Ljava/lang/String;
    const-string v15, "editedColumns"

    .line 227
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 226
    invoke-static {v5, v15}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->mergeEditedColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v15, "localFile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v15, "editedColumns"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v5    # "editedColumns":Ljava/lang/String;
    :cond_7
    const-string v15, "localFile"

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v10, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupItemByColumnnameAndValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/miui/gallery/data/DBCloud;

    move-result-object v11

    .line 234
    if-eqz v11, :cond_d

    .line 235
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 236
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 237
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 199
    .restart local v8    # "isUnmodifyAlbum":Z
    :cond_8
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "oldItemLocalFile":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 202
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 203
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 205
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 206
    :cond_a
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getLocalFlag()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 207
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getLocalFlag()I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 208
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 209
    .restart local v9    # "newAlbumName":Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .restart local v14    # "valuesWithNewName":Landroid/content/ContentValues;
    const-string v15, "fileName"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p1

    invoke-static {v0, v14, v11}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    goto/16 :goto_2

    .line 216
    .end local v9    # "newAlbumName":Ljava/lang/String;
    .end local v14    # "valuesWithNewName":Landroid/content/ContentValues;
    :cond_c
    const-string v15, "SyncCloudBase"

    const-string v16, "old album\'s localflag: %s, old album\'s name: %s"

    .line 217
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getLocalFlag()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 216
    invoke-static/range {v15 .. v18}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 241
    .end local v8    # "isUnmodifyAlbum":Z
    .end local v12    # "oldItemLocalFile":Ljava/lang/String;
    :cond_d
    const-string v15, "localFlag"

    const/16 v16, 0x0

    .line 242
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 241
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 244
    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/util/GalleryUtils;->safeInsertImage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 246
    .restart local v13    # "uri":Landroid/net/Uri;
    if-eqz v13, :cond_e

    .line 247
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 250
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private final handlePurged(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/gallery/cloud/DeleteCloudItem;->updateForDeleteOrPurgedOnLocal(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    .line 425
    return-void
.end method

.method private logForNullLocalGroupId(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;

    .prologue
    .line 369
    const-string v2, "SyncCloudBase"

    const-string v3, "localGroupId is null, schemaJson= "

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "groupId"

    const-string v2, "groupId"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "serverstatus"

    const-string v2, "serverStatus"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "version"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "Sync"

    const-string v2, "group_record_not_found"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    return-void

    .line 369
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static statSuspiciousAlbum(Landroid/content/ContentValues;)V
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "album_info"

    invoke-virtual {p0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_suspicious_album"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    return-void
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v8, 0x0

    .line 456
    if-nez p2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 461
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v4, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/cloud/SyncCloudBase;->getLargerTags(J)Ljava/util/Set;

    move-result-object v3

    .line 462
    .local v3, "tagSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 463
    .local v1, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 464
    .local v6, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 466
    .end local v6    # "param":Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getSyncUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;->getSecurity()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v4, v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    .line 466
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/request/utils/Request;->addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V

    .line 469
    const-string v0, "filterTag"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 470
    .local v7, "tags":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "filterTag"

    invoke-direct {v0, v2, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected belong2BabyAlbum(Landroid/content/ContentValues;Z)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "isShare"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    const-string v1, "groupId"

    .line 510
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v0, v1, p2}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->isBabyAlbumForThisServerId(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract getCandidateItemsInAGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/DBImage;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getItem(Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;
.end method

.method protected abstract getLocalGroupId(Landroid/content/ContentValues;)Ljava/lang/String;
.end method

.method protected final handleDataJson(Lorg/json/JSONObject;)Z
    .locals 9
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 477
    const-string v7, "content"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 479
    .local v0, "contentArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 480
    :cond_0
    const-string v7, "SyncCloudBase"

    const-string v8, "contentArray is empty, return."

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    .line 505
    :cond_1
    return v1

    .line 484
    :cond_2
    const/4 v1, 0x0

    .line 486
    .local v1, "hasNewItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 487
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 488
    .local v3, "schemaJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleItem(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 489
    const/4 v1, 0x1

    .line 494
    :cond_3
    const-string/jumbo v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, "status":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "custom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 497
    const-string v7, "isPublic"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "isPublic"

    .line 498
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 499
    const-string v7, "id"

    .line 500
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 499
    invoke-static {v7, v6}, Lcom/miui/gallery/cloud/AlbumShareOperations;->requestPublicUrl(Ljava/lang/String;Z)Lcom/miui/gallery/util/AsyncResult;

    .line 486
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected handleFavoriteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .param p2, "sha1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method protected final handleItem(Lorg/json/JSONObject;)Z
    .locals 14
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 61
    const-string/jumbo v8, "type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "status":Ljava/lang/String;
    const-string v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "serverId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    monitor-enter v8

    .line 67
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncCloudBase;->getItem(Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 68
    .local v0, "cloud":Lcom/miui/gallery/data/DBImage;
    if-nez v0, :cond_2

    .line 72
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v6

    .line 74
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "group"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10, v6, v3}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleNewGroup(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "localId":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Lcom/miui/gallery/cloud/SyncCloudBase;->updateLocalGroupIdInGroup(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 78
    monitor-exit v8

    .line 111
    .end local v2    # "localId":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return v7

    .line 80
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v7, "localGroupId"

    invoke-virtual {p0, v6}, Lcom/miui/gallery/cloud/SyncCloudBase;->getLocalGroupId(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v6, v3, v4, p1}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleNewImage(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleUbiSubImage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v7, "sha1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "isFavorite"

    .line 84
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    const-string/jumbo v7, "sha1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleFavoriteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 87
    :cond_1
    const/4 v7, 0x1

    monitor-exit v8

    goto :goto_0

    .line 110
    .end local v0    # "cloud":Lcom/miui/gallery/data/DBImage;
    .end local v1    # "id":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 92
    .restart local v0    # "cloud":Lcom/miui/gallery/data/DBImage;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v10

    const-string/jumbo v9, "tag"

    invoke-static {p1, v9}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-ltz v9, :cond_3

    .line 93
    const-string v9, "SyncCloudBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cloud:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= server tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "tag"

    .line 94
    invoke-static {p1, v11}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", don\'t update local."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    monitor-exit v8

    goto/16 :goto_0

    .line 98
    :cond_3
    const-string v9, "custom"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleCustom(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    .line 100
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleUbiSubImage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 110
    :goto_1
    monitor-exit v8

    goto/16 :goto_0

    .line 101
    :cond_4
    const-string v9, "deleted"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleDelete(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 104
    :cond_5
    const-string v9, "purged"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncCloudBase;->handlePurged(Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 108
    :cond_6
    const-string v9, "SyncCloudBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status unrecognized, schema:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected handleNewImage(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 21
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "schemaJson"    # Lorg/json/JSONObject;

    .prologue
    .line 262
    const-string v16, "localFlag"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v16, "fileName"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "fileName":Ljava/lang/String;
    const-string/jumbo v16, "sha1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, "newItemSha1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 276
    .local v4, "candidateItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    const-string v16, "localGroupId"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "localGroupId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "candidateItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .restart local v4    # "candidateItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/SyncCloudBase;->logForNullLocalGroupId(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 284
    :goto_0
    const/4 v9, 0x0

    .line 285
    .local v9, "itemToMerge":Lcom/miui/gallery/data/DBImage;
    const/4 v8, 0x0

    .line 286
    .local v8, "itemNeedRename":Lcom/miui/gallery/data/DBImage;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/DBImage;

    .line 287
    .local v3, "candidateItem":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 288
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 289
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "localFile":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 291
    invoke-static {v10}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v7, 0x1

    .line 292
    .local v7, "isThumbnail":Z
    :goto_2
    if-eqz v9, :cond_1

    if-eqz v7, :cond_4

    .line 293
    :cond_1
    move-object v9, v3

    .line 295
    if-eqz v7, :cond_0

    .line 296
    const-string/jumbo v17, "thumbnailFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v17, "localFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .end local v3    # "candidateItem":Lcom/miui/gallery/data/DBImage;
    .end local v7    # "isThumbnail":Z
    .end local v8    # "itemNeedRename":Lcom/miui/gallery/data/DBImage;
    .end local v9    # "itemToMerge":Lcom/miui/gallery/data/DBImage;
    .end local v10    # "localFile":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v12}, Lcom/miui/gallery/cloud/SyncCloudBase;->getCandidateItemsInAGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 291
    .restart local v3    # "candidateItem":Lcom/miui/gallery/data/DBImage;
    .restart local v8    # "itemNeedRename":Lcom/miui/gallery/data/DBImage;
    .restart local v9    # "itemToMerge":Lcom/miui/gallery/data/DBImage;
    .restart local v10    # "localFile":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 300
    .restart local v7    # "isThumbnail":Z
    :cond_4
    const-string v17, "SyncCloudBase"

    const-string/jumbo v18, "the new item matches both %s and %s"

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v19

    .line 301
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v20

    .line 300
    invoke-static/range {v17 .. v20}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 304
    .end local v7    # "isThumbnail":Z
    .end local v10    # "localFile":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v10

    .line 306
    .restart local v10    # "localFile":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 307
    invoke-static {v10}, Lcom/miui/gallery/cloud/CloudUtils;->readFileNameFromExif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 308
    if-nez v9, :cond_6

    .line 309
    move-object v9, v3

    .line 310
    const-string/jumbo v17, "thumbnailFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v17, "localFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :cond_6
    const-string v17, "SyncCloudBase"

    const-string/jumbo v18, "the new item matches both %s and %s"

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v19

    .line 314
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v20

    .line 313
    invoke-static/range {v17 .. v20}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 317
    :cond_7
    const-string v17, "SyncCloudBase"

    const-string v18, "%s and %s have the same sha1"

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 320
    .end local v10    # "localFile":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 321
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v10

    .line 322
    .restart local v10    # "localFile":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 323
    invoke-static {v10}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 324
    invoke-static {v10}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, "localFileSha1":Ljava/lang/String;
    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 327
    const-string v17, "SyncCloudBase"

    const-string/jumbo v18, "update an item with a thumbnail as its original file, name: %s"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    if-nez v9, :cond_9

    .line 329
    move-object v9, v3

    goto/16 :goto_1

    .line 331
    :cond_9
    const-string v17, "SyncCloudBase"

    const-string/jumbo v18, "the new item matches both %s and %s"

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v19

    .line 332
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v20

    .line 331
    invoke-static/range {v17 .. v20}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 338
    .end local v11    # "localFileSha1":Ljava/lang/String;
    :cond_a
    move-object v8, v3

    .line 339
    goto/16 :goto_1

    .line 340
    .end local v10    # "localFile":Ljava/lang/String;
    :cond_b
    const-string v17, "SyncCloudBase"

    const-string/jumbo v18, "should not reach here!!"

    invoke-static/range {v17 .. v18}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    .end local v3    # "candidateItem":Lcom/miui/gallery/data/DBImage;
    :cond_c
    if-eqz v8, :cond_d

    .line 345
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Z)V

    .line 346
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v14

    .line 347
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "groupId"

    const-string v17, "groupId"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v16, "sha1"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v16, "Sync"

    const-string/jumbo v17, "sync_rename_conflict_item"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 352
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    if-eqz v9, :cond_f

    .line 353
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/miui/gallery/cloud/CloudUtils;->reviseSpecialTypeFlags(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 354
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdateImage(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    .line 355
    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    .line 364
    :cond_e
    :goto_3
    return-object v6

    .line 357
    :cond_f
    const/4 v6, 0x0

    .line 358
    .local v6, "id":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->reviseSpecialTypeFlags(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncCloudBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeInsertImage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 360
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v15, :cond_e

    .line 361
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/miui/gallery/cloud/SyncCloudBase;->onNewImageSynced(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected abstract handleUbiSubImage(Lorg/json/JSONObject;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract onNewImageSynced(Landroid/content/ContentValues;Ljava/lang/String;)V
.end method

.method protected abstract updateLocalGroupIdInGroup(Ljava/lang/String;Landroid/content/ContentValues;)V
.end method
