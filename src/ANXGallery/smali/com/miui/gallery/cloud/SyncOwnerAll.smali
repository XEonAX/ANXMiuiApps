.class public Lcom/miui/gallery/cloud/SyncOwnerAll;
.super Lcom/miui/gallery/cloud/SyncOwnerCloud;
.source "SyncOwnerAll.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncOwnerCloud;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v3, 0x1

    .line 35
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncOwnerCloud;->appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 37
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "returnHiddenData"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "returnSystemAlbum"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method protected getSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$SyncPull;->getPullOwnerAllUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasStarted()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerAll;->getCurrentSyncTag()Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    .local v0, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v4, v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 46
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_0
.end method
