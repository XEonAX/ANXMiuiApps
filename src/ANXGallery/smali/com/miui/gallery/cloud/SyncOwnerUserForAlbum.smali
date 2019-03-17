.class public final Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;
.super Lcom/miui/gallery/cloud/SyncUserBase;
.source "SyncOwnerUserForAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "serverId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/SyncUserBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSyncTagList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method protected getSyncTagSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/HostManager$SyncPull;->getPullOwnerShareUserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "serverTag"

    return-object v0
.end method

.method protected final handleDataJson(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncOwnerUserForAlbum;->addUsers(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method
