.class public Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
.super Lcom/miui/gallery/sdk/uploadstatus/SyncItem;
.source "UploadStatusItem.java"


# instance fields
.field private final mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

.field private final mLocalId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 3
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/RequestCloudItem;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/sdk/SyncStatus;->toSyncStatus(I)Lcom/miui/gallery/sdk/SyncStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/sdk/uploadstatus/SyncItem;-><init>(Lcom/miui/gallery/sdk/SyncStatus;)V

    .line 23
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUriAdapter()Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    move-result-object v1

    .line 24
    .local v1, "uriAdapter":Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 25
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;->getItemTypeBySdkBaseUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    .line 26
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/sdk/uploadstatus/ItemType;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemType"    # Lcom/miui/gallery/sdk/uploadstatus/ItemType;
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/uploadstatus/SyncItem;-><init>(Lcom/miui/gallery/sdk/SyncStatus;)V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    .line 17
    iput-object p2, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    if-nez v3, :cond_2

    move v1, v2

    .line 44
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    .line 48
    .local v0, "another":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    iget-object v3, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    iget-object v4, v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getItemType()Lcom/miui/gallery/sdk/uploadstatus/ItemType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    return-object v0
.end method

.method public getUserUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUriAdapter()Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    move-result-object v0

    .line 31
    .local v0, "uriAdapter":Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;
    iget-object v1, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    iget-object v2, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;->getUserUri(Lcom/miui/gallery/sdk/uploadstatus/ItemType;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "[mItemType: %s, mLocalId: %s, mStatus: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mItemType:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mLocalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mStatus:Lcom/miui/gallery/sdk/SyncStatus;

    .line 54
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/SyncStatus;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
