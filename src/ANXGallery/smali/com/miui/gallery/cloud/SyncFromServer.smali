.class public abstract Lcom/miui/gallery/cloud/SyncFromServer;
.super Ljava/lang/Object;
.source "SyncFromServer.java"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mAccount:Landroid/accounts/Account;

    .line 49
    iput-object p3, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 50
    return-void
.end method

.method public static getCurrentSyncTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v3, 0x0

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 264
    .local v6, "syncTagItem":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v0, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 265
    .local v7, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    .line 266
    invoke-static {v7, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 267
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncTagSelection(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/miui/gallery/cloud/SyncFromServer$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/SyncFromServer$1;-><init>(Ljava/util/ArrayList;)V

    move-object v2, p1

    move-object v4, v3

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 287
    return-object p0
.end method

.method private final getItemsList(Ljava/util/ArrayList;I)Lorg/json/JSONObject;
    .locals 12
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .local p1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_3

    .line 488
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 489
    .local v8, "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget-boolean v2, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->shouldSync:Z

    if-eqz v2, :cond_0

    .line 490
    iget v2, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getJsonTagInput(I)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "jsonTagInput":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const-string v0, "SyncFromServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get input tag is null, syncType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v6, 0x0

    .line 514
    .end local v7    # "jsonTagInput":Ljava/lang/String;
    .end local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :goto_1
    return-object v6

    .line 495
    .restart local v7    # "jsonTagInput":Ljava/lang/String;
    .restart local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget v3, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 496
    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getJsonTagInput(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v10, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v7    # "jsonTagInput":Ljava/lang/String;
    .end local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->appendSyncInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 503
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 505
    if-lez p2, :cond_4

    .line 506
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    int-to-long v10, p2

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v6

    .line 514
    .local v6, "allJson":Lorg/json/JSONObject;
    goto :goto_1
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 476
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    return-void
.end method

.method protected appendSyncInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
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
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->supportSyncInfo(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 341
    .local v7, "syncTagItem":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v0, v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 342
    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget v2, v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 343
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncInfoColumnName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 344
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagSelection()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/miui/gallery/cloud/SyncFromServer$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/SyncFromServer$2;-><init>(Lcom/miui/gallery/cloud/SyncFromServer;)V

    move-object v4, v3

    .line 341
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 357
    .local v6, "syncInfo":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 358
    const-string v6, ""

    .line 361
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "syncExtraInfo"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract getBaseUri()Landroid/net/Uri;
.end method

.method protected getCurrentSyncTag()Ljava/util/ArrayList;
    .locals 2
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
    .line 296
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagList()Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagSelection()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/SyncFromServer;->getCurrentSyncTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected final getLargestTagInLocalDB()J
    .locals 7

    .prologue
    .line 423
    const/4 v6, 0x0

    .line 425
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Max( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 428
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getTagColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 425
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 438
    if-eqz v6, :cond_0

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    .line 435
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v0, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getInitSyncTagValue(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 438
    if-eqz v6, :cond_0

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected getSyncItemLimit()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x64

    return v0
.end method

.method protected abstract getSyncTagList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSyncTagSelection()Ljava/lang/String;
.end method

.method protected abstract getSyncUrl()Ljava/lang/String;
.end method

.method protected abstract getTagColumnName()Ljava/lang/String;
.end method

.method protected handleDataJson(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method protected handleResultAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 1
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
    .line 207
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->handleDataJson(Lorg/json/JSONObject;)Z

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->updateSyncInfo(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->updateSyncTagAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method protected onSyncSuccess()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected supportSyncInfo(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v0, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->hasSyncInfo(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final sync()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 67
    const-string v10, "SyncFromServer"

    const-string/jumbo v11, "sync from server start"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 69
    .local v6, "startTime":J
    const/4 v5, 0x1

    .line 70
    .local v5, "success":Z
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 74
    .local v1, "getAllResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getCurrentSyncTag()Ljava/util/ArrayList;

    move-result-object v8

    .line 76
    .local v8, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    invoke-static {v9}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 132
    :goto_0
    return v9

    .line 80
    :cond_1
    const/4 v4, 0x0

    .line 81
    .local v4, "retryTimes":I
    const/4 v3, 0x0

    .line 84
    .local v3, "resultJson":Lorg/json/JSONObject;
    :goto_1
    const/4 v10, 0x3

    if-ge v4, v10, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncItemLimit()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/miui/gallery/cloud/SyncFromServer;->getItemsList(Ljava/util/ArrayList;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 89
    invoke-static {v3, v12, v12}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v1

    .line 91
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v1, v10, :cond_4

    .line 100
    :cond_2
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v1, v10, :cond_5

    .line 101
    const-string v9, "SyncFromServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sync from server error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", need clear data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncShouldClearDataBase(Z)V

    .line 103
    const/4 v5, 0x0

    .line 121
    :cond_3
    :goto_2
    const-string v9, "SyncFromServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sync from server finish: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz v5, :cond_7

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->onSyncSuccess()V

    :goto_3
    move v9, v5

    .line 132
    goto :goto_0

    .line 93
    :cond_4
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v1, v10, :cond_2

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    :cond_5
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v1, v10, :cond_6

    .line 107
    const-string v9, "SyncFromServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sync from server error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v5, 0x0

    .line 109
    goto :goto_2

    .line 112
    :cond_6
    if-eqz v3, :cond_3

    .line 115
    const-string v10, "data"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    .local v0, "dataJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v0, v8}, Lcom/miui/gallery/cloud/SyncFromServer;->handleResultAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_2

    .line 126
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "className"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v9, "result"

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v9, "Sync"

    const-string/jumbo v10, "sync_error_class"

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method protected updateSyncInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "syncInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 366
    .local v1, "syncTagItems":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 367
    .local v2, "uri":Landroid/net/Uri;
    iget v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncInfoColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "syncInfoColumnName":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->postUpdateSyncTag(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 372
    return-void
.end method

.method protected updateSyncInfo(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const-string/jumbo v1, "syncExtraInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "syncInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->supportSyncInfo(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->updateSyncInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSyncTag(Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;)V
    .locals 1
    .param p1, "syncTag"    # Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .prologue
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/SyncFromServer;->updateSyncTag(Ljava/util/ArrayList;)V

    .line 320
    return-void
.end method

.method protected updateSyncTag(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v4, v4, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 307
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 309
    .local v1, "tag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v5, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v5}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "columnName":Ljava/lang/String;
    iget-wide v6, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->serverValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 312
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v1    # "tag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncTagSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncFromServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->postUpdateSyncTag(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 314
    return-void
.end method

.method protected updateSyncTagAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 12
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
    const/4 v8, 0x0

    .line 223
    const-string v1, "lastPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 224
    .local v0, "lastPage":Z
    const-string/jumbo v1, "syncTag"

    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 226
    .local v4, "serverTag":J
    const-wide/16 v6, 0x0

    .line 227
    .local v6, "toUpdateSyncTag":J
    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getLargestTagInLocalDB()J

    move-result-wide v2

    .line 234
    .local v2, "localTag":J
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v1, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getInitSyncTagValue(I)I

    move-result v1

    int-to-long v10, v1

    cmp-long v1, v4, v10

    if-gtz v1, :cond_0

    .line 236
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v1, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getInitSyncTagValue(I)I

    move-result v1

    int-to-long v10, v1

    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    .line 237
    :cond_0
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 245
    .end local v2    # "localTag":J
    :cond_1
    :goto_0
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v10, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_2

    .line 246
    const-string v1, "SyncFromServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update the syncTag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iput-wide v6, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->serverValue:J

    .line 248
    invoke-virtual {p0, p2}, Lcom/miui/gallery/cloud/SyncFromServer;->updateSyncTag(Ljava/util/ArrayList;)V

    .line 250
    :cond_2
    if-eqz v0, :cond_4

    .line 253
    const-string v1, "SyncFromServer"

    const-string v9, "last page, break sync from server"

    invoke-static {v1, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 257
    :goto_1
    return v1

    .line 241
    :cond_3
    move-wide v6, v4

    goto :goto_0

    .line 257
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
