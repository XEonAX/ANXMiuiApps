.class final Lcom/miui/gallery/share/AlbumShareOperations$13;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->syncUserListForAlbum(Ljava/lang/String;Z)Lcom/miui/gallery/share/AsyncResult;
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
.field final synthetic val$albumId:Ljava/lang/String;

.field final synthetic val$isSharer:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1260
    iput-boolean p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$13;->val$isSharer:Z

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$13;->val$albumId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 5
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
    .line 1264
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    const/16 v3, -0xb

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    .line 1301
    :goto_0
    return-object v3

    .line 1268
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1269
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 1270
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 1271
    const/4 v3, -0x4

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_0

    .line 1274
    :cond_1
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v2

    .line 1275
    .local v2, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v2, :cond_2

    .line 1276
    const/4 v3, -0x3

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_0

    .line 1279
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1280
    const/4 v3, -0x6

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_0

    .line 1283
    :cond_3
    iget-boolean v3, p0, Lcom/miui/gallery/share/AlbumShareOperations$13;->val$isSharer:Z

    if-eqz v3, :cond_4

    .line 1284
    new-instance v3, Lcom/miui/gallery/cloud/SyncSharerUserForAlbum;

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareOperations$13;->val$albumId:Ljava/lang/String;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/miui/gallery/cloud/SyncSharerUserForAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/SyncSharerUserForAlbum;->sync()Z

    .line 1299
    :goto_1
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareOperations;->syncAllUserInfoFromNetwork()Lcom/miui/gallery/share/AsyncResult;

    .line 1301
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_0

    .line 1291
    :cond_4
    new-instance v3, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareOperations$13;->val$albumId:Ljava/lang/String;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;->sync()Z

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$13;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
