.class public Lcom/miui/gallery/cloud/SyncOwnerAlbum;
.super Lcom/miui/gallery/cloud/SyncFromServer;
.source "SyncOwnerAlbum.java"


# instance fields
.field private mSyncId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromServer;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->initSyncId()V

    .line 53
    const-string v0, "SyncSystemAlbum"

    const-string v1, "init syncId %d"

    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mSyncId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private initSyncId()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getEverSyncedSystemAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "max(serverId)"

    aput-object v0, v2, v7

    .line 59
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s AND (%s=%d AND %s=\'%s\')"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "(serverType=0)"

    aput-object v6, v5, v7

    const-string v6, "localFlag"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "serverStatus"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "custom"

    aput-object v7, v5, v6

    .line 59
    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Lcom/miui/gallery/cloud/SyncOwnerAlbum$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum$1;-><init>(Lcom/miui/gallery/cloud/SyncOwnerAlbum;)V

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mSyncId:J

    .line 73
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :goto_0
    return-void

    .line 71
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mSyncId:J

    goto :goto_0
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
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
    .line 108
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "syncId"

    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mSyncId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getCurrentSyncTag()Ljava/util/ArrayList;
    .locals 1
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
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSyncTagList()Ljava/util/ArrayList;
    .locals 1
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
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSyncTagSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$SyncPull;->getPullOwnerAlbumUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleResultAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 19
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
    .line 115
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const-string v14, "albums"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 116
    .local v2, "albumJSONArray":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 117
    const-string v14, "SyncSystemAlbum"

    const-string v15, "response content null"

    invoke-static {v14, v15}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v14, 0x0

    .line 189
    :goto_0
    return v14

    .line 120
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_4

    .line 121
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    .local v3, "albumJson":Lorg/json/JSONObject;
    const-string v14, "albumId"

    invoke-static {v3, v14}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 123
    .local v8, "serverId":J
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForOwnerAlbum(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v12

    .line 124
    .local v12, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v4

    .line 125
    .local v4, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/cloud/CloudUtils;->isUmodifyAlbum(Ljava/lang/String;)Z

    move-result v6

    .line 130
    .local v6, "isSystemAlbum":Z
    if-nez v4, :cond_1

    if-eqz v6, :cond_1

    .line 133
    new-instance v14, Lcom/miui/gallery/cloud/SyncOwnerAlbum$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum$2;-><init>(Lcom/miui/gallery/cloud/SyncOwnerAlbum;)V

    invoke-static {v14}, Lcom/miui/gallery/cloud/CloudUtils;->addRecordsForCameraAndScreenshots(Lcom/miui/gallery/cloud/CloudUtils$Insertable;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v4

    .line 143
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "groupId"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v14, "model"

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v14, "version"

    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v14, "Sync"

    const-string/jumbo v15, "system_album_record_not_found"

    invoke-static {v14, v15, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz v6, :cond_3

    .line 153
    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v14

    if-nez v14, :cond_2

    .line 155
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getEverSyncedSystemAlbum()Z

    move-result v14

    if-nez v14, :cond_2

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->getBaseUri()Landroid/net/Uri;

    move-result-object v14

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v12, v15}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBByServerId(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 160
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v10, "updateValues":Landroid/content/ContentValues;
    const-string v14, "localGroupId"

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s=%s AND (%s!=%s) AND (%s=%d OR %s=%d)"

    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "groupId"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "localGroupId"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "serverType"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const/16 v18, 0x1

    .line 164
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    const-string v18, "serverType"

    aput-object v18, v16, v17

    const/16 v17, 0x7

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    .line 162
    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "updateWhere":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->getBaseUri()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v15, v10, v11, v0}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    .end local v10    # "updateValues":Landroid/content/ContentValues;
    .end local v11    # "updateWhere":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 167
    :cond_3
    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/CloudTableUtils;->isGroupWithoutRecord(J)Z

    move-result v14

    if-nez v14, :cond_2

    .line 169
    if-nez v4, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->getBaseUri()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Lcom/miui/gallery/cloud/SyncCloudBase;->handleNewGroup(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 174
    .end local v3    # "albumJson":Lorg/json/JSONObject;
    .end local v4    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .end local v6    # "isSystemAlbum":Z
    .end local v8    # "serverId":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getEverSyncedSystemAlbum()Z

    move-result v14

    if-nez v14, :cond_5

    .line 178
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s=-1 AND (%s=%d OR %s=%d) AND (%s=%d OR %s=%d)"

    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "localGroupId"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "localFlag"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x7

    .line 179
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "localFlag"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const/16 v18, 0x8

    .line 180
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, "serverType"

    aput-object v18, v16, v17

    const/16 v17, 0x6

    const/16 v18, 0x1

    .line 181
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x7

    const-string v18, "serverType"

    aput-object v18, v16, v17

    const/16 v17, 0x8

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    .line 178
    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->getBaseUri()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Lcom/miui/gallery/util/SafeDBUtil;->safeDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    .end local v13    # "where":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setEverSyncedSystemAlbum()V

    .line 187
    const-string/jumbo v14, "syncAlbumId"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->mSyncId:J

    .line 189
    const-string v14, "lastPage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0
.end method
