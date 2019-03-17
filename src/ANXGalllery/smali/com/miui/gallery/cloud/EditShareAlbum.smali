.class public Lcom/miui/gallery/cloud/EditShareAlbum;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "EditShareAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    move-object v4, p2

    check-cast v4, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;

    .line 53
    .local v4, "editedRequestItem":Lcom/miui/gallery/cloud/RequestSharerAlbumItem;
    iget-object v2, v4, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;->mDBItem:Lcom/miui/gallery/data/DBShareAlbum;

    .line 54
    .local v2, "dbItem":Lcom/miui/gallery/data/DBShareAlbum;
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareAlbum;->getEditAlbumUrl()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "editUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBShareAlbum;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "babyInfoJson":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "babyInfo":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v5, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "sharedAlbumId"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v7, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_AUTO_UPDATE:Ljava/lang/String;

    sget-object v8, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_AUTO_UPDATE:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v7, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_PEOPLE_ID:Ljava/lang/String;

    .line 62
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBShareAlbum;->getPeopleId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v6, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v7, 0x2

    .line 65
    invoke-virtual {v6, v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v6

    .line 66
    invoke-virtual {v6, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v6

    .line 67
    invoke-virtual {v6, v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v6

    iget v7, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 68
    invoke-virtual {v6, v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v6

    iget-boolean v7, p2, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 69
    invoke-virtual {v6, v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v6

    .line 70
    invoke-virtual {v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v6

    return-object v6
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 31
    instance-of v3, p1, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;

    if-nez v3, :cond_0

    .line 32
    const-string v3, "EditShareAlbum"

    const-string v4, "requestItem not instanceof RequestSharerAlbumItem!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 47
    :goto_0
    return-object v3

    :cond_0
    move-object v2, p1

    .line 36
    check-cast v2, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;

    .line 38
    .local v2, "editedRequestItem":Lcom/miui/gallery/cloud/RequestSharerAlbumItem;
    iget-object v0, v2, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;->mDBItem:Lcom/miui/gallery/data/DBShareAlbum;

    .line 39
    .local v0, "dbItem":Lcom/miui/gallery/data/DBShareAlbum;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getEditedColumns()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "editedColumns":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x19

    .line 42
    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 43
    :cond_1
    const-string v3, "EditShareAlbum"

    const-string v4, "editedColumns %s not supported!"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 47
    :cond_2
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0
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
    .line 75
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 76
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 78
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;

    .line 84
    .local v1, "editedRequestItem":Lcom/miui/gallery/cloud/RequestSharerAlbumItem;
    iget-object v0, v1, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;->mDBItem:Lcom/miui/gallery/data/DBShareAlbum;

    .line 85
    .local v0, "dbItem":Lcom/miui/gallery/data/DBShareAlbum;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "editedColumns"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 87
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 89
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 88
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 87
    invoke-static {v3, v2, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    const-string v3, "EditShareAlbum"

    const-string v4, "edit share album successfully. album name: %s"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method
