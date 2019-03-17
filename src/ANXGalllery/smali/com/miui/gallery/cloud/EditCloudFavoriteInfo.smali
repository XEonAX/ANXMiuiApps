.class public Lcom/miui/gallery/cloud/EditCloudFavoriteInfo;
.super Lcom/miui/gallery/cloud/EditCloudBase;
.source "EditCloudFavoriteInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/EditCloudBase;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v2, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 21
    .local v2, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v5

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v4

    .line 22
    .local v4, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUpdateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v1, "contentJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, "cloudJson":Lorg/json/JSONObject;
    const-string v5, "content"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    new-instance v5, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    .line 29
    invoke-virtual {v5, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 30
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    iget v6, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I

    .line 32
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v5, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v5

    return-object v5
.end method

.method protected getColumnIndex()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    return v0
.end method
