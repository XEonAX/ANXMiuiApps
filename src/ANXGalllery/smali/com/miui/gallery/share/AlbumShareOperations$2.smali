.class final Lcom/miui/gallery/share/AlbumShareOperations$2;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->changePublicStatus(Ljava/lang/String;Z)Lcom/miui/gallery/share/AsyncResult;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$isPublic:Z

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$serverId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$isPublic:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
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
    const/4 v5, 0x0

    .line 297
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    const/16 v2, -0xb

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    .line 327
    :goto_0
    return-object v2

    .line 301
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    .line 302
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    .line 303
    .local v3, "account":Landroid/accounts/Account;
    if-nez v3, :cond_1

    .line 304
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v7, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v4

    .line 308
    .local v4, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v4, :cond_2

    .line 309
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getChangePublicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 314
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string v2, "isPublic"

    iget-boolean v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$isPublic:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v4}, Lcom/miui/gallery/share/AlbumShareOperations;->access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 316
    const/4 v2, 0x0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v10

    .line 317
    .local v10, "json":Lorg/json/JSONObject;
    invoke-static {v10}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v9

    .line 318
    .local v9, "err":I
    if-eqz v9, :cond_3

    .line 319
    invoke-static {v9}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 322
    :cond_3
    const-string v2, "data"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 324
    .local v8, "data":Lorg/json/JSONObject;
    const-string/jumbo v2, "url"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "publicUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$serverId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$2;->val$isPublic:Z

    invoke-static {v2, v6, v11, v5}, Lcom/miui/gallery/share/AlbumShareOperations;->access$400(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 327
    invoke-static {v5, v11}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

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
    .line 292
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$2;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
