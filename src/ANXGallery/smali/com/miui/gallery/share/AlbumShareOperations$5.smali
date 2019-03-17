.class final Lcom/miui/gallery/share/AlbumShareOperations$5;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->requestInvitationForSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ownerRelation:Ljava/lang/String;

.field final synthetic val$ownerRelationText:Ljava/lang/String;

.field final synthetic val$relation:Ljava/lang/String;

.field final synthetic val$relationText:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$serverId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relation:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$ownerRelation:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$ownerRelationText:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relationText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$serverId:Ljava/lang/String;

    const-string/jumbo v7, "smsShareData"

    const-string/jumbo v8, "smsShareDataDeadline"

    const v19, 0x2932e00

    move/from16 v0, v19

    invoke-static {v4, v7, v8, v0}, Lcom/miui/gallery/share/AlbumShareOperations;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 465
    .local v9, "cache":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 466
    invoke-static {v9}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->fromCache(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;

    move-result-object v14

    .line 467
    .local v14, "invitation":Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    if-eqz v14, :cond_0

    .line 468
    const/4 v4, 0x0

    invoke-static {v4, v14}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    .line 533
    .end local v14    # "invitation":Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    :goto_0
    return-object v4

    .line 472
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    const/16 v4, -0xb

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 477
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    .line 478
    .local v5, "account":Landroid/accounts/Account;
    if-nez v5, :cond_2

    .line 479
    const/4 v4, -0x4

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 482
    :cond_2
    invoke-static {v10, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v6

    .line 483
    .local v6, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v6, :cond_3

    .line 484
    const/4 v4, -0x3

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 487
    :cond_3
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareOperations;->myName()Ljava/lang/String;

    move-result-object v18

    .line 488
    .local v18, "userName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 489
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 492
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$serverId:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getSmsShareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string/jumbo v4, "userName"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v6}, Lcom/miui/gallery/share/AlbumShareOperations;->access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 496
    const/16 v17, 0x0

    .line 498
    .local v17, "relationShipStr":Ljava/lang/String;
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 499
    .local v16, "relationShipJson":Lorg/json/JSONObject;
    const-string v4, "ownerRelation"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$ownerRelation:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v4, "ownerRelationText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$ownerRelationText:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string/jumbo v4, "sharerRelation"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relation:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string/jumbo v4, "sharerRelationText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relationText:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 509
    const-string v4, "relationShip"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v6}, Lcom/miui/gallery/share/AlbumShareOperations;->access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 511
    .end local v16    # "relationShipJson":Lorg/json/JSONObject;
    .end local v17    # "relationShipStr":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v15

    .line 512
    .local v15, "json":Lorg/json/JSONObject;
    invoke-static {v15}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v13

    .line 513
    .local v13, "err":I
    if-eqz v13, :cond_6

    .line 514
    invoke-static {v13}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto/16 :goto_0

    .line 505
    .end local v13    # "err":I
    .end local v15    # "json":Lorg/json/JSONObject;
    .restart local v17    # "relationShipStr":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 506
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 507
    const/4 v4, -0x7

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto/16 :goto_0

    .line 517
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v17    # "relationShipStr":Ljava/lang/String;
    .restart local v13    # "err":I
    .restart local v15    # "json":Lorg/json/JSONObject;
    :cond_6
    const-string v4, "data"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 518
    .local v11, "data":Lorg/json/JSONObject;
    new-instance v14, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;

    const-string/jumbo v4, "text"

    .line 519
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "url"

    .line 520
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v4, v7}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .restart local v14    # "invitation":Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$relation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$5;->val$serverId:Ljava/lang/String;

    const-string/jumbo v7, "smsShareData"

    const-string/jumbo v8, "smsShareDataDeadline"

    .line 529
    invoke-virtual {v14}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->toCache()Ljava/lang/String;

    move-result-object v19

    const v20, 0x2932e00

    .line 525
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v7, v8, v0, v1}, Lcom/miui/gallery/share/AlbumShareOperations;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    :cond_7
    const-string v4, "AlbumShareOperations"

    const-string v7, "request sms url success."

    invoke-static {v4, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v4, 0x0

    invoke-static {v4, v14}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$5;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
