.class public abstract Lcom/miui/gallery/cloud/SyncUserBase;
.super Lcom/miui/gallery/cloud/SyncFromServer;
.source "SyncUserBase.java"


# instance fields
.field protected final mAlbumId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "albumId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromServer;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 32
    iput-object p4, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mAlbumId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private final getInvitedShareUserByRelation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "relation"    # Ljava/lang/String;
    .param p3, "relationText"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mAlbumId:Ljava/lang/String;

    invoke-static {v0, p1, v1, p2, p3}, Lcom/miui/gallery/cloud/CloudUtils;->getInvitedDBShareUserInLocal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;

    move-result-object v0

    return-object v0
.end method

.method private final getShareUserById(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mAlbumId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareUserInLocal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;

    move-result-object v0

    return-object v0
.end method

.method private handleUserInvited(Lorg/json/JSONObject;Lcom/miui/gallery/data/DBShareUser;Ljava/lang/String;)Z
    .locals 7
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .param p2, "shareUser"    # Lcom/miui/gallery/data/DBShareUser;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-eqz p2, :cond_2

    .line 109
    const-string v3, "normal"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "invited"

    .line 110
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/data/DBShareUser;->getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 112
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = ? "

    new-array v5, v1, [Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 112
    invoke-static {v3, v0, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = ? "

    new-array v1, v1, [Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 119
    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 125
    goto :goto_0
.end method

.method private final setPhoneNumberNullIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    if-ne v1, v2, :cond_1

    const-string v1, "family"

    .line 130
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "friend"

    .line 131
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=\'%s\' and %s=\'%s\' and %s=\'%s\' and %s=\'%s\'"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "albumId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mAlbumId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "relation"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string v6, "relationText"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    const/4 v5, 0x6

    const-string v6, "serverStatus"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "invited"

    aput-object v6, v4, v5

    .line 136
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 134
    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method


# virtual methods
.method protected final addUsers(Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v4, "list"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 177
    .local v3, "userList":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 178
    :cond_0
    const-string v4, "SyncUserBase"

    const-string v5, "changedUserList is empty, return."

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    .line 189
    :cond_1
    return v0

    .line 182
    :cond_2
    const/4 v0, 0x0

    .line 183
    .local v0, "hasNewUser":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 184
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 185
    .local v2, "userJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/SyncUserBase;->handleUser(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    const/4 v0, 0x1

    .line 183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final getSyncItemLimit()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method protected handleUser(Lorg/json/JSONObject;)Z
    .locals 14
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v8, "userId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "userId":Ljava/lang/String;
    const-string/jumbo v8, "tag"

    invoke-static {p1, v8}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 45
    .local v2, "serverTag":J
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    monitor-enter v9

    .line 47
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v6}, Lcom/miui/gallery/cloud/SyncUserBase;->getShareUserById(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;

    move-result-object v4

    .line 48
    .local v4, "shareUser":Lcom/miui/gallery/data/DBShareUser;
    if-nez v4, :cond_3

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "relation":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51
    .local v1, "relationText":Ljava/lang/String;
    const-string v8, "relation"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    const-string v8, "relation"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v8, "relationText"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/SyncUserBase;->setPhoneNumberNullIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v6, v0, v1}, Lcom/miui/gallery/cloud/SyncUserBase;->getInvitedShareUserByRelation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareUser;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/cloud/SyncUserBase;->handleUserInvited(Lorg/json/JSONObject;Lcom/miui/gallery/data/DBShareUser;Ljava/lang/String;)Z

    move-result v8

    monitor-exit v9

    .line 103
    .end local v0    # "relation":Ljava/lang/String;
    .end local v1    # "relationText":Ljava/lang/String;
    :goto_0
    return v8

    .line 65
    .restart local v0    # "relation":Ljava/lang/String;
    .restart local v1    # "relationText":Ljava/lang/String;
    :cond_1
    const-string v8, "normal"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 66
    invoke-static {p1}, Lcom/miui/gallery/data/DBShareUser;->getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v7

    .line 68
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "albumId"

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncUserBase;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 102
    .end local v0    # "relation":Ljava/lang/String;
    .end local v1    # "relationText":Ljava/lang/String;
    .end local v4    # "shareUser":Lcom/miui/gallery/data/DBShareUser;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 75
    .restart local v0    # "relation":Ljava/lang/String;
    .restart local v1    # "relationText":Ljava/lang/String;
    .restart local v4    # "shareUser":Lcom/miui/gallery/data/DBShareUser;
    :cond_2
    const/4 v8, 0x0

    :try_start_1
    monitor-exit v9

    goto :goto_0

    .line 79
    .end local v0    # "relation":Ljava/lang/String;
    .end local v1    # "relationText":Ljava/lang/String;
    :cond_3
    const-string v8, "SyncUserBase"

    const-string v10, "find this user in local, update"

    invoke-static {v8, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getServerTag()J

    move-result-wide v10

    cmp-long v8, v10, v2

    if-ltz v8, :cond_4

    .line 82
    const-string v8, "SyncUserBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "shareUser:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 83
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getServerTag()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= server tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", don\'t update local."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-static {v8, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 89
    :cond_4
    const-string v8, "normal"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    const-string v10, "_id = ? "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 91
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 90
    invoke-static {v8, v10, v11}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    const-string v8, "SyncUserBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete share user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 97
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/data/DBShareUser;->getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v7

    .line 98
    .restart local v7    # "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncUserBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    const-string v10, "_id = ? "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 100
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBShareUser;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 98
    invoke-static {v8, v7, v10, v11}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected final updateSyncTagAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 8
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
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v7, 0x0

    .line 163
    const-string/jumbo v4, "tag"

    invoke-static {p1, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    .local v0, "serverTag":J
    move-wide v2, v0

    .line 167
    .local v2, "toUpdateSyncTag":J
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v4, v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 168
    const-string v4, "SyncUserBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update the syncTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iput-wide v2, v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->serverValue:J

    .line 170
    invoke-virtual {p0, p2}, Lcom/miui/gallery/cloud/SyncUserBase;->updateSyncTag(Ljava/util/ArrayList;)V

    .line 172
    :cond_0
    return v7
.end method
