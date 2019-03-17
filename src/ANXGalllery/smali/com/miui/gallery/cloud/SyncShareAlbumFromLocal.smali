.class public Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncShareAlbumFromLocal.java"


# instance fields
.field private mEditedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestSharerAlbumItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 24
    return-void
.end method

.method private shouldSyncEdit(Lcom/miui/gallery/data/DBShareAlbum;)Z
    .locals 4
    .param p1, "dbItem"    # Lcom/miui/gallery/data/DBShareAlbum;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBShareAlbum;->getLocalFlag()I

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBShareAlbum;->getEditedColumns()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "editedColumns":Ljava/lang/String;
    const/16 v3, 0x19

    .line 52
    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "babyInfoJsonColumnElement":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 56
    .end local v0    # "babyInfoJsonColumnElement":Ljava/lang/String;
    .end local v1    # "editedColumns":Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareAlbum;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, " (%s) "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_NOT_SYNCED_OR_EDITED:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleRequestCloudItemList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mEditedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    new-instance v0, Lcom/miui/gallery/cloud/EditShareAlbum;

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/EditShareAlbum;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "editShareAlbum":Lcom/miui/gallery/cloud/EditShareAlbum;
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mEditedItems:Ljava/util/List;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    .line 75
    .end local v0    # "editShareAlbum":Lcom/miui/gallery/cloud/EditShareAlbum;
    :cond_0
    return-void
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mEditedItems:Ljava/util/List;

    .line 45
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 2
    .param p1, "dbItem"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    .line 61
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/data/DBShareAlbum;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->shouldSyncEdit(Lcom/miui/gallery/data/DBShareAlbum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;

    const/4 v1, 0x0

    check-cast p1, Lcom/miui/gallery/data/DBShareAlbum;

    .end local p1    # "dbItem":Lcom/miui/gallery/data/DBItem;
    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/cloud/RequestSharerAlbumItem;-><init>(ILcom/miui/gallery/data/DBShareAlbum;)V

    .line 64
    .local v0, "requestItem":Lcom/miui/gallery/cloud/RequestSharerAlbumItem;
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->mEditedItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v0    # "requestItem":Lcom/miui/gallery/cloud/RequestSharerAlbumItem;
    :cond_0
    return-void
.end method
