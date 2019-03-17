.class public Lcom/miui/gallery/cloud/CreateGroupItem;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "CreateGroupItem.java"


# static fields
.field private static invalidCharacters:[Ljava/lang/String;

.field private static invalidStartWiths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    const-string v1, "\\"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloud/CreateGroupItem;->invalidCharacters:[Ljava/lang/String;

    .line 192
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, "_"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/cloud/CreateGroupItem;->invalidStartWiths:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static checkFileNameValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0c010c

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const v4, 0x7f0c010b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    :goto_0
    return-object v4

    .line 204
    :cond_0
    const/4 v4, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 207
    .local v3, "sysAlbumNameIds":[I
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget v0, v3, v4

    .line 208
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 207
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "id":I
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->containsName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 217
    :cond_3
    sget-object v6, Lcom/miui/gallery/cloud/CreateGroupItem;->invalidCharacters:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_5

    aget-object v1, v6, v4

    .line 218
    .local v1, "invalidCharacter":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c010a

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v5

    .line 220
    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 217
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 224
    .end local v1    # "invalidCharacter":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/miui/gallery/cloud/CreateGroupItem;->invalidStartWiths:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_3
    if-ge v4, v7, :cond_7

    aget-object v2, v6, v4

    .line 225
    .local v2, "invalidStartWith":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0109

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v5

    .line 227
    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 224
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 230
    .end local v2    # "invalidStartWith":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 204
    :array_0
    .array-data 4
        0x7f0c00f7
        0x7f0c00fb
        0x7f0c0465
        0x7f0c0066
        0x7f0c0344
    .end array-data
.end method

.method public static localCreateBabyGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v1, "LOCAL_CREATE_GROUP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local create group start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    monitor-enter v2

    .line 133
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupByFileName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 135
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBCloud;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v1, v3, p1, v4}, Lcom/miui/gallery/cloud/CreateGroupItem;->localCreateGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 140
    .end local v0    # "dbCloud":Lcom/miui/gallery/data/DBCloud;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static localCreateGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "isBabyAlbum"    # Z

    .prologue
    .line 144
    const-string v2, "LOCAL_CREATE_GROUP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localCreateGroupBySpecialAppKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    monitor-enter v4

    .line 146
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v0, "groupValue":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    const-string v2, "appKey"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    const-string v2, "serverId"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    if-eqz p4, :cond_2

    .line 154
    const-string v2, "attributes"

    const-wide/16 v6, 0x1

    .line 155
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :cond_2
    const-string v2, "fileName"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "dateTaken"

    if-eqz p4, :cond_3

    const-wide/16 v2, -0x3e4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v2, "dateModified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v2, "serverType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v2, "localFlag"

    const/16 v3, 0x8

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 161
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v2, "localFile"

    invoke-static {p3}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFolderRelativePathInCloud(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "LOCAL_CREATE_GROUP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert a group in local DB:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "LOCAL_CREATE_GROUP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local create group end:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    monitor-exit v4

    return-object v2

    .line 158
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 168
    .end local v0    # "groupValue":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static recreateGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "localGroupId"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->recreateGroupBySpecialAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static recreateGroupBySpecialAppKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "localGroupId"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 179
    const-string v1, "serverTag"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 180
    const-string v1, "serverStatus"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string v1, "localFlag"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    move-object v3, p2

    check-cast v3, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 69
    .local v3, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$OwnerAlbum;->getCreateAlbumUrl()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "createGroupUrl":Ljava/lang/String;
    iget-object v4, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    .local v1, "groupJson":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .local v2, "postData":Lorg/json/JSONObject;
    new-instance v4, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v5, 0x2

    .line 74
    invoke-virtual {v4, v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v4

    iget v5, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    .line 77
    invoke-virtual {v4, v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    .line 78
    invoke-virtual {v4, v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v4

    return-object v4
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 7
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 32
    instance-of v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item is not instanceof RequestCloudItem."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 62
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 36
    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 38
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "create group start: %s"

    iget-object v4, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v2, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "can\'t create share group."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getOwnerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;->isSpaceFull(Lcom/miui/gallery/cloud/RequestCloudItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    monitor-enter v3

    .line 52
    :try_start_0
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gallery/cloud/CreateGroupItem;->mContext:Landroid/content/Context;

    const-string v5, "_id"

    iget-object v6, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 53
    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v2, v4, v5, v6}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 55
    .local v0, "currentCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    if-nez v2, :cond_3

    .line 56
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "this group already exist in server, severId: %s"

    .line 58
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v2

    goto :goto_0

    .line 60
    .end local v0    # "currentCloud":Lcom/miui/gallery/data/DBImage;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 85
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 87
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const-string v8, "content"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    .local v0, "contentCreateJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "response content null"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    .line 97
    check-cast v3, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 98
    .local v3, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "serverId":Ljava/lang/String;
    const-string/jumbo v8, "tag"

    invoke-static {v0, v8}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 101
    .local v6, "serverTag":J
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAllAndThumbNull(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    .line 103
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    monitor-enter v9

    .line 104
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/cloud/CreateGroupItem;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v1

    .line 111
    .local v1, "oldCloud":Lcom/miui/gallery/data/DBImage;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cloud:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has the same one :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 113
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delete oldCloud, fileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-static {v8, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Lcom/miui/gallery/data/DBImage;)V

    .line 116
    :cond_1
    iget-object v8, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v5, v8}, Lcom/miui/gallery/cloud/CloudUtils;->reviseAttributes(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 117
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iget-object v10, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v8, v5, v10}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 119
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v4}, Lcom/miui/gallery/cloud/AlbumShareOperations;->requestUrlForBarcode(Ljava/lang/String;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    .line 123
    .local v2, "requestBarcodeResult":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/miui/gallery/util/AsyncResult;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CreateGroupItem;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create group succeed and end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "oldCloud":Lcom/miui/gallery/data/DBImage;
    .end local v2    # "requestBarcodeResult":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
