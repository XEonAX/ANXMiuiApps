.class public Lcom/miui/gallery/share/AlbumShareOperations;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;,
        Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;,
        Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    }
.end annotation


# static fields
.field private static sSelf:Lcom/miui/gallery/share/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/share/AlbumShareOperations;->sSelf:Lcom/miui/gallery/share/UserInfo;

    return-void
.end method

.method public static acceptInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareOperations$9;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 987
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Long;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareOperations;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareOperations;->readCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/util/List;)Ljava/util/List;
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
    .line 78
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareOperations;->doRequestUserInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Collection;

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareOperations;->collectAllUserId(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareOperations;->insertUserInfoToDB(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
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
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareOperations;->addNameValuePair(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareOperations;->persisitCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareOperations;->savePublicInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Landroid/accounts/Account;
    .param p4, "x4"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareOperations;->doDeleteSharers(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareOperations;->requestHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareOperations;->parseRedirectLocation(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareOperations;->updateShareAlbumInfos(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareOperations;->requestInvitationDetail(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static addInvitation(Ljava/lang/String;)J
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 1318
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1320
    .local v0, "context":Landroid/content/Context;
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    monitor-enter v8

    .line 1321
    :try_start_0
    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string/jumbo v9, "shareUrl"

    invoke-static {v5, v9, p0}, Lcom/miui/gallery/cloud/CloudUtils;->getItemId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1322
    .local v2, "existId":J
    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 1323
    monitor-exit v8

    .line 1336
    .end local v2    # "existId":J
    :goto_0
    return-wide v2

    .line 1326
    .restart local v2    # "existId":J
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1327
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "shareUrl"

    invoke-virtual {v1, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v5, "albumStatus"

    const-string v9, "invited"

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v5, "fileName"

    const-string v9, ""

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1331
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 1332
    const-string v5, "AlbumShareOperations"

    const-string v9, "Insert invitation error."

    invoke-static {v5, v9}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    monitor-exit v8

    move-wide v2, v6

    goto :goto_0

    .line 1336
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .end local v2    # "existId":J
    monitor-exit v8

    goto :goto_0

    .line 1337
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
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
    .line 1391
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    return-void
.end method

.method public static changePublicStatus(Ljava/lang/String;Z)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "isPublic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AlbumShareOperations$2;-><init>(Ljava/lang/String;Z)V

    .line 331
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
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

    .line 1233
    .line 1234
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudDistinctUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 1233
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1239
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1244
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1248
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    .end local p0    # "src":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 186
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "src":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 190
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static deleteInvitationIfInvalid(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "err"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 992
    const v0, 0xc363

    if-eq p1, v0, :cond_0

    const v0, 0xc369

    if-eq p1, v0, :cond_0

    const v0, 0xc36e

    if-eq p1, v0, :cond_0

    const v0, 0xc35c

    if-ne p1, v0, :cond_1

    .line 997
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v1, "%s=? AND %s=?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "shareUrl"

    aput-object v3, v2, v4

    const-string v3, "albumStatus"

    aput-object v3, v2, v5

    .line 998
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string v3, "invited"

    aput-object v3, v2, v5

    .line 997
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1004
    :cond_1
    return-void
.end method

.method public static deleteSharers(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p2, "sharerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$7;

    invoke-direct {v0, p2, p0, p1}, Lcom/miui/gallery/share/AlbumShareOperations$7;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 673
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static denyInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareOperations$10;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 1049
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method private static doDeleteSharers(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)Landroid/util/Pair;
    .locals 17
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "serverId"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "sharerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getDeleteSharerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 596
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string/jumbo v3, "sharerIdList"

    const-string v4, ","

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v2, v3, v4, v0}, Lcom/miui/gallery/share/AlbumShareOperations;->addNameValuePair(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 597
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v14

    .line 598
    .local v14, "json":Lorg/json/JSONObject;
    invoke-static {v14}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v10

    .line 599
    .local v10, "err":I
    if-nez v10, :cond_3

    .line 600
    const-string v3, "data"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 601
    .local v8, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "succ"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 602
    .local v15, "succ":Lorg/json/JSONArray;
    const-string v3, "fail"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 603
    .local v11, "fail":Lorg/json/JSONArray;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 604
    .local v16, "succIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 605
    .local v12, "failIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_0

    .line 606
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 608
    :cond_0
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_1

    .line 609
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 612
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 613
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "userId in (?) AND albumId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ","

    .line 616
    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 619
    .local v9, "delectCount":I
    const-string v3, "AlbumShareOperations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local delete count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Server delete count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v9    # "delectCount":I
    :cond_2
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 625
    .end local v8    # "data":Lorg/json/JSONObject;
    .end local v11    # "fail":Lorg/json/JSONArray;
    .end local v12    # "failIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v15    # "succ":Lorg/json/JSONArray;
    .end local v16    # "succIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
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
            "Lcom/miui/gallery/share/UserInfo;",
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
    .line 1054
    .local p0, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1055
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1087
    :cond_0
    return-object v17

    .line 1058
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 1059
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    .line 1060
    .local v4, "account":Landroid/accounts/Account;
    if-eqz v4, :cond_0

    .line 1063
    invoke-static {v9, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v5

    .line 1064
    .local v5, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-eqz v5, :cond_0

    .line 1067
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getRequestUserInfoUrl()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "users"

    const-string v7, ","

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v15

    .line 1071
    .local v15, "json":Lorg/json/JSONObject;
    invoke-static {v15}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v11

    .line 1072
    .local v11, "err":I
    if-nez v11, :cond_0

    .line 1073
    const-string v3, "data"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1074
    .local v10, "data":Lorg/json/JSONObject;
    const-string v3, "list"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1075
    .local v8, "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_0

    .line 1076
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 1077
    .local v16, "user":Lorg/json/JSONObject;
    const-string/jumbo v3, "userId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1078
    .local v13, "id":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1079
    new-instance v14, Lcom/miui/gallery/share/UserInfo;

    invoke-direct {v14, v13}, Lcom/miui/gallery/share/UserInfo;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v14, "info":Lcom/miui/gallery/share/UserInfo;
    const-string v3, "aliasNick"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/share/UserInfo;->setAliasNick(Ljava/lang/String;)V

    .line 1081
    const-string v3, "nickname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/share/UserInfo;->setMiliaoNick(Ljava/lang/String;)V

    .line 1082
    const-string v3, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/miui/gallery/share/UserInfo;->setMiliaoIconUrl(Ljava/lang/String;)V

    .line 1083
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    .end local v14    # "info":Lcom/miui/gallery/share/UserInfo;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private static execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TV;>;>;)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<TV;>;>;"
    const/4 v13, 0x1

    .line 1512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1513
    .local v8, "start":J
    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    aget-object v10, v10, v13

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 1514
    .local v4, "methodName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1516
    .local v5, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1517
    const/4 v10, -0x1

    invoke-static {v10}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    move-object v6, v5

    .line 1541
    .end local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    .local v6, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    :goto_0
    return-object v6

    .line 1522
    .end local v6    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    .restart local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    check-cast v5, Lcom/miui/gallery/share/AsyncResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    .restart local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    :goto_1
    const-string v10, "AlbumShareOperations"

    const-string v11, "result error=%d"

    new-array v12, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v5, Lcom/miui/gallery/share/AsyncResult;->mError:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 1541
    .end local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    .restart local v6    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    goto :goto_0

    .line 1523
    .end local v6    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    :catch_0
    move-exception v7

    .line 1524
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v7}, Lcom/miui/gallery/cloud/GalleryErrorCode;->fromThrowable(Ljava/lang/Throwable;)I

    move-result v3

    .line 1529
    .local v3, "err":I
    const/16 v10, -0x69

    if-ne v3, v10, :cond_1

    .line 1530
    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    move-object v2, v0

    .line 1531
    .local v2, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getStatusCode()I

    move-result v10

    const/16 v11, 0x191

    if-ne v10, v11, :cond_1

    .line 1532
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareOperations;->requestSyncToHandleUnauthorized()V

    .line 1535
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

    .line 1536
    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .restart local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    goto :goto_1

    .line 1537
    .end local v3    # "err":I
    .end local v5    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TV;>;"
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    throw v10
.end method

.method public static exitAlbumShare(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "shareAlbumId"    # Ljava/lang/String;
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AlbumShareOperations$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
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
            "Lcom/miui/gallery/share/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p2, "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1197
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

    check-cast v1, Lcom/miui/gallery/share/UserInfo;

    .line 1198
    .local v1, "info":Lcom/miui/gallery/share/UserInfo;
    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    .line 1199
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    .line 1200
    invoke-virtual {v1}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "alias_nick"

    .line 1201
    invoke-virtual {v1}, Lcom/miui/gallery/share/UserInfo;->getAliasNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "miliao_nick"

    .line 1202
    invoke-virtual {v1}, Lcom/miui/gallery/share/UserInfo;->getMiliaoNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "miliao_icon_url"

    .line 1203
    invoke-virtual {v1}, Lcom/miui/gallery/share/UserInfo;->getMiliaoIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1204
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 1205
    .local v2, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    .line 1209
    :try_start_0
    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-virtual {p0, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1215
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1212
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1215
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v4

    .line 1220
    .end local v1    # "info":Lcom/miui/gallery/share/UserInfo;
    .end local v2    # "op":Landroid/content/ContentProviderOperation;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1222
    :try_start_3
    const-string v4, "com.miui.gallery.cloud.provider"

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1229
    :cond_2
    :goto_1
    return-void

    .line 1223
    :catch_2
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1225
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static myName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1450
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareOperations;->self()Lcom/miui/gallery/share/UserInfo;

    move-result-object v0

    .line 1451
    .local v0, "info":Lcom/miui/gallery/share/UserInfo;
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0}, Lcom/miui/gallery/share/UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1455
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseInvitation(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareOperations;->parseParamsFromUrl(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 874
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    invoke-direct {v1, v0}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseParamsFromUrl(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 852
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 853
    const/4 v3, 0x0

    .line 869
    :cond_0
    return-object v3

    .line 856
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 857
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string v6, "?"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 858
    .local v4, "start":I
    if-ltz v4, :cond_0

    .line 859
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, "paramStr":Ljava/lang/String;
    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "pairs":[Ljava/lang/String;
    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v1, v6

    .line 862
    .local v0, "pair":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 863
    .local v5, "valueStart":I
    if-lez v5, :cond_2

    .line 864
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    .line 865
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static parseRedirectLocation(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 843
    if-nez p0, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-object v1

    .line 847
    :cond_1
    const-string v2, "Location"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 848
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseSharerInfo(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;
    .locals 3
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 879
    :try_start_0
    new-instance v1, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;

    invoke-direct {v1, p0}, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-object v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AlbumShareOperations"

    const-string v2, "parseSharerInfo error."

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    const/4 v1, 0x0

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
    .line 1489
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1494
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1495
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p4

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1499
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    const-string v4, "serverId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1505
    .local v1, "updateCount":I
    if-nez v1, :cond_0

    .line 1506
    const-string v3, "serverId"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
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
    .line 1459
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 1460
    .local v9, "context":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1461
    .local v10, "current":J
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    .line 1462
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

    .line 1467
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x3

    aput-object p2, v7, v12

    const/4 v12, 0x4

    .line 1469
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x5

    .line 1470
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/CloudUtils;->sqlNotEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 1464
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x0

    .line 1461
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1473
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 1474
    const/4 v2, 0x0

    .line 1485
    :goto_0
    return-object v2

    .line 1478
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1485
    const/4 v2, 0x0

    goto :goto_0

    .line 1482
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static requestHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    const/4 v2, 0x0

    .line 817
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 818
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 819
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 820
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 821
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 822
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 825
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 828
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 829
    .local v1, "code":I
    const/16 v3, 0x12d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x12e

    if-ne v1, v3, :cond_2

    .line 831
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 834
    if-eqz v2, :cond_1

    .line 835
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 839
    :cond_1
    :goto_0
    return-object v3

    .line 834
    :cond_2
    if-eqz v2, :cond_3

    .line 835
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 839
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 834
    .end local v1    # "code":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 835
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v3
.end method

.method private static requestInvitationDetail(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-object v5

    .line 778
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    .line 779
    invoke-static {v0, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "shareUrlLong"

    aput-object v0, v2, v10

    const-string/jumbo v0, "sharerInfo"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string/jumbo v3, "shareUrl"

    aput-object v3, v2, v0

    const-string/jumbo v3, "shareUrl=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v0, p0

    .line 778
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 789
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 794
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 799
    .local v7, "longUrl":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 800
    .local v9, "shareUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 801
    :cond_3
    invoke-static {p0, p1, v9, p2}, Lcom/miui/gallery/share/AlbumShareOperations;->updateInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    .line 802
    .local v8, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;"
    if-eqz v8, :cond_4

    iget v0, v8, Lcom/miui/gallery/share/AsyncResult;->mError:I

    if-nez v0, :cond_4

    .line 803
    iget-object v7, v8, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    .end local v7    # "longUrl":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 807
    .end local v8    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;"
    .restart local v7    # "longUrl":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/miui/gallery/share/AlbumShareOperations;->parseParamsFromUrl(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "longUrl":Ljava/lang/String;
    .end local v9    # "shareUrl":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static requestInvitationForSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
    .locals 6
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;
    .param p3, "ownerRelation"    # Ljava/lang/String;
    .param p4, "ownerRelationText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareOperations$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static requestPublicUrl(Ljava/lang/String;Z)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isShareAlbum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$3;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/share/AlbumShareOperations$3;-><init>(ZLjava/lang/String;)V

    .line 382
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static requestSharerInfo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "longUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x7

    .line 744
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 745
    invoke-static {v9}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    .line 768
    :goto_0
    return-object v5

    .line 747
    :cond_0
    const-string v5, "%s&%s=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v10

    const/4 v7, 0x1

    const-string v8, "ability"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "baby"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "urlForShareDetails":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/NetworkUtils;->httpGetRequestForString(Ljava/lang/String;Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 751
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 752
    .local v2, "jsonResult":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v1

    .line 753
    .local v1, "err":I
    if-nez v1, :cond_2

    .line 754
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 756
    invoke-static {v10, v0}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    goto :goto_0

    .line 759
    :cond_1
    invoke-static {v9}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    goto :goto_0

    .line 763
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1, p1}, Lcom/miui/gallery/share/AlbumShareOperations;->deleteInvitationIfInvalid(Landroid/content/ContentResolver;ILjava/lang/String;)V

    .line 764
    invoke-static {v1}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    goto :goto_0

    .line 768
    .end local v1    # "err":I
    .end local v2    # "jsonResult":Lorg/json/JSONObject;
    :cond_3
    invoke-static {v9}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v5

    goto :goto_0
.end method

.method private static requestSyncToHandleUnauthorized()V
    .locals 1

    .prologue
    .line 1545
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 1546
    return-void
.end method

.method public static requestUrlForBarcode(Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/AlbumShareOperations$1;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/UserInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$11;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/AlbumShareOperations$11;-><init>(Ljava/util/List;)V

    .line 1111
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method private static savePublicInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 5
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isPublic"    # Z
    .param p2, "publicUrl"    # Ljava/lang/String;
    .param p3, "isShareAlbum"    # Z

    .prologue
    .line 393
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "isPublic"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    const-string v1, "publicUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
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

    .line 402
    return-void

    .line 396
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v2, "serverId"

    goto :goto_1
.end method

.method private static declared-synchronized self()Lcom/miui/gallery/share/UserInfo;
    .locals 14

    .prologue
    .line 1411
    const-class v8, Lcom/miui/gallery/share/AlbumShareOperations;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/miui/gallery/share/AlbumShareOperations;->sSelf:Lcom/miui/gallery/share/UserInfo;

    if-nez v7, :cond_1

    .line 1412
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1413
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 1414
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 1415
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1416
    .local v5, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-static {v5}, Lcom/miui/gallery/share/AlbumShareOperations;->requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    .line 1419
    .local v3, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    if-eqz v3, :cond_1

    iget v7, v3, Lcom/miui/gallery/share/AsyncResult;->mError:I

    if-nez v7, :cond_1

    .line 1420
    iget-object v2, v3, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 1421
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1422
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/share/UserInfo;

    .line 1423
    .local v4, "self":Lcom/miui/gallery/share/UserInfo;
    sput-object v4, Lcom/miui/gallery/share/AlbumShareOperations;->sSelf:Lcom/miui/gallery/share/UserInfo;

    .line 1425
    if-eqz v4, :cond_1

    .line 1426
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1427
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v4}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v7, "alias_nick"

    invoke-virtual {v4}, Lcom/miui/gallery/share/UserInfo;->getAliasNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v7, "miliao_nick"

    invoke-virtual {v4}, Lcom/miui/gallery/share/UserInfo;->getMiliaoNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v7, "miliao_icon_url"

    invoke-virtual {v4}, Lcom/miui/gallery/share/UserInfo;->getMiliaoIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1433
    :try_start_1
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    const-string/jumbo v10, "user_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/miui/gallery/share/AlbumShareOperations;->sSelf:Lcom/miui/gallery/share/UserInfo;

    .line 1436
    invoke-virtual {v13}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1433
    invoke-static {v7, v6, v10, v11}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1437
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    invoke-static {v7, v6}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1439
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    .end local v3    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    .end local v4    # "self":Lcom/miui/gallery/share/UserInfo;
    .end local v5    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    sget-object v7, Lcom/miui/gallery/share/AlbumShareOperations;->sSelf:Lcom/miui/gallery/share/UserInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    return-object v7

    .line 1439
    .restart local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    .restart local v3    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    .restart local v4    # "self":Lcom/miui/gallery/share/UserInfo;
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

    .line 1411
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    .end local v3    # "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;>;"
    .end local v4    # "self":Lcom/miui/gallery/share/UserInfo;
    .end local v5    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static syncAllUserInfoFromNetwork()Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$12;

    invoke-direct {v0}, Lcom/miui/gallery/share/AlbumShareOperations$12;-><init>()V

    .line 1192
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static syncUserListForAlbum(Ljava/lang/String;Z)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isSharer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$13;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/share/AlbumShareOperations$13;-><init>(ZLjava/lang/String;)V

    .line 1305
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static tryToCreateCloudAlbum(Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "cloudId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$14;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/AlbumShareOperations$14;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public static updateInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "longUrlIn"    # Ljava/lang/String;
    .param p3, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Lcom/miui/gallery/share/AlbumShareOperations$8;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/miui/gallery/share/AlbumShareOperations$8;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 724
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->execute(Ljava/util/concurrent/Callable;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method private static updateShareAlbumInfos(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 731
    const-string/jumbo v0, "shareUrlLong"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->setLongUrl(Ljava/lang/String;)V

    .line 732
    const-string/jumbo v0, "sharerInfo"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->setSharerInfo(Ljava/lang/String;)V

    .line 733
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v1, "%s=? AND %s=?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "shareUrl"

    aput-object v3, v2, v4

    const-string v3, "albumStatus"

    aput-object v3, v2, v5

    .line 736
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v4

    const-string v3, "invited"

    aput-object v3, v2, v5

    .line 733
    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 740
    return-void
.end method
