.class public abstract Lcom/miui/gallery/cloud/SyncOwnerCloud;
.super Lcom/miui/gallery/cloud/SyncCloudBase;
.source "SyncOwnerCloud.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncCloudBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 200
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncCloudBase;->appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 202
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "returnSystemAlbum"

    const/4 v2, 0x1

    .line 203
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getCandidateItemsInAGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "localGroupId"    # Ljava/lang/String;
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

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getCandidateItemsInAGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItem(Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalGroupId(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 129
    const-string v8, "groupId"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "serverId":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 131
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    if-nez v0, :cond_0

    .line 132
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/CloudTableUtils;->isGroupWithoutRecord(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 133
    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v4

    .line 135
    .local v4, "localGroupId":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 159
    .end local v4    # "localGroupId":J
    :goto_0
    return-object v8

    .line 138
    :cond_0
    if-nez v0, :cond_3

    .line 143
    const/4 v7, 0x0

    .line 144
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudTableUtils;->isCameraGroup(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraRecordValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 149
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    .line 150
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 151
    .local v2, "id":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "serverId"

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v8, "Sync"

    const-string/jumbo v9, "sync_try_insert_system_album"

    invoke-static {v8, v9, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 146
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "id":J
    :cond_2
    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudTableUtils;->isScreenshotGroup(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 147
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsRecordValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .line 159
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    if-nez v0, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method protected getSyncTagSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "serverTag"

    return-object v0
.end method

.method protected handleFavoriteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .param p2, "sha1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 98
    const-string v0, "isFavorite"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "isFavorite"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 100
    .local v7, "isFavorite":Z
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Favorites;->URI:Landroid/net/Uri;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v10

    const-string/jumbo v2, "sha1 = ?"

    new-array v3, v9, [Ljava/lang/String;

    aput-object p2, v3, v10

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/SyncOwnerCloud$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/SyncOwnerCloud$1;-><init>(Lcom/miui/gallery/cloud/SyncOwnerCloud;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 110
    .local v6, "exists":Ljava/lang/Boolean;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "isFavorite"

    if-eqz v7, :cond_1

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Favorites;->DELAY_NOTIFY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "sha1 = ?"

    new-array v2, v9, [Ljava/lang/String;

    aput-object p2, v2, v10

    invoke-static {v0, v8, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    .end local v6    # "exists":Ljava/lang/Boolean;
    .end local v7    # "isFavorite":Z
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .restart local v6    # "exists":Ljava/lang/Boolean;
    .restart local v7    # "isFavorite":Z
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    move v0, v10

    .line 111
    goto :goto_0

    .line 117
    :cond_2
    if-eqz v7, :cond_0

    .line 118
    const-string/jumbo v0, "sha1"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "dateFavorite"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string/jumbo v0, "source"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Favorites;->DELAY_NOTIFY_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method protected handleUbiSubImage(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .param p2, "ubiLocalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 94
    return-void
.end method

.method protected isCreatedByMySelf(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 79
    const-string v1, "creatorId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "creatorId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNewImageSynced(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "insertedId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 173
    const-string v0, "serverTag"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 174
    .local v9, "flag":Ljava/lang/Long;
    if-nez v9, :cond_1

    .line 175
    const-string v0, "SyncOwnerCloud"

    const-string v2, "server tag should not be null"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncOwnerCloud;->isCreatedByMySelf(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "albumId":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lcom/miui/gallery/cloud/SyncOwnerCloud;->belong2BabyAlbum(Landroid/content/ContentValues;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud;->mContext:Landroid/content/Context;

    const-string v3, "serverId"

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v8

    .line 183
    .local v8, "album":Lcom/miui/gallery/data/DBImage;
    if-eqz v8, :cond_2

    .line 184
    invoke-static {}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->getInstance()Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;

    move-result-object v0

    .line 186
    invoke-virtual {v8}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 187
    invoke-virtual {v8}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 185
    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->sendNotification(Ljava/lang/String;JLjava/lang/String;ZJ)V

    .line 191
    .end local v1    # "albumId":Ljava/lang/String;
    .end local v8    # "album":Lcom/miui/gallery/data/DBImage;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->download(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected updateLocalGroupIdInGroup(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "groupItemValues"    # Landroid/content/ContentValues;

    .prologue
    .line 164
    const-string v1, "serverId"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "serverId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerCloud;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "groupId"

    invoke-static {v1, v0, p1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->updateLocalGroupIdInGroup(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
