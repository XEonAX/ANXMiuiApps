.class public abstract Lcom/miui/gallery/cloud/EditCloudBase;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "EditCloudBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 53
    .local v0, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/cloud/EditCloudBase;->buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getColumnIndex()I
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 4
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 30
    instance-of v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v2, :cond_0

    .line 31
    const-string v2, "EditCloudBase"

    const-string v3, "item is not instanceof RequestCloudItem."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 47
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 34
    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 35
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v0, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 37
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    if-nez v2, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    :cond_1
    const-string v2, "EditCloudBase"

    const-string v3, "item has not been synced yet"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string v2, "EditCloudBase"

    const-string/jumbo v3, "share item can\'t be edit"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 47
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v2

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
    .line 71
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 72
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 74
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 61
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v0, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 62
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v3

    .line 63
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/miui/gallery/cloud/EditCloudBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 64
    .local v2, "upToDateDbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/cloud/EditCloudBase;->updateDb(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 66
    const-string v4, "EditCloudBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edit success %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected updateDb(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "upToDateDbImage"    # Lcom/miui/gallery/data/DBImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/EditCloudBase;->getColumnIndex()I

    move-result v0

    .line 79
    .local v0, "editColumn":I
    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "transformed":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "editedColumns":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "newEditedColumns":Ljava/lang/String;
    const-string v4, "editedColumns"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    .line 86
    return-void
.end method
