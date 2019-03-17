.class final Lcom/miui/gallery/share/AlbumShareOperations$14;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->tryToCreateCloudAlbum(Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;
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
.field final synthetic val$cloudId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$14;->val$cloudId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 13
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
    const/4 v12, -0x2

    const/4 v11, 0x0

    .line 1345
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1346
    const/16 v8, -0xb

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    .line 1381
    :goto_0
    return-object v8

    .line 1349
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1350
    .local v1, "context":Landroid/content/Context;
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v9, "_id"

    iget-object v10, p0, Lcom/miui/gallery/share/AlbumShareOperations$14;->val$cloudId:Ljava/lang/String;

    invoke-static {v8, v1, v9, v10}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 1352
    .local v2, "dbImage":Lcom/miui/gallery/data/DBImage;
    if-nez v2, :cond_1

    .line 1353
    invoke-static {v12}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, "serverId":Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1358
    invoke-static {v11, v6}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 1361
    :cond_2
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 1362
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_3

    .line 1363
    const/4 v8, -0x4

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 1366
    :cond_3
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v7

    .line 1367
    .local v7, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v7, :cond_4

    .line 1368
    const/4 v8, -0x3

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 1371
    :cond_4
    new-instance v3, Lcom/miui/gallery/cloud/CreateGroupItem;

    invoke-direct {v3, v1}, Lcom/miui/gallery/cloud/CreateGroupItem;-><init>(Landroid/content/Context;)V

    .line 1372
    .local v3, "groupItem":Lcom/miui/gallery/cloud/CreateGroupItem;
    const/4 v8, 0x0

    new-instance v9, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-direct {v9, v11, v2}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    invoke-virtual {v3, v0, v7, v8, v9}, Lcom/miui/gallery/cloud/CreateGroupItem;->execute(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v5

    .line 1375
    .local v5, "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    if-eqz v5, :cond_5

    sget-object v8, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v5, v8, :cond_5

    .line 1376
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v9, "_id"

    iget-object v10, p0, Lcom/miui/gallery/share/AlbumShareOperations$14;->val$cloudId:Ljava/lang/String;

    invoke-static {v8, v1, v9, v10}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v4

    .line 1378
    .local v4, "newImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 1381
    .end local v4    # "newImage":Lcom/miui/gallery/data/DBImage;
    :cond_5
    invoke-static {v12}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

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
    .line 1341
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$14;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
