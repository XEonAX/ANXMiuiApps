.class final Lcom/miui/gallery/cloud/AlbumShareOperations$4;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AlbumShareOperations;->requestPublicUrl(Ljava/lang/String;Z)Lcom/miui/gallery/util/AsyncResult;
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
        "Lcom/miui/gallery/util/AsyncResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$albumId:Ljava/lang/String;

.field final synthetic val$isShareAlbum:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$isShareAlbum:Z

    iput-object p2, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$albumId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/util/AsyncResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/AsyncResult",
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
    const/4 v4, 0x0

    .line 462
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    const/16 v4, -0xb

    invoke-static {v4}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v4

    .line 496
    :goto_0
    return-object v4

    .line 466
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 467
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 468
    .local v2, "account":Landroid/accounts/Account;
    if-nez v2, :cond_1

    .line 469
    const/4 v4, -0x4

    invoke-static {v4}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {v6, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v3

    .line 473
    .local v3, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v3, :cond_2

    .line 474
    const/4 v4, -0x3

    invoke-static {v4}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 477
    :cond_2
    iget-boolean v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$isShareAlbum:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getSharerRequestPublicUrl()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "url":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-boolean v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$isShareAlbum:Z

    if-eqz v5, :cond_3

    .line 482
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v11, "sharedAlbumId"

    iget-object v12, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$albumId:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v5, v4

    .line 484
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v9

    .line 486
    .local v9, "json":Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v8

    .line 487
    .local v8, "err":I
    if-eqz v8, :cond_5

    .line 488
    invoke-static {v8}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 477
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "err":I
    .end local v9    # "json":Lorg/json/JSONObject;
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$albumId:Ljava/lang/String;

    .line 478
    invoke-static {v5}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getOwnerRequestPublicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 491
    .restart local v0    # "url":Ljava/lang/String;
    .restart local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v8    # "err":I
    .restart local v9    # "json":Lorg/json/JSONObject;
    :cond_5
    const-string v5, "data"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 492
    .local v7, "data":Lorg/json/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "publicUrl":Ljava/lang/String;
    iget-object v11, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$albumId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_2
    iget-boolean v12, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->val$isShareAlbum:Z

    invoke-static {v11, v5, v10, v12}, Lcom/miui/gallery/cloud/AlbumShareOperations;->access$600(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 496
    invoke-static {v4, v10}, Lcom/miui/gallery/util/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v4

    goto :goto_0

    :cond_6
    move v5, v4

    .line 494
    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$4;->call()Lcom/miui/gallery/util/AsyncResult;

    move-result-object v0

    return-object v0
.end method
