.class public abstract Lcom/miui/gallery/cloud/RequestOperationBase;
.super Ljava/lang/Object;
.source "RequestOperationBase.java"

# interfaces
.implements Lcom/miui/gallery/cloud/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public checkState(Lcom/miui/gallery/cloud/RequestItemBase;)I
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkForItem(Lcom/miui/gallery/cloud/RequestItemBase;)I

    move-result v0

    return v0
.end method

.method public final execute(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "ckey"    # Ljava/lang/String;
    .param p4, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 32
    .local v16, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v15

    .line 33
    .local v15, "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v15, v4, :cond_0

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onPreExecute error %s"

    invoke-static {v4, v5, v15}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .end local v15    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :goto_0
    return-object v15

    .line 38
    .restart local v15    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/RequestOperationBase;->buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v12

    .line 40
    .local v12, "request":Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    if-eqz v12, :cond_1

    invoke-static {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->access$000(Lcom/miui/gallery/cloud/RequestOperationBase$Request;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "illegal request %s"

    invoke-static {v4, v5, v12}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v15, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 45
    :cond_2
    const/4 v13, 0x0

    .line 46
    .local v13, "response":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getMethod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 47
    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getParams()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getRetryTimes()I

    move-result v8

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->isNeedReRequest()Z

    move-result v9

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v13

    .line 50
    :cond_3
    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getMethod()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 51
    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getParams()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getPostData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->getRetryTimes()I

    move-result v9

    invoke-virtual {v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->isNeedReRequest()Z

    move-result v10

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v13

    .line 54
    :cond_4
    if-nez v13, :cond_5

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "response null"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v15, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v13, v0, v4}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v14

    .line 61
    .local v14, "responseResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v14, v4, :cond_6

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v14, v1, v13}, Lcom/miui/gallery/cloud/RequestOperationBase;->onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error result %s, retry times %s"

    move-object/from16 v0, p4

    iget v6, v0, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v14, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v14

    .line 64
    goto/16 :goto_0

    .line 68
    :cond_6
    const-string v4, "data"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 69
    .local v11, "data":Lorg/json/JSONObject;
    if-nez v11, :cond_7

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "response has no data %s"

    invoke-static {v4, v5, v11}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v13}, Lcom/miui/gallery/cloud/RequestOperationBase;->onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V

    .line 72
    sget-object v15, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 75
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Lcom/miui/gallery/cloud/RequestOperationBase;->onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/RequestOperationBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "execute success, cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    sget-object v15, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase;->TAG:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 92
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method

.method protected abstract onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
