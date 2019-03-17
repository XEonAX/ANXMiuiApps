.class final Lcom/miui/gallery/share/AlbumShareOperations$6;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->exitAlbumShare(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$localId:Ljava/lang/String;

.field final synthetic val$shareAlbumId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$6;->val$shareAlbumId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$6;->val$localId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 559
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    const/16 v2, -0xb

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    .line 584
    :goto_0
    return-object v2

    .line 563
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    .line 564
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    .line 565
    .local v3, "account":Landroid/accounts/Account;
    if-nez v3, :cond_1

    .line 566
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 569
    :cond_1
    invoke-static {v7, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v4

    .line 570
    .local v4, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v4, :cond_2

    .line 571
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getExitShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sharedAlbumId"

    iget-object v10, p0, Lcom/miui/gallery/share/AlbumShareOperations$6;->val$shareAlbumId:Ljava/lang/String;

    invoke-direct {v2, v6, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v2, 0x0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v9

    .line 578
    .local v9, "json":Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v8

    .line 579
    .local v8, "err":I
    if-nez v8, :cond_3

    .line 580
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$6;->val$shareAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$6;->val$localId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/gallery/cloud/CloudUtils;->deleteShareAlbumInLocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_3
    const-string v2, "AlbumShareOperations"

    const-string v5, "exit share album success."

    invoke-static {v2, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$6;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
