.class Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "SyncBabyInfoFromLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBabyInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;->this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    .line 102
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    move-object v2, p2

    check-cast v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 119
    .local v2, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v5, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "requestId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const/4 v5, 0x0

    .line 135
    :goto_0
    return-object v5

    .line 124
    :cond_0
    invoke-static {v3}, Lcom/miui/gallery/cloud/HostManager$Baby;->getUpdateBabyInfoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "updateBabyInfoUrl":Ljava/lang/String;
    iget-object v5, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    .local v1, "groupJson":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    .local v0, "contentJson":Lorg/json/JSONObject;
    new-instance v5, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v6, 0x2

    .line 130
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    iget v6, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    .line 133
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    iget-boolean v6, p2, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 134
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v5

    goto :goto_0
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 107
    instance-of v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v0

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
    .line 157
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 158
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 160
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    const-string v3, "content"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    .local v0, "contentUpdateJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response content null %s"

    invoke-static {v3, v4, p2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 145
    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 147
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAllAndThumbNull(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 149
    .local v2, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    monitor-enter v4

    .line 150
    :try_start_0
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iget-object v5, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v3, v2, v5}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 152
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
