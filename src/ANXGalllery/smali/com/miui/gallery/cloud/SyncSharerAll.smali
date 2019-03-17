.class public final Lcom/miui/gallery/cloud/SyncSharerAll;
.super Lcom/miui/gallery/cloud/SyncFromServer;
.source "SyncSharerAll.java"


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromServer;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 41
    iput-object p4, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mExtras:Landroid/os/Bundle;

    .line 42
    return-void
.end method

.method private handleAlbumList(Lorg/json/JSONObject;)V
    .locals 24
    .param p1, "albumListJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v19, "entries"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 231
    .local v7, "entriesArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 232
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 233
    .local v8, "entryJson":Lorg/json/JSONObject;
    const-string/jumbo v19, "sharedId"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 235
    .local v15, "sharedId":Ljava/lang/String;
    const-string/jumbo v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "albumStatus":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 237
    const-string v5, "normal"

    .line 239
    :cond_0
    const-string/jumbo v19, "tag"

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 240
    .local v12, "serverTag":J
    const-string v19, "content"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 241
    .local v6, "contentJson":Lorg/json/JSONObject;
    const-string/jumbo v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "serverStatus":Ljava/lang/String;
    const-string v19, "fileName"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "albumName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 245
    .local v18, "values":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 247
    .local v10, "needSyncImages":Z
    sget-object v20, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    monitor-enter v20

    .line 249
    :try_start_0
    invoke-static {v15}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbumBySharedId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v14

    .line 250
    .local v14, "shareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    if-nez v14, :cond_4

    .line 251
    invoke-static {v11, v5}, Lcom/miui/gallery/data/DBShareAlbum;->isNormalStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 253
    invoke-static {v8, v14}, Lcom/miui/gallery/data/DBShareAlbum;->getContentValue(Lorg/json/JSONObject;Lcom/miui/gallery/data/DBShareAlbum;)Landroid/content/ContentValues;

    move-result-object v18

    .line 254
    sget-object v19, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 256
    .local v17, "uri":Landroid/net/Uri;
    if-eqz v17, :cond_1

    .line 257
    sget-object v19, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 258
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    const-string v22, "albumId"

    .line 257
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v15, v1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->updateLocalGroupIdInGroup(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    const/4 v10, 0x1

    .line 262
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/cloud/SyncSharerAll;->insertCreatorIntoShareUser(Lorg/json/JSONObject;)V

    .line 289
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v10, :cond_7

    .line 293
    new-instance v16, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/SyncSharerAll;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/SyncSharerAll;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 295
    .local v16, "syncSharerImages":Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;
    const-string v19, "SyncSharerAll"

    const-string/jumbo v20, "sync share image when insertCreatorAndSyncImages start"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;->sync()Z

    .line 297
    const-string v19, "SyncSharerAll"

    const-string/jumbo v20, "sync share image when insertCreatorAndSyncImages end"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncShouldClearDataBase()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 299
    const-string v19, "SyncSharerAll"

    const-string v20, "need clear data"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v4    # "albumName":Ljava/lang/String;
    .end local v5    # "albumStatus":Ljava/lang/String;
    .end local v6    # "contentJson":Lorg/json/JSONObject;
    .end local v8    # "entryJson":Lorg/json/JSONObject;
    .end local v10    # "needSyncImages":Z
    .end local v11    # "serverStatus":Ljava/lang/String;
    .end local v12    # "serverTag":J
    .end local v14    # "shareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    .end local v15    # "sharedId":Ljava/lang/String;
    .end local v16    # "syncSharerImages":Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 267
    .restart local v4    # "albumName":Ljava/lang/String;
    .restart local v5    # "albumStatus":Ljava/lang/String;
    .restart local v6    # "contentJson":Lorg/json/JSONObject;
    .restart local v8    # "entryJson":Lorg/json/JSONObject;
    .restart local v10    # "needSyncImages":Z
    .restart local v11    # "serverStatus":Ljava/lang/String;
    .restart local v12    # "serverTag":J
    .restart local v14    # "shareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    .restart local v15    # "sharedId":Ljava/lang/String;
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    invoke-static {v11, v5}, Lcom/miui/gallery/data/DBShareAlbum;->isNormalStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 269
    invoke-virtual {v14}, Lcom/miui/gallery/data/DBShareAlbum;->getServerTag()J

    move-result-wide v22

    cmp-long v19, v12, v22

    if-lez v19, :cond_5

    .line 271
    invoke-static {v8, v14}, Lcom/miui/gallery/data/DBShareAlbum;->getContentValue(Lorg/json/JSONObject;Lcom/miui/gallery/data/DBShareAlbum;)Landroid/content/ContentValues;

    move-result-object v18

    .line 272
    sget-object v19, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v21, "albumId = ? "

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 284
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/miui/gallery/cloud/SyncSharerAll;->notifyKicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v14}, Lcom/miui/gallery/data/DBShareAlbum;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/miui/gallery/cloud/CloudUtils;->deleteShareAlbumInLocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v19, "SyncSharerAll"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "delete share album:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    .end local v14    # "shareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 305
    .restart local v14    # "shareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    :cond_7
    invoke-static {v11, v5}, Lcom/miui/gallery/data/DBShareAlbum;->isNormalStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "isPublic"

    .line 306
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "isPublic"

    .line 307
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 308
    const-string/jumbo v19, "sharedId"

    .line 309
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    .line 308
    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/cloud/AlbumShareOperations;->requestPublicUrl(Ljava/lang/String;Z)Lcom/miui/gallery/util/AsyncResult;

    .line 231
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private handleImageList(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "albumListJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v5, "entries"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 333
    .local v0, "entriesArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 334
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 335
    .local v1, "entryJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "sharedId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "sharedId":Ljava/lang/String;
    new-instance v4, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;

    iget-object v5, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 339
    .local v4, "syncSharerImages":Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;
    const-string v5, "SyncSharerAll"

    const-string/jumbo v6, "sync share image when handleImageList start"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;->sync()Z

    .line 341
    const-string v5, "SyncSharerAll"

    const-string/jumbo v6, "sync share image when handleImageList end"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncShouldClearDataBase()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    const-string v5, "SyncSharerAll"

    const-string v6, "need clear data"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v1    # "entryJson":Lorg/json/JSONObject;
    .end local v3    # "sharedId":Ljava/lang/String;
    .end local v4    # "syncSharerImages":Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;
    :cond_0
    return-void

    .line 333
    .restart local v1    # "entryJson":Lorg/json/JSONObject;
    .restart local v3    # "sharedId":Ljava/lang/String;
    .restart local v4    # "syncSharerImages":Lcom/miui/gallery/cloud/SyncSharerImageForAlbum;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleUserList(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "albumListJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 415
    const-string v5, "entries"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 416
    .local v1, "entriesArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 417
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 418
    .local v2, "entryJson":Lorg/json/JSONObject;
    const-string v5, "albumId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "albumId":Ljava/lang/String;
    new-instance v4, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;

    iget-object v5, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 422
    .local v4, "syncOwnerUsers":Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;
    invoke-virtual {v4, v2}, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;->handleDataJson(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    const/4 v5, 0x1

    sput-boolean v5, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->sNeedSyncUserNames:Z

    .line 416
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v2    # "entryJson":Lorg/json/JSONObject;
    .end local v4    # "syncOwnerUsers":Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;
    :cond_1
    return-void
.end method

.method private insertCreatorIntoShareUser(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 315
    const-string/jumbo v2, "sharedId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "albumId":Ljava/lang/String;
    const-string v2, "creatorId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "creatorId":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/SyncSharerUserForAlbum;->insertCreatorIntoShareUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private notifyKicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    const v2, 0x7f0c004d

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mContext:Landroid/content/Context;

    const v5, 0x7f0c03e8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 323
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 321
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->sendShareAlbumNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 326
    invoke-static {}, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->getInstance()Lcom/miui/gallery/cloud/CloudShareAlbumMediator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->onShareAlbumExited(Ljava/lang/String;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCurrentSyncTag()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getCurrentSyncTag()Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "shouldInitial":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 73
    .local v1, "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->shouldSyncTagValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    iget v6, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 75
    invoke-static {v6}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getInitSyncTagValue(I)I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 80
    .end local v1    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_1
    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 82
    .restart local v1    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->shouldSyncTagValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 84
    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getInitSyncTagValue(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    goto :goto_0

    .line 88
    .end local v1    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_3
    return-object v2
.end method

.method protected getSyncTagList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method protected getSyncTagSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerAll;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$SyncPull;->getPullShareAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleResultAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 13
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    .line 96
    .local v4, "shouldContinue":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 97
    .local v6, "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v10, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v10}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getJsonTagOutput(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "jsonTagOutput":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 99
    const-string v7, "SyncSharerAll"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get output tag is null, syncType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v4, 0x0

    .line 164
    .end local v0    # "jsonTagOutput":Ljava/lang/String;
    .end local v4    # "shouldContinue":Z
    .end local v6    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :goto_1
    return v4

    .line 103
    .restart local v0    # "jsonTagOutput":Ljava/lang/String;
    .restart local v4    # "shouldContinue":Z
    .restart local v6    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 105
    .local v5, "syncResultJson":Lorg/json/JSONObject;
    const-string v10, "lastPage"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 106
    .local v1, "lastPage":Z
    const-string/jumbo v10, "syncTag"

    invoke-static {v5, v10}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 108
    .local v2, "serverTag":J
    const-string v10, "entries"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    iget v10, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    packed-switch v10, :pswitch_data_0

    .line 130
    const-string v10, "SyncSharerAll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t handle this syncTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_2
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncShouldClearDataBase()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 139
    const-string v7, "SyncSharerAll"

    const-string v10, "need clear data"

    invoke-static {v7, v10}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x0

    goto :goto_1

    .line 113
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/miui/gallery/cloud/SyncSharerAll;->handleAlbumList(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 118
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/miui/gallery/cloud/SyncSharerAll;->handleAlbumList(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 122
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/miui/gallery/cloud/SyncSharerAll;->handleImageList(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 126
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/miui/gallery/cloud/SyncSharerAll;->handleUserList(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 134
    :cond_2
    const-string v10, "SyncSharerAll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries is null, may be is first sync, just save syncTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_3
    move-wide v8, v2

    .line 145
    .local v8, "toUpdateSyncTag":J
    iget-wide v10, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    .line 146
    const-string v10, "SyncSharerAll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update the syncTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-wide v8, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->serverValue:J

    .line 148
    invoke-virtual {p0, v6}, Lcom/miui/gallery/cloud/SyncSharerAll;->updateSyncTag(Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;)V

    .line 150
    :cond_4
    if-eqz v1, :cond_5

    .line 153
    const-string v10, "SyncSharerAll"

    const-string v11, "last page, break sync from server"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->shouldSync:Z

    goto/16 :goto_0

    .line 157
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 162
    .end local v0    # "jsonTagOutput":Ljava/lang/String;
    .end local v1    # "lastPage":Z
    .end local v2    # "serverTag":J
    .end local v5    # "syncResultJson":Lorg/json/JSONObject;
    .end local v6    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    .end local v8    # "toUpdateSyncTag":J
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncSharerAll;->updateSyncInfo(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
