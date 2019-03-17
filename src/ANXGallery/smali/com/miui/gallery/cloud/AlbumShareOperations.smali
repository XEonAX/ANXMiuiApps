.class public Lcom/miui/gallery/cloud/AlbumShareOperations;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"


# static fields
.field private static sSelf:Lcom/miui/gallery/cloud/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/AlbumShareOperations;->readCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/AlbumShareOperations;->addNameValuePair(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/AlbumShareOperations;->persisitCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Collection;

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/AlbumShareOperations;->collectAllUserId(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/AlbumShareOperations;->insertUserInfoToDB(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/miui/gallery/cloud/AlbumShareOperations;->doRequestUserInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/AlbumShareOperations;->savePublicInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method private static addNameValuePair(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method private static collectAllUserId(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "userId":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 370
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudDistinctUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 384
    :goto_0
    return-void

    .line 378
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 382
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static doRequestUserInfo(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 389
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 421
    :cond_0
    return-object v17

    .line 392
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 393
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    .line 394
    .local v4, "account":Landroid/accounts/Account;
    if-eqz v4, :cond_0

    .line 397
    invoke-static {v9, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v5

    .line 398
    .local v5, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-eqz v5, :cond_0

    .line 401
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getRequestUserInfoUrl()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "users"

    const-string v7, ","

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v15

    .line 405
    .local v15, "json":Lorg/json/JSONObject;
    invoke-static {v15}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v11

    .line 406
    .local v11, "err":I
    if-nez v11, :cond_0

    .line 407
    const-string v3, "data"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 408
    .local v10, "data":Lorg/json/JSONObject;
    const-string v3, "list"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 409
    .local v8, "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_0

    .line 410
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 411
    .local v16, "user":Lorg/json/JSONObject;
    const-string/jumbo v3, "userId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 412
    .local v13, "id":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 413
    new-instance v14, Lcom/miui/gallery/cloud/UserInfo;

    invoke-direct {v14, v13}, Lcom/miui/gallery/cloud/UserInfo;-><init>(Ljava/lang/String;)V

    .line 414
    .local v14, "info":Lcom/miui/gallery/cloud/UserInfo;
    const-string v3, "aliasNick"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/cloud/UserInfo;->setAliasNick(Ljava/lang/String;)V

    .line 415
    const-string v3, "nickname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/cloud/UserInfo;->setMiliaoNick(Ljava/lang/String;)V

    .line 416
    const-string v3, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/cloud/UserInfo;->setMiliaoIconUrl(Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v14    # "info":Lcom/miui/gallery/cloud/UserInfo;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private static execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/util/AsyncResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/miui/gallery/util/AsyncResult",
            "<TV;>;>;)",
            "Lcom/miui/gallery/util/AsyncResult",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/util/AsyncResult<TV;>;>;"
    const/4 v14, 0x1

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 523
    .local v8, "start":J
    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    aget-object v10, v10, v14

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "methodName":Ljava/lang/String;
    const-string v10, "AlbumShareOperations"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "start callable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v5, 0x0

    .line 528
    .local v5, "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v10

    if-nez v10, :cond_0

    .line 529
    const/4 v10, -0x1

    invoke-static {v10}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v5

    move-object v6, v5

    .line 557
    .end local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    .local v6, "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    :goto_0
    return-object v6

    .line 534
    .end local v6    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    .restart local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    check-cast v5, Lcom/miui/gallery/util/AsyncResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .restart local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    const-string v10, "AlbumShareOperations"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end callable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cost time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 551
    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_1
    const-string v10, "AlbumShareOperations"

    const-string v11, "result error=%d"

    new-array v12, v14, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v5, Lcom/miui/gallery/util/AsyncResult;->mError:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 557
    .end local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    .restart local v6    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    goto :goto_0

    .line 535
    .end local v6    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    :catch_0
    move-exception v7

    .line 536
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v7}, Lcom/miui/gallery/cloud/GalleryErrorCode;->fromThrowable(Ljava/lang/Throwable;)I

    move-result v3

    .line 542
    .local v3, "err":I
    const/16 v10, -0x69

    if-ne v3, v10, :cond_1

    .line 543
    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    move-object v2, v0

    .line 544
    .local v2, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getStatusCode()I

    move-result v10

    const/16 v11, 0x191

    if-ne v10, v11, :cond_1

    .line 545
    invoke-static {}, Lcom/miui/gallery/cloud/AlbumShareOperations;->requestSyncToHandleUnauthorized()V

    .line 548
    .end local v2    # "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    :cond_1
    const-string v10, "AlbumShareOperations"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    invoke-static {v3}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 551
    .restart local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    const-string v10, "AlbumShareOperations"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end callable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cost time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 551
    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "err":I
    .end local v5    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<TV;>;"
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    const-string v11, "AlbumShareOperations"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end callable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", cost time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 551
    invoke-static {v11, v12}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v10
.end method

.method private static insertUserInfoToDB(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 334
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/UserInfo;

    .line 335
    .local v1, "info":Lcom/miui/gallery/cloud/UserInfo;
    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    .line 336
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    .line 337
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "alias_nick"

    .line 338
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UserInfo;->getAliasNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "miliao_nick"

    .line 339
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UserInfo;->getMiliaoNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "miliao_icon_url"

    .line 340
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UserInfo;->getMiliaoIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 341
    .local v2, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    .line 345
    :try_start_0
    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-virtual {p0, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 349
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v4

    .line 356
    .end local v1    # "info":Lcom/miui/gallery/cloud/UserInfo;
    .end local v2    # "op":Landroid/content/ContentProviderOperation;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    :try_start_3
    const-string v4, "com.miui.gallery.cloud.provider"

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 365
    :cond_2
    :goto_1
    return-void

    .line 359
    :catch_2
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 362
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static myName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/gallery/cloud/AlbumShareOperations;->self()Lcom/miui/gallery/cloud/UserInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Lcom/miui/gallery/cloud/UserInfo;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static persisitCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "dataColumn"    # Ljava/lang/String;
    .param p2, "deadlineColumn"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "timeOut"    # I

    .prologue
    .line 217
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p4

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    const-string v4, "serverId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "updateCount":I
    if-nez v1, :cond_0

    .line 233
    const-string v3, "serverId"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static readCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "dataColumn"    # Ljava/lang/String;
    .param p2, "deadlineColumn"    # Ljava/lang/String;
    .param p3, "timeOut"    # I

    .prologue
    .line 187
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 188
    .local v9, "context":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 189
    .local v10, "current":J
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    .line 190
    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(%s=?) AND (%s<%d) AND (%s>%d) AND (%s)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "serverId"

    aput-object v13, v7, v12

    const/4 v12, 0x1

    aput-object p2, v7, v12

    const/4 v12, 0x2

    move/from16 v0, p3

    int-to-long v14, v0

    add-long/2addr v14, v10

    .line 195
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x3

    aput-object p2, v7, v12

    const/4 v12, 0x4

    .line 196
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x5

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/CloudUtils;->sqlNotEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 194
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x0

    .line 189
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 201
    const/4 v2, 0x0

    .line 212
    :goto_0
    return-object v2

    .line 205
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static requestPublicUrl(Ljava/lang/String;Z)Lcom/miui/gallery/util/AsyncResult;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isShareAlbum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$4;-><init>(ZLjava/lang/String;)V

    .line 500
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/util/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/cloud/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method private static requestSyncToHandleUnauthorized()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 562
    return-void
.end method

.method public static requestUrlForBarcode(Ljava/lang/String;)Lcom/miui/gallery/util/AsyncResult;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/miui/gallery/cloud/AlbumShareOperations$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$1;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/util/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/cloud/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/util/AsyncResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/UserInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/cloud/AlbumShareOperations$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$3;-><init>(Ljava/util/List;)V

    .line 444
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/util/AsyncResult<Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/cloud/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static resetAccountInfo()V
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/miui/gallery/cloud/AlbumShareOperations;

    monitor-enter v1

    .line 62
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static savePublicInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 5
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isPublic"    # Z
    .param p2, "publicUrl"    # Ljava/lang/String;
    .param p3, "isShareAlbum"    # Z

    .prologue
    .line 511
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "isPublic"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 513
    const-string v1, "publicUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz p3, :cond_0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v2, "albumId"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    return-void

    .line 514
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v2, "serverId"

    goto :goto_1
.end method

.method private static declared-synchronized self()Lcom/miui/gallery/cloud/UserInfo;
    .locals 14

    .prologue
    .line 76
    const-class v8, Lcom/miui/gallery/cloud/AlbumShareOperations;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;

    if-nez v7, :cond_1

    .line 77
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 79
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 81
    .local v5, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {v5}, Lcom/miui/gallery/cloud/AlbumShareOperations;->requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v3

    .line 84
    .local v3, "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;>;"
    if-eqz v3, :cond_1

    iget v7, v3, Lcom/miui/gallery/util/AsyncResult;->mError:I

    if-nez v7, :cond_1

    .line 85
    iget-object v2, v3, Lcom/miui/gallery/util/AsyncResult;->mData:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 86
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 87
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/UserInfo;

    .line 88
    .local v4, "self":Lcom/miui/gallery/cloud/UserInfo;
    sput-object v4, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;

    .line 90
    if-eqz v4, :cond_1

    .line 91
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v7, "alias_nick"

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/UserInfo;->getAliasNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v7, "miliao_nick"

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/UserInfo;->getMiliaoNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, "miliao_icon_url"

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/UserInfo;->getMiliaoIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    const-string/jumbo v10, "user_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;

    .line 101
    invoke-virtual {v13}, Lcom/miui/gallery/cloud/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 98
    invoke-static {v7, v6, v10, v11}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 102
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    invoke-static {v7, v6}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 104
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    .end local v3    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;>;"
    .end local v4    # "self":Lcom/miui/gallery/cloud/UserInfo;
    .end local v5    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    sget-object v7, Lcom/miui/gallery/cloud/AlbumShareOperations;->sSelf:Lcom/miui/gallery/cloud/UserInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    return-object v7

    .line 104
    .restart local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    .restart local v3    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;>;"
    .restart local v4    # "self":Lcom/miui/gallery/cloud/UserInfo;
    .restart local v5    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    .end local v3    # "result":Lcom/miui/gallery/util/AsyncResult;, "Lcom/miui/gallery/util/AsyncResult<Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;>;"
    .end local v4    # "self":Lcom/miui/gallery/cloud/UserInfo;
    .end local v5    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static syncAllUserInfoFromNetwork()Lcom/miui/gallery/util/AsyncResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/miui/gallery/cloud/AlbumShareOperations$2;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/AlbumShareOperations$2;-><init>()V

    .line 328
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/util/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/cloud/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v1

    return-object v1
.end method
