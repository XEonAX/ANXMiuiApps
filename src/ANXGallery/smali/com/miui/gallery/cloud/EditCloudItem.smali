.class public Lcom/miui/gallery/cloud/EditCloudItem;
.super Lcom/miui/gallery/cloud/EditCloudBase;
.source "EditCloudItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/EditCloudBase;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v1, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 23
    .local v1, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v8

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v7

    .line 24
    .local v7, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getEditUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "editUrl":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v2, "editJson":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v8

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiImages(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 30
    .local v5, "subDbImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    if-eqz v5, :cond_1

    .line 31
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v6, "subUbiImageMap":Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/DBImage;

    .line 33
    .local v4, "subDbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->toJsonObjectForSubUbi()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 35
    .end local v4    # "subDbImage":Lcom/miui/gallery/data/DBImage;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->toJsonObjectForSubUbi()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v8, "ubiSubImageContentMap"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .end local v5    # "subDbImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    .end local v6    # "subUbiImageMap":Lorg/json/JSONObject;
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "content"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    .local v0, "contentJson":Lorg/json/JSONObject;
    new-instance v8, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    .line 42
    invoke-virtual {v8, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v8

    const/4 v9, 0x2

    .line 43
    invoke-virtual {v8, v9}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v8

    .line 44
    invoke-virtual {v8, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v8

    iget v9, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I

    .line 45
    invoke-virtual {v8, v9}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v8

    const/4 v9, 0x0

    .line 46
    invoke-virtual {v8, v9}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v8

    .line 47
    invoke-virtual {v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v8

    return-object v8
.end method

.method protected getColumnIndex()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x39

    return v0
.end method
