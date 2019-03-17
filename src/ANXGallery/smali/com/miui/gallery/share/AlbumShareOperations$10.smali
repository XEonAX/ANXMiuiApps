.class final Lcom/miui/gallery/share/AlbumShareOperations$10;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->denyInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
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
.field final synthetic val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 14
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
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1019
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    const/16 v2, -0xb

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    .line 1045
    :goto_0
    return-object v2

    .line 1023
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$resolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-static {v3, v4, v6}, Lcom/miui/gallery/share/AlbumShareOperations;->access$900(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1024
    .local v10, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-nez v10, :cond_1

    .line 1025
    const/16 v2, -0x3e9

    invoke-static {v2}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 1028
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getRefuseInvitationUrl()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "refuseUrl":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1030
    .local v1, "encodeParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/NameValuePair;

    .line 1031
    .local v9, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6, v2}, Lcom/miui/gallery/share/AlbumShareOperations;->access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    goto :goto_1

    .end local v9    # "pair":Lorg/apache/http/NameValuePair;
    :cond_2
    move-object v3, v2

    move-object v4, v2

    move v6, v5

    .line 1034
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v8

    .line 1035
    .local v8, "json":Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v7

    .line 1036
    .local v7, "err":I
    invoke-static {v7}, Lcom/miui/gallery/cloud/GalleryErrorCode;->isClientError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1037
    invoke-static {v7}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 1041
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string v4, "%s=? AND %s=?"

    new-array v6, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "shareUrl"

    aput-object v11, v6, v5

    const-string v11, "albumStatus"

    aput-object v11, v6, v12

    .line 1042
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/gallery/share/AlbumShareOperations$10;->val$url:Ljava/lang/String;

    aput-object v11, v6, v5

    const-string v5, "invited"

    aput-object v5, v6, v12

    .line 1041
    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    invoke-static {v7}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

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
    .line 1014
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$10;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
